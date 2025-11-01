@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_QUERY_PROV_LOG_C384'
define custom entity zcds_20_log_c384
{
  key travel_id   : /dmo/travel_id;
      agency_id   : /dmo/agency_id;
      customer_id : /dmo/customer_id;
}
