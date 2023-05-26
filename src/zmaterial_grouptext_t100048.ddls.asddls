@AbapCatalog.sqlViewName: 'ZMATGT_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto del grupo de materiales'
@VDM.viewType: #BASIC
@ObjectModel: {
   representativeKey: 'MaterialGroup',
   dataCategory: #TEXT }
define view ZMATERIAL_GROUPTEXT_T100048
  as select from t023t
{
  key matkl   as MaterialGroup,
      @Semantics.language: true
  key spras   as Language,
      @Semantics.text: true
      wgbez   as MaterialGroupName,
      @Semantics.text: true
      wgbez60 as MaterialGroupText
}
