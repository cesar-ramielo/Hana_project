@AbapCatalog.sqlViewName: 'ZMATT_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipo de material'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialType'
define view ZMATERIAL_TYPE_T100048 as select from t134 
association [0..*] to ZMATERIAL_TYPETEXT_T100048 as _Text on _Text.MaterialType = $projection.MaterialType
{
    @ObjectModel.text.association: '_Text'
    key t134.mtart as MaterialType,
    _Text
    
}
