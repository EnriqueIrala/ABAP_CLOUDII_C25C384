CLASS zcl_23_product_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      return_category
        RETURNING VALUE(rv_category) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: category TYPE string VALUE 'A5'.
ENDCLASS.



CLASS zcl_23_product_log_c384 IMPLEMENTATION.

  METHOD return_category.
    rv_category = me->category.
  ENDMETHOD.

ENDCLASS.
