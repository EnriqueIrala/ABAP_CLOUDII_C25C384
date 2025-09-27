CLASS zcl_exec_01_lgl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_01_lgl IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*  out->write( 'Hola Logali' ).

* Instances
*    DATA: lo_instance2 TYPE REF TO zcl_02_instances_lgl.
*
*    CREATE OBJECT lo_instance2.
*
*    DATA(lo_instance) = NEW zcl_02_instances_lgl( ).
*
*    out->write( zcl_02_instances_lgl=>log ).
*
*    out->write( lo_instance->log ).
*
*    DATA(lo_instance2) = NEW zcl_02_instances_lgl( ).
*
*    out->write( lo_instance2->log ).

* Heritance
*    DATA(lo_heritance) = NEW zcl_04_heritance_child_lgl( ).
*
*    out->write( lo_heritance->get_architecture( ) ).
*    out->write( lo_heritance->memory ).
*
*
** Narrowing Cast - UP Cast
*    DATA(lo_animal) = NEW zcl_05_animal_lgl( ).
*    DATA(lo_lion) = NEW zcl_06_lion_lgl( ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    lo_animal = lo_lion.
*
*    out->write( 'Up' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
** Widening cast - Down cast
*    lo_lion ?= lo_animal.
*
*    out->write( 'Down' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).

* Instances Encaptulation

    DATA(lo_instance) = NEW zcl_07_heritance_ins_lgl(  ).






























  ENDMETHOD.

ENDCLASS.
