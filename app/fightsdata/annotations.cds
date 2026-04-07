using CatalogService as service from '../../srv/cat-service';


annotate service.FlightsData with {

    
    airline             @(title : '{i18n>airline}');
    flightNumber        @(title : '{i18n>flightNumber}');

    captain             @(title : '{i18n>captain}');
    crewHead            @(title : '{i18n>crewHead}');

    journeyStartDate    @(title : '{i18n>journeyStartDate}');
    journeyStartTime    @(title : '{i18n>journeyStartTime}');
    journeyEndDate      @(title : '{i18n>journeyEndDate}');
    journeyEndTime      @(title : '{i18n>journeyEndTime}');

    source              @(title : '{i18n>source}');
    destination         @(title : '{i18n>destination}');

    boardingGate        @(title : '{i18n>boardingGate}');

    price               @(title : '{i18n>price}');
    capacity            @(title : '{i18n>capacity}');
    bookings            @(title : '{i18n>bookings}');
    status              @(title : '{i18n>status}');

}


annotate service.FlightsData with @(UI : {
    SelectionFields : [
        source,
        destination,
        journeyStartDate
    ],
    LineItem        : [
        {
            Value : flightNumber,
            Label : '{i18n>flightNumber}'
        },
        {
            Value : captain,
            Label : '{i18n>captain}'

        },
        {
            Value : crewHead,
            Label : '{i18n>crewHead}'
        },
        {
            Value : journeyStartDate,
            Label : '{i18n>journeyStartDate}'
        },
        {
            Value : journeyEndDate,
            Label : '{i18n>journeyEndDate}'
        },
        {
            Value : source,
            Label : '{i18n>source}'   
        },
        {
            Value : destination,
            Label : '{i18n>destination}'   
        },
        {
            Value : price,
            Label : '{i18n>price}'   
        }, 
        {
            Value : status,
            Label : '{i18n>status}'   
        }   
    ]
});

annotate service.FlightsData with {

    source         @(Common : {
        Text      : {
            $value                 : source,
            ![@UI.TextArrangement] : #TextOnly

        },
        ValueList : {
            SearchSupported : true,
            Label           : source,
            CollectionPath  : 'sourceValueHelp',
            Parameters      : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : source,
                ValueListProperty : 'source'
            }

            ]
        }
    });

    destination       @(Common : {
        Text      : {
            $value                 : destination,
            ![@UI.TextArrangement] : #TextOnly

        },
        ValueList : {
            SearchSupported : true,
            Label           : destination,
            CollectionPath  : 'destinationValueHelp',
            Parameters      : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : destination,
                ValueListProperty : 'destination'
            }

            ]
        }
    });
}

annotate service.FlightsData with @(Capabilities : {
    FilterRestrictions : {
        FilterExpressionRestrictions : [{
    $Type              : 'Capabilities.FilterExpressionRestrictionType',
    Property           : journeyStartDate,
    AllowedExpressions : 'SingleRange'
}]
}
});
