*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

* CCIMP

tYPES: BEGIN OF ty_first2,
         comp1 TYPE string,
         comp2 TYPE string,
         comp3 TYPE string,
       END OF ty_first2.

CLASS lcl_helper2 DEFINITION.

  PUBLIC SECTION.

    DATA: gs_first TYPE ty_first.

ENDCLASS.

class lcl_local definition create private.

  public section.
  protected section.
  private section.

endclass.

class lcl_local implementation.

endclass.

class lcl_local2 implementation.

endclass.
