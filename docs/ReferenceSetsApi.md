# ReferenceSetsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReferencesetsGet**](ReferenceSetsApi.md#ReferencesetsGet) | **GET** /referencesets | Gets a list of &#x60;ReferenceSets&#x60;.
[**ReferencesetsReferenceSetDbIdGet**](ReferenceSetsApi.md#ReferencesetsReferenceSetDbIdGet) | **GET** /referencesets/{referenceSetDbId} | Gets a &#x60;ReferenceSet&#x60; by ID.
[**SearchReferencesetsPost**](ReferenceSetsApi.md#SearchReferencesetsPost) | **POST** /search/referencesets | Gets a list of &#x60;ReferenceSet&#x60; matching the search criteria.
[**SearchReferencesetsSearchResultsDbIdGet**](ReferenceSetsApi.md#SearchReferencesetsSearchResultsDbIdGet) | **GET** /search/referencesets/{searchResultsDbId} | Gets a list of &#x60;ReferenceSet&#x60; matching the search criteria.


# **ReferencesetsGet**
> ReferenceSetsListResponse ReferencesetsGet(reference.set.db.id=var.reference.set.db.id, accession=var.accession, assembly.pui=var.assembly.pui, md5checksum=var.md5checksum, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of `ReferenceSets`.

Gets a filtered list of `ReferenceSets`.

### Example
```R
library(openapi)

var.reference.set.db.id <- 'reference.set.db.id_example' # character | The ID of the `ReferenceSet` to be retrieved.
var.accession <- 'accession_example' # character | If set, return the reference sets for which the `accession` matches this string (case-sensitive, exact match).
var.assembly.pui <- 'assembly.pui_example' # character | If set, return the reference sets for which the `assemblyId` matches this string (case-sensitive, exact match).
var.md5checksum <- 'md5checksum_example' # character | If set, return the reference sets for which the `md5checksum` matches this string (case-sensitive, exact match).
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `ReferenceSets`.
api.instance <- ReferenceSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ReferencesetsGet(reference.set.db.id=var.reference.set.db.id, accession=var.accession, assembly.pui=var.assembly.pui, md5checksum=var.md5checksum, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.set.db.id** | **character**| The ID of the &#x60;ReferenceSet&#x60; to be retrieved. | [optional] 
 **accession** | **character**| If set, return the reference sets for which the &#x60;accession&#x60; matches this string (case-sensitive, exact match). | [optional] 
 **assembly.pui** | **character**| If set, return the reference sets for which the &#x60;assemblyId&#x60; matches this string (case-sensitive, exact match). | [optional] 
 **md5checksum** | **character**| If set, return the reference sets for which the &#x60;md5checksum&#x60; matches this string (case-sensitive, exact match). | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferenceSetsListResponse**](ReferenceSetsListResponse.md)

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

# **ReferencesetsReferenceSetDbIdGet**
> ReferenceSetsSingleResponse ReferencesetsReferenceSetDbIdGet(reference.set.db.id, authorization=var.authorization)

Gets a `ReferenceSet` by ID.

Gets a `ReferenceSet` by ID.

### Example
```R
library(openapi)

var.reference.set.db.id <- 'reference.set.db.id_example' # character | The ID of the `ReferenceSet` to be retrieved.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a `ReferenceSet` by ID.
api.instance <- ReferenceSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ReferencesetsReferenceSetDbIdGet(var.reference.set.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.set.db.id** | **character**| The ID of the &#x60;ReferenceSet&#x60; to be retrieved. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferenceSetsSingleResponse**](ReferenceSetsSingleResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |

# **SearchReferencesetsPost**
> ReferenceSetsListResponse SearchReferencesetsPost(reference.sets.search.request, authorization=var.authorization)

Gets a list of `ReferenceSet` matching the search criteria.

Gets a list of `ReferenceSet` matching the search criteria.

### Example
```R
library(openapi)

var.reference.sets.search.request <- ReferenceSetsSearchRequest$new(123, 123, list("accessions_example"), list("assemblyPUIs_example"), list("md5checksums_example"), list("referenceSetDbIds_example")) # ReferenceSetsSearchRequest | 
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `ReferenceSet` matching the search criteria.
api.instance <- ReferenceSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchReferencesetsPost(var.reference.sets.search.request, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference.sets.search.request** | [**ReferenceSetsSearchRequest**](ReferenceSetsSearchRequest.md)|  | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ReferenceSetsListResponse**](ReferenceSetsListResponse.md)

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

# **SearchReferencesetsSearchResultsDbIdGet**
> ReferenceSetsListResponse SearchReferencesetsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Gets a list of `ReferenceSet` matching the search criteria.

Gets a list of `ReferenceSet` matching the search criteria.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Gets a list of `ReferenceSet` matching the search criteria.
api.instance <- ReferenceSetsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchReferencesetsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ReferenceSetsListResponse**](ReferenceSetsListResponse.md)

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

