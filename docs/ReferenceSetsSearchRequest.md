# openapi::ReferenceSetsSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**accessions** | **array[character]** | If set, return the reference sets for which the &#x60;accession&#x60; matches this string (case-sensitive, exact match). | [optional] 
**assemblyPUIs** | **array[character]** | If set, return the reference sets for which the &#x60;assemblyId&#x60; matches this string (case-sensitive, exact match). | [optional] 
**md5checksums** | **array[character]** | If set, return the reference sets for which the &#x60;md5checksum&#x60; matches this string (case-sensitive, exact match). | [optional] 
**referenceSetDbIds** | **array[character]** | The &#x60;ReferenceSets&#x60; to search. | [optional] 


