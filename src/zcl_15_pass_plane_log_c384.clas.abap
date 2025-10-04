CLASS zcl_15_pass_plane_log_c384 DEFINITION INHERITING FROM zcl_13_airplane_log_c384
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_pass_plane_log_c384 IMPLEMENTATION.

  METHOD airplane_type.
    rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
