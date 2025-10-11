CLASS zcl_29_manage_auth_log_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: check_user IMPORTING iv_user TYPE syuname
                        RAISING   zcx_01_auth_log_c384.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_29_manage_auth_log_c384 IMPLEMENTATION.

  METHOD check_user.

    if sy-uname eq 'CB9980007474'.

      RAISE EXCEPTION type zcx_01_auth_log_c384
        EXPORTING
          textid   = zcx_01_auth_log_c384=>no_auth
*          previous =
          mv_msgv1 = |{ sy-uname }|
          mv_msgv2 = 'Sales Orders'
*          mv_msgv3 =
*          mv_msgv4 =
      .

    ENDIF.

  ENDMETHOD.

ENDCLASS.
