# ScalesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ScalesGet**](ScalesApi.md#ScalesGet) | **GET** /scales | Get the Scales
[**ScalesPost**](ScalesApi.md#ScalesPost) | **POST** /scales | Add new Scales
[**ScalesScaleDbIdGet**](ScalesApi.md#ScalesScaleDbIdGet) | **GET** /scales/{scaleDbId} | Get the details of a specific Scale
[**ScalesScaleDbIdPut**](ScalesApi.md#ScalesScaleDbIdPut) | **PUT** /scales/{scaleDbId} | Update an existing Scale


# **ScalesGet**
> ScaleListResponse ScalesGet(scale.db.id=var.scale.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Scales

Returns a list of Scales available on a server.  An Observation Variable has 3 critical parts; A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.

### Example
```R
library(openapi)

var.scale.db.id <- 'scale.db.id_example' # character | The unique identifier for a scale
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | The unique identifier for an observation variable
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Scales
api.instance <- ScalesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ScalesGet(scale.db.id=var.scale.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scale.db.id** | **character**| The unique identifier for a scale | [optional] 
 **observation.variable.db.id** | **character**| The unique identifier for an observation variable | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ScaleListResponse**](ScaleListResponse.md)

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

# **ScalesPost**
> ScaleListResponse ScalesPost(authorization=var.authorization, scale.base.class=var.scale.base.class)

Add new Scales

Create new scale objects in the database

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.scale.base.class <- list(ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123))) # array[ScaleBaseClass] | 

#Add new Scales
api.instance <- ScalesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ScalesPost(authorization=var.authorization, scale.base.class=var.scale.base.class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **scale.base.class** | list( [**ScaleBaseClass**](ScaleBaseClass.md) )|  | [optional] 

### Return type

[**ScaleListResponse**](ScaleListResponse.md)

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

# **ScalesScaleDbIdGet**
> ScaleSingleResponse ScalesScaleDbIdGet(scale.db.id, authorization=var.authorization)

Get the details of a specific Scale

Retrieve details about a specific scale  An Observation Variable has 3 critical parts: A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.

### Example
```R
library(openapi)

var.scale.db.id <- 'scale.db.id_example' # character | Id of the scale to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Scale
api.instance <- ScalesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ScalesScaleDbIdGet(var.scale.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scale.db.id** | **character**| Id of the scale to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ScaleSingleResponse**](ScaleSingleResponse.md)

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

# **ScalesScaleDbIdPut**
> ScaleSingleResponse ScalesScaleDbIdPut(scale.db.id, authorization=var.authorization, body=var.body)

Update an existing Scale

Update the details of an existing scale

### Example
```R
library(openapi)

var.scale.db.id <- 'scale.db.id_example' # character | Id of the scale to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.body <- ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123)) # ScaleBaseClass | 

#Update an existing Scale
api.instance <- ScalesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ScalesScaleDbIdPut(var.scale.db.id, authorization=var.authorization, body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scale.db.id** | **character**| Id of the scale to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **body** | **ScaleBaseClass**|  | [optional] 

### Return type

[**ScaleSingleResponse**](ScaleSingleResponse.md)

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

