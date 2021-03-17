# openapi::IndexPagination

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pageSize** | **integer** | The number of data elements returned, aka the size of the current page. If the requested page does not have enough elements to fill a page at the requested page size, this field should indicate the actual number of elements returned. | [default to 1000]
**totalCount** | **integer** | The total number of elements that are available on the server and match the requested query parameters. | [optional] 
**totalPages** | **integer** | The total number of pages of elements available on the server. This should be calculated with the following formula.   totalPages &#x3D; CEILING( totalCount / requested_page_size) | [optional] 
**currentPage** | **integer** | The index number for the returned page of data. This should always match the requested page number or the default page (0). | [default to 0]


