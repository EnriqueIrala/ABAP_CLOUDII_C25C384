CLASS zcl_25_conexion_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data: hour type zsyst_uzeit.

    METHODS: on_time_out for EVENT time_out of zcl_24_timer_log_c384
                             importing ev_hour.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_25_conexion_log_c384 IMPLEMENTATION.

  METHOD on_time_out.
    me->hour = ev_hour.
  ENDMETHOD.

ENDCLASS.
