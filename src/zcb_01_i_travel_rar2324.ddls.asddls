@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel'
define root view entity Zcb_01_i_travel_rar2324
  as select from zcol_travel
  composition [0..*] of Zcb_02_i_booking_rar2324 as _Booking
  association [0..1] to /DMO/I_Agency            as _Agency   on $projection.AgencyId = _Agency.AgencyID
  association [0..1] to /DMO/I_Customer          as _Customer on $projection.CustomerId = _Customer.CustomerID
  association [0..1] to I_Currency               as _Currency on $projection.CurrencyCode = _Currency.Currency

{
  key travel_id      as TravelId,
      agency_id      as AgencyId,
      customer_id    as CustomerId,
      begin_date     as BeginDate,
      end_date       as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee    as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price    as TotalPrice,
      currency_code  as CurrencyCode,
      description    as Description,
      overall_status as OverallStatus,
      @Semantics.user.createdBy: true
      createdby      as Createdby,

      createdat      as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby  as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat  as Lastchangedat,
      _Booking, // Make association public
      _Agency,
      _Customer,
      _Currency

}
