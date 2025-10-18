CLASS zcl_34_factory_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: get_shape IMPORTING iv_shape_type        TYPE string
                       RETURNING VALUE(ro_shape_type) TYPE REF TO zif_06_log_c384.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_34_factory_log_c384 IMPLEMENTATION.

  METHOD get_shape.

    CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape_type = NEW zcl_31_circle_log_c384( ).
      WHEN 'Square'.
        ro_shape_type = NEW zcl_32_square_log_c384( ).
      WHEN 'Triangle'.
        ro_shape_type = NEW zcl_33_triangle_log_c384( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
