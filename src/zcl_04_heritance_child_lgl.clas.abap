CLASS zcl_04_heritance_child_lgl DEFINITION INHERITING FROM zcl_03_heritance_lgl
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: memory TYPE string.

    METHODS: constructor,
      get_architecture REDEFINITION.
    "  get_memory_size REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_heritance_child_lgl IMPLEMENTATION.

  METHOD constructor.

    super->constructor( '32 bits' ).

    me->memory = '256 GB'.

  ENDMETHOD.

  METHOD get_architecture.

    super->get_architecture( ).

    IF me->architecture = '32 bits'.
      rv_architecture = 'Windows'.
      super->get_architecture( ).
    ENDIF.

    super->get_architecture( ).

  ENDMETHOD.



ENDCLASS.
