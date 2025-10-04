CLASS zcl_19_credit_card_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_card_num IMPORTING iv_vard_num TYPE string,
      get_card_num RETURNING VALUE(rv_vard_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: card_num TYPE string.
ENDCLASS.



CLASS zcl_19_credit_card_log_c384 IMPLEMENTATION.

  METHOD get_card_num.
    rv_vard_num = me->card_num.
  ENDMETHOD.

  METHOD set_card_num.
    me->card_num = iv_vard_num.
  ENDMETHOD.

ENDCLASS.
