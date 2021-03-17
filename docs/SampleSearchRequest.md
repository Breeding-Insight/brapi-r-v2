# openapi::SampleSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**germplasmDbIds** | **array[character]** | List of IDs which uniquely identify germplasm to search for | [optional] 
**germplasmNames** | **array[character]** | List of human readable names to identify germplasm to search for | [optional] 
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**observationUnitDbIds** | **array[character]** | The ID which uniquely identifies an observation unit | [optional] 
**plateDbIds** | **array[character]** | The ID which uniquely identifies a plate of samples | [optional] 
**sampleDbIds** | **array[character]** | The ID which uniquely identifies a sample | [optional] 


