@EndUserText.label: 'TF para Documentos Financieros'
@ClientHandling.type: #CLIENT_INDEPENDENT
@OData.entitySet.name: 'AccountingDocs'
define table function ZTF_ACC_DOC_T100048
  with parameters
    p_company : bukrs,
    p_year    : gjahr
returns
{

  key doc_number  : belnr_d; //(columna clave)
  key item_number : buzei;   //(columna clave)
      doc_amount  : wrbtr;
      currency    : waers;

}
implemented by method
  ZCL_DOC_AMOUNT_T100048=>GET_DOC_AMOUNT;
