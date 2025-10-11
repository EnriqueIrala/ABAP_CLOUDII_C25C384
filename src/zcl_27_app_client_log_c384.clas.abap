CLASS zcl_27_app_client_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    data: notification type string.

    METHODS:
      on_new_transfer FOR EVENT new_transfer OF zif_05_log_c384
        IMPORTING sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_27_app_client_log_c384 IMPLEMENTATION.

  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time( ) }|.
  ENDMETHOD.

ENDCLASS.
