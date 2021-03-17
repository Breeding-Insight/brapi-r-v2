# ObservationsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ObservationsGet**](ObservationsApi.md#ObservationsGet) | **GET** /observations | Get a filtered set of Observations
[**ObservationsObservationDbIdGet**](ObservationsApi.md#ObservationsObservationDbIdGet) | **GET** /observations/{observationDbId} | Get the details of a specific Observations
[**ObservationsObservationDbIdPut**](ObservationsApi.md#ObservationsObservationDbIdPut) | **PUT** /observations/{observationDbId} | Update an existing Observation
[**ObservationsPost**](ObservationsApi.md#ObservationsPost) | **POST** /observations | Add new Observation entities
[**ObservationsPut**](ObservationsApi.md#ObservationsPut) | **PUT** /observations | Update multiple Observation entities
[**ObservationsTableGet**](ObservationsApi.md#ObservationsTableGet) | **GET** /observations/table | Get a list of Observations in a table format
[**SearchObservationsPost**](ObservationsApi.md#SearchObservationsPost) | **POST** /search/observations | Submit a search request for a set of Observations
[**SearchObservationsSearchResultsDbIdGet**](ObservationsApi.md#SearchObservationsSearchResultsDbIdGet) | **GET** /search/observations/{searchResultsDbId} | Returns a list of Observations based on search criteria.


# **ObservationsGet**
> ObservationListResponse ObservationsGet(observation.db.id=var.observation.db.id, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.unit.level.name=var.observation.unit.level.name, observation.unit.level.order=var.observation.unit.level.order, observation.unit.level.code=var.observation.unit.level.code, observation.time.stamp.range.start=var.observation.time.stamp.range.start, observation.time.stamp.range.end=var.observation.time.stamp.range.end, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered set of Observations

Retrieve all observations where there are measurements for the given observation variables.  observationTimestamp should be ISO8601 format with timezone -> YYYY-MM-DDThh:mm:ss+hhmm

### Example
```R
library(openapi)

var.observation.db.id <- 'observation.db.id_example' # character | The unique ID of an Observation
var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique ID of an Observation Unit
var.germplasm.db.id <- 'germplasm.db.id_example' # character | The unique ID of a germplasm (accession) to filter on
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | The unique ID of an observation variable
var.study.db.id <- 'study.db.id_example' # character | The unique ID of a studies to filter on
var.location.db.id <- 'location.db.id_example' # character | The unique ID of a location where these observations were collected
var.trial.db.id <- 'trial.db.id_example' # character | The unique ID of a trial to filter on
var.program.db.id <- 'program.db.id_example' # character | The unique ID of a program to filter on
var.season.db.id <- 'season.db.id_example' # character | The year or Phenotyping campaign of a multi-annual study (trees, grape, ...)
var.observation.unit.level.name <- 'observation.unit.level.name_example' # character | The Observation Unit Level. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelName
var.observation.unit.level.order <- 'observation.unit.level.order_example' # character | The Observation Unit Level Order Number. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelOrder
var.observation.unit.level.code <- 'observation.unit.level.code_example' # character | The Observation Unit Level Code. This parameter should be used together with `observationUnitLevelName` or `observationUnitLevelOrder`. References ObservationUnit->observationUnitPosition->observationLevel->levelCode
var.observation.time.stamp.range.start <- 'observation.time.stamp.range.start_example' # character | Timestamp range start
var.observation.time.stamp.range.end <- 'observation.time.stamp.range.end_example' # character | Timestamp range end
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered set of Observations
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsGet(observation.db.id=var.observation.db.id, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.unit.level.name=var.observation.unit.level.name, observation.unit.level.order=var.observation.unit.level.order, observation.unit.level.code=var.observation.unit.level.code, observation.time.stamp.range.start=var.observation.time.stamp.range.start, observation.time.stamp.range.end=var.observation.time.stamp.range.end, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.db.id** | **character**| The unique ID of an Observation | [optional] 
 **observation.unit.db.id** | **character**| The unique ID of an Observation Unit | [optional] 
 **germplasm.db.id** | **character**| The unique ID of a germplasm (accession) to filter on | [optional] 
 **observation.variable.db.id** | **character**| The unique ID of an observation variable | [optional] 
 **study.db.id** | **character**| The unique ID of a studies to filter on | [optional] 
 **location.db.id** | **character**| The unique ID of a location where these observations were collected | [optional] 
 **trial.db.id** | **character**| The unique ID of a trial to filter on | [optional] 
 **program.db.id** | **character**| The unique ID of a program to filter on | [optional] 
 **season.db.id** | **character**| The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) | [optional] 
 **observation.unit.level.name** | **character**| The Observation Unit Level. Returns only the observation unit of the specified Level. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelName | [optional] 
 **observation.unit.level.order** | **character**| The Observation Unit Level Order Number. Returns only the observation unit of the specified Level. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelOrder | [optional] 
 **observation.unit.level.code** | **character**| The Observation Unit Level Code. This parameter should be used together with &#x60;observationUnitLevelName&#x60; or &#x60;observationUnitLevelOrder&#x60;. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelCode | [optional] 
 **observation.time.stamp.range.start** | **character**| Timestamp range start | [optional] 
 **observation.time.stamp.range.end** | **character**| Timestamp range end | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationListResponse**](ObservationListResponse.md)

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

# **ObservationsObservationDbIdGet**
> ObservationSingleResponse ObservationsObservationDbIdGet(observation.db.id, authorization=var.authorization)

Get the details of a specific Observations

Get the details of a specific Observations  observationTimestamp should be ISO8601 format with timezone -> YYYY-MM-DDThh:mm:ss+hhmm

### Example
```R
library(openapi)

var.observation.db.id <- 'observation.db.id_example' # character | The unique ID of an observation
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Observations
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsObservationDbIdGet(var.observation.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.db.id** | **character**| The unique ID of an observation | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationSingleResponse**](ObservationSingleResponse.md)

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

# **ObservationsObservationDbIdPut**
> ObservationSingleResponse ObservationsObservationDbIdPut(observation.db.id, authorization=var.authorization, observation.new.request=var.observation.new.request)

Update an existing Observation

Update an existing Observation

### Example
```R
library(openapi)

var.observation.db.id <- 'observation.db.id_example' # character | The unique ID of an observation
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.new.request <- ObservationNewRequest$new(TODO, "collector_example", list(123), "germplasmDbId_example", "germplasmName_example", "observationTimeStamp_example", "observationUnitDbId_example", "observationUnitName_example", "observationVariableDbId_example", "observationVariableName_example", Season$new("seasonDbId_example", "season_example", 123), "studyDbId_example", "uploadedBy_example", "value_example") # ObservationNewRequest | 

#Update an existing Observation
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsObservationDbIdPut(var.observation.db.id, authorization=var.authorization, observation.new.request=var.observation.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.db.id** | **character**| The unique ID of an observation | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.new.request** | [**ObservationNewRequest**](ObservationNewRequest.md)|  | [optional] 

### Return type

[**ObservationSingleResponse**](ObservationSingleResponse.md)

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

# **ObservationsPost**
> ObservationListResponse ObservationsPost(authorization=var.authorization, observation.new.request=var.observation.new.request)

Add new Observation entities

Add new Observation entities

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.new.request <- list(ObservationNewRequest$new(TODO, "collector_example", list(123), "germplasmDbId_example", "germplasmName_example", "observationTimeStamp_example", "observationUnitDbId_example", "observationUnitName_example", "observationVariableDbId_example", "observationVariableName_example", Season$new("seasonDbId_example", "season_example", 123), "studyDbId_example", "uploadedBy_example", "value_example")) # array[ObservationNewRequest] | 

#Add new Observation entities
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsPost(authorization=var.authorization, observation.new.request=var.observation.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.new.request** | list( [**ObservationNewRequest**](ObservationNewRequest.md) )|  | [optional] 

### Return type

[**ObservationListResponse**](ObservationListResponse.md)

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

# **ObservationsPut**
> ObservationListResponse ObservationsPut(authorization=var.authorization, request.body=var.request.body)

Update multiple Observation entities

Update multiple Observation entities simultaneously with a single call  Include as many `observationDbIds` in the request as needed.  Note - In strictly typed languages, this structure can be represented as a Map or Dictionary of objects and parsed directly from JSON.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.request.body <- TODO # map(ObservationNewRequest) | 

#Update multiple Observation entities
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsPut(authorization=var.authorization, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **request.body** | named list( [**map(ObservationNewRequest)**](ObservationNewRequest.md) )|  | [optional] 

### Return type

[**ObservationListResponse**](ObservationListResponse.md)

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

# **ObservationsTableGet**
> ObservationTableResponse ObservationsTableGet(accept, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.level=var.observation.level, search.results.db.id=var.search.results.db.id, observation.time.stamp.range.start=var.observation.time.stamp.range.start, observation.time.stamp.range.end=var.observation.time.stamp.range.end, authorization=var.authorization)

Get a list of Observations in a table format

<p>This service is designed to retrieve a table of time dependant observation values as a matrix of Observation Units and Observation Variables. This is also sometimes called a Time Series. This service takes the \"Sparse Table\" approach for representing this time dependant data.</p> <p>The table may be represented by JSON, CSV, or TSV. The \"Accept\" HTTP header is used for the client to request different return formats.  By default, if the \"Accept\" header is not included in the request, the server should return JSON as described below.</p> <p>The table is REQUIRED to have the following columns</p> <ul>   <li>observationUnitDbId - Each row is related to one Observation Unit</li>   <li>observationTimeStamp - Each row is has a time stamp for when the observation was taken</li>   <li>At least one column with an observationVariableDbId</li> </ul> <p>The table may have any or all of the following OPTIONAL columns. Included columns are decided by the server developer</p> <ul>   <li>observationUnitName</li>   <li>studyDbId</li>   <li>studyName</li>   <li>germplasmDbId</li>   <li>germplasmName</li>   <li>positionCoordinateX</li>   <li>positionCoordinateY</li>   <li>year</li> </ul> <p>The table also may have any number of Observation Unit Hierarchy Level columns. For example:</p> <ul>   <li>field</li>   <li>plot</li>   <li>sub-plot</li>   <li>plant</li>   <li>pot</li>   <li>block</li>   <li>entry</li>   <li>rep</li> </ul> <p>The JSON representation provides a pair of extra arrays for defining the headers of the table.  The first array \"headerRow\" will always contain \"observationUnitDbId\" and any or all of the OPTIONAL column header names.  The second array \"observationVariables\" contains the names and DbIds for the Observation Variables represented in the table.  By appending the two arrays, you can construct the complete header row of the table. </p> <p>For CSV and TSV representations of the table, an extra header row is needed to describe both the Observation Variable DbId and the Observation Variable Name for each data column.  See the example responses below</p> 

### Example
```R
library(openapi)

var.accept <- WSMIMEDataTypes$new() # WSMIMEDataTypes | The requested content type which should be returned by the server
var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique ID of an Observation Unit
var.germplasm.db.id <- 'germplasm.db.id_example' # character | The unique ID of a germplasm (accession) to filter on
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | The unique ID of an observation variable
var.study.db.id <- 'study.db.id_example' # character | The unique ID of a studies to filter on
var.location.db.id <- 'location.db.id_example' # character | The unique ID of a location where these observations were collected
var.trial.db.id <- 'trial.db.id_example' # character | The unique ID of a trial to filter on
var.program.db.id <- 'program.db.id_example' # character | The unique ID of a program to filter on
var.season.db.id <- 'season.db.id_example' # character | The year or Phenotyping campaign of a multi-annual study (trees, grape, ...)
var.observation.level <- 'observation.level_example' # character | The type of the observationUnit. Returns only the observation unit of the specified type; the parent levels ID can be accessed through observationUnitStructure.
var.search.results.db.id <- 'search.results.db.id_example' # character | Permanent unique identifier which references the search results
var.observation.time.stamp.range.start <- 'observation.time.stamp.range.start_example' # character | Timestamp range start
var.observation.time.stamp.range.end <- 'observation.time.stamp.range.end_example' # character | Timestamp range end
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a list of Observations in a table format
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationsTableGet(var.accept, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.level=var.observation.level, search.results.db.id=var.search.results.db.id, observation.time.stamp.range.start=var.observation.time.stamp.range.start, observation.time.stamp.range.end=var.observation.time.stamp.range.end, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | [**WSMIMEDataTypes**](.md)| The requested content type which should be returned by the server | 
 **observation.unit.db.id** | **character**| The unique ID of an Observation Unit | [optional] 
 **germplasm.db.id** | **character**| The unique ID of a germplasm (accession) to filter on | [optional] 
 **observation.variable.db.id** | **character**| The unique ID of an observation variable | [optional] 
 **study.db.id** | **character**| The unique ID of a studies to filter on | [optional] 
 **location.db.id** | **character**| The unique ID of a location where these observations were collected | [optional] 
 **trial.db.id** | **character**| The unique ID of a trial to filter on | [optional] 
 **program.db.id** | **character**| The unique ID of a program to filter on | [optional] 
 **season.db.id** | **character**| The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) | [optional] 
 **observation.level** | **character**| The type of the observationUnit. Returns only the observation unit of the specified type; the parent levels ID can be accessed through observationUnitStructure. | [optional] 
 **search.results.db.id** | **character**| Permanent unique identifier which references the search results | [optional] 
 **observation.time.stamp.range.start** | **character**| Timestamp range start | [optional] 
 **observation.time.stamp.range.end** | **character**| Timestamp range end | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationTableResponse**](ObservationTableResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, text/tsv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |

# **SearchObservationsPost**
> ObservationListResponse SearchObservationsPost(authorization=var.authorization, observation.search.request=var.observation.search.request)

Submit a search request for a set of Observations

Submit a search request for a set of Observations. Returns an Id which reference the results of this search

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.search.request <- ObservationSearchRequest$new(123, 123, list("programDbIds_example"), list("programNames_example"), list("trialDbIds_example"), list("trialNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("germplasmDbIds_example"), list("germplasmNames_example"), list("locationDbIds_example"), list("locationNames_example"), list("observationVariableDbIds_example"), list("observationVariableNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("observationDbIds_example"), list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), "observationTimeStampRangeEnd_example", "observationTimeStampRangeStart_example", list("observationUnitDbIds_example"), list("seasonDbIds_example")) # ObservationSearchRequest | 

#Submit a search request for a set of Observations
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchObservationsPost(authorization=var.authorization, observation.search.request=var.observation.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.search.request** | [**ObservationSearchRequest**](ObservationSearchRequest.md)|  | [optional] 

### Return type

[**ObservationListResponse**](ObservationListResponse.md)

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

# **SearchObservationsSearchResultsDbIdGet**
> ObservationListResponse SearchObservationsSearchResultsDbIdGet(accept, search.results.db.id, authorization=var.authorization, page=var.page, page.size=var.page.size)

Returns a list of Observations based on search criteria.

Returns a list of Observations based on search criteria.  observationTimeStamp - Iso Standard 8601.  observationValue data type inferred from the ontology

### Example
```R
library(openapi)

var.accept <- WSMIMEDataTypes$new() # WSMIMEDataTypes | The requested content type which should be returned by the server
var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.

#Returns a list of Observations based on search criteria.
api.instance <- ObservationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchObservationsSearchResultsDbIdGet(var.accept, var.search.results.db.id, authorization=var.authorization, page=var.page, page.size=var.page.size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | [**WSMIMEDataTypes**](.md)| The requested content type which should be returned by the server | 
 **search.results.db.id** | **character**| Unique identifier which references the search results | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 

### Return type

[**ObservationListResponse**](ObservationListResponse.md)

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

