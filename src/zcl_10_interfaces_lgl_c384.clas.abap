CLASS zcl_10_interfaces_lgl_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_01_log_c384.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_interfaces_lgl_c384 IMPLEMENTATION.

  METHOD zif_01_log_c384~get_conn_id.

    rv_conn_id = zif_01_log_c384~conn_id.

  ENDMETHOD.

  METHOD zif_01_log_c384~set_conn_id.

    me->zif_01_log_c384~conn_id = iv_conn_id.

  ENDMETHOD.

ENDCLASS.
