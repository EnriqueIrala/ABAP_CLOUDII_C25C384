CLASS zcl_20_client_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_credit_card IMPORTING io_credit_card TYPE REF TO zcl_19_credit_card_log_c384,
      get_credit_card RETURNING VALUE(ro_credit_card) TYPE REF TO zcl_19_credit_card_log_c384.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: credit_card TYPE REF TO zcl_19_credit_card_log_c384.
ENDCLASS.



CLASS zcl_20_client_log_c384 IMPLEMENTATION.

  METHOD get_credit_card.
    ro_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = io_credit_card.
  ENDMETHOD.

ENDCLASS.
