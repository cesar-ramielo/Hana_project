@AbapCatalog.sqlViewName: 'ZMATTT_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto del Tipo de material'
@VDM.viewType: #BASIC
@ObjectModel: { representativeKey: 'MaterialType',
                dataCategory: #TEXT }
define view ZMATERIAL_TYPETEXT_T100048
  as select from t134t
{
  key mtart as MaterialType,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      mtbez as MaterialTypeName
}
