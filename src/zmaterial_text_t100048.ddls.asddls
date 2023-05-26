@AbapCatalog.sqlViewName: 'ZMAT_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto del material'
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'Material' }

define view ZMATERIAL_TEXT_T100048
  as select from makt
{

  key matnr as Material,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      maktx as MateriaName

}
