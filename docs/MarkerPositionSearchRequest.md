# openapi::MarkerPositionSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**linkageGroupNames** | **array[character]** | The Uniquely Identifiable name of this linkage group | [optional] 
**mapDbIds** | **array[character]** | The unique ID of the map | [optional] 
**maxPosition** | **integer** | The maximum position | [optional] 
**minPosition** | **integer** | The minimum position | [optional] 
**variantDbIds** | **array[character]** | Internal db identifier | [optional] 


