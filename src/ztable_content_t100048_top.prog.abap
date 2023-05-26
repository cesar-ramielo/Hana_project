*&---------------------------------------------------------------------*
*& Include ztable_content_t100048_top
*&---------------------------------------------------------------------*
data: gv_table       type tabname,
      gv_prev_table  type tabname,

      go_alv_display type ref to if_salv_gui_table_ida,
      go_cust_cont   type REF TO cl_gui_custom_container.
