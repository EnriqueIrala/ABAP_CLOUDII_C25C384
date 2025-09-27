CLASS zcl_05_animal_lgl DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: walk RETURNING VALUE(rv_walk) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_animal_lgl IMPLEMENTATION.

  METHOD walk.
     rv_walk = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
