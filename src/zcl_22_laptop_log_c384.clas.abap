CLASS zcl_22_laptop_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    data: keyboard type REF TO zcl_21_keyboard_log_c384.

    METHODS: constructor IMPORTING io_keyboard type ref to zcl_21_keyboard_log_c384.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_22_laptop_log_c384 IMPLEMENTATION.

  METHOD constructor.
     me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
