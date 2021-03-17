# ObservationUnitsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ObservationlevelsGet**](ObservationUnitsApi.md#ObservationlevelsGet) | **GET** /observationlevels | Get the Observation Levels
[**ObservationunitsGet**](ObservationUnitsApi.md#ObservationunitsGet) | **GET** /observationunits | Get a filtered set of Observation Units
[**ObservationunitsObservationUnitDbIdGet**](ObservationUnitsApi.md#ObservationunitsObservationUnitDbIdGet) | **GET** /observationunits/{observationUnitDbId} | Get the details of a specific Observation Unit
[**ObservationunitsObservationUnitDbIdPut**](ObservationUnitsApi.md#ObservationunitsObservationUnitDbIdPut) | **PUT** /observationunits/{observationUnitDbId} | Update an existing Observation Units
[**ObservationunitsPost**](ObservationUnitsApi.md#ObservationunitsPost) | **POST** /observationunits | Add new Observation Units
[**ObservationunitsPut**](ObservationUnitsApi.md#ObservationunitsPut) | **PUT** /observationunits | Update a set of Observation Units
[**ObservationunitsTableGet**](ObservationUnitsApi.md#ObservationunitsTableGet) | **GET** /observationunits/table | Get a list of Observations in a table format
[**SearchObservationunitsPost**](ObservationUnitsApi.md#SearchObservationunitsPost) | **POST** /search/observationunits | Submit a search request for Observation Units
[**SearchObservationunitsSearchResultsDbIdGet**](ObservationUnitsApi.md#SearchObservationunitsSearchResultsDbIdGet) | **GET** /search/observationunits/{searchResultsDbId} | Observation Unit Search


# **ObservationlevelsGet**
> ObservationLevelListResponse ObservationlevelsGet(study.db.id=var.study.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Observation Levels

Call to retrieve the list of supported observation levels.   Observation levels indicate the granularity level at which the measurements are taken. `levelName` defines the level, `levelOrder` defines where that level exists in the hierarchy of levels. `levelOrder`s lower numbers are at the top of the hierarchy (ie field > 0) and higher numbers are at the bottom of the hierarchy (ie plant > 6).   The values are used to supply the `observationLevel` parameter in the observation unit details call.

### Example
```R
library(openapi)

var.study.db.id <- 'study.db.id_example' # character | Filter by study DbId
var.trial.db.id <- 'trial.db.id_example' # character | Filter by trial DbId
var.program.db.id <- 'program.db.id_example' # character | Filter by program DbId
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Observation Levels
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationlevelsGet(study.db.id=var.study.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study.db.id** | **character**| Filter by study DbId | [optional] 
 **trial.db.id** | **character**| Filter by trial DbId | [optional] 
 **program.db.id** | **character**| Filter by program DbId | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationLevelListResponse**](ObservationLevelListResponse.md)

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

# **ObservationunitsGet**
> ObservationUnitListResponse ObservationunitsGet(observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.unit.level.name=var.observation.unit.level.name, observation.unit.level.order=var.observation.unit.level.order, observation.unit.level.code=var.observation.unit.level.code, include.observations=var.include.observations, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered set of Observation Units

Get a filtered set of Observation Units

### Example
```R
library(openapi)

var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique ID of an Observation Unit
var.germplasm.db.id <- 'germplasm.db.id_example' # character | The unique ID of a germplasm (accession) to filter on
var.study.db.id <- 'study.db.id_example' # character | The unique ID of a studies to filter on
var.location.db.id <- 'location.db.id_example' # character | The unique ID of a location where these observations were collected
var.trial.db.id <- 'trial.db.id_example' # character | The unique ID of a trial to filter on
var.program.db.id <- 'program.db.id_example' # character | The unique ID of a program to filter on
var.season.db.id <- 'season.db.id_example' # character | The year or Phenotyping campaign of a multi-annual study (trees, grape, ...)
var.observation.unit.level.name <- 'observation.unit.level.name_example' # character | The Observation Unit Level. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelName
var.observation.unit.level.order <- 'observation.unit.level.order_example' # character | The Observation Unit Level Order Number. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelOrder
var.observation.unit.level.code <- 'observation.unit.level.code_example' # character | The Observation Unit Level Code. This parameter should be used together with `observationUnitLevelName` or `observationUnitLevelOrder`. References ObservationUnit->observationUnitPosition->observationLevel->levelCode
var.include.observations <- 'include.observations_example' # character | Use this parameter to include a list of observations embedded in each ObservationUnit object.   CAUTION - Use this parameter at your own risk. It may return large, unpaginated lists of observation data. Only set this value to True if you are sure you need to.
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered set of Observation Units
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsGet(observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.unit.level.name=var.observation.unit.level.name, observation.unit.level.order=var.observation.unit.level.order, observation.unit.level.code=var.observation.unit.level.code, include.observations=var.include.observations, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.unit.db.id** | **character**| The unique ID of an Observation Unit | [optional] 
 **germplasm.db.id** | **character**| The unique ID of a germplasm (accession) to filter on | [optional] 
 **study.db.id** | **character**| The unique ID of a studies to filter on | [optional] 
 **location.db.id** | **character**| The unique ID of a location where these observations were collected | [optional] 
 **trial.db.id** | **character**| The unique ID of a trial to filter on | [optional] 
 **program.db.id** | **character**| The unique ID of a program to filter on | [optional] 
 **season.db.id** | **character**| The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) | [optional] 
 **observation.unit.level.name** | **character**| The Observation Unit Level. Returns only the observation unit of the specified Level. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelName | [optional] 
 **observation.unit.level.order** | **character**| The Observation Unit Level Order Number. Returns only the observation unit of the specified Level. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelOrder | [optional] 
 **observation.unit.level.code** | **character**| The Observation Unit Level Code. This parameter should be used together with &#x60;observationUnitLevelName&#x60; or &#x60;observationUnitLevelOrder&#x60;. References ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel-&gt;levelCode | [optional] 
 **include.observations** | **character**| Use this parameter to include a list of observations embedded in each ObservationUnit object.   CAUTION - Use this parameter at your own risk. It may return large, unpaginated lists of observation data. Only set this value to True if you are sure you need to. | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationUnitListResponse**](ObservationUnitListResponse.md)

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

# **ObservationunitsObservationUnitDbIdGet**
> ObservationUnitSingleResponse ObservationunitsObservationUnitDbIdGet(observation.unit.db.id, authorization=var.authorization)

Get the details of a specific Observation Unit

Get the details of a specific Observation Unit

### Example
```R
library(openapi)

var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique ID of the specific Observation Unit
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Observation Unit
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsObservationUnitDbIdGet(var.observation.unit.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.unit.db.id** | **character**| The unique ID of the specific Observation Unit | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationUnitSingleResponse**](ObservationUnitSingleResponse.md)

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

# **ObservationunitsObservationUnitDbIdPut**
> ObservationUnitSingleResponse ObservationunitsObservationUnitDbIdPut(observation.unit.db.id, authorization=var.authorization, observation.unit.new.request=var.observation.unit.new.request)

Update an existing Observation Units

Update an existing Observation Units

### Example
```R
library(openapi)

var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique ID of the specific Observation Unit
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.unit.new.request <- ObservationUnitNewRequest$new(TODO, list(123), "germplasmDbId_example", "germplasmName_example", "locationDbId_example", "locationName_example", "observationUnitName_example", "observationUnitPUI_example", ObservationUnitPosition$new("CHECK", geoJSON$new(TODO, "type_example"), ObservationUnitLevelRelationship$new("study", 123, "levelCode_example"), list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), "positionCoordinateX_example", "LONGITUDE", "positionCoordinateY_example", "LONGITUDE"), "programDbId_example", "programName_example", "seedLotDbId_example", "studyDbId_example", "studyName_example", list(ObservationTreatment$new("factor_example", "modality_example")), "trialDbId_example", "trialName_example") # ObservationUnitNewRequest | 

#Update an existing Observation Units
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsObservationUnitDbIdPut(var.observation.unit.db.id, authorization=var.authorization, observation.unit.new.request=var.observation.unit.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.unit.db.id** | **character**| The unique ID of the specific Observation Unit | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.unit.new.request** | [**ObservationUnitNewRequest**](ObservationUnitNewRequest.md)|  | [optional] 

### Return type

[**ObservationUnitSingleResponse**](ObservationUnitSingleResponse.md)

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

# **ObservationunitsPost**
> ObservationUnitListResponse ObservationunitsPost(authorization=var.authorization, observation.unit.new.request=var.observation.unit.new.request)

Add new Observation Units

Add new Observation Units

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.unit.new.request <- list(ObservationUnitNewRequest$new(TODO, list(123), "germplasmDbId_example", "germplasmName_example", "locationDbId_example", "locationName_example", "observationUnitName_example", "observationUnitPUI_example", ObservationUnitPosition$new("CHECK", geoJSON$new(TODO, "type_example"), ObservationUnitLevelRelationship$new("study", 123, "levelCode_example"), list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), "positionCoordinateX_example", "LONGITUDE", "positionCoordinateY_example", "LONGITUDE"), "programDbId_example", "programName_example", "seedLotDbId_example", "studyDbId_example", "studyName_example", list(ObservationTreatment$new("factor_example", "modality_example")), "trialDbId_example", "trialName_example")) # array[ObservationUnitNewRequest] | 

#Add new Observation Units
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsPost(authorization=var.authorization, observation.unit.new.request=var.observation.unit.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.unit.new.request** | list( [**ObservationUnitNewRequest**](ObservationUnitNewRequest.md) )|  | [optional] 

### Return type

[**ObservationUnitListResponse**](ObservationUnitListResponse.md)

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

# **ObservationunitsPut**
> ObservationUnitListResponse ObservationunitsPut(authorization=var.authorization, request.body=var.request.body)

Update a set of Observation Units

Update a set of Observation Units  Note - In strictly typed languages, this structure can be represented as a Map or Dictionary of objects and parsed directly to JSON.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.request.body <- TODO # map(ObservationUnitNewRequest) | 

#Update a set of Observation Units
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsPut(authorization=var.authorization, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **request.body** | named list( [**map(ObservationUnitNewRequest)**](ObservationUnitNewRequest.md) )|  | [optional] 

### Return type

[**ObservationUnitListResponse**](ObservationUnitListResponse.md)

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

# **ObservationunitsTableGet**
> ObservationUnitTableResponse ObservationunitsTableGet(accept, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.level=var.observation.level, authorization=var.authorization)

Get a list of Observations in a table format

<p>This service is designed to retrieve a table for observation values as a matrix of Observation Units and Observation Variables.</p> <p>The table may be represented by JSON, CSV, or TSV. The \"Accept\" HTTP header is used for the client to request different return formats.  By default, if the \"Accept\" header is not included in the request, the server should return JSON as described below.</p> <p>The table is REQUIRED to have the following columns</p> <ul>   <li>observationUnitDbId - Each row is related to one Observation Unit</li>   <li>At least one column with an observationVariableDbId</li> </ul> <p>The table may have any or all of the following OPTIONAL columns. Included columns are decided by the server developer</p> <ul>   <li>observationUnitName</li>   <li>studyDbId</li>   <li>studyName</li>   <li>germplasmDbId</li>   <li>germplasmName</li>   <li>positionCoordinateX</li>   <li>positionCoordinateY</li>   <li>year</li> </ul> <p>The table also may have any number of Observation Unit Hierarchy Level columns. For example:</p> <ul>   <li>field</li>   <li>plot</li>   <li>sub-plot</li>   <li>plant</li>   <li>pot</li>   <li>block</li>   <li>entry</li>   <li>rep</li> </ul> <p>The JSON representation provides a pair of extra arrays for defining the headers of the table.  The first array \"headerRow\" will always contain \"observationUnitDbId\" and any or all of the OPTIONAL column header names.  The second array \"observationVariables\" contains the names and DbIds for the Observation Variables represented in the table.  By appending the two arrays, you can construct the complete header row of the table. </p> <p>For CSV and TSV representations of the table, an extra header row is needed to describe both the Observation Variable DbId and the Observation Variable Name for each data column.  See the example responses below</p> 

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
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a list of Observations in a table format
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ObservationunitsTableGet(var.accept, observation.unit.db.id=var.observation.unit.db.id, germplasm.db.id=var.germplasm.db.id, observation.variable.db.id=var.observation.variable.db.id, study.db.id=var.study.db.id, location.db.id=var.location.db.id, trial.db.id=var.trial.db.id, program.db.id=var.program.db.id, season.db.id=var.season.db.id, observation.level=var.observation.level, authorization=var.authorization)
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
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationUnitTableResponse**](ObservationUnitTableResponse.md)

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

# **SearchObservationunitsPost**
> ObservationUnitListResponse SearchObservationunitsPost(authorization=var.authorization, observation.unit.search.request=var.observation.unit.search.request)

Submit a search request for Observation Units

Returns a list of observationUnit with the observed Phenotypes.  See Search Services for additional implementation details.  Use case - this section allows to get a dataset from multiple studies. It allows to integrate data from several databases.  Example Use cases   - Study a panel of germplasm across multiple studies  - Get all data for a specific study   - Get simple atomic phenotyping values   - Study Locations for adaptation to climate change  - Find phenotypes that are from after a certain timestamp  observationTimeStampRangeStart and observationTimeStampRangeEnd use Iso Standard 8601.  observationValue data type inferred from the ontology

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.unit.search.request <- ObservationUnitSearchRequest$new(123, 123, list("programDbIds_example"), list("programNames_example"), list("trialDbIds_example"), list("trialNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("locationDbIds_example"), list("locationNames_example"), list("germplasmDbIds_example"), list("germplasmNames_example"), list("observationVariableDbIds_example"), list("observationVariableNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), "includeObservations_example", list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), list(ObservationUnitLevelRelationship$new("study", 123, "levelCode_example")), list("observationUnitDbIds_example")) # ObservationUnitSearchRequest | 

#Submit a search request for Observation Units
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchObservationunitsPost(authorization=var.authorization, observation.unit.search.request=var.observation.unit.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.unit.search.request** | [**ObservationUnitSearchRequest**](ObservationUnitSearchRequest.md)|  | [optional] 

### Return type

[**ObservationUnitListResponse**](ObservationUnitListResponse.md)

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

# **SearchObservationunitsSearchResultsDbIdGet**
> ObservationUnitListResponse SearchObservationunitsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Observation Unit Search

Returns a list of observationUnit with the observed Phenotypes.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Observation Unit Search
api.instance <- ObservationUnitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchObservationunitsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ObservationUnitListResponse**](ObservationUnitListResponse.md)

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

