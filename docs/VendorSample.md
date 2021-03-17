# openapi::VendorSample

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientSampleBarCode** | **character** | (Optional) The value of the bar code attached to this sample | [optional] 
**clientSampleId** | **character** | The ID which uniquely identifies this sample to the client making the request | 
**column** | **integer** | The Column identifier for this samples location in the plate | [optional] 
**comments** | **character** | Generic comments about this sample for the vendor | [optional] 
**concentration** | [**Measurement**](Measurement.md) |  | [optional] 
**organismName** | **character** | Scientific organism name | [optional] 
**row** | **character** | The Row identifier for this samples location in the plate | [optional] 
**speciesName** | **character** | Scientific species name | [optional] 
**taxonomyOntologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**tissueType** | **character** | The type of tissue in this sample. List of accepted tissue types can be found in the Vendor Specs. | [optional] 
**tissueTypeOntologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**volume** | [**Measurement**](Measurement.md) |  | [optional] 
**well** | **character** | The Well identifier for this samples location in the plate. Usually a concatenation of Row and Column, or just a number if the samples are not part of an ordered plate. | [optional] 


