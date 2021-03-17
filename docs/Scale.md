# openapi::Scale

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**dataType** | [**TraitDataType**](TraitDataType.md) |  | [optional] 
**decimalPlaces** | **integer** | For numerical, number of decimal places to be reported | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**ontologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**scaleName** | **character** | Name of the scale  MIAPPE V1.1 (DM-92) Scale Name of the scale associated with the variable | 
**validValues** | [**ScaleBaseClassValidValues**](ScaleBaseClass_validValues.md) |  | [optional] 
**scaleDbId** | **character** | Unique identifier of the scale. If left blank, the upload system will automatically generate a scale ID. | 


