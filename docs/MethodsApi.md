# MethodsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MethodsGet**](MethodsApi.md#MethodsGet) | **GET** /methods | Get the Methods
[**MethodsMethodDbIdGet**](MethodsApi.md#MethodsMethodDbIdGet) | **GET** /methods/{methodDbId} | Get the details for a specific Method
[**MethodsMethodDbIdPut**](MethodsApi.md#MethodsMethodDbIdPut) | **PUT** /methods/{methodDbId} | Update an existing Method
[**MethodsPost**](MethodsApi.md#MethodsPost) | **POST** /methods | Add new Methods


# **MethodsGet**
> MethodListResponse MethodsGet(method.db.id=var.method.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Methods

Returns a list of Methods available on a server.  An Observation Variable has 3 critical parts; A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.'

### Example
```R
library(openapi)

var.method.db.id <- 'method.db.id_example' # character | The unique identifier for a method
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | The unique identifier for an observation variable
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Methods
api.instance <- MethodsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MethodsGet(method.db.id=var.method.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method.db.id** | **character**| The unique identifier for a method | [optional] 
 **observation.variable.db.id** | **character**| The unique identifier for an observation variable | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**MethodListResponse**](MethodListResponse.md)

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

# **MethodsMethodDbIdGet**
> MethodSingleResponse MethodsMethodDbIdGet(method.db.id, authorization=var.authorization)

Get the details for a specific Method

Retrieve details about a specific method  An Observation Variable has 3 critical parts; A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.

### Example
```R
library(openapi)

var.method.db.id <- 'method.db.id_example' # character | Id of the method to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Method
api.instance <- MethodsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MethodsMethodDbIdGet(var.method.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method.db.id** | **character**| Id of the method to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**MethodSingleResponse**](MethodSingleResponse.md)

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

# **MethodsMethodDbIdPut**
> MethodSingleResponse MethodsMethodDbIdPut(method.db.id, authorization=var.authorization, body=var.body)

Update an existing Method

Update the details of an existing method

### Example
```R
library(openapi)

var.method.db.id <- 'method.db.id_example' # character | Id of the method to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.body <- MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example")) # MethodBaseClass | 

#Update an existing Method
api.instance <- MethodsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MethodsMethodDbIdPut(var.method.db.id, authorization=var.authorization, body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method.db.id** | **character**| Id of the method to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **body** | **MethodBaseClass**|  | [optional] 

### Return type

[**MethodSingleResponse**](MethodSingleResponse.md)

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

# **MethodsPost**
> MethodListResponse MethodsPost(authorization=var.authorization, method.base.class=var.method.base.class)

Add new Methods

Create new method objects in the database

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.method.base.class <- list(MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"))) # array[MethodBaseClass] | 

#Add new Methods
api.instance <- MethodsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MethodsPost(authorization=var.authorization, method.base.class=var.method.base.class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **method.base.class** | list( [**MethodBaseClass**](MethodBaseClass.md) )|  | [optional] 

### Return type

[**MethodListResponse**](MethodListResponse.md)

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

