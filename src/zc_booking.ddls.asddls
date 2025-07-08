@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define view entity ZC_BOOKING
  as projection on ZR_BOOKING
{
  key Uuid,
  ParentUuid,
  BookingDate,
  CustomerId,
  CarrierId,
  ConnectionId,
  FlightDate,
  FlightPrice,
  CurrencyCode,
  DiscountedFlightPrice,
  _Travel : redirected to parent ZC_TRAVEL
  
}
