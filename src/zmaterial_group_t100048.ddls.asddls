@AbapCatalog.sqlViewName: 'ZMATG_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Grupo de Materiales'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialGroup'
define view ZMATERIAL_GROUP_T100048
  as select from t023
  association [1..*] to ZMATERIAL_GROUPTEXT_T100048 as _Text on $projection.MaterialGroup = _Text.MaterialGroup
{
      @ObjectModel.text.association: '_Text'
  key t023.matkl as MaterialGroup,
      _Text

}
