CLASS zcl_path_expressions_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_path_expressions_log_c384 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_19_log_c384 AS Booking
    FIELDS booking~TravelId,
           booking~BookingId,
           \_Travel-AgencyId,
           \_Travel\_Agency-name AS AgencyName,
           \_Travel-CustomerId,
           concat_with_space( \_Travel\_Customer-first_name, \_Travel\_Customer-last_name, 1 ) AS CustomerName
     WHERE Booking~CarrierId = 'AA'
       and \_Travel-AgencyId = '070049'
     INTO TABLE @DATA(lt_booking)
     UP TO 5 ROWS.

    IF sy-subrc = 0.
      out->write( lt_booking ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
