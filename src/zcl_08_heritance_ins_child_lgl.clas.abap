CLASS zcl_08_heritance_ins_child_lgl DEFINITION INHERITING FROM zcl_09_friends_lgl
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    METHODS: get_super_friend.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_heritance_ins_child_lgl IMPLEMENTATION.

  METHOD get_super_friend.

    data(lo_instance) = new zcl_07_heritance_ins_lgl( ).

    data(lv_attribute) = lo_instance->attribute.

    lo_instance->mymethod( 'My value' ).

  ENDMETHOD.

ENDCLASS.
