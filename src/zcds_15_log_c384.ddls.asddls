@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association - Path Expressions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_15_log_c384
  as select from zcds_14_log_c384
{
  key TravelId,
      AgencyId,
      CustomerId,
      /* Associations */
      _Agency.name

}
