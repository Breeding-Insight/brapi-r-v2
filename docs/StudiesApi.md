# StudiesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchStudiesPost**](StudiesApi.md#SearchStudiesPost) | **POST** /search/studies | Submit a search request for Studies
[**SearchStudiesSearchResultsDbIdGet**](StudiesApi.md#SearchStudiesSearchResultsDbIdGet) | **GET** /search/studies/{searchResultsDbId} | Get the results of a Studies search request
[**StudiesGet**](StudiesApi.md#StudiesGet) | **GET** /studies | Get a filtered list of Studies
[**StudiesPost**](StudiesApi.md#StudiesPost) | **POST** /studies | Create new Studies.
[**StudiesStudyDbIdGet**](StudiesApi.md#StudiesStudyDbIdGet) | **GET** /studies/{studyDbId} | Get the details for a specific Study
[**StudiesStudyDbIdPut**](StudiesApi.md#StudiesStudyDbIdPut) | **PUT** /studies/{studyDbId} | Update an existing Study
[**StudytypesGet**](StudiesApi.md#StudytypesGet) | **GET** /studytypes | Get the Study Types


# **SearchStudiesPost**
> StudyListResponse SearchStudiesPost(authorization=var.authorization, study.search.request=var.study.search.request)

Submit a search request for Studies

Get list of studies StartDate and endDate should be ISO-8601 format for dates See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.study.search.request <- StudySearchRequest$new(123, 123, list("commonCropNames_example"), list("programDbIds_example"), list("programNames_example"), list("trialDbIds_example"), list("trialNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("locationDbIds_example"), list("locationNames_example"), list("germplasmDbIds_example"), list("germplasmNames_example"), list("observationVariableDbIds_example"), list("observationVariableNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), "active_example", list("seasonDbIds_example"), "studyDbId", "ASC", list("studyCodes_example"), list("studyPUIs_example"), list("studyTypes_example")) # StudySearchRequest | Study Search request

#Submit a search request for Studies
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchStudiesPost(authorization=var.authorization, study.search.request=var.study.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **study.search.request** | [**StudySearchRequest**](StudySearchRequest.md)| Study Search request | [optional] 

### Return type

[**StudyListResponse**](StudyListResponse.md)

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

# **SearchStudiesSearchResultsDbIdGet**
> StudyListResponse SearchStudiesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Studies search request

Get list of studies  StartDate and endDate should be ISO-8601 format for dates  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Studies search request
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchStudiesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**StudyListResponse**](StudyListResponse.md)

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

# **StudiesGet**
> StudyListResponse StudiesGet(common.crop.name=var.common.crop.name, study.type=var.study.type, program.db.id=var.program.db.id, location.db.id=var.location.db.id, season.db.id=var.season.db.id, trial.db.id=var.trial.db.id, study.db.id=var.study.db.id, study.name=var.study.name, study.code=var.study.code, study.pui=var.study.pui, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, active=var.active, sort.by=var.sort.by, sort.order=var.sort.order, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Studies

Get list of studies  StartDate and endDate should be ISO-8601 format for dates

### Example
```R
library(openapi)

var.common.crop.name <- 'common.crop.name_example' # character | Common name for the crop associated with this study
var.study.type <- 'study.type_example' # character | Filter based on study type unique identifier
var.program.db.id <- 'program.db.id_example' # character | Program filter to only return studies associated with given program id.
var.location.db.id <- 'location.db.id_example' # character | Filter by location
var.season.db.id <- 'season.db.id_example' # character | Filter by season or year
var.trial.db.id <- 'trial.db.id_example' # character | Filter by trial
var.study.db.id <- 'study.db.id_example' # character | Filter by study DbId
var.study.name <- 'study.name_example' # character | Filter by study name
var.study.code <- 'study.code_example' # character | Filter by study code
var.study.pui <- 'study.pui_example' # character | Filter by study PUI
var.germplasm.db.id <- 'germplasm.db.id_example' # character | Filter by germplasm DbId
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | Filter by observation variable DbId
var.active <- 'active_example' # character | Filter active status true/false.
var.sort.by <- 'sort.by_example' # character | Name of the field to sort by.
var.sort.order <- 'sort.order_example' # character | Sort order direction. Ascending/Descending.
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Studies
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StudiesGet(common.crop.name=var.common.crop.name, study.type=var.study.type, program.db.id=var.program.db.id, location.db.id=var.location.db.id, season.db.id=var.season.db.id, trial.db.id=var.trial.db.id, study.db.id=var.study.db.id, study.name=var.study.name, study.code=var.study.code, study.pui=var.study.pui, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, active=var.active, sort.by=var.sort.by, sort.order=var.sort.order, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common.crop.name** | **character**| Common name for the crop associated with this study | [optional] 
 **study.type** | **character**| Filter based on study type unique identifier | [optional] 
 **program.db.id** | **character**| Program filter to only return studies associated with given program id. | [optional] 
 **location.db.id** | **character**| Filter by location | [optional] 
 **season.db.id** | **character**| Filter by season or year | [optional] 
 **trial.db.id** | **character**| Filter by trial | [optional] 
 **study.db.id** | **character**| Filter by study DbId | [optional] 
 **study.name** | **character**| Filter by study name | [optional] 
 **study.code** | **character**| Filter by study code | [optional] 
 **study.pui** | **character**| Filter by study PUI | [optional] 
 **germplasm.db.id** | **character**| Filter by germplasm DbId | [optional] 
 **observation.variable.db.id** | **character**| Filter by observation variable DbId | [optional] 
 **active** | **character**| Filter active status true/false. | [optional] 
 **sort.by** | Enum [studyDbId, trialDbId, programDbId, locationDbId, seasonDbId, studyType, studyName, studyLocation, programName] | Name of the field to sort by. | [optional] 
 **sort.order** | Enum [asc, ASC, desc, DESC] | Sort order direction. Ascending/Descending. | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**StudyListResponse**](StudyListResponse.md)

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

# **StudiesPost**
> StudyListResponse StudiesPost(authorization=var.authorization, study.new.request=var.study.new.request)

Create new Studies.

Create new studies  Implementation Notes  StartDate and endDate should be ISO-8601 format for dates  `studDbId` is generated by the server.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.study.new.request <- list(StudyNewRequest$new("active_example", TODO, "commonCropName_example", list(Contact$new("contactDbId_example", "email_example", "instituteName_example", "name_example", "orcid_example", "type_example")), "culturalPractices_example", list(DataLink$new("dataFormat_example", "description_example", "fileFormat_example", "name_example", "provenance_example", "scientificType_example", "url_example", "version_example")), "documentationURL_example", "endDate_example", list(EnvironmentParameter$new("description_example", "parameterName_example", "parameterPUI_example", "unit_example", "unitPUI_example", "value_example", "valuePUI_example")), StudyNewRequest_experimentalDesign$new("PUI_example", "description_example"), list(123), StudyNewRequest_growthFacility$new("PUI_example", "description_example"), StudyNewRequest_lastUpdate$new("timestamp_example", "version_example"), "license_example", "locationDbId_example", "locationName_example", list(ObservationUnitHierarchyLevel$new("study", 123)), "observationUnitsDescription_example", list("seasons_example"), "startDate_example", "studyCode_example", "studyDescription_example", "studyName_example", "studyPUI_example", "studyType_example", "trialDbId_example", "trialName_example")) # array[StudyNewRequest] | 

#Create new Studies.
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StudiesPost(authorization=var.authorization, study.new.request=var.study.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **study.new.request** | list( [**StudyNewRequest**](StudyNewRequest.md) )|  | [optional] 

### Return type

[**StudyListResponse**](StudyListResponse.md)

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

# **StudiesStudyDbIdGet**
> StudySingleResponse StudiesStudyDbIdGet(study.db.id, authorization=var.authorization)

Get the details for a specific Study

Retrieve the information of the study required for field data collection  An additionalInfo field was added to provide a controlled vocabulary for less common data fields.

### Example
```R
library(openapi)

var.study.db.id <- 'study.db.id_example' # character | Identifier of the study. Usually a number, could be alphanumeric.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Study
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StudiesStudyDbIdGet(var.study.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study.db.id** | **character**| Identifier of the study. Usually a number, could be alphanumeric. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**StudySingleResponse**](StudySingleResponse.md)

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

# **StudiesStudyDbIdPut**
> StudySingleResponse StudiesStudyDbIdPut(study.db.id, authorization=var.authorization, study.new.request=var.study.new.request)

Update an existing Study

Update an existing Study with new data

### Example
```R
library(openapi)

var.study.db.id <- 'study.db.id_example' # character | Identifier of the study. Usually a number, could be alphanumeric.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.study.new.request <- StudyNewRequest$new("active_example", TODO, "commonCropName_example", list(Contact$new("contactDbId_example", "email_example", "instituteName_example", "name_example", "orcid_example", "type_example")), "culturalPractices_example", list(DataLink$new("dataFormat_example", "description_example", "fileFormat_example", "name_example", "provenance_example", "scientificType_example", "url_example", "version_example")), "documentationURL_example", "endDate_example", list(EnvironmentParameter$new("description_example", "parameterName_example", "parameterPUI_example", "unit_example", "unitPUI_example", "value_example", "valuePUI_example")), StudyNewRequest_experimentalDesign$new("PUI_example", "description_example"), list(123), StudyNewRequest_growthFacility$new("PUI_example", "description_example"), StudyNewRequest_lastUpdate$new("timestamp_example", "version_example"), "license_example", "locationDbId_example", "locationName_example", list(ObservationUnitHierarchyLevel$new("study", 123)), "observationUnitsDescription_example", list("seasons_example"), "startDate_example", "studyCode_example", "studyDescription_example", "studyName_example", "studyPUI_example", "studyType_example", "trialDbId_example", "trialName_example") # StudyNewRequest | 

#Update an existing Study
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StudiesStudyDbIdPut(var.study.db.id, authorization=var.authorization, study.new.request=var.study.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study.db.id** | **character**| Identifier of the study. Usually a number, could be alphanumeric. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **study.new.request** | [**StudyNewRequest**](StudyNewRequest.md)|  | [optional] 

### Return type

[**StudySingleResponse**](StudySingleResponse.md)

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

# **StudytypesGet**
> StudyTypesResponse StudytypesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Study Types

Call to retrieve the list of study types.

### Example
```R
library(openapi)

var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Study Types
api.instance <- StudiesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StudytypesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**StudyTypesResponse**](studyTypesResponse.md)

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

