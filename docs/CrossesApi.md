# CrossesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CrossesGet**](CrossesApi.md#CrossesGet) | **GET** /crosses | Get a filtered list of Cross entities
[**CrossesPost**](CrossesApi.md#CrossesPost) | **POST** /crosses | Create new Cross entities on this server
[**CrossesPut**](CrossesApi.md#CrossesPut) | **PUT** /crosses | Update existing Cross entities on this server
[**PlannedcrossesGet**](CrossesApi.md#PlannedcrossesGet) | **GET** /plannedcrosses | Get a filtered list of Planned Cross entities
[**PlannedcrossesPost**](CrossesApi.md#PlannedcrossesPost) | **POST** /plannedcrosses | Create new Planned Cross entities on this server
[**PlannedcrossesPut**](CrossesApi.md#PlannedcrossesPut) | **PUT** /plannedcrosses | Update existing Planned Cross entities on this server


# **CrossesGet**
> CrossesListResponse CrossesGet(crossing.project.db.id=var.crossing.project.db.id, cross.db.id=var.cross.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Cross entities

Get a filtered list of Cross entities.

### Example
```R
library(openapi)

var.crossing.project.db.id <- 'crossing.project.db.id_example' # character | Search for Crossing Projects with this unique id
var.cross.db.id <- 'cross.db.id_example' # character | Search for Cross with this unique id
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Cross entities
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossesGet(crossing.project.db.id=var.crossing.project.db.id, cross.db.id=var.cross.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crossing.project.db.id** | **character**| Search for Crossing Projects with this unique id | [optional] 
 **cross.db.id** | **character**| Search for Cross with this unique id | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CrossesListResponse**](CrossesListResponse.md)

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

# **CrossesPost**
> CrossesListResponse CrossesPost(authorization=var.authorization, cross.new.request=var.cross.new.request)

Create new Cross entities on this server

Create new Cross entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.cross.new.request <- list(CrossNewRequest$new(TODO, list(CrossNewRequest_crossAttributes$new("crossAttributeName_example", "crossAttributeValue_example")), "crossName_example", "BIPARENTAL", "crossingProjectDbId_example", "crossingProjectName_example", list(123), CrossParent$new("germplasmDbId_example", "germplasmName_example", "observationUnitDbId_example", "observationUnitName_example", "MALE"), CrossParent$new("germplasmDbId_example", "germplasmName_example", "observationUnitDbId_example", "observationUnitName_example", "MALE"), "pollinationTimeStamp_example")) # array[CrossNewRequest] | 

#Create new Cross entities on this server
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossesPost(authorization=var.authorization, cross.new.request=var.cross.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **cross.new.request** | list( [**CrossNewRequest**](CrossNewRequest.md) )|  | [optional] 

### Return type

[**CrossesListResponse**](CrossesListResponse.md)

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

# **CrossesPut**
> CrossesListResponse CrossesPut(authorization=var.authorization, request.body=var.request.body)

Update existing Cross entities on this server

Update existing Cross entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.request.body <- TODO # map(CrossNewRequest) | 

#Update existing Cross entities on this server
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CrossesPut(authorization=var.authorization, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **request.body** | named list( [**map(CrossNewRequest)**](CrossNewRequest.md) )|  | [optional] 

### Return type

[**CrossesListResponse**](CrossesListResponse.md)

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

# **PlannedcrossesGet**
> PlannedCrossesListResponse PlannedcrossesGet(crossing.project.db.id=var.crossing.project.db.id, planned.cross.db.id=var.planned.cross.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Planned Cross entities

Get a filtered list of Planned Cross entities.

### Example
```R
library(openapi)

var.crossing.project.db.id <- 'crossing.project.db.id_example' # character | Search for Crossing Projects with this unique id
var.planned.cross.db.id <- 'planned.cross.db.id_example' # character | Search for Planned Cross with this unique id
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Planned Cross entities
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PlannedcrossesGet(crossing.project.db.id=var.crossing.project.db.id, planned.cross.db.id=var.planned.cross.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crossing.project.db.id** | **character**| Search for Crossing Projects with this unique id | [optional] 
 **planned.cross.db.id** | **character**| Search for Planned Cross with this unique id | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**PlannedCrossesListResponse**](PlannedCrossesListResponse.md)

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

# **PlannedcrossesPost**
> PlannedCrossesListResponse PlannedcrossesPost(authorization=var.authorization, planned.cross.new.request=var.planned.cross.new.request)

Create new Planned Cross entities on this server

Create new Planned Cross entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.planned.cross.new.request <- list(PlannedCrossNewRequest$new(TODO, "BIPARENTAL", "crossingProjectDbId_example", "crossingProjectName_example", list(123), CrossParent$new("germplasmDbId_example", "germplasmName_example", "observationUnitDbId_example", "observationUnitName_example", "MALE"), CrossParent$new("germplasmDbId_example", "germplasmName_example", "observationUnitDbId_example", "observationUnitName_example", "MALE"), "plannedCrossName_example")) # array[PlannedCrossNewRequest] | 

#Create new Planned Cross entities on this server
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PlannedcrossesPost(authorization=var.authorization, planned.cross.new.request=var.planned.cross.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **planned.cross.new.request** | list( [**PlannedCrossNewRequest**](PlannedCrossNewRequest.md) )|  | [optional] 

### Return type

[**PlannedCrossesListResponse**](PlannedCrossesListResponse.md)

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

# **PlannedcrossesPut**
> PlannedCrossesListResponse PlannedcrossesPut(authorization=var.authorization, request.body=var.request.body)

Update existing Planned Cross entities on this server

Update existing Planned Cross entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.request.body <- TODO # map(PlannedCrossNewRequest) | 

#Update existing Planned Cross entities on this server
api.instance <- CrossesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PlannedcrossesPut(authorization=var.authorization, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **request.body** | named list( [**map(PlannedCrossNewRequest)**](PlannedCrossNewRequest.md) )|  | [optional] 

### Return type

[**PlannedCrossesListResponse**](PlannedCrossesListResponse.md)

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

