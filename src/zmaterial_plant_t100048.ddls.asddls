@AbapCatalog.sqlViewName: 'ZMATC_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Centro de material'
@ObjectModel.representativeKey: 'Plant'
define view ZMATERIAL_PLANT_T100048 as select from marc
{
    @EndUserText.label: 'Material'
    key matnr  as Material,
    @EndUserText.label: 'Centro'
    key werks  as Plant
}
