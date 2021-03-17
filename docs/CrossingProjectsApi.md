# CrossingProjectsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CrossingprojectsCrossingProjectDbIdGet**](CrossingProjectsApi.md#CrossingprojectsCrossingProjectDbIdGet) | **GET** /crossingprojects/{crossingProjectDbId} | Get a filtered list of Crossing Projects
[**CrossingprojectsCrossingProjectDbIdPut**](CrossingProjectsApi.md#CrossingprojectsCrossingProjectDbIdPut) | **PUT** /crossingprojects/{crossingProjectDbId} | Update an existing Crossing Project
[**CrossingprojectsGet**](CrossingProjectsApi.md#CrossingprojectsGet) | **GET** /crossingprojects | Get a filtered list of Crossing Projects
[**CrossingprojectsPost**](CrossingProjectsApi.md#CrossingprojectsPost) | **POST** /crossingprojects | Create new Crossing Project entities on this server


# **CrossingprojectsCrossingProjectDbIdGet**
> CrossingProjectsSingleResponse CrossingprojectsCrossingProjectDbIdGet(crossing.project.db.id, authorization=var.authorization)

Get a filtered list of Crossing Projects

Get a filtered list of Crossing Projects.

### Example
```R
library(openapi)

var.crossing.project.db.id <- 'crossing.project.db.id_example' # character | Search for Crossing Projects with this unique id
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Crossing Projects
api.instance <- CrossingProjectsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossingprojectsCrossingProjectDbIdGet(var.crossing.project.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crossing.project.db.id** | **character**| Search for Crossing Projects with this unique id | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CrossingProjectsSingleResponse**](CrossingProjectsSingleResponse.md)

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

# **CrossingprojectsCrossingProjectDbIdPut**
> CrossingProjectsSingleResponse CrossingprojectsCrossingProjectDbIdPut(crossing.project.db.id, authorization=var.authorization, crossing.project.new.request=var.crossing.project.new.request)

Update an existing Crossing Project

Update an existing Crossing Project entity on this server

### Example
```R
library(openapi)

var.crossing.project.db.id <- 'crossing.project.db.id_example' # character | Search for Crossing Projects with this unique id
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.crossing.project.new.request <- CrossingProjectNewRequest$new(TODO, "commonCropName_example", "crossingProjectDescription_example", "crossingProjectName_example", list(123), "programDbId_example", "programName_example") # CrossingProjectNewRequest | 

#Update an existing Crossing Project
api.instance <- CrossingProjectsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossingprojectsCrossingProjectDbIdPut(var.crossing.project.db.id, authorization=var.authorization, crossing.project.new.request=var.crossing.project.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crossing.project.db.id** | **character**| Search for Crossing Projects with this unique id | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **crossing.project.new.request** | [**CrossingProjectNewRequest**](CrossingProjectNewRequest.md)|  | [optional] 

### Return type

[**CrossingProjectsSingleResponse**](CrossingProjectsSingleResponse.md)

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

# **CrossingprojectsGet**
> CrossingProjectsListResponse CrossingprojectsGet(crossing.project.db.id=var.crossing.project.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Crossing Projects

Get a filtered list of Crossing Projects.

### Example
```R
library(openapi)

var.crossing.project.db.id <- 'crossing.project.db.id_example' # character | Search for Crossing Projects with this unique id
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Crossing Projects
api.instance <- CrossingProjectsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossingprojectsGet(crossing.project.db.id=var.crossing.project.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crossing.project.db.id** | **character**| Search for Crossing Projects with this unique id | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CrossingProjectsListResponse**](CrossingProjectsListResponse.md)

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

# **CrossingprojectsPost**
> CrossingProjectsListResponse CrossingprojectsPost(authorization=var.authorization, crossing.project.new.request=var.crossing.project.new.request)

Create new Crossing Project entities on this server

Create new Crossing Project entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.crossing.project.new.request <- list(CrossingProjectNewRequest$new(TODO, "commonCropName_example", "crossingProjectDescription_example", "crossingProjectName_example", list(123), "programDbId_example", "programName_example")) # array[CrossingProjectNewRequest] | 

#Create new Crossing Project entities on this server
api.instance <- CrossingProjectsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossingprojectsPost(authorization=var.authorization, crossing.project.new.request=var.crossing.project.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **crossing.project.new.request** | list( [**CrossingProjectNewRequest**](CrossingProjectNewRequest.md) )|  | [optional] 

### Return type

[**CrossingProjectsListResponse**](CrossingProjectsListResponse.md)

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

