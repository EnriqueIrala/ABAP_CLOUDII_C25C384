CLASS zcl_09_friends_lgl DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS: get_friend.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_friends_lgl IMPLEMENTATION.

  METHOD get_friend.

    data(lo_instance) = new zcl_07_heritance_ins_lgl( ).

    data(lv_attribute) = lo_instance->attribute.

    lo_instance->mymethod( 'My value' ).

  ENDMETHOD.

ENDCLASS.
