@AbapCatalog.sqlViewName: 'ZUOM_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unidades de medida'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'UnitOfMeasure'
define view ZUNIT_OF_MEASURE_T100048
  as select from t006
  association [1..*] to ZUNIT_OF_MEASURETEXT_T100048 as _Text on $projection.UnitOfMeasure = _Text.UnitOfMeasure
{

      @Semantics.unitOfMeasure: true
  key t006.msehi   as UnitOfMeasure,
      _Text,
      t006.isocode as UnitOfMeasureISOCode,
      t006.andec   as UnitOfMeasureNumberOfDecimals,
      t006.decan   as UnitOfMeasureDspNmbrOfDcmls

}
