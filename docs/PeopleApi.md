# PeopleApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PeopleGet**](PeopleApi.md#PeopleGet) | **GET** /people | Get filtered list of People
[**PeoplePersonDbIdGet**](PeopleApi.md#PeoplePersonDbIdGet) | **GET** /people/{personDbId} | Get the details for a specific Person
[**PeoplePersonDbIdPut**](PeopleApi.md#PeoplePersonDbIdPut) | **PUT** /people/{personDbId} | Update an existing Person
[**PeoplePost**](PeopleApi.md#PeoplePost) | **POST** /people | Create new People
[**SearchPeoplePost**](PeopleApi.md#SearchPeoplePost) | **POST** /search/people | Submit a search request for People
[**SearchPeopleSearchResultsDbIdGet**](PeopleApi.md#SearchPeopleSearchResultsDbIdGet) | **GET** /search/people/{searchResultsDbId} | Get the results of a People search request


# **PeopleGet**
> PersonListResponse PeopleGet(first.name=var.first.name, last.name=var.last.name, person.db.id=var.person.db.id, user.id=var.user.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get filtered list of People

Get filtered list of people

### Example
```R
library(openapi)

var.first.name <- 'first.name_example' # character | A persons first name
var.last.name <- 'last.name_example' # character | A persons last name
var.person.db.id <- 'person.db.id_example' # character | The unique ID of a person
var.user.id <- 'user.id_example' # character | A systems user ID associated with this person. Different from personDbId because you could have a person who is not a user of the system.
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get filtered list of People
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PeopleGet(first.name=var.first.name, last.name=var.last.name, person.db.id=var.person.db.id, user.id=var.user.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**| A persons first name | [optional] 
 **last.name** | **character**| A persons last name | [optional] 
 **person.db.id** | **character**| The unique ID of a person | [optional] 
 **user.id** | **character**| A systems user ID associated with this person. Different from personDbId because you could have a person who is not a user of the system. | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**PersonListResponse**](PersonListResponse.md)

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

# **PeoplePersonDbIdGet**
> PersonSingleResponse PeoplePersonDbIdGet(person.db.id, authorization=var.authorization)

Get the details for a specific Person

Get the details for a specific Person

### Example
```R
library(openapi)

var.person.db.id <- 'person.db.id_example' # character | The unique ID of a person
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Person
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PeoplePersonDbIdGet(var.person.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **person.db.id** | **character**| The unique ID of a person | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**PersonSingleResponse**](PersonSingleResponse.md)

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

# **PeoplePersonDbIdPut**
> PersonSingleResponse PeoplePersonDbIdPut(person.db.id, authorization=var.authorization, person.new.request=var.person.new.request)

Update an existing Person

Update an existing Person

### Example
```R
library(openapi)

var.person.db.id <- 'person.db.id_example' # character | The unique ID of a person
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.person.new.request <- PersonNewRequest$new(TODO, "description_example", "emailAddress_example", list(123), "firstName_example", "lastName_example", "mailingAddress_example", "middleName_example", "phoneNumber_example", "userID_example") # PersonNewRequest | 

#Update an existing Person
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PeoplePersonDbIdPut(var.person.db.id, authorization=var.authorization, person.new.request=var.person.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **person.db.id** | **character**| The unique ID of a person | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **person.new.request** | [**PersonNewRequest**](PersonNewRequest.md)|  | [optional] 

### Return type

[**PersonSingleResponse**](PersonSingleResponse.md)

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

# **PeoplePost**
> PersonListResponse PeoplePost(authorization=var.authorization, person.new.request=var.person.new.request)

Create new People

Create new People entities. `personDbId` is generated and managed by the server.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.person.new.request <- list(PersonNewRequest$new(TODO, "description_example", "emailAddress_example", list(123), "firstName_example", "lastName_example", "mailingAddress_example", "middleName_example", "phoneNumber_example", "userID_example")) # array[PersonNewRequest] | 

#Create new People
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PeoplePost(authorization=var.authorization, person.new.request=var.person.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **person.new.request** | list( [**PersonNewRequest**](PersonNewRequest.md) )|  | [optional] 

### Return type

[**PersonListResponse**](PersonListResponse.md)

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

# **SearchPeoplePost**
> PersonListResponse SearchPeoplePost(authorization=var.authorization, person.search.request=var.person.search.request)

Submit a search request for People

Advanced searching for the programs resource.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.person.search.request <- PersonSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("emailAddresses_example"), list("firstNames_example"), list("lastNames_example"), list("mailingAddresses_example"), list("middleNames_example"), list("personDbIds_example"), list("phoneNumbers_example"), list("userIDs_example")) # PersonSearchRequest | 

#Submit a search request for People
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchPeoplePost(authorization=var.authorization, person.search.request=var.person.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **person.search.request** | [**PersonSearchRequest**](PersonSearchRequest.md)|  | [optional] 

### Return type

[**PersonListResponse**](PersonListResponse.md)

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

# **SearchPeopleSearchResultsDbIdGet**
> PersonListResponse SearchPeopleSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a People search request

Advanced searching for the people resource.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a People search request
api.instance <- PeopleApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchPeopleSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**PersonListResponse**](PersonListResponse.md)

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

