# ObservationVariablesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SearchVariablesPost**](ObservationVariablesApi.md#SearchVariablesPost) | **POST** /search/variables | Submit a search request for Observation Variables
[**SearchVariablesSearchResultsDbIdGet**](ObservationVariablesApi.md#SearchVariablesSearchResultsDbIdGet) | **GET** /search/variables/{searchResultsDbId} | Get the results of a Observation Variable search request
[**VariablesGet**](ObservationVariablesApi.md#VariablesGet) | **GET** /variables | Get the Observation Variables
[**VariablesObservationVariableDbIdGet**](ObservationVariablesApi.md#VariablesObservationVariableDbIdGet) | **GET** /variables/{observationVariableDbId} | Get the details for a specific Observation Variable
[**VariablesObservationVariableDbIdPut**](ObservationVariablesApi.md#VariablesObservationVariableDbIdPut) | **PUT** /variables/{observationVariableDbId} | Update an existing Observation Variable
[**VariablesPost**](ObservationVariablesApi.md#VariablesPost) | **POST** /variables | Add new Observation Variables


# **SearchVariablesPost**
> ObservationVariableListResponse SearchVariablesPost(authorization=var.authorization, observation.variable.search.request=var.observation.variable.search.request)

Submit a search request for Observation Variables

Search observation variables.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.variable.search.request <- ObservationVariableSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list(TraitDataType$new()), list("methodDbIds_example"), list("observationVariableDbIds_example"), list("observationVariableNames_example"), list("ontologyDbIds_example"), list("scaleDbIds_example"), list("studyDbId_example"), list("traitClasses_example"), list("traitDbIds_example")) # ObservationVariableSearchRequest | 

#Submit a search request for Observation Variables
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariablesPost(authorization=var.authorization, observation.variable.search.request=var.observation.variable.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.variable.search.request** | [**ObservationVariableSearchRequest**](ObservationVariableSearchRequest.md)|  | [optional] 

### Return type

[**ObservationVariableListResponse**](ObservationVariableListResponse.md)

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

# **SearchVariablesSearchResultsDbIdGet**
> ObservationVariableListResponse SearchVariablesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Observation Variable search request

Search observation variables.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Observation Variable search request
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchVariablesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ObservationVariableListResponse**](ObservationVariableListResponse.md)

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

# **VariablesGet**
> ObservationVariableListResponse VariablesGet(observation.variable.db.id=var.observation.variable.db.id, trait.class=var.trait.class, study.db.id=var.study.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Observation Variables

Call to retrieve a list of observationVariables available in the system.

### Example
```R
library(openapi)

var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | Variable's unique ID
var.trait.class <- 'trait.class_example' # character | Variable's trait class (phenological, physiological, morphological, etc.)
var.study.db.id <- 'study.db.id_example' # character | The unique ID of a studies to filter on
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Observation Variables
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariablesGet(observation.variable.db.id=var.observation.variable.db.id, trait.class=var.trait.class, study.db.id=var.study.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.variable.db.id** | **character**| Variable&#39;s unique ID | [optional] 
 **trait.class** | **character**| Variable&#39;s trait class (phenological, physiological, morphological, etc.) | [optional] 
 **study.db.id** | **character**| The unique ID of a studies to filter on | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationVariableListResponse**](ObservationVariableListResponse.md)

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

# **VariablesObservationVariableDbIdGet**
> ObservationVariableSingleResponse VariablesObservationVariableDbIdGet(observation.variable.db.id, authorization=var.authorization)

Get the details for a specific Observation Variable

Retrieve variable details

### Example
```R
library(openapi)

var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | string id of the variable
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Observation Variable
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariablesObservationVariableDbIdGet(var.observation.variable.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.variable.db.id** | **character**| string id of the variable | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ObservationVariableSingleResponse**](ObservationVariableSingleResponse.md)

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

# **VariablesObservationVariableDbIdPut**
> ObservationVariableSingleResponse VariablesObservationVariableDbIdPut(observation.variable.db.id, authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)

Update an existing Observation Variable

Update an existing Observation Variable

### Example
```R
library(openapi)

var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | string id of the variable
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.variable.new.request <- ObservationVariableNewRequest$new(MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example")), ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123)), TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example"), "observationVariableName_example", TODO, "commonCropName_example", list("contextOfUse_example"), "defaultValue_example", "documentationURL_example", list(123), "growthStage_example", "institution_example", "language_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "scientist_example", "status_example", "submissionTimestamp_example", list("synonyms_example")) # ObservationVariableNewRequest | 

#Update an existing Observation Variable
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariablesObservationVariableDbIdPut(var.observation.variable.db.id, authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation.variable.db.id** | **character**| string id of the variable | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.variable.new.request** | [**ObservationVariableNewRequest**](ObservationVariableNewRequest.md)|  | [optional] 

### Return type

[**ObservationVariableSingleResponse**](ObservationVariableSingleResponse.md)

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

# **VariablesPost**
> ObservationVariableListResponse VariablesPost(authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)

Add new Observation Variables

Add new Observation Variables to the system.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.observation.variable.new.request <- list(ObservationVariableNewRequest$new(MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example")), ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123)), TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example"), "observationVariableName_example", TODO, "commonCropName_example", list("contextOfUse_example"), "defaultValue_example", "documentationURL_example", list(123), "growthStage_example", "institution_example", "language_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "scientist_example", "status_example", "submissionTimestamp_example", list("synonyms_example"))) # array[ObservationVariableNewRequest] | 

#Add new Observation Variables
api.instance <- ObservationVariablesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VariablesPost(authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **observation.variable.new.request** | list( [**ObservationVariableNewRequest**](ObservationVariableNewRequest.md) )|  | [optional] 

### Return type

[**ObservationVariableListResponse**](ObservationVariableListResponse.md)

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

