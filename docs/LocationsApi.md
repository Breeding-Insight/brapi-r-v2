# LocationsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LocationsGet**](LocationsApi.md#LocationsGet) | **GET** /locations | Get a filtered list of Locations
[**LocationsLocationDbIdGet**](LocationsApi.md#LocationsLocationDbIdGet) | **GET** /locations/{locationDbId} | Get the details of a specific Location
[**LocationsLocationDbIdPut**](LocationsApi.md#LocationsLocationDbIdPut) | **PUT** /locations/{locationDbId} | Update the details for an existing Location
[**LocationsPost**](LocationsApi.md#LocationsPost) | **POST** /locations | Create new Locations
[**SearchLocationsPost**](LocationsApi.md#SearchLocationsPost) | **POST** /search/locations | Submit a search request for Locations
[**SearchLocationsSearchResultsDbIdGet**](LocationsApi.md#SearchLocationsSearchResultsDbIdGet) | **GET** /search/locations/{searchResultsDbId} | Get the results of a Locations search request


# **LocationsGet**
> LocationListResponse LocationsGet(location.type=var.location.type, location.db.id=var.location.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Locations

Get a list of locations. * The `countryCode` is as per [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec. * `altitude` is in meters.

### Example
```R
library(openapi)

var.location.type <- 'location.type_example' # character | Filter by location type specified.
var.location.db.id <- 'location.db.id_example' # character | Filter by location DbId
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Locations
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$LocationsGet(location.type=var.location.type, location.db.id=var.location.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location.type** | **character**| Filter by location type specified. | [optional] 
 **location.db.id** | **character**| Filter by location DbId | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**LocationListResponse**](LocationListResponse.md)

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

# **LocationsLocationDbIdGet**
> LocationSingleResponse LocationsLocationDbIdGet(location.db.id, authorization=var.authorization)

Get the details of a specific Location

Get details for a location. - The `countryCode` is as per [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec. - `altitude` is in meters.'

### Example
```R
library(openapi)

var.location.db.id <- 'location.db.id_example' # character | The internal DB id for a location
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Location
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$LocationsLocationDbIdGet(var.location.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location.db.id** | **character**| The internal DB id for a location | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**LocationSingleResponse**](LocationSingleResponse.md)

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

# **LocationsLocationDbIdPut**
> LocationSingleResponse LocationsLocationDbIdPut(location.db.id, authorization=var.authorization, location.new.request=var.location.new.request)

Update the details for an existing Location

Update the details for an existing location. - The `countryCode` is as per [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec. - `altitude` is in meters.'

### Example
```R
library(openapi)

var.location.db.id <- 'location.db.id_example' # character | The internal DB id for a location
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.location.new.request <- LocationNewRequest$new("abbreviation_example", TODO, "coordinateDescription_example", "coordinateUncertainty_example", geoJSON$new(TODO, "type_example"), "countryCode_example", "countryName_example", "documentationURL_example", "environmentType_example", "exposure_example", list(123), "instituteAddress_example", "instituteName_example", "locationName_example", "locationType_example", "siteStatus_example", "slope_example", "topography_example") # LocationNewRequest | 

#Update the details for an existing Location
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$LocationsLocationDbIdPut(var.location.db.id, authorization=var.authorization, location.new.request=var.location.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location.db.id** | **character**| The internal DB id for a location | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **location.new.request** | [**LocationNewRequest**](LocationNewRequest.md)|  | [optional] 

### Return type

[**LocationSingleResponse**](LocationSingleResponse.md)

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

# **LocationsPost**
> LocationListResponse LocationsPost(authorization=var.authorization, location.new.request=var.location.new.request)

Create new Locations

Add new locations to database * The `countryCode` is as per [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec. * `altitude` is in meters.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.location.new.request <- list(LocationNewRequest$new("abbreviation_example", TODO, "coordinateDescription_example", "coordinateUncertainty_example", geoJSON$new(TODO, "type_example"), "countryCode_example", "countryName_example", "documentationURL_example", "environmentType_example", "exposure_example", list(123), "instituteAddress_example", "instituteName_example", "locationName_example", "locationType_example", "siteStatus_example", "slope_example", "topography_example")) # array[LocationNewRequest] | 

#Create new Locations
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$LocationsPost(authorization=var.authorization, location.new.request=var.location.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **location.new.request** | list( [**LocationNewRequest**](LocationNewRequest.md) )|  | [optional] 

### Return type

[**LocationListResponse**](LocationListResponse.md)

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

# **SearchLocationsPost**
> LocationListResponse SearchLocationsPost(authorization=var.authorization, location.search.request=var.location.search.request)

Submit a search request for Locations

Advanced searching for the locations resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.location.search.request <- LocationSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("locationDbIds_example"), list("locationNames_example"), list("abbreviations_example"), 123, 123, geoJSONSearchArea$new(TODO, "type_example"), list("countryCodes_example"), list("countryNames_example"), list("instituteAddresses_example"), list("instituteNames_example"), list("locationTypes_example")) # LocationSearchRequest | 

#Submit a search request for Locations
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchLocationsPost(authorization=var.authorization, location.search.request=var.location.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **location.search.request** | [**LocationSearchRequest**](LocationSearchRequest.md)|  | [optional] 

### Return type

[**LocationListResponse**](LocationListResponse.md)

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

# **SearchLocationsSearchResultsDbIdGet**
> LocationListResponse SearchLocationsSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Locations search request

Advanced searching for the locations resource. See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Locations search request
api.instance <- LocationsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchLocationsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**LocationListResponse**](LocationListResponse.md)

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

