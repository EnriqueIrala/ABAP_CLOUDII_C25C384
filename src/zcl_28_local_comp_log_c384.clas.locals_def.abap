*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

* CCDEF

TYPES: BEGIN OF ty_first,
         comp1 TYPE string,
         comp2 TYPE string,
         comp3 TYPE string,
       END OF ty_first.

CLASS lcl_helper DEFINITION.

  PUBLIC SECTION.

    DATA: gs_first TYPE ty_first.

ENDCLASS.

class lcl_local2 definition create private.

  public section.
  protected section.
  private section.

endclass.
