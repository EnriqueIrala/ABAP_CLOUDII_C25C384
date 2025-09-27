CLASS zcl_02_instances_lgl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   class-data: log type string.

   METHODS: constructor.

   CLASS-METHODS: class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_instances_lgl IMPLEMENTATION.

  METHOD class_constructor.

   log = |{ log }-Static Constructor-->|.

  ENDMETHOD.

  METHOD constructor.

    log = |{ log }-Instance Constructor-->|.

  ENDMETHOD.

ENDCLASS.
