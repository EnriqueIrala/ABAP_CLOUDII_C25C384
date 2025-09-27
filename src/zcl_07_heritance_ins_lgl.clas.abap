CLASS zcl_07_heritance_ins_lgl DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_09_friends_lgl .

  PUBLIC SECTION.

    METHODS: get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_07_heritance_ins_lgl.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: attribute.

    METHODS: mymethod IMPORTING iv_value TYPE string.

ENDCLASS.



CLASS zcl_07_heritance_ins_lgl IMPLEMENTATION.

  METHOD get_instance.

    ro_instance = NEW zcl_07_heritance_ins_lgl( ).

  ENDMETHOD.

  METHOD mymethod.

  ENDMETHOD.

ENDCLASS.
