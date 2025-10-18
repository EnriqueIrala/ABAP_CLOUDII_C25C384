CLASS zcl_37_controller_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_model IMPORTING io_model TYPE REF TO zcl_35_model_log_c384,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_35_model_log_c384,

      set_view IMPORTING io_view TYPE REF TO zcl_36_view_log_c384,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_36_view_log_c384.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: model TYPE REF TO zcl_35_model_log_c384,
          view  TYPE REF TO zcl_36_view_log_c384.

ENDCLASS.



CLASS zcl_37_controller_log_c384 IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
