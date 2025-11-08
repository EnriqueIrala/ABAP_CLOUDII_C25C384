@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Use Scalar Function'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_40_log_c384
  as select from /dmo/carrier
{
  key carrier_id                                        as CarrierId,
      name                                              as Name,
      currency_code                                     as CurrencyCode,
      zsf_vat_by_airline_c384( pAirline => carrier_id ) as VAT
}
