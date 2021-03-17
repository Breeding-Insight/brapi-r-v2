# CallsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CallsGet**](CallsApi.md#CallsGet) | **GET** /calls | Gets a filtered list of &#x60;Calls&#x60;
[**SearchCallsPost**](CallsApi.md#SearchCallsPost) | **POST** /search/calls | Submit a search request for &#x60;Calls&#x60;
[**SearchCallsSearchResultsDbIdGet**](CallsApi.md#SearchCallsSearchResultsDbIdGet) | **GET** /search/calls/{searchResultsDbId} | Returns a filtered list of &#x60;Call&#x60; JSON objects.


# **CallsGet**
> CallsListResponse CallsGet(call.set.db.id=var.call.set.db.id, variant.db.id=var.variant.db.id, variant.set.db.id=var.variant.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a filtered list of `Calls`

Gets a filtered list of `Call` JSON objects.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.expand.homozygotes <- 'expand.homozygotes_example' # character | Should homozygotes be expanded (true) or collapsed into a single occurrence (false)
var.unknown.string <- 'unknown.string_example' # character | The string to use as a representation for missing data
var.sep.phased <- 'sep.phased_example' # character | The string to use as a separator for phased allele calls
var.sep.unphased <- 'sep.unphased_example' # character | The string to use as a separator for unphased allele calls
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a filtered list of `Calls`
api.instance <- CallsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CallsGet(call.set.db.id=var.call.set.db.id, variant.db.id=var.variant.db.id, variant.set.db.id=var.variant.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | [optional] 
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | [optional] 
 **expand.homozygotes** | **character**| Should homozygotes be expanded (true) or collapsed into a single occurrence (false) | [optional] 
 **unknown.string** | **character**| The string to use as a representation for missing data | [optional] 
 **sep.phased** | **character**| The string to use as a separator for phased allele calls | [optional] 
 **sep.unphased** | **character**| The string to use as a separator for unphased allele calls | [optional] 
 **page.token** | **character**| Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CallsListResponse**](CallsListResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |

# **SearchCallsPost**
> CallsListResponse SearchCallsPost(authorization=var.authorization, calls.search.request=var.calls.search.request)

Submit a search request for `Calls`

Submit a search request for `Calls`  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.calls.search.request <- CallsSearchRequest$new(123, "pageToken_example", list("callSetDbIds_example"), "expandHomozygotes_example", "sepPhased_example", "sepUnphased_example", "unknownString_example", list("variantDbIds_example"), list("variantSetDbIds_example")) # CallsSearchRequest | Study Search request

#Submit a search request for `Calls`
api.instance <- CallsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchCallsPost(authorization=var.authorization, calls.search.request=var.calls.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **calls.search.request** | [**CallsSearchRequest**](CallsSearchRequest.md)| Study Search request | [optional] 

### Return type

[**CallsListResponse**](CallsListResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **202** | Accepted |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |

# **SearchCallsSearchResultsDbIdGet**
> CallsListResponse SearchCallsSearchResultsDbIdGet(search.results.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Returns a filtered list of `Call` JSON objects.

Returns a filtered list of `Call` JSON objects.  See Search Services for additional implementation details.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Returns a filtered list of `Call` JSON objects.
api.instance <- CallsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchCallsSearchResultsDbIdGet(var.search.results.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search.results.db.id** | **character**| Unique identifier which references the search results | 
 **page.token** | **character**| Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CallsListResponse**](CallsListResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **202** | Accepted |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |

