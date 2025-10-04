CLASS zcl_12_abs_child__log_c384 DEFINITION INHERITING FROM zcl_11_abstract_log_c384
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      line_production REDEFINITION,
      product_output REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_12_abs_child__log_c384 IMPLEMENTATION.
  METHOD line_production.

    rv_production = 'Production'.

  ENDMETHOD.

  METHOD product_output.

    rv_output = 'Output'.

  ENDMETHOD.

ENDCLASS.
