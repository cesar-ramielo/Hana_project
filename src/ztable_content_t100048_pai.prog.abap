*&---------------------------------------------------------------------*
*& Include          ZTABLE_CONTENT_T100048_PAI
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_2000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_2000 INPUT.

  CASE sy-ucomm.

    WHEN 'BACK'.
      LEAVE TO SCREEN 0.
      PERFORM clear_content.
    WHEN OTHERS.
  ENDCASE.

  IF  gv_prev_table NE gv_table.
    PERFORM clear_content.
  ENDIF.

ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_EXIT_2000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_exit_2000 INPUT.

  CASE sy-ucomm.

    WHEN 'EXIT'.
      LEAVE TO SCREEN 0.
      PERFORM clear_content.
    WHEN OTHERS.
  ENDCASE.

ENDMODULE.
