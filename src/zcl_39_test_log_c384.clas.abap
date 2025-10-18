CLASS zcl_39_test_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.


    METHODS:
      "! @testing zcl_38_get_factorial_log_c384
      factorial_test FOR TESTING. "UTM - Unit test method

  PROTECTED SECTION.
  PRIVATE SECTION.

*    class-METHODS:
*      class_setup,
*      class_teardown.

    METHODS:
      setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_38_get_factorial_log_c384. " CUT - Class Under Test

ENDCLASS.



CLASS zcl_39_test_log_c384 IMPLEMENTATION.

  METHOD factorial_test.

    " Given
    DATA(lv_numbet_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    "when
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = 4
      IMPORTING
        ev_factorial = lv_factorial_ut
    ).

    "then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24    ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: mo_cut.
  ENDMETHOD.

ENDCLASS.
