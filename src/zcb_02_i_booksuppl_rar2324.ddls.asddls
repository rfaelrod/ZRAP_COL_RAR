@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supplmente'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zcb_02_i_booksuppl_rar2324 as select from zcol_booksuppl
    association to parent Zcb_02_i_booking_rar2324 as _Booking on $projection.TravelId = _Booking.TravelId
                                                    and $projection.BookingId = _Booking.BookingId
{
    key zcol_booksuppl.travel_id as TravelId,
    key zcol_booksuppl.booking_id as BookingId,
    key zcol_booksuppl.booking_supplement_id as BookingSupplementId,
    zcol_booksuppl.supplement_id as SupplementId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    zcol_booksuppl.price as Price,
    zcol_booksuppl.currency_code as CurrencyCode,
    zcol_booksuppl.last_changed_at as LastChangedAt,
    _Booking
}
