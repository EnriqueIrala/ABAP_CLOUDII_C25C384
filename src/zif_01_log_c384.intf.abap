INTERFACE zif_01_log_c384
  PUBLIC .

  CLASS-DATA: comp_id TYPE string.

  DATA: conn_id TYPE string.

  METHODS: set_conn_id IMPORTING iv_conn_id TYPE string,
    get_conn_id RETURNING VALUE(rv_conn_id) TYPE string.

ENDINTERFACE.
