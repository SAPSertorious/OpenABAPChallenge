*&---------------------------------------------------------------------*
*& Report  ZTEST_ABAPLINT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ztest_abaplint.
DATA: mt_tab TYPE TABLE OF sflight.

SELECT *
  FROM sflight
  INTO TABLE mt_tab.
  CHECK sy-subrc IS INITIAL.
