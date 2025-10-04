CLASS zcl_11_abstract_log_c384 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      materials_input
        RETURNING VALUE(rv_input) TYPE string,

      line_production ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      product_output ABSTRACT
        RETURNING VALUE(rv_output) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_abstract_log_c384 IMPLEMENTATION.

  METHOD materials_input.
    rv_input = 'Materials'.
  ENDMETHOD.

ENDCLASS.
