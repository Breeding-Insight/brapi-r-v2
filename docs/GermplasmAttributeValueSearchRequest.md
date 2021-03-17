# openapi::GermplasmAttributeValueSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**germplasmDbIds** | **array[character]** | List of IDs which uniquely identify germplasm to search for | [optional] 
**germplasmNames** | **array[character]** | List of human readable names to identify germplasm to search for | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**attributeDbIds** | **array[character]** | List of Germplasm Attribute IDs to search for | [optional] 
**attributeNames** | **array[character]** | List of human readable Germplasm Attribute names to search for | [optional] 
**attributeValueDbIds** | **array[character]** | List of Germplasm Attribute Value IDs to search for | [optional] 
**dataTypes** | [**array[TraitDataType]**](TraitDataType.md) | List of scale data types to filter search results | [optional] 
**methodDbIds** | **array[character]** | List of methods to filter search results | [optional] 
**ontologyDbIds** | **array[character]** | List of ontology IDs to search for | [optional] 
**scaleDbIds** | **array[character]** | List of scales to filter search results | [optional] 
**traitClasses** | **array[character]** | List of trait classes to filter search results | [optional] 
**traitDbIds** | **array[character]** | List of trait unique ID to filter search results | [optional] 


