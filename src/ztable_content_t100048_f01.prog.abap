*&---------------------------------------------------------------------*
*& Include          ZTABLE_CONTENT_T100048_F01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form clear_content
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM clear_content .

  IF go_alv_display IS BOUND.
    go_alv_display->free( ).
  ENDIF.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form init_2000
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM init_2000 .

  CHECK NOT gv_table IS INITIAL.

  gv_prev_table = gv_table.

  IF go_cust_cont IS NOT BOUND.
    go_cust_cont = NEW #( 'ALV_CONT' ).
  ENDIF.

  TRY.
      go_alv_display =  cl_salv_gui_table_ida=>create(
          EXPORTING
            iv_table_name         =  gv_table        " Name of table for database access
            io_gui_container      =  go_cust_cont ). " Container for ALV display

    CATCH cx_salv_db_connection INTO DATA(lcx_connect).          " Error connecting to database
      MESSAGE lcx_connect->get_text( ) TYPE 'I'.
    CATCH cx_salv_db_table_not_supported INTO DATA(lcx_table).   " DB table / view is not supported
      MESSAGE lcx_table->get_text( ) TYPE 'I'.
    CATCH cx_salv_ida_contract_violation INTO DATA(lcx_cont_vio)." IDA API contract violated by caller
      MESSAGE lcx_cont_vio->get_text( ) TYPE 'I'.
  ENDTRY.

ENDFORM.
