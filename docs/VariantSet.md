# openapi::VariantSet

A VariantSet is a collection of variants and variant calls intended to be analyzed together.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**analysis** | [**array[Analysis]**](Analysis.md) | Set of Analysis descriptors for this VariantSet | [optional] 
**availableFormats** | [**array[VariantSetAvailableFormats]**](VariantSet_availableFormats.md) | When the data for a VariantSet is retrieved, it can be retrieved in a variety of data formats and file formats.   dataFormat defines the structure of the data within a file (ie DartSeq, VCF, Hapmap, tabular, etc)  fileFormat defines the MIME type of the file (ie text/csv, application/excel, application/zip). This should also be reflected in the Accept and ContentType HTTP headers for every relevant request and response. | [optional] 
**callSetCount** | **integer** | The number of CallSets included in this VariantSet | [optional] 
**referenceSetDbId** | **character** | The ID of the reference set that describes the sequences used by the variants in this set. | [optional] 
**studyDbId** | **character** | The ID of the dataset this variant set belongs to. | [optional] 
**variantCount** | **integer** | The number of Variants included in this VariantSet | [optional] 
**variantSetDbId** | **character** | The variant set ID. | [optional] 
**variantSetName** | **character** | The variant set name. | [optional] 


