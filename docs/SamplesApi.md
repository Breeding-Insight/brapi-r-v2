# SamplesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SamplesGet**](SamplesApi.md#SamplesGet) | **GET** /samples | Get the Samples
[**SamplesPost**](SamplesApi.md#SamplesPost) | **POST** /samples | Add new Samples
[**SamplesSampleDbIdGet**](SamplesApi.md#SamplesSampleDbIdGet) | **GET** /samples/{sampleDbId} | Get the details of a specific Sample
[**SamplesSampleDbIdPut**](SamplesApi.md#SamplesSampleDbIdPut) | **PUT** /samples/{sampleDbId} | Update the details of an existing Sample
[**SearchSamplesPost**](SamplesApi.md#SearchSamplesPost) | **POST** /search/samples | Submit a search request for Samples
[**SearchSamplesSearchResultsDbIdGet**](SamplesApi.md#SearchSamplesSearchResultsDbIdGet) | **GET** /search/samples/{searchResultsDbId} | Get the results of a Samples search request


# **SamplesGet**
> SampleListResponse SamplesGet(sample.db.id=var.sample.db.id, observation.unit.db.id=var.observation.unit.db.id, plate.db.id=var.plate.db.id, germplasm.db.id=var.germplasm.db.id, study.db.id=var.study.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Samples

Used to retrieve list of Samples from a Sample Tracking system based on some search criteria.

### Example
```R
library(openapi)

var.sample.db.id <- 'sample.db.id_example' # character | the internal DB id for a sample
var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | the internal DB id for an observation unit where a sample was taken from
var.plate.db.id <- 'plate.db.id_example' # character | the internal DB id for a plate of samples
var.germplasm.db.id <- 'germplasm.db.id_example' # character | the internal DB id for a germplasm
var.study.db.id <- 'study.db.id_example' # character | Filter by study DbId
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Samples
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SamplesGet(sample.db.id=var.sample.db.id, observation.unit.db.id=var.observation.unit.db.id, plate.db.id=var.plate.db.id, germplasm.db.id=var.germplasm.db.id, study.db.id=var.study.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sample.db.id** | **character**| the internal DB id for a sample | [optional] 
 **observation.unit.db.id** | **character**| the internal DB id for an observation unit where a sample was taken from | [optional] 
 **plate.db.id** | **character**| the internal DB id for a plate of samples | [optional] 
 **germplasm.db.id** | **character**| the internal DB id for a germplasm | [optional] 
 **study.db.id** | **character**| Filter by study DbId | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SampleListResponse**](SampleListResponse.md)

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

# **SamplesPost**
> SampleListResponse SamplesPost(authorization=var.authorization, sample.new.request=var.sample.new.request)

Add new Samples

Call to register the event of a sample being taken. Sample ID is assigned as a result of the operation and returned in response.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.sample.new.request <- list(SampleNewRequest$new(TODO, 123, list(123), "germplasmDbId_example", "observationUnitDbId_example", "plateDbId_example", "plateName_example", "programDbId_example", "row_example", "sampleBarcode_example", "sampleDescription_example", "sampleGroupDbId_example", "sampleName_example", "samplePUI_example", "sampleTimestamp_example", "sampleType_example", "studyDbId_example", "takenBy_example", "tissueType_example", "trialDbId_example", "well_example")) # array[SampleNewRequest] | 

#Add new Samples
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SamplesPost(authorization=var.authorization, sample.new.request=var.sample.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **sample.new.request** | list( [**SampleNewRequest**](SampleNewRequest.md) )|  | [optional] 

### Return type

[**SampleListResponse**](SampleListResponse.md)

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

# **SamplesSampleDbIdGet**
> SampleSingleResponse SamplesSampleDbIdGet(sample.db.id, authorization=var.authorization)

Get the details of a specific Sample

Used to retrieve the details of a single Sample from a Sample Tracking system.

### Example
```R
library(openapi)

var.sample.db.id <- 'sample.db.id_example' # character | the internal DB id for a sample
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Sample
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SamplesSampleDbIdGet(var.sample.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sample.db.id** | **character**| the internal DB id for a sample | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SampleSingleResponse**](SampleSingleResponse.md)

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

# **SamplesSampleDbIdPut**
> SampleSingleResponse SamplesSampleDbIdPut(sample.db.id, authorization=var.authorization, sample.new.request=var.sample.new.request)

Update the details of an existing Sample

Update the details of an existing Sample

### Example
```R
library(openapi)

var.sample.db.id <- 'sample.db.id_example' # character | the internal DB id for a sample
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.sample.new.request <- SampleNewRequest$new(TODO, 123, list(123), "germplasmDbId_example", "observationUnitDbId_example", "plateDbId_example", "plateName_example", "programDbId_example", "row_example", "sampleBarcode_example", "sampleDescription_example", "sampleGroupDbId_example", "sampleName_example", "samplePUI_example", "sampleTimestamp_example", "sampleType_example", "studyDbId_example", "takenBy_example", "tissueType_example", "trialDbId_example", "well_example") # SampleNewRequest | 

#Update the details of an existing Sample
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SamplesSampleDbIdPut(var.sample.db.id, authorization=var.authorization, sample.new.request=var.sample.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sample.db.id** | **character**| the internal DB id for a sample | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **sample.new.request** | [**SampleNewRequest**](SampleNewRequest.md)|  | [optional] 

### Return type

[**SampleSingleResponse**](SampleSingleResponse.md)

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

# **SearchSamplesPost**
> SampleListResponse SearchSamplesPost(authorization=var.authorization, sample.search.request=var.sample.search.request)

Submit a search request for Samples

Used to retrieve list of Samples from a Sample Tracking system based on some search criteria.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.sample.search.request <- SampleSearchRequest$new(123, 123, list("germplasmDbIds_example"), list("germplasmNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("observationUnitDbIds_example"), list("plateDbIds_example"), list("sampleDbIds_example")) # SampleSearchRequest | 

#Submit a search request for Samples
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchSamplesPost(authorization=var.authorization, sample.search.request=var.sample.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **sample.search.request** | [**SampleSearchRequest**](SampleSearchRequest.md)|  | [optional] 

### Return type

[**SampleListResponse**](SampleListResponse.md)

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

# **SearchSamplesSearchResultsDbIdGet**
> SampleListResponse SearchSamplesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Samples search request

Used to retrieve list of Samples from a Sample Tracking system based on some search criteria.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Samples search request
api.instance <- SamplesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchSamplesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**SampleListResponse**](SampleListResponse.md)

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

