# openapi::IndexPaginationAllOf

The pagination object is applicable only when the payload contains a \"data\" key. It describes the pagination of the data contained in the \"data\" array, as a way to identify which subset of data is being returned.   Pages are zero indexed, so the first page will be page 0 (zero).
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPage** | **integer** | The index number for the returned page of data. This should always match the requested page number or the default page (0). | [default to 0]


