CLASS zcl_fill_zvbak_zvbap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: mty_sflight TYPE STANDARD TABLE OF zvbak WITH EMPTY KEY.
    METHODS: test1 RETURNING VALUE(rt_zvbak) TYPE mty_sflight,
      test2.
ENDCLASS.



CLASS zcl_fill_zvbak_zvbap IMPLEMENTATION.


  METHOD test1.
    SELECT *
      FROM zvbak
      WHERE zauart = 'OR'
      INTO TABLE @rt_zvbak.
  ENDMETHOD.


  METHOD test2.
    DATA(lt_zvbak) = test1( ).

  ENDMETHOD.
ENDCLASS.
