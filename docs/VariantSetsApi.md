# VariantSetsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchVariantsetsPost**](VariantSetsApi.md#SearchVariantsetsPost) | **POST** /search/variantsets | Gets a list of &#x60;VariantSet&#x60; matching the search criteria.
[**SearchVariantsetsSearchResultsDbIdGet**](VariantSetsApi.md#SearchVariantsetsSearchResultsDbIdGet) | **GET** /search/variantsets/{searchResultsDbId} | Gets a list of &#x60;VariantSet&#x60; matching the search criteria.
[**VariantsetsExtractPost**](VariantSetsApi.md#VariantsetsExtractPost) | **POST** /variantsets/extract | Create new &#x60;VariantSet&#x60; based on search results
[**VariantsetsGet**](VariantSetsApi.md#VariantsetsGet) | **GET** /variantsets | Gets a filtered list of &#x60;VariantSets&#x60;.
[**VariantsetsVariantSetDbIdCallsGet**](VariantSetsApi.md#VariantsetsVariantSetDbIdCallsGet) | **GET** /variantsets/{variantSetDbId}/calls | Gets a list of &#x60;Calls&#x60; associated with a &#x60;VariantSet&#x60;.
[**VariantsetsVariantSetDbIdCallsetsGet**](VariantSetsApi.md#VariantsetsVariantSetDbIdCallsetsGet) | **GET** /variantsets/{variantSetDbId}/callsets | Gets a list of &#x60;CallSets&#x60; associated with a &#x60;VariantSet&#x60;.
[**VariantsetsVariantSetDbIdGet**](VariantSetsApi.md#VariantsetsVariantSetDbIdGet) | **GET** /variantsets/{variantSetDbId} | Gets a &#x60;VariantSet&#x60; by ID.
[**VariantsetsVariantSetDbIdVariantsGet**](VariantSetsApi.md#VariantsetsVariantSetDbIdVariantsGet) | **GET** /variantsets/{variantSetDbId}/variants | Gets a &#x60;Variants&#x60; for a given &#x60;VariantSet&#x60;.


# **SearchVariantsetsPost**
> VariantSetsListResponse SearchVariantsetsPost(authorization=var.authorization, variant.sets.search.request=var.variant.sets.search.request)

Gets a list of `VariantSet` matching the search criteria.

Gets a list of `VariantSet` matching the search criteria.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.variant.sets.search.request <- VariantSetsSearchRequest$new(123, 123, list("studyDbIds_example"), list("studyNames_example"), list("callSetDbIds_example"), list("variantDbIds_example"), list("variantSetDbIds_example")) # VariantSetsSearchRequest | Study Search request

#Gets a list of `VariantSet` matching the search criteria.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariantsetsPost(authorization=var.authorization, variant.sets.search.request=var.variant.sets.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **variant.sets.search.request** | [**VariantSetsSearchRequest**](VariantSetsSearchRequest.md)| Study Search request | [optional] 

### Return type

[**VariantSetsListResponse**](VariantSetsListResponse.md)

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

# **SearchVariantsetsSearchResultsDbIdGet**
> VariantSetsListResponse SearchVariantsetsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of `VariantSet` matching the search criteria.

Gets a list of `VariantSet` matching the search criteria.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `VariantSet` matching the search criteria.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariantsetsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**VariantSetsListResponse**](VariantSetsListResponse.md)

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

# **VariantsetsExtractPost**
> VariantSetResponse VariantsetsExtractPost(authorization=var.authorization, variant.sets.extract.request=var.variant.sets.extract.request)

Create new `VariantSet` based on search results

Will perform a search for `Calls` which match the search criteria in `variantSetsExtractRequest`. The results of the search will be used to create a new `VariantSet` on the server. The new `VariantSet` will be returned.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.variant.sets.extract.request <- VariantSetsExtractRequest$new(list("studyDbIds_example"), list("studyNames_example"), list("callSetDbIds_example"), "expandHomozygotes_example", "sepPhased_example", "sepUnphased_example", "unknownString_example", list("variantDbIds_example"), list("variantSetDbIds_example")) # VariantSetsExtractRequest | Study Search request

#Create new `VariantSet` based on search results
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsExtractPost(authorization=var.authorization, variant.sets.extract.request=var.variant.sets.extract.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **variant.sets.extract.request** | [**VariantSetsExtractRequest**](VariantSetsExtractRequest.md)| Study Search request | [optional] 

### Return type

[**VariantSetResponse**](variantSetResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

# **VariantsetsGet**
> VariantSetsListResponse VariantsetsGet(variant.set.db.id=var.variant.set.db.id, variant.db.id=var.variant.db.id, call.set.db.id=var.call.set.db.id, study.db.id=var.study.db.id, study.name=var.study.name, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a filtered list of `VariantSets`.

Will return a filtered list of `VariantSet`.

### Example
```R
library(openapi)

var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.study.db.id <- 'study.db.id_example' # character | Filter by study DbId
var.study.name <- 'study.name_example' # character | Filter by study name
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a filtered list of `VariantSets`.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsGet(variant.set.db.id=var.variant.set.db.id, variant.db.id=var.variant.db.id, call.set.db.id=var.call.set.db.id, study.db.id=var.study.db.id, study.name=var.study.name, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | [optional] 
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | [optional] 
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
 **study.db.id** | **character**| Filter by study DbId | [optional] 
 **study.name** | **character**| Filter by study name | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VariantSetsListResponse**](VariantSetsListResponse.md)

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

# **VariantsetsVariantSetDbIdCallsGet**
> CallsListResponse VariantsetsVariantSetDbIdCallsGet(variant.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a list of `Calls` associated with a `VariantSet`.

Gets a list of `Calls` associated with a `VariantSet`.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.expand.homozygotes <- 'expand.homozygotes_example' # character | Should homozygotes be expanded (true) or collapsed into a single occurrence (false)
var.unknown.string <- 'unknown.string_example' # character | The string to use as a representation for missing data
var.sep.phased <- 'sep.phased_example' # character | The string to use as a separator for phased allele calls
var.sep.unphased <- 'sep.unphased_example' # character | The string to use as a separator for unphased allele calls
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `Calls` associated with a `VariantSet`.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsVariantSetDbIdCallsGet(var.variant.set.db.id, expand.homozygotes=var.expand.homozygotes, unknown.string=var.unknown.string, sep.phased=var.sep.phased, sep.unphased=var.sep.unphased, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | 
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

# **VariantsetsVariantSetDbIdCallsetsGet**
> CallSetsListResponse VariantsetsVariantSetDbIdCallsetsGet(variant.set.db.id, call.set.db.id=var.call.set.db.id, call.set.name=var.call.set.name, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of `CallSets` associated with a `VariantSet`.

Gets a list of `CallSets` associated with a `VariantSet`.

### Example
```R
library(openapi)

var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.call.set.db.id <- 'call.set.db.id_example' # character | The ID of the `CallSet` to be retrieved.
var.call.set.name <- 'call.set.name_example' # character | The human readable name of the `CallSet` to be retrieved.
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `CallSets` associated with a `VariantSet`.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsVariantSetDbIdCallsetsGet(var.variant.set.db.id, call.set.db.id=var.call.set.db.id, call.set.name=var.call.set.name, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | 
 **call.set.db.id** | **character**| The ID of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
 **call.set.name** | **character**| The human readable name of the &#x60;CallSet&#x60; to be retrieved. | [optional] 
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

# **VariantsetsVariantSetDbIdGet**
> VariantSetResponse VariantsetsVariantSetDbIdGet(variant.set.db.id, authorization=var.authorization)

Gets a `VariantSet` by ID.

This call will return a JSON version of a `VariantSet`.

### Example
```R
library(openapi)

var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `VariantSet` by ID.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsVariantSetDbIdGet(var.variant.set.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.set.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VariantSetResponse**](variantSetResponse.md)

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

# **VariantsetsVariantSetDbIdVariantsGet**
> VariantsListResponse VariantsetsVariantSetDbIdVariantsGet(variant.set.db.id, variant.db.id=var.variant.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)

Gets a `Variants` for a given `VariantSet`.

This call will return an array of `Variants`.  ** THIS ENDPOINT USES TOKEN BASED PAGING **

### Example
```R
library(openapi)

var.variant.set.db.id <- 'variant.set.db.id_example' # character | The ID of the `VariantSet` to be retrieved.
var.variant.db.id <- 'variant.db.id_example' # character | The ID of the `Variant` to be retrieved.
var.page.token <- '33c27874' # character | Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively. 
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `Variants` for a given `VariantSet`.
api.instance <- VariantSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariantsetsVariantSetDbIdVariantsGet(var.variant.set.db.id, variant.db.id=var.variant.db.id, page.token=var.page.token, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant.set.db.id** | **character**| The ID of the &#x60;VariantSet&#x60; to be retrieved. | 
 **variant.db.id** | **character**| The ID of the &#x60;Variant&#x60; to be retrieved. | [optional] 
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

