# openapi::ProgramSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**commonCropNames** | **array[character]** | Common name for the crop which this program is for | [optional] 
**programDbIds** | **array[character]** | A program identifier to search for | [optional] 
**programNames** | **array[character]** | A name of a program to search for | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**abbreviations** | **array[character]** | An abbreviation of a program to search for | [optional] 
**leadPersonDbIds** | **array[character]** | The person DbIds of the program leader to search for | [optional] 
**leadPersonNames** | **array[character]** | The names of the program leader to search for | [optional] 
**objectives** | **array[character]** | A program objective to search for | [optional] 


