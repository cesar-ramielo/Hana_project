@AbapCatalog.sqlViewName: 'ZMATER_T100048'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datos Generales de Material'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
@ObjectModel.representativeKey: 'Material'
define view ZMATERIAL_T100048
  as select from mara

  association [0..*] to ZMATERIAL_TEXT_T100048   as _Text          on $projection.Material = _Text.Material
  association [0..1] to ZMATERIAL_TYPE_T100048   as _MaterialType  on $projection.MaterialType = _MaterialType.MaterialType
  association [0..1] to ZMATERIAL_GROUP_T100048  as _MaterialGroup on $projection.MaterialGroup = _MaterialGroup.MaterialGroup
  association [0..1] to ZUNIT_OF_MEASURE_T100048 as _BaseUnit      on $projection.MaterialBaseUnit = _BaseUnit.UnitOfMeasure
  association [0..1] to ZUNIT_OF_MEASURE_T100048 as _WeightUnit    on $projection.MaterialWeightUnit = _WeightUnit.UnitOfMeasure
  association [0..*] to ZMATERIAL_PLANT_T100048  as _MaterialPlant on $projection.Material = _MaterialPlant.Material
{

      @ObjectModel.text.association: '_Text'
  key mara.matnr as Material,
      _Text,
      @EndUserText.label: 'Material Type'
      mara.mtart as MaterialType,
      _MaterialType,
      @EndUserText.label: 'Material Group'
      mara.matkl as MaterialGroup,
      _MaterialGroup,
      @EndUserText.label: 'Material UOM'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_BaseUnit'
      mara.meins as MaterialBaseUnit,
      _BaseUnit,
      @EndUserText.label: 'Gross Weight'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      @DefaultAggregation: #SUM
      mara.brgew as MaterialGrossWeight,
      @EndUserText.label: 'Net Weight'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      @DefaultAggregation: #SUM
      mara.ntgew as MaterialNetWeight,
      @EndUserText.label: 'Weight Unit'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_WeightUnit'
      mara.gewei as MaterialWeightUnit,
      _WeightUnit,
      _MaterialPlant

}
