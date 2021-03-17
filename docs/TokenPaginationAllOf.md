# openapi::TokenPaginationAllOf

The pagination object is applicable only when the payload contains a \"data\" key. It describes the pagination of the data contained in the \"data\" array, as a way to identify which subset of data is being returned.   Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken to construct an additional query and move to the next or previous page respectively.  
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPageToken** | **character** | The string token used to query the current page of data. | [optional] 
**nextPageToken** | **character** | The string token used to query the next page of data. | 
**prevPageToken** | **character** | The string token used to query the previous page of data. | [optional] 


