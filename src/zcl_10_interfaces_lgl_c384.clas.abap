CLASS zcl_10_interfaces_lgl_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      zif_01_log_c384,
      zif_02_log_c384.

    ALIASES:
      set_conn_id FOR zif_01_log_c384~set_conn_id,
      get_conn_id FOR zif_01_log_c384~get_conn_id,
      get_customer FOR zif_02_log_c384~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_interfaces_lgl_c384 IMPLEMENTATION.

  METHOD get_conn_id.

    rv_conn_id = me->zif_01_log_c384~conn_id.

  ENDMETHOD.

  METHOD set_conn_id.

    me->zif_01_log_c384~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD get_customer.

    IF iv_customer_id = '01'.

      rs_name = VALUE #( first_name = 'Jorge'
                         last_name = 'Perez' ).

    ENDIF.

  ENDMETHOD.

  METHOD zif_03_log_c384~get_airports.

    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_airport.

  ENDMETHOD.

ENDCLASS.
