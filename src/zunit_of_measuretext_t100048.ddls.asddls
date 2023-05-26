@AbapCatalog.sqlViewName: 'ZUOMT_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto Unidades de medida'
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'UnitOfMeasure' }
define view ZUNIT_OF_MEASURETEXT_T100048
  as select from t006a
{
      @Semantics.language: true
  key spras as Language,
      @Semantics.unitOfMeasure: true
  key msehi as UnitOfMeasure,
      @Semantics.text: true
      msehl as UnitOfMeasureLongName,
      @Semantics.text: true
      mseht as UnitOfMeasureName,
      @Semantics.text: true
      mseh6 as UnitOfMeasureTechnicalName

}
