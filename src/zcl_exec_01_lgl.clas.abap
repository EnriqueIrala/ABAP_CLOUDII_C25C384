CLASS zcl_exec_01_lgl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_01_lgl IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  out->write( 'Hola Logali' ).

  ENDMETHOD.

ENDCLASS.
