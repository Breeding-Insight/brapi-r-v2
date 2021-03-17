# openapi::CallsSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**pageToken** | **character** | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  | [optional] 
**callSetDbIds** | **array[character]** | The CallSet to search. | [optional] 
**expandHomozygotes** | **character** | Should homozygotes be expanded (true) or collapsed into a single occurrence (false) | [optional] 
**sepPhased** | **character** | The string used as a separator for phased allele calls. | [optional] 
**sepUnphased** | **character** | The string used as a separator for unphased allele calls. | [optional] 
**unknownString** | **character** | The string used as a representation for missing data. | [optional] 
**variantDbIds** | **array[character]** | The Variant to search. | [optional] 
**variantSetDbIds** | **array[character]** | The VariantSet to search. | [optional] 


