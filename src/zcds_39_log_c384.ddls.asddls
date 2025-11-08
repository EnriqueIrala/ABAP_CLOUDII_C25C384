@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Table function'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_39_log_c384
  with parameters
    pCountryCode : land1

  as select from /dmo/travel as Travel
  association [0..*] to ztf_01_log_c384 as _BookingsByCustomer on _BookingsByCustomer.TravelId = $projection.TravelId
{
  key Travel.travel_id                                                         as TravelId,
      Travel.agency_id                                                         as AgencyId,
      _BookingsByCustomer(pCountryCode: $parameters.pCountryCode ).customer_id as CustomerId,
      //pClient: $session.client).customer_id as CustomerId,
      //BookingsByCustomer.customer_id as CustomerId,
      Travel.begin_date                                                        as BeginDate,
      Travel.end_date                                                          as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.booking_fee                                                       as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.total_price                                                       as TotalPrice,
      Travel.currency_code                                                     as CurrencyCode,
      Travel.description                                                       as Description,
      Travel.status                                                            as Status,
      _BookingsByCustomer(pCountryCode: $parameters.pCountryCode).last_name    as LastName
      //pClient: $session.client).last_name   as LastName
      //BookingsByCustomer.last_name   as LastName
}
