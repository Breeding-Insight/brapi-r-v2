# openapi::ListSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**dateCreatedRangeEnd** | **character** |  | [optional] 
**dateCreatedRangeStart** | **character** |  | [optional] 
**dateModifiedRangeEnd** | **character** |  | [optional] 
**dateModifiedRangeStart** | **character** |  | [optional] 
**listDbIds** | **array[character]** |  | [optional] 
**listNames** | **array[character]** |  | [optional] 
**listOwnerNames** | **array[character]** |  | [optional] 
**listOwnerPersonDbIds** | **array[character]** |  | [optional] 
**listSources** | **array[character]** |  | [optional] 
**listType** | [**ListTypes**](ListTypes.md) |  | [optional] 


