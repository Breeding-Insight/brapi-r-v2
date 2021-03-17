# openapi::CallSetsSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**germplasmDbIds** | **array[character]** | List of IDs which uniquely identify germplasm to search for | [optional] 
**germplasmNames** | **array[character]** | List of human readable names to identify germplasm to search for | [optional] 
**callSetDbIds** | **array[character]** | Only return call sets with these DbIds (case-sensitive, exact match). | [optional] 
**callSetNames** | **array[character]** | Only return call sets with these names (case-sensitive, exact match). | [optional] 
**sampleDbIds** | **array[character]** | Return only call sets generated from the provided Biosample IDs. | [optional] 
**sampleNames** | **array[character]** | Return only call sets generated from the provided Biosample human readable names. | [optional] 
**variantSetDbIds** | **array[character]** | The VariantSet to search. | [optional] 


