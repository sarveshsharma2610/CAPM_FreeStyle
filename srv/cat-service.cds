using com.flights as Flight from '../db/model';

service CatalogService {

  entity FlightsData as projection on Flight.FlightsData;
  entity sourceValueHelp as projection on Flight.sourceValueHelp;
  entity destinationValueHelp as projection on Flight.destinationValueHelp;
  
} 
