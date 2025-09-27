CLASS zcl_03_heritance_lgl DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string VALUE '64 Bits'.

    METHODS:
      constructor IMPORTING iv_architecture TYPE string,
      get_architecture RETURNING VALUE(rv_architecture) TYPE string,
      get_memory_size FINAL
      RETURNING VALUE(rv_memory) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
*  METHODS:
*      constructor IMPORTING iv_architecture TYPE string.
ENDCLASS.



CLASS zcl_03_heritance_lgl IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

  METHOD constructor.

    me->architecture = iv_architecture.

  ENDMETHOD.

  METHOD get_memory_size.
     rv_memory = '128 GB'.
  ENDMETHOD.

ENDCLASS.
