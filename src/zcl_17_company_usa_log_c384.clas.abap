CLASS zcl_17_company_usa_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_04_log_c384 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_company_usa_log_c384 IMPLEMENTATION.

  METHOD zif_04_log_c384~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.

ENDCLASS.
