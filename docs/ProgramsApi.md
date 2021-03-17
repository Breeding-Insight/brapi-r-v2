# ProgramsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ProgramsGet**](ProgramsApi.md#ProgramsGet) | **GET** /programs | Get a filtered list of breeding Programs
[**ProgramsPost**](ProgramsApi.md#ProgramsPost) | **POST** /programs | Add new breeding Programs to the database
[**ProgramsProgramDbIdGet**](ProgramsApi.md#ProgramsProgramDbIdGet) | **GET** /programs/{programDbId} | Get a breeding Program by Id
[**ProgramsProgramDbIdPut**](ProgramsApi.md#ProgramsProgramDbIdPut) | **PUT** /programs/{programDbId} | Update an existing Program
[**SearchProgramsPost**](ProgramsApi.md#SearchProgramsPost) | **POST** /search/programs | Submit a search request for Programs
[**SearchProgramsSearchResultsDbIdGet**](ProgramsApi.md#SearchProgramsSearchResultsDbIdGet) | **GET** /search/programs/{searchResultsDbId} | Get the results of a Programs search request


# **ProgramsGet**
> ProgramListResponse ProgramsGet(common.crop.name=var.common.crop.name, program.db.id=var.program.db.id, program.name=var.program.name, abbreviation=var.abbreviation, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of breeding Programs

Get a filtered list of breeding Programs. This list can be filtered by common crop name to narrow results to a specific crop.

### Example
```R
library(openapi)

var.common.crop.name <- 'common.crop.name_example' # character | Filter by the common crop name. Exact match.
var.program.db.id <- 'program.db.id_example' # character | Program filter to only return trials associated with given program id.
var.program.name <- 'program.name_example' # character | Filter by program name. Exact match.
var.abbreviation <- 'abbreviation_example' # character | Filter by program abbreviation. Exact match.
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of breeding Programs
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ProgramsGet(common.crop.name=var.common.crop.name, program.db.id=var.program.db.id, program.name=var.program.name, abbreviation=var.abbreviation, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common.crop.name** | **character**| Filter by the common crop name. Exact match. | [optional] 
 **program.db.id** | **character**| Program filter to only return trials associated with given program id. | [optional] 
 **program.name** | **character**| Filter by program name. Exact match. | [optional] 
 **abbreviation** | **character**| Filter by program abbreviation. Exact match. | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ProgramListResponse**](ProgramListResponse.md)

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

# **ProgramsPost**
> ProgramListResponse ProgramsPost(authorization=var.authorization, program.new.request=var.program.new.request)

Add new breeding Programs to the database

Add new breeding Programs to the database. The `programDbId` is set by the server, all other fields are take from the request body, or a default value is used.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.program.new.request <- list(ProgramNewRequest$new("abbreviation_example", TODO, "commonCropName_example", "documentationURL_example", list(123), "leadPersonDbId_example", "leadPersonName_example", "objective_example", "programName_example")) # array[ProgramNewRequest] | 

#Add new breeding Programs to the database
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ProgramsPost(authorization=var.authorization, program.new.request=var.program.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **program.new.request** | list( [**ProgramNewRequest**](ProgramNewRequest.md) )|  | [optional] 

### Return type

[**ProgramListResponse**](ProgramListResponse.md)

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

# **ProgramsProgramDbIdGet**
> ProgramSingleResponse ProgramsProgramDbIdGet(program.db.id, authorization=var.authorization)

Get a breeding Program by Id

Get a single breeding Program by Id. This can be used to quickly get the details of a Program when you have the Id from another entity.

### Example
```R
library(openapi)

var.program.db.id <- 'program.db.id_example' # character | Filter by the common crop name. Exact match.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a breeding Program by Id
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ProgramsProgramDbIdGet(var.program.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program.db.id** | **character**| Filter by the common crop name. Exact match. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ProgramSingleResponse**](ProgramSingleResponse.md)

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

# **ProgramsProgramDbIdPut**
> ProgramSingleResponse ProgramsProgramDbIdPut(program.db.id, authorization=var.authorization, program.new.request=var.program.new.request)

Update an existing Program

Update the details of an existing breeding Program.

### Example
```R
library(openapi)

var.program.db.id <- 'program.db.id_example' # character | Filter by the common crop name. Exact match.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.program.new.request <- ProgramNewRequest$new("abbreviation_example", TODO, "commonCropName_example", "documentationURL_example", list(123), "leadPersonDbId_example", "leadPersonName_example", "objective_example", "programName_example") # ProgramNewRequest | 

#Update an existing Program
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ProgramsProgramDbIdPut(var.program.db.id, authorization=var.authorization, program.new.request=var.program.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program.db.id** | **character**| Filter by the common crop name. Exact match. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **program.new.request** | [**ProgramNewRequest**](ProgramNewRequest.md)|  | [optional] 

### Return type

[**ProgramSingleResponse**](ProgramSingleResponse.md)

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

# **SearchProgramsPost**
> ProgramListResponse SearchProgramsPost(authorization=var.authorization, program.search.request=var.program.search.request)

Submit a search request for Programs

Advanced searching for the programs resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.program.search.request <- ProgramSearchRequest$new(123, 123, list("commonCropNames_example"), list("programDbIds_example"), list("programNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("abbreviations_example"), list("leadPersonDbIds_example"), list("leadPersonNames_example"), list("objectives_example")) # ProgramSearchRequest | 

#Submit a search request for Programs
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchProgramsPost(authorization=var.authorization, program.search.request=var.program.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **program.search.request** | [**ProgramSearchRequest**](ProgramSearchRequest.md)|  | [optional] 

### Return type

[**ProgramListResponse**](ProgramListResponse.md)

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

# **SearchProgramsSearchResultsDbIdGet**
> ProgramListResponse SearchProgramsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Programs search request

Advanced searching for the programs resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Programs search request
api.instance <- ProgramsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchProgramsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ProgramListResponse**](ProgramListResponse.md)

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
| **404** | Not Found |  -  |

