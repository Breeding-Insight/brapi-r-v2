# openapi::VariantsSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**pageToken** | **character** | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  | [optional] 
**callSetDbIds** | **array[character]** | Only return variant calls which belong to call sets with these IDs. If unspecified, return all variants and no variant call objects. | [optional] 
**end** | **integer** | The end of the window (0-based, exclusive) for which overlapping variants should be returned. | [optional] 
**referenceDbId** | **character** | Only return variants on this reference. | [optional] 
**start** | **integer** | The beginning of the window (0-based, inclusive) for which overlapping variants should be returned. Genomic positions are non-negative integers less than reference length. Requests spanning the join of circular genomes are represented as two requests one on each side of the join (position 0). | [optional] 
**variantDbIds** | **array[character]** | The &#x60;Variant&#x60;s to search. | [optional] 
**variantSetDbIds** | **array[character]** | The &#x60;VariantSet&#x60; to search. | [optional] 


