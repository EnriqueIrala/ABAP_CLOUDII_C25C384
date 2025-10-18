CLASS zcl_32_square_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_06_log_c384.

    ALIASES: draw_shape FOR zif_06_log_c384~draw_shape.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_square_log_c384 IMPLEMENTATION.
  METHOD zif_06_log_c384~draw_shape.
    rv_shape = 'Square'.
  ENDMETHOD.
ENDCLASS.
