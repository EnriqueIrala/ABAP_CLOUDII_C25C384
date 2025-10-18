@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

//@ObjectModel.semanticKey: [ 'CarrierId', 'ConnectionID', 'FlightDate' ]

define view entity zcds_01_log_c384
  as select from /dmo/flight
{
  key carrier_id                                                   as CarrierId,
  key connection_id                                                as ConnectionId,
  key flight_date                                                  as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @EndUserText.label: 'Price'
      price                                                        as Price,
      currency_code                                                as CurrencyCode,


      'USD'                                                        as CurrencyDocument,

      '20250101'                                                   as DateString,

      cast( '20250101' as abap.dats )                              as DateDate,

      1.2                                                          as FloatingPoint,

      fltp_to_dec( 1.2 as abap.dec( 4, 2 ) )                       as DecimalElement,

      cast( cast ( 'E' as abap.lang) as  sylangu preserving type ) as LaguajeElement


}
