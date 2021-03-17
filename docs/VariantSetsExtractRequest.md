# openapi::VariantSetsExtractRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**callSetDbIds** | **array[character]** | The CallSet to search. | [optional] 
**expandHomozygotes** | **character** | Should homozygotes be expanded (true) or collapsed into a single occurrence (false) | [optional] 
**sepPhased** | **character** | The string used as a separator for phased allele calls. | [optional] 
**sepUnphased** | **character** | The string used as a separator for unphased allele calls. | [optional] 
**unknownString** | **character** | The string used as a representation for missing data. | [optional] 
**variantDbIds** | **array[character]** | The Variant to search. | [optional] 
**variantSetDbIds** | **array[character]** | The VariantSet to search. | [optional] 


