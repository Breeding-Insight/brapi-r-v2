# CallSetsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CallsetsCallSetDbIdCallsGet**](CallSetsApi.md#CallsetsCallSetDbIdCallsGet) | **GET** /callsets/{callSetDbId}/calls | Gets a list of &#x60;Calls&#x60; associated with a &#x60;CallSet&#x60;.
[**CallsetsCallSetDbIdGet**](CallSetsApi.md#CallsetsCallSetDbIdGet) | **GET** /callsets/{callSetDbId} | Gets a &#x60;CallSet&#x60; by ID.
[**CallsetsGet**](CallSetsApi.md#CallsetsGet) | **GET** /callsets | Gets a filtered list of &#x60;CallSet&#x60; JSON objects.
[**SearchCallsetsPost**](CallSetsApi.md#SearchCallsetsPost) | **POST** /search/callsets | Gets a list of call sets matching the search criteria.
[**SearchCallsetsSearchResultsDbIdGet**](CallSetsApi.md#SearchCallsetsSearchResultsDbIdGet) | **GET** /search/callsets/{searchResultsDbId} | Gets a list of call sets matching the search criteria.


# **CallsetsCallSetDbIdCallsGet**
> CallsListResponse CallsetsCallSetDbIdCallsGet(call.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a list of `Calls` associated with a `CallSet`.

Gets a list of `Calls` associated with a `CallSet`.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.expand.homozygotes <- 'expand.homozygotes_example' # character | Should homozygotes be expanded (true) or collapsed into a single occurrence (false)
var.unknown.string <- 'unknown.string_example' # character | The string to use as a representation for missing data
var.sep.phased <- 'sep.phased_example' # character | The string to use as a separator for phased allele calls
var.sep.unphased <- 'sep.unphased_example' # character | The string to use as a separator for unphased allele calls
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `Calls` associated with a `CallSet`.
api.instance <- CallSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CallsetsCallSetDbIdCallsGet(var.call.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | 
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

# **CallsetsCallSetDbIdGet**
> CallSetResponse CallsetsCallSetDbIdGet(call.set.db.id, authorization=var.authorization)

Gets a `CallSet` by ID.

Gets a `CallSet` by ID.

### Example
```R
library(openapi)

var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `CallSet` by ID.
api.instance <- CallSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CallsetsCallSetDbIdGet(var.call.set.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CallSetResponse**](callSetResponse.md)

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
| **404** | Not Found |  -  |

# **CallsetsGet**
> CallSetsListResponse CallsetsGet(call.set.db.id=var.call.set.db.id, call.set.name=var.call.set.name, variant.set.db.id=var.variant.set.db.id, sample.db.id=var.sample.db.id, germplasm.db.id=var.germplasm.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a filtered list of `CallSet` JSON objects.

Gets a filtered list of `CallSet` JSON objects.

### Example
```R
library(openapi)

var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.call.set.name <- 'call.set.name_example' # character | The human readable name of the `CallSet` to be retrieved.
var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.sample.db.id <- 'sample.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.germplasm.db.id <- 'germplasm.db.id_example' # character | Return only call sets generated from the Sample of this Germplasm
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a filtered list of `CallSet` JSON objects.
api.instance <- CallSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CallsetsGet(call.set.db.id=var.call.set.db.id, call.set.name=var.call.set.name, variant.set.db.id=var.variant.set.db.id, sample.db.id=var.sample.db.id, germplasm.db.id=var.germplasm.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
 **call.set.name** | **character**| The human readable name of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | [optional] 
 **sample.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | [optional] 
 **germplasm.db.id** | **character**| Return only call sets generated from the Sample of this Germplasm | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CallSetsListResponse**](CallSetsListResponse.md)

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

# **SearchCallsetsPost**
> CallSetsListResponse SearchCallsetsPost(authorization=var.authorization, call.sets.search.request=var.call.sets.search.request)

Gets a list of call sets matching the search criteria.

Gets a list of call sets matching the search criteria.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.call.sets.search.request <- callSetsSearchRequest$new(123, 123, list("germplasmDbIds_example"), list("germplasmNames_example"), list("callSetDbIds_example"), list("callSetNames_example"), list("sampleDbIds_example"), list("sampleNames_example"), list("variantSetDbIds_example")) # CallSetsSearchRequest | Study Search request

#Gets a list of call sets matching the search criteria.
api.instance <- CallSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchCallsetsPost(authorization=var.authorization, call.sets.search.request=var.call.sets.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **call.sets.search.request** | [**CallSetsSearchRequest**](CallSetsSearchRequest.md)| Study Search request | [optional] 

### Return type

[**CallSetsListResponse**](CallSetsListResponse.md)

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

# **SearchCallsetsSearchResultsDbIdGet**
> CallSetsListResponse SearchCallsetsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of call sets matching the search criteria.

Gets a list of call sets matching the search criteria.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of call sets matching the search criteria.
api.instance <- CallSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchCallsetsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search.results.db.id** | **character**| Unique identifier which references the search results | 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CallSetsListResponse**](CallSetsListResponse.md)

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

