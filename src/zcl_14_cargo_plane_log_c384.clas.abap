CLASS zcl_14_cargo_plane_log_c384 DEFINITION
  PUBLIC
  INHERITING FROM zcl_13_airplane_log_c384
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_cargo_plane_log_c384 IMPLEMENTATION.

  METHOD airplane_type.
     rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.
