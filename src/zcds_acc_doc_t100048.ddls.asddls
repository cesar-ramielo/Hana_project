@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS consume TF - Documentos Financieros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity ZCDS_ACC_DOC_T100048
  with parameters
    p_company : bukrs,
    p_year    : gjahr
  as select from ZTF_ACC_DOC_T100048( p_company: $parameters.p_company , p_year: $parameters.p_year)
{
  key doc_number  as DocumentFI,  
  key item_number as ItemDoc,
      @Semantics.amount.currencyCode: 'CurrencyDoc'
      doc_amount  as AmountDoc,  
      currency    as CurrencyDoc  
}


//  /sap/opu/odata/sap/ZCDS_ACC_DOC_T100048_CDS/ZCDS_ACC_DOC_T100048(p_company='1010',p_year='2022')/Set/?$format=json

//  /sap/opu/odata/sap/ZCDS_ACC_DOC_T100048_CDS/ZCDS_ACC_DOC_T100048Set(p_company='1010',p_year='2022',DocumentFI='4800000000',ItemDoc='001')?$format=json
    
