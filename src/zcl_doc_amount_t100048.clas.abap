CLASS zcl_doc_amount_t100048 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS get_doc_amount FOR TABLE FUNCTION ztf_acc_doc_t100048.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_doc_amount_t100048 IMPLEMENTATION.

  METHOD get_doc_amount BY DATABASE FUNCTION FOR HDB
                                  LANGUAGE SQLSCRIPT
                                  OPTIONS READ-ONLY.

    RETURN   SELECT
                   belnr AS doc_number,
                   buzei AS item_number,
                   wrbtr AS doc_amount,
                   waers AS currency
              FROM "_SYS_BIC"."ZABAP_HANA_TRAINING.T100048/ZACC_DOC_AMOUNT_T100048"
*              where bukrs = :p_company
*                and gjahr = :p_year
              order BY doc_number, item_number;


  ENDMETHOD.

ENDCLASS.
