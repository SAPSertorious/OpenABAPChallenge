CLASS zcl_fill_zvbak_zvbap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS: test1,
      test2.
ENDCLASS.



CLASS zcl_fill_zvbak_zvbap IMPLEMENTATION.
  METHOD test1.
    SELECT *
    FROM zvbak
    WHERE zauart = 'OR'
    INTO TABLE @DATA(lt_sflight).
  ENDMETHOD.

  METHOD test2.
  me->test1( ).
  ENDMETHOD.
ENDCLASS.
