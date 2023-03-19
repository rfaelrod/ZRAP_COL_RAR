@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zcb_02_i_booking_rar2324 as select from zcol_booking
association to parent Zcb_01_i_travel_rar2324 as _Travel on $projection.TravelId = _Travel.TravelId
{
    key zcol_booking.travel_id as TravelId,
    key zcol_booking.booking_id as BookingId,
    zcol_booking.booking_date as BookingDate,
    zcol_booking.customer_id as CustomerId,
    zcol_booking.carrier_id as CarrierId,
    zcol_booking.connection_id as ConnectionId,
    zcol_booking.flight_date as FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    zcol_booking.flight_price as FlightPrice,
    zcol_booking.currency_code as CurrencyCode,
    zcol_booking.booking_status as BookingStatus,
    zcol_booking.last_changed_at as LastChangedAt,
    _Travel
}
