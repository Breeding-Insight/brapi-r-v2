# GenomeMapsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MapsGet**](GenomeMapsApi.md#MapsGet) | **GET** /maps | Get the Genomic Maps
[**MapsMapDbIdGet**](GenomeMapsApi.md#MapsMapDbIdGet) | **GET** /maps/{mapDbId} | Get the details of a specific Genomic Map
[**MapsMapDbIdLinkagegroupsGet**](GenomeMapsApi.md#MapsMapDbIdLinkagegroupsGet) | **GET** /maps/{mapDbId}/linkagegroups | Get the Linkage Groups of a specific Genomic Map
[**MarkerpositionsGet**](GenomeMapsApi.md#MarkerpositionsGet) | **GET** /markerpositions | Get marker position info
[**SearchMarkerpositionsPost**](GenomeMapsApi.md#SearchMarkerpositionsPost) | **POST** /search/markerpositions | Get marker position info
[**SearchMarkerpositionsSearchResultsDbIdGet**](GenomeMapsApi.md#SearchMarkerpositionsSearchResultsDbIdGet) | **GET** /search/markerpositions/{searchResultsDbId} | Get marker position info


# **MapsGet**
> GenomeMapListResponse MapsGet(common.crop.name=var.common.crop.name, map.db.id=var.map.db.id, map.pui=var.map.pui, scientific.name=var.scientific.name, type=var.type, program.db.id=var.program.db.id, trial.db.id=var.trial.db.id, study.db.id=var.study.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Genomic Maps

Get list of maps

### Example
```R
library(openapi)

var.common.crop.name <- 'common.crop.name_example' # character | The common name of the crop
var.map.db.id <- 'map.db.id_example' # character | The primary DbId for this genomic map
var.map.pui <- 'map.pui_example' # character | The DOI or other permanent identifier for this genomic map
var.scientific.name <- 'scientific.name_example' # character | Full scientific binomial format name. This includes Genus, Species, and Sub-species
var.type <- 'type_example' # character | Type of map
var.program.db.id <- 'program.db.id_example' # character | Unique Id to filter by Program
var.trial.db.id <- 'trial.db.id_example' # character | Unique Id to filter by Trial
var.study.db.id <- 'study.db.id_example' # character | Unique Id to filter by Study
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Genomic Maps
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MapsGet(common.crop.name=var.common.crop.name, map.db.id=var.map.db.id, map.pui=var.map.pui, scientific.name=var.scientific.name, type=var.type, program.db.id=var.program.db.id, trial.db.id=var.trial.db.id, study.db.id=var.study.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common.crop.name** | **character**| The common name of the crop | [optional] 
 **map.db.id** | **character**| The primary DbId for this genomic map | [optional] 
 **map.pui** | **character**| The DOI or other permanent identifier for this genomic map | [optional] 
 **scientific.name** | **character**| Full scientific binomial format name. This includes Genus, Species, and Sub-species | [optional] 
 **type** | Enum [physical, genomic] | Type of map | [optional] 
 **program.db.id** | **character**| Unique Id to filter by Program | [optional] 
 **trial.db.id** | **character**| Unique Id to filter by Trial | [optional] 
 **study.db.id** | **character**| Unique Id to filter by Study | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GenomeMapListResponse**](GenomeMapListResponse.md)

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

# **MapsMapDbIdGet**
> GenomeMapSingleResponse MapsMapDbIdGet(map.db.id, authorization=var.authorization)

Get the details of a specific Genomic Map

Provides the number of markers on each linkageGroup and the max position on the linkageGroup

### Example
```R
library(openapi)

var.map.db.id <- 'map.db.id_example' # character | The internal db id of a selected map
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Genomic Map
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MapsMapDbIdGet(var.map.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **map.db.id** | **character**| The internal db id of a selected map | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GenomeMapSingleResponse**](GenomeMapSingleResponse.md)

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

# **MapsMapDbIdLinkagegroupsGet**
> LinkageGroupListResponse MapsMapDbIdLinkagegroupsGet(map.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Linkage Groups of a specific Genomic Map

Get the Linkage Groups of a specific Genomic Map. A Linkage Group is the BrAPI generic term for a named section of a map. A Linkage Group can represent a Chromosome, Scaffold, or Linkage Group.

### Example
```R
library(openapi)

var.map.db.id <- 'map.db.id_example' # character | The internal db id of a selected map
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Linkage Groups of a specific Genomic Map
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MapsMapDbIdLinkagegroupsGet(var.map.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **map.db.id** | **character**| The internal db id of a selected map | 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**LinkageGroupListResponse**](LinkageGroupListResponse.md)

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

# **MarkerpositionsGet**
> MarkerPositionListResponse MarkerpositionsGet(map.db.id=var.map.db.id, linkage.group.name=var.linkage.group.name, variant.db.id=var.variant.db.id, min.position=var.min.position, max.position=var.max.position, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get marker position info

Get marker position information, based on Map, Linkage Group, and Marker ID

### Example
```R
library(openapi)

var.map.db.id <- 'map.db.id_example' # character | unique id of a map
var.linkage.group.name <- 'linkage.group.name_example' # character | The chromosome identifier or the generic linkage group identifier if the chromosome is not applicable.
var.variant.db.id <- 'variant.db.id_example' # character | The unique id for a marker
var.min.position <- 56 # integer | The minimum position
var.max.position <- 56 # integer | The maximum position
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get marker position info
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$MarkerpositionsGet(map.db.id=var.map.db.id, linkage.group.name=var.linkage.group.name, variant.db.id=var.variant.db.id, min.position=var.min.position, max.position=var.max.position, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **map.db.id** | **character**| unique id of a map | [optional] 
 **linkage.group.name** | **character**| The chromosome identifier or the generic linkage group identifier if the chromosome is not applicable. | [optional] 
 **variant.db.id** | **character**| The unique id for a marker | [optional] 
 **min.position** | **integer**| The minimum position | [optional] 
 **max.position** | **integer**| The maximum position | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**MarkerPositionListResponse**](MarkerPositionListResponse.md)

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

# **SearchMarkerpositionsPost**
> MarkerPositionListResponse SearchMarkerpositionsPost(authorization=var.authorization, marker.position.search.request=var.marker.position.search.request)

Get marker position info

Get marker position information, based on Map, Linkage Group, and Marker ID

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.marker.position.search.request <- MarkerPositionSearchRequest$new(123, 123, list("linkageGroupNames_example"), list("mapDbIds_example"), 123, 123, list("variantDbIds_example")) # MarkerPositionSearchRequest | 

#Get marker position info
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchMarkerpositionsPost(authorization=var.authorization, marker.position.search.request=var.marker.position.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **marker.position.search.request** | [**MarkerPositionSearchRequest**](MarkerPositionSearchRequest.md)|  | [optional] 

### Return type

[**MarkerPositionListResponse**](MarkerPositionListResponse.md)

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

# **SearchMarkerpositionsSearchResultsDbIdGet**
> MarkerPositionListResponse SearchMarkerpositionsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get marker position info

Get marker position information, based on Map, Linkage Group, and Marker ID

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get marker position info
api.instance <- GenomeMapsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchMarkerpositionsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**MarkerPositionListResponse**](MarkerPositionListResponse.md)

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

