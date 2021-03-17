# openapi::GermplasmSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**commonCropNames** | **array[character]** | Common name for the crop which this program is for | [optional] 
**germplasmDbIds** | **array[character]** | List of IDs which uniquely identify germplasm to search for | [optional] 
**germplasmNames** | **array[character]** | List of human readable names to identify germplasm to search for | [optional] 
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**accessionNumbers** | **array[character]** | List unique identifiers for accessions within a genebank | [optional] 
**collections** | **array[character]** | A specific panel/collection/population name this germplasm belongs to. | [optional] 
**genus** | **array[character]** | List of Genus names to identify germplasm | [optional] 
**germplasmPUIs** | **array[character]** | List of Permanent Unique Identifiers to identify germplasm | [optional] 
**parentDbIds** | **array[character]** | Search for Germplasm with these parents | [optional] 
**progenyDbIds** | **array[character]** | Search for Germplasm with these children | [optional] 
**species** | **array[character]** | List of Species names to identify germplasm | [optional] 
**synonyms** | **array[character]** | List of alternative names or IDs used to reference this germplasm | [optional] 


