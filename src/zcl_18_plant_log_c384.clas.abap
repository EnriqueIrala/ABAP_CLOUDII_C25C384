CLASS zcl_18_plant_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     METHODS:
       assign_company
         IMPORTING io_company type ref to zif_04_log_c384
         RETURNING VALUE(rv_plant) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_18_plant_log_c384 IMPLEMENTATION.

  METHOD assign_company.
    rv_plant = |Plant was assigned to ... { io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
