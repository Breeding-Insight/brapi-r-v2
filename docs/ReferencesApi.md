# ReferencesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReferencesGet**](ReferencesApi.md#ReferencesGet) | **GET** /references | Gets a filtered list of &#x60;Reference&#x60; objects.
[**ReferencesReferenceDbIdBasesGet**](ReferencesApi.md#ReferencesReferenceDbIdBasesGet) | **GET** /references/{referenceDbId}/bases | Lists &#x60;Reference&#x60; bases by ID and optional range.
[**ReferencesReferenceDbIdGet**](ReferencesApi.md#ReferencesReferenceDbIdGet) | **GET** /references/{referenceDbId} | Gets a &#x60;Reference&#x60; by ID.
[**SearchReferencesPost**](ReferencesApi.md#SearchReferencesPost) | **POST** /search/references | Gets a list of &#x60;Reference&#x60; matching the search criteria.
[**SearchReferencesSearchResultsDbIdGet**](ReferencesApi.md#SearchReferencesSearchResultsDbIdGet) | **GET** /search/references/{searchResultsDbId} | Gets a list of &#x60;Reference&#x60; matching the search criteria.


# **ReferencesGet**
> ReferencesListResponse ReferencesGet(reference.db.id=var.reference.db.id, reference.set.db.id=var.reference.set.db.id, accession=var.accession, md5checksum=var.md5checksum, is.derived=var.is.derived, min.length=var.min.length, max.length=var.max.length, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a filtered list of `Reference` objects.

`GET /references` will return a filtered list of `Reference` JSON objects.

### Example
```R
library(openapi)

var.reference.db.id <- 'reference.db.id_example' # character | The ID of the `Reference` to be retrieved.
var.reference.set.db.id <- 'reference.set.db.id_example' # character | The ID of the `ReferenceSet` to be retrieved.
var.accession <- 'accession_example' # character | If set, return the reference sets for which the `accession` matches this string (case-sensitive, exact match).
var.md5checksum <- 'md5checksum_example' # character | If specified, return the references for which the `md5checksum` matches this string (case-sensitive, exact match).
var.is.derived <- 'is.derived_example' # character | If the reference is derived from a source sequence
var.min.length <- 56 # integer | The minimum length of the reference sequences to be retrieved.
var.max.length <- 56 # integer | The maximum length of the reference sequences to be retrieved.
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a filtered list of `Reference` objects.
api.instance <- ReferencesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ReferencesGet(reference.db.id=var.reference.db.id, reference.set.db.id=var.reference.set.db.id, accession=var.accession, md5checksum=var.md5checksum, is.derived=var.is.derived, min.length=var.min.length, max.length=var.max.length, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.db.id** | **character**| The ID of the &#x60;Reference&#x60; to be retrieved. | [optional] 
 **reference.set.db.id** | **character**| The ID of the &#x60;ReferenceSet&#x60; to be retrieved. | [optional] 
 **accession** | **character**| If set, return the reference sets for which the &#x60;accession&#x60; matches this string (case-sensitive, exact match). | [optional] 
 **md5checksum** | **character**| If specified, return the references for which the &#x60;md5checksum&#x60; matches this string (case-sensitive, exact match). | [optional] 
 **is.derived** | **character**| If the reference is derived from a source sequence | [optional] 
 **min.length** | **integer**| The minimum length of the reference sequences to be retrieved. | [optional] 
 **max.length** | **integer**| The maximum length of the reference sequences to be retrieved. | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferencesListResponse**](ReferencesListResponse.md)

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

# **ReferencesReferenceDbIdBasesGet**
> ReferenceBasesResponse ReferencesReferenceDbIdBasesGet(reference.db.id, start=var.start, end=var.end, page.token=var.page.token, authorization=var.authorization)

Lists `Reference` bases by ID and optional range.

Lists `Reference` bases by ID and optional range.

### Example
```R
library(openapi)

var.reference.db.id <- 'reference.db.id_example' # character | The ID of the `Reference` to be retrieved.
var.start <- 56 # integer | The start position (0-based) of this query. Defaults to 0. Genomic positions are non-negative integers less than reference length. Requests spanning the join of circular genomes are represented as two requests one on each side of the join (position 0).
var.end <- 56 # integer | The end position (0-based, exclusive) of this query. Defaults to the length of this `Reference`.
var.page.token <- 'page.token_example' # character | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of `next_page_token` from the previous response.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Lists `Reference` bases by ID and optional range.
api.instance <- ReferencesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ReferencesReferenceDbIdBasesGet(var.reference.db.id, start=var.start, end=var.end, page.token=var.page.token, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.db.id** | **character**| The ID of the &#x60;Reference&#x60; to be retrieved. | 
 **start** | **integer**| The start position (0-based) of this query. Defaults to 0. Genomic positions are non-negative integers less than reference length. Requests spanning the join of circular genomes are represented as two requests one on each side of the join (position 0). | [optional] 
 **end** | **integer**| The end position (0-based, exclusive) of this query. Defaults to the length of this &#x60;Reference&#x60;. | [optional] 
 **page.token** | **character**| The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;next_page_token&#x60; from the previous response. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferenceBasesResponse**](ReferenceBasesResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

# **ReferencesReferenceDbIdGet**
> ReferenceSingleResponse ReferencesReferenceDbIdGet(reference.db.id, authorization=var.authorization)

Gets a `Reference` by ID.

`GET /references/{reference_id}` will return a JSON version of `Reference`.

### Example
```R
library(openapi)

var.reference.db.id <- 'reference.db.id_example' # character | The ID of the `Reference` to be retrieved.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `Reference` by ID.
api.instance <- ReferencesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ReferencesReferenceDbIdGet(var.reference.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.db.id** | **character**| The ID of the &#x60;Reference&#x60; to be retrieved. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferenceSingleResponse**](ReferenceSingleResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

# **SearchReferencesPost**
> ReferencesListResponse SearchReferencesPost(authorization=var.authorization, references.search.request=var.references.search.request)

Gets a list of `Reference` matching the search criteria.

`POST /references/search` must accept a JSON version of `SearchReferencesRequest` as the post body and will return a JSON version of `SearchReferencesResponse`.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.references.search.request <- ReferencesSearchRequest$new(123, 123, list("accessions_example"), "isDerived_example", 123, list("md5checksums_example"), 123, list("referenceDbIds_example"), list("referenceSetDbIds_example")) # ReferencesSearchRequest | References Search request

#Gets a list of `Reference` matching the search criteria.
api.instance <- ReferencesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchReferencesPost(authorization=var.authorization, references.search.request=var.references.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **references.search.request** | [**ReferencesSearchRequest**](ReferencesSearchRequest.md)| References Search request | [optional] 

### Return type

[**ReferencesListResponse**](ReferencesListResponse.md)

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

# **SearchReferencesSearchResultsDbIdGet**
> ReferencesListResponse SearchReferencesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of `Reference` matching the search criteria.

`POST /references/search` must accept a JSON version of `SearchReferencesRequest` as the post body and will return a JSON version of `SearchReferencesResponse`.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `Reference` matching the search criteria.
api.instance <- ReferencesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchReferencesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ReferencesListResponse**](ReferencesListResponse.md)

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

