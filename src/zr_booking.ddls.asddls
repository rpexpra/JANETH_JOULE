@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZR_BOOKING
  as select from ZBOOKING as Booking
  association to parent ZR_TRAVEL as _Travel on $projection.ParentUuid = _Travel.Uuid
{
  key uuid as Uuid,
  parent_uuid as ParentUuid,
  booking_date as BookingDate,
  customer_id as CustomerId,
  carrier_id as CarrierId,
  connection_id as ConnectionId,
  flight_date as FlightDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  flight_price as FlightPrice,
  currency_code as CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  discounted_flight_price as DiscountedFlightPrice,
  _Travel
  
}
