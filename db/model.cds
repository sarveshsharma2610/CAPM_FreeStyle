namespace com.flights;


using { cuid, managed } from '@sap/cds/common';


entity FlightsData : cuid, managed {

  airline            : String(50);
  flightNumber       : String(10);

  captain            : String(100);
  crewHead           : String(100);

  journeyStartDate   : Date;
  journeyStartTime   : Time;
  journeyEndDate     : Date;
  journeyEndTime     : Time;

  source             : String(50);
  destination        : String(50);

  boardingGate       : String(10);

  price              : Decimal(9,2);
  capacity           : Integer;
  status             : String(20);
  bookings           : Integer;
}


view sourceValueHelp as select distinct key source from FlightsData;
view destinationValueHelp as select distinct key destination from FlightsData;

