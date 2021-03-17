# VariantsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchVariantsPost**](VariantsApi.md#SearchVariantsPost) | **POST** /search/variants | Gets a list of &#x60;Variant&#x60; matching the search criteria.
[**SearchVariantsSearchResultsDbIdGet**](VariantsApi.md#SearchVariantsSearchResultsDbIdGet) | **GET** /search/variants/{searchResultsDbId} | Gets a list of &#x60;Variant&#x60; matching the search criteria.
[**VariantsGet**](VariantsApi.md#VariantsGet) | **GET** /variants | Gets a filtered list of &#x60;Variants&#x60;.
[**VariantsVariantDbIdCallsGet**](VariantsApi.md#VariantsVariantDbIdCallsGet) | **GET** /variants/{variantDbId}/calls | Gets a list of &#x60;Calls&#x60; associated with a &#x60;Variant&#x60;.
[**VariantsVariantDbIdGet**](VariantsApi.md#VariantsVariantDbIdGet) | **GET** /variants/{variantDbId} | Gets a &#x60;Variant&#x60; by ID.


# **SearchVariantsPost**
> VariantsListResponse SearchVariantsPost(authorization=var.authorization, variants.search.request=var.variants.search.request)

Gets a list of `Variant` matching the search criteria.

Gets a list of `Variant` matching the search criteria.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.variants.search.request <- variantsSearchRequest$new(123, "pageToken_example", list("callSetDbIds_example"), 123, "referenceDbId_example", 123, list("variantDbIds_example"), list("variantSetDbIds_example")) # VariantsSearchRequest | Study Search request

#Gets a list of `Variant` matching the search criteria.
api.instance <- VariantsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariantsPost(authorization=var.authorization, variants.search.request=var.variants.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **variants.search.request** | [**VariantsSearchRequest**](VariantsSearchRequest.md)| Study Search request | [optional] 

### Return type

[**VariantsListResponse**](VariantsListResponse.md)

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

# **SearchVariantsSearchResultsDbIdGet**
> VariantsListResponse SearchVariantsSearchResultsDbIdGet(search.results.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a list of `Variant` matching the search criteria.

Gets a list of `Variant` matching the search criteria.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `Variant` matching the search criteria.
api.instance <- VariantsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariantsSearchResultsDbIdGet(var.search.results.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
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

[**VariantsListResponse**](VariantsListResponse.md)

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

# **VariantsGet**
> VariantsListResponse VariantsGet(variant.db.id=var.variant.db.id, variant.set.db.id=var.variant.set.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a filtered list of `Variants`.

Gets a filtered list of `Variants`.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a filtered list of `Variants`.
api.instance <- VariantsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsGet(variant.db.id=var.variant.db.id, variant.set.db.id=var.variant.set.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | [optional] 
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | [optional] 
 **page.token** | **character**| Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VariantsListResponse**](VariantsListResponse.md)

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

# **VariantsVariantDbIdCallsGet**
> CallsListResponse VariantsVariantDbIdCallsGet(variant.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a list of `Calls` associated with a `Variant`.

The variant calls for this particular variant. Each one represents the determination of genotype with respect to this variant. `Calls` in this array are implicitly associated with this `Variant`.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.expand.homozygotes <- 'expand.homozygotes_example' # character | Should homozygotes be expanded (true) or collapsed into a single occurrence (false)
var.unknown.string <- 'unknown.string_example' # character | The string to use as a representation for missing data
var.sep.phased <- 'sep.phased_example' # character | The string to use as a separator for phased allele calls
var.sep.unphased <- 'sep.unphased_example' # character | The string to use as a separator for unphased allele calls
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `Calls` associated with a `Variant`.
api.instance <- VariantsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsVariantDbIdCallsGet(var.variant.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | 
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

# **VariantsVariantDbIdGet**
> VariantSingleResponse VariantsVariantDbIdGet(variant.db.id, authorization=var.authorization)

Gets a `Variant` by ID.

`GET /variants/{id}` will return a JSON version of `Variant`.

### Example
```R
library(openapi)

var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `Variant` by ID.
api.instance <- VariantsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsVariantDbIdGet(var.variant.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VariantSingleResponse**](VariantSingleResponse.md)

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

