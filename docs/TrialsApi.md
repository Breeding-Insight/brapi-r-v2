# TrialsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchTrialsPost**](TrialsApi.md#SearchTrialsPost) | **POST** /search/trials | Submit a search request for Trials
[**SearchTrialsSearchResultsDbIdGet**](TrialsApi.md#SearchTrialsSearchResultsDbIdGet) | **GET** /search/trials/{searchResultsDbId} | Get the results of a Trials search request
[**TrialsGet**](TrialsApi.md#TrialsGet) | **GET** /trials | Get a filtered list of Trials
[**TrialsPost**](TrialsApi.md#TrialsPost) | **POST** /trials | Create new trials
[**TrialsTrialDbIdGet**](TrialsApi.md#TrialsTrialDbIdGet) | **GET** /trials/{trialDbId} | Get the details of a specific Trial
[**TrialsTrialDbIdPut**](TrialsApi.md#TrialsTrialDbIdPut) | **PUT** /trials/{trialDbId} | Update the details of an existing Trial


# **SearchTrialsPost**
> TrialListResponse SearchTrialsPost(authorization=var.authorization, trial.search.request=var.trial.search.request)

Submit a search request for Trials

Advanced searching for the programs resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.trial.search.request <- TrialSearchRequest$new(123, 123, list("commonCropNames_example"), list("programDbIds_example"), list("programNames_example"), list("trialDbIds_example"), list("trialNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("locationDbIds_example"), list("locationNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), "active_example", list("contactDbIds_example"), "searchDateRangeEnd_example", "searchDateRangeStart_example", list("trialPUIs_example")) # TrialSearchRequest | 

#Submit a search request for Trials
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchTrialsPost(authorization=var.authorization, trial.search.request=var.trial.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **trial.search.request** | [**TrialSearchRequest**](TrialSearchRequest.md)|  | [optional] 

### Return type

[**TrialListResponse**](TrialListResponse.md)

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

# **SearchTrialsSearchResultsDbIdGet**
> TrialListResponse SearchTrialsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Trials search request

Advanced searching for the trials resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Trials search request
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchTrialsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**TrialListResponse**](TrialListResponse.md)

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

# **TrialsGet**
> TrialListResponse TrialsGet(active=var.active, common.crop.name=var.common.crop.name, contact.db.id=var.contact.db.id, program.db.id=var.program.db.id, location.db.id=var.location.db.id, search.date.range.start=var.search.date.range.start, search.date.range.end=var.search.date.range.end, study.db.id=var.study.db.id, trial.db.id=var.trial.db.id, trial.name=var.trial.name, trial.pui=var.trial.pui, sort.by=var.sort.by, sort.order=var.sort.order, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Trials

Retrieve a filtered list of breeding Trials. A Trial is a collection of Studies

### Example
```R
library(openapi)

var.active <- 'active_example' # character | Filter active status true/false.
var.common.crop.name <- 'common.crop.name_example' # character | Common name for the crop associated with this trial
var.contact.db.id <- 'contact.db.id_example' # character | Contact entities associated with this trial
var.program.db.id <- 'program.db.id_example' # character | Program filter to only return trials associated with given program id.
var.location.db.id <- 'location.db.id_example' # character | Filter by location
var.search.date.range.start <- 'search.date.range.start_example' # character | The start of the overlapping search date range. `searchDateRangeStart` must be before `searchDateRangeEnd`.  Return a Trial entity if any of the following cases are true  - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is null   - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is after `trial.startDate`  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is null  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is before `trial.endDate`
var.search.date.range.end <- 'search.date.range.end_example' # character | The start of the overlapping search date range. `searchDateRangeStart` must be before `searchDateRangeEnd`.  Return a Trial entity if any of the following cases are true  - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is null   - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is after `trial.startDate`  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is null  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is before `trial.endDate`
var.study.db.id <- 'study.db.id_example' # character | Filter by connected studyDbId
var.trial.db.id <- 'trial.db.id_example' # character | Filter by trialDbId
var.trial.name <- 'trial.name_example' # character | Filter by trial name
var.trial.pui <- 'trial.pui_example' # character | Filter by trial PUI
var.sort.by <- 'sort.by_example' # character | Sort order. Name of the field to sort by.
var.sort.order <- 'sort.order_example' # character | Sort order direction: asc/desc
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Trials
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TrialsGet(active=var.active, common.crop.name=var.common.crop.name, contact.db.id=var.contact.db.id, program.db.id=var.program.db.id, location.db.id=var.location.db.id, search.date.range.start=var.search.date.range.start, search.date.range.end=var.search.date.range.end, study.db.id=var.study.db.id, trial.db.id=var.trial.db.id, trial.name=var.trial.name, trial.pui=var.trial.pui, sort.by=var.sort.by, sort.order=var.sort.order, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **active** | **character**| Filter active status true/false. | [optional] 
 **common.crop.name** | **character**| Common name for the crop associated with this trial | [optional] 
 **contact.db.id** | **character**| Contact entities associated with this trial | [optional] 
 **program.db.id** | **character**| Program filter to only return trials associated with given program id. | [optional] 
 **location.db.id** | **character**| Filter by location | [optional] 
 **search.date.range.start** | **character**| The start of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
 **search.date.range.end** | **character**| The start of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
 **study.db.id** | **character**| Filter by connected studyDbId | [optional] 
 **trial.db.id** | **character**| Filter by trialDbId | [optional] 
 **trial.name** | **character**| Filter by trial name | [optional] 
 **trial.pui** | **character**| Filter by trial PUI | [optional] 
 **sort.by** | Enum [trialDbId, trialName, programDbId, programName, locationDbId, startDate, endDate] | Sort order. Name of the field to sort by. | [optional] 
 **sort.order** | Enum [asc, ASC, desc, DESC] | Sort order direction: asc/desc | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**TrialListResponse**](TrialListResponse.md)

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

# **TrialsPost**
> TrialListResponse TrialsPost(authorization=var.authorization, trial.new.request=var.trial.new.request)

Create new trials

Create new breeding Trials. A Trial represents a collection of related Studies. `trialDbId` is generated by the server.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.trial.new.request <- list(TrialNewRequest$new("active_example", TODO, "commonCropName_example", list(Contact$new("contactDbId_example", "email_example", "instituteName_example", "name_example", "orcid_example", "type_example")), list(TrialNewRequest_datasetAuthorships$new("datasetPUI_example", "license_example", "publicReleaseDate_example", "submissionDate_example")), "documentationURL_example", "endDate_example", list(123), "programDbId_example", "programName_example", list(TrialNewRequest_publications$new("publicationPUI_example", "publicationReference_example")), "startDate_example", "trialDescription_example", "trialName_example", "trialPUI_example")) # array[TrialNewRequest] | 

#Create new trials
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TrialsPost(authorization=var.authorization, trial.new.request=var.trial.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **trial.new.request** | list( [**TrialNewRequest**](TrialNewRequest.md) )|  | [optional] 

### Return type

[**TrialListResponse**](TrialListResponse.md)

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

# **TrialsTrialDbIdGet**
> TrialSingleResponse TrialsTrialDbIdGet(trial.db.id, authorization=var.authorization)

Get the details of a specific Trial

Get the details of a specific Trial

### Example
```R
library(openapi)

var.trial.db.id <- 'trial.db.id_example' # character | The internal trialDbId
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Trial
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TrialsTrialDbIdGet(var.trial.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trial.db.id** | **character**| The internal trialDbId | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**TrialSingleResponse**](TrialSingleResponse.md)

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

# **TrialsTrialDbIdPut**
> TrialSingleResponse TrialsTrialDbIdPut(trial.db.id, authorization=var.authorization, trial.new.request=var.trial.new.request)

Update the details of an existing Trial

Update the details of an existing Trial

### Example
```R
library(openapi)

var.trial.db.id <- 'trial.db.id_example' # character | The internal trialDbId
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.trial.new.request <- TrialNewRequest$new("active_example", TODO, "commonCropName_example", list(Contact$new("contactDbId_example", "email_example", "instituteName_example", "name_example", "orcid_example", "type_example")), list(TrialNewRequest_datasetAuthorships$new("datasetPUI_example", "license_example", "publicReleaseDate_example", "submissionDate_example")), "documentationURL_example", "endDate_example", list(123), "programDbId_example", "programName_example", list(TrialNewRequest_publications$new("publicationPUI_example", "publicationReference_example")), "startDate_example", "trialDescription_example", "trialName_example", "trialPUI_example") # TrialNewRequest | 

#Update the details of an existing Trial
api.instance <- TrialsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TrialsTrialDbIdPut(var.trial.db.id, authorization=var.authorization, trial.new.request=var.trial.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trial.db.id** | **character**| The internal trialDbId | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **trial.new.request** | [**TrialNewRequest**](TrialNewRequest.md)|  | [optional] 

### Return type

[**TrialSingleResponse**](TrialSingleResponse.md)

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

