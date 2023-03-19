@EndUserText.label: 'Consumo Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity Zcb_02_c_travel_rar2324 as projection on Zcb_01_i_travel_rar2324
{
    key TravelId,
    AgencyId,
    _Agency.Name as AgencyName,
    CustomerId,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
////////    @Semantics.amount.currencyCode: 'CurrencyCode'
////////    @EndUserText.label: 'Discount'
////////    @objectModel.virtualElementCalculatedBy: 'ABAP:ZCL_CB_VIRTELEM'
////////    virtual DiscountPrice : /dmo/total_price,
    /* Associations */
    _Booking
}
