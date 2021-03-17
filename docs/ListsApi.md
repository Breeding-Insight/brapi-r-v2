# ListsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListsGet**](ListsApi.md#ListsGet) | **GET** /lists | Get filtered set of generic lists
[**ListsListDbIdGet**](ListsApi.md#ListsListDbIdGet) | **GET** /lists/{listDbId} | Get the details of a specific List
[**ListsListDbIdItemsPost**](ListsApi.md#ListsListDbIdItemsPost) | **POST** /lists/{listDbId}/items | Add Items to a specific List
[**ListsListDbIdPut**](ListsApi.md#ListsListDbIdPut) | **PUT** /lists/{listDbId} | Update an existing generic list
[**ListsPost**](ListsApi.md#ListsPost) | **POST** /lists | Create New List Objects
[**SearchListsPost**](ListsApi.md#SearchListsPost) | **POST** /search/lists | Submit a search request for Lists
[**SearchListsSearchResultsDbIdGet**](ListsApi.md#SearchListsSearchResultsDbIdGet) | **GET** /search/lists/{searchResultsDbId} | Get the results of a List search request


# **ListsGet**
> ListsListResponse ListsGet(list.type=var.list.type, list.name=var.list.name, list.db.id=var.list.db.id, list.source=var.list.source, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get filtered set of generic lists

Get filtered set of generic lists

### Example
```R
library(openapi)

var.list.type <- ListTypes$new() # ListTypes | The type of objects contained by this generic list
var.list.name <- 'list.name_example' # character | The human readable name of this generic list
var.list.db.id <- 'list.db.id_example' # character | The unique ID of this generic list
var.list.source <- 'list.source_example' # character | The source tag of this generic list
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get filtered set of generic lists
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListsGet(list.type=var.list.type, list.name=var.list.name, list.db.id=var.list.db.id, list.source=var.list.source, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list.type** | [**ListTypes**](.md)| The type of objects contained by this generic list | [optional] 
 **list.name** | **character**| The human readable name of this generic list | [optional] 
 **list.db.id** | **character**| The unique ID of this generic list | [optional] 
 **list.source** | **character**| The source tag of this generic list | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ListsListResponse**](ListsListResponse.md)

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

# **ListsListDbIdGet**
> ListsSingleResponse ListsListDbIdGet(list.db.id, authorization=var.authorization)

Get the details of a specific List

Get a specific generic lists

### Example
```R
library(openapi)

var.list.db.id <- 'list.db.id_example' # character | The unique ID of this generic list
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific List
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListsListDbIdGet(var.list.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list.db.id** | **character**| The unique ID of this generic list | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ListsSingleResponse**](ListsSingleResponse.md)

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

# **ListsListDbIdItemsPost**
> ListResponse ListsListDbIdItemsPost(list.db.id, authorization=var.authorization, request.body=var.request.body)

Add Items to a specific List

Add new data to a specific generic lists

### Example
```R
library(openapi)

var.list.db.id <- 'list.db.id_example' # character | The unique ID of this generic list
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.request.body <- list("property_example") # array[character] | 

#Add Items to a specific List
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListsListDbIdItemsPost(var.list.db.id, authorization=var.authorization, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list.db.id** | **character**| The unique ID of this generic list | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **request.body** | list( **character** )|  | [optional] 

### Return type

[**ListResponse**](listResponse.md)

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

# **ListsListDbIdPut**
> ListsSingleResponse ListsListDbIdPut(list.db.id, authorization=var.authorization, list.new.request=var.list.new.request)

Update an existing generic list

Update an existing generic list

### Example
```R
library(openapi)

var.list.db.id <- 'list.db.id_example' # character | The unique ID of this generic list
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.list.new.request <- ListNewRequest$new(ListTypes$new(), TODO, "dateCreated_example", "dateModified_example", list(123), "listDescription_example", "listName_example", "listOwnerName_example", "listOwnerPersonDbId_example", 123, "listSource_example", list("data_example")) # ListNewRequest | 

#Update an existing generic list
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListsListDbIdPut(var.list.db.id, authorization=var.authorization, list.new.request=var.list.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list.db.id** | **character**| The unique ID of this generic list | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **list.new.request** | [**ListNewRequest**](ListNewRequest.md)|  | [optional] 

### Return type

[**ListsSingleResponse**](ListsSingleResponse.md)

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

# **ListsPost**
> ListsListResponse ListsPost(authorization=var.authorization, list.new.request=var.list.new.request)

Create New List Objects

Create new list objects in the database

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.list.new.request <- list(ListNewRequest$new(ListTypes$new(), TODO, "dateCreated_example", "dateModified_example", list(123), "listDescription_example", "listName_example", "listOwnerName_example", "listOwnerPersonDbId_example", 123, "listSource_example", list("data_example"))) # array[ListNewRequest] | 

#Create New List Objects
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListsPost(authorization=var.authorization, list.new.request=var.list.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **list.new.request** | list( [**ListNewRequest**](ListNewRequest.md) )|  | [optional] 

### Return type

[**ListsListResponse**](ListsListResponse.md)

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

# **SearchListsPost**
> ListsListResponse SearchListsPost(authorization=var.authorization, list.search.request=var.list.search.request)

Submit a search request for Lists

Advanced searching for the list resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.list.search.request <- ListSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), "dateCreatedRangeEnd_example", "dateCreatedRangeStart_example", "dateModifiedRangeEnd_example", "dateModifiedRangeStart_example", list("listDbIds_example"), list("listNames_example"), list("listOwnerNames_example"), list("listOwnerPersonDbIds_example"), list("listSources_example"), ListTypes$new()) # ListSearchRequest | 

#Submit a search request for Lists
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchListsPost(authorization=var.authorization, list.search.request=var.list.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **list.search.request** | [**ListSearchRequest**](ListSearchRequest.md)|  | [optional] 

### Return type

[**ListsListResponse**](ListsListResponse.md)

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

# **SearchListsSearchResultsDbIdGet**
> ListsListResponse SearchListsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a List search request

Advanced searching for the list resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a List search request
api.instance <- ListsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchListsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ListsListResponse**](ListsListResponse.md)

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

