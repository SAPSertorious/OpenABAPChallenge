*&---------------------------------------------------------------------*
*& Report  ZTEST_ABAPLINT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ztest_abaplint.
DATA: mt_tab TYPE TABLE OF sflight,
      ms_tab TYPE sflight.

SELECT *
  FROM sflight
  INTO TABLE mt_tab.
CHECK sy-subrc IS INITIAL.
LOOP AT mt_tab INTO ms_tab.

ENDLOOP.
