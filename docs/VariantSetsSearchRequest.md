# openapi::VariantSetsSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**callSetDbIds** | **array[character]** | The CallSet to search. | [optional] 
**variantDbIds** | **array[character]** | The Variant to search. | [optional] 
**variantSetDbIds** | **array[character]** | The VariantSet to search. | [optional] 


