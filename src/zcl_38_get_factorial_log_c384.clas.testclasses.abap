*"* use this source file for your ABAP unit test classes
CLASS ltcl_factorial DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      first_test FOR TESTING RAISING cx_static_check.

    METHODS:
      setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_38_get_factorial_log_c384. " CUT - Class Under Test

ENDCLASS.


CLASS ltcl_factorial IMPLEMENTATION.

  METHOD first_test.

    " Given
    DATA(lv_numbet_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    "when
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_numbet_ut
      IMPORTING
        ev_factorial = lv_factorial_ut
    ).

    "then
    IF cl_abap_unit_assert=>assert_equals(
     EXPORTING
       act                  = lv_factorial_ut
       exp                  = 24    )  EQ abap_true.


      cl_abap_unit_assert=>fail( 'Implement your first test here' ).

    ENDIF.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: mo_cut.
  ENDMETHOD.

ENDCLASS.
