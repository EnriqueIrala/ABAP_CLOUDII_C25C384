CLASS zcl_exec_01_lgl_c384 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_01_lgl_c384 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* Interfaces
*  data(lo_int) = new zcl_10_interfaces_lgl_c384(  ).
*
*  out->write( lo_int->get_customer( '01' ) ).
*
*  out->write( lo_int->zif_03_log_c384~get_airports( 'FRA' ) ).

* Abastract Classç
*    DATA(lo_abstract) = NEW zcl_12_abs_child__log_c384( ).
*
*    out->write( lo_abstract->materials_input( ) ).
*    out->write( lo_abstract->line_production( ) ).
*    out->write( lo_abstract->product_output( ) ).

* Polymorphism Class
*    DATA: lt_airplanes TYPE STANDARD TABLE OF REF TO zcl_13_airplane_log_c384,
*          lo_airplane  TYPE REF TO zcl_13_airplane_log_c384,
*          lo_cargo     TYPE REF TO zcl_14_cargo_plane_log_c384,
*          lo_passenger TYPE REF TO zcl_15_pass_plane_log_c384.
*
*
*    lo_cargo = NEW #(  ).
*    APPEND lo_cargo TO lt_airplanes.
*
*    lo_passenger = NEW #(  ).
*    APPEND lo_passenger TO lt_airplanes.
*
*    LOOP AT lt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.

* Polymorphism Interface
*    DATA: lt_companies   TYPE STANDARD TABLE OF REF TO zif_04_log_c384,
*          lo_company     TYPE REF TO zif_04_log_c384,
*          lo_company_eu  TYPE REF TO zcl_16_company_eu_log_c384,
*          lo_company_usa TYPE REF TO zcl_17_company_usa_log_c384,
*          lo_plant       TYPE REF TO zcl_18_plant_log_c384.
*
*    lo_company_eu = NEW #(  ).
*    APPEND lo_company_eu TO lt_companies.
*
*    lo_company_usa = NEW #(  ).
*    APPEND lo_company_usa TO lt_companies.
*
*    lo_plant = NEW #(  ).
*
*    LOOP AT lt_companies INTO lo_company.
*      out->write( lo_company->define_company( ) ).
*      out->write( lo_plant->assign_company( lo_company ) ).
*    ENDLOOP.

* Association
*    DATA(lo_credit_card) = NEW zcl_19_credit_card_log_c384( ).
*    DATA(lo_client) = NEW zcl_20_client_log_c384( ).
*
*    lo_credit_card->set_card_num( '9999 8888 7777 4444' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card( )->get_card_num( ) ).

* Composition
*    DATA(lo_keyboard) = NEW zcl_21_keyboard_log_c384( ).
*    DATA(lo_laptop) = NEW zcl_22_laptop_log_c384( lo_keyboard ).
*
*    lo_keyboard->keyborad_type = 'ES'.
*
*    out->write( lo_laptop->keyboard->keyborad_type ).

* Generic Reference OBJECT
*    DATA: lo_object TYPE REF TO object.
*
*    lo_object = NEW zcl_23_product_log_c384( ).
*
*    DATA(lv_method_name) = 'RETURN_CATEGORY'.
*
*    DATA lv_category TYPE string.
*
*    CALL METHOD lo_object->(lv_method_name) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).

* Events
*    DATA(lo_timer) = NEW zcl_24_timer_log_c384( ).
*    DATA(lo_conexion) = NEW zcl_25_conexion_log_c384( ).
*
*    SET HANDLER lo_conexion->on_time_out FOR lo_timer.
*
*    DO.
*
*      WAIT UP TO 1 SECONDS.
*
*      lo_timer->increment_counter( 1 ).
*
*      IF lo_conexion->hour IS INITIAL.
*        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time( ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user } | ).
*        EXIT.
*      ENDIF.
*
*    ENDDO.

* Events - Interface
*    DATA(lo_bank) = NEW zcl_26_eu_bank_log_c384( ).
*    DATA(lo_app) = NEW zcl_27_app_client_log_c384( ).
*
*    SET HANDLER lo_app->on_new_transfer FOR lo_bank ACTIVATION abap_true.
*
*    DO 5 TIMES.
*
*      WAIT UP TO 1 SECONDS.
*      out->write( lo_bank->create_notification( ) ).
*      out->write( lo_app->notification ).
*
*      IF sy-index EQ 3.
*        SET HANDLER lo_app->on_new_transfer FOR lo_bank ACTIVATION abap_false.
*        lo_app->notification = 'No handler for event new transfer'.
*      ENDIF.
*
*    ENDDO.

* Exemptions
*    "data: lx_auth type ref to zcx_01_auth_log_c384.
*
*    DATA: lv_num2 TYPE i VALUE 0.
*
*    DATA(lo_auth) = NEW zcl_29_manage_auth_log_c384( ).
*
*    TRY.
*        DATA(lv_result) = 20 / lv_num2.
*
*       CATCH cx_root INTO DATA(lx_zero).
*        out->write( lx_zero->get_text( ) ).
*
**      CATCH cx_sy_zerodivide INTO DATA(lx_zero).
**        out->write( lx_zero->get_text( ) ).
**
**        out->write( 'Finish try' ).
**
**        lv_num2 = 5.
**        RETRY.
*
*    ENDTRY.
*
*    TRY.
*        lo_auth->check_user( sy-uname ).
*
*      CATCH cx_root INTO DATA(lx_auth) .
*      "CATCH zcx_01_auth_log_c384 INTO DATA(lx_auth) .
*        "out->write( 'Exception Handle' ).
*        out->write( lx_auth->get_text( ) ).
*
*
*    ENDTRY.
*
*    out->write( lv_result ).

* Pattern - Singleton
    DATA: lo_singleton1 TYPE REF TO zcl_30_singleton_log_c384,
          lo_singleton2 TYPE REF TO zcl_30_singleton_log_c384.

    lo_singleton1 = zcl_30_singleton_log_c384=>get_instance( ).
    WAIT UP TO 2 SECONDS.

    lo_singleton2 = zcl_30_singleton_log_c384=>get_instance( ).

    out->write( lo_singleton1->time ).
    out->write( lo_singleton2->time ).




















  ENDMETHOD.

ENDCLASS.
