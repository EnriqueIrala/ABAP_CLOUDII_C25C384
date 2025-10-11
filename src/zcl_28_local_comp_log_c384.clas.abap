CLASS zcl_28_local_comp_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: my_method.

  PROTECTED SECTION.
  PRIVATE SECTION.

    data: first type ty_first.

    "data: second type ty_first2.

ENDCLASS.



CLASS zcl_28_local_comp_log_c384 IMPLEMENTATION.

  METHOD my_method.

    data(lo_local) = new lcl_helper( ).

  ENDMETHOD.

ENDCLASS.
