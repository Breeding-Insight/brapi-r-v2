# ImagesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ImagesGet**](ImagesApi.md#ImagesGet) | **GET** /images | Get the image meta data summaries
[**ImagesImageDbIdGet**](ImagesApi.md#ImagesImageDbIdGet) | **GET** /images/{imageDbId} | Get the an image meta data summary
[**ImagesImageDbIdImagecontentPut**](ImagesApi.md#ImagesImageDbIdImagecontentPut) | **PUT** /images/{imageDbId}/imagecontent | Update an image with the image file content
[**ImagesImageDbIdPut**](ImagesApi.md#ImagesImageDbIdPut) | **PUT** /images/{imageDbId} | Update an image meta data
[**ImagesPost**](ImagesApi.md#ImagesPost) | **POST** /images | Create new image meta data objects
[**SearchImagesPost**](ImagesApi.md#SearchImagesPost) | **POST** /search/images | Submit a search request for Images
[**SearchImagesSearchResultsDbIdGet**](ImagesApi.md#SearchImagesSearchResultsDbIdGet) | **GET** /search/images/{searchResultsDbId} | Get the results of an Images search request


# **ImagesGet**
> ImageListResponse ImagesGet(image.db.id=var.image.db.id, image.name=var.image.name, observation.unit.db.id=var.observation.unit.db.id, observation.db.id=var.observation.db.id, descriptive.ontology.term=var.descriptive.ontology.term, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the image meta data summaries

Get filtered set of image meta data  Implementation Notes  - ''imageURL'' should be a complete URL describing the location of the image. There is no BrAPI call for retrieving the image content, so it could be on a different path, or a different host.  - ''descriptiveOntologyTerm'' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI''s.

### Example
```R
library(openapi)

var.image.db.id <- 'image.db.id_example' # character | The unique identifier for a image
var.image.name <- 'image.name_example' # character | The human readable name of an image
var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | The unique identifier of the observation unit an image is portraying
var.observation.db.id <- 'observation.db.id_example' # character | The unique identifier of the observation an image is associated with
var.descriptive.ontology.term <- 'descriptive.ontology.term_example' # character | A descriptive term associated with an image
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the image meta data summaries
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ImagesGet(image.db.id=var.image.db.id, image.name=var.image.name, observation.unit.db.id=var.observation.unit.db.id, observation.db.id=var.observation.db.id, descriptive.ontology.term=var.descriptive.ontology.term, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image.db.id** | **character**| The unique identifier for a image | [optional] 
 **image.name** | **character**| The human readable name of an image | [optional] 
 **observation.unit.db.id** | **character**| The unique identifier of the observation unit an image is portraying | [optional] 
 **observation.db.id** | **character**| The unique identifier of the observation an image is associated with | [optional] 
 **descriptive.ontology.term** | **character**| A descriptive term associated with an image | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ImageListResponse**](ImageListResponse.md)

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

# **ImagesImageDbIdGet**
> ImageSingleResponse ImagesImageDbIdGet(image.db.id, authorization=var.authorization)

Get the an image meta data summary

Get one image meta data object  Implementation Notes  - ''imageURL'' should be a complete URL describing the location of the image. There is no BrAPI call for retrieving the image content, so it could be on a different path, or a different host.  - ''descriptiveOntologyTerm'' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI''s.

### Example
```R
library(openapi)

var.image.db.id <- 'image.db.id_example' # character | The unique identifier for a image
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the an image meta data summary
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ImagesImageDbIdGet(var.image.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image.db.id** | **character**| The unique identifier for a image | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ImageSingleResponse**](ImageSingleResponse.md)

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

# **ImagesImageDbIdImagecontentPut**
> ImageSingleResponse ImagesImageDbIdImagecontentPut(image.db.id, authorization=var.authorization, body=var.body)

Update an image with the image file content

Update an image with the image file content  Implementation Notes  - This call should be paired with 'PUT /images/{imageDbId}' for full capability  - A server may choose to modify the image meta data object based on the actually image which has been uploaded.   - Image data may be stored in a database or file system. Servers should generate and provide the \"imageURL\" for retrieving the image, wherever it happens to live.

### Example
```R
library(openapi)

var.image.db.id <- 'image.db.id_example' # character | The unique identifier for a image
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.body <- File.new('/path/to/file') # data.frame | 

#Update an image with the image file content
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ImagesImageDbIdImagecontentPut(var.image.db.id, authorization=var.authorization, body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image.db.id** | **character**| The unique identifier for a image | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **body** | **data.frame**|  | [optional] 

### Return type

[**ImageSingleResponse**](ImageSingleResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: image/*
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

# **ImagesImageDbIdPut**
> ImageSingleResponse ImagesImageDbIdPut(image.db.id, authorization=var.authorization, image.new.request=var.image.new.request)

Update an image meta data

Update an image meta data object  Implementation Notes  - This call should be paired with 'PUT /images/{imageDbId}/imagecontent' for full capability  - A server may choose to modify the image meta data object based on the actually image which has been uploaded.   - Image data may be stored in a database or file system. Servers should generate and provide the \"imageURL\" as an absolute path for retrieving the image, wherever it happens to live.   - 'descriptiveOntologyTerm' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI's.   - The '/images' calls support a GeoJSON object structure for describing their location. The BrAPI spec for GeoJSON only supports two of the possible geometries: Points and Polygons.   - With most images, the Point geometry should be used, and it should indicate the longitude and latitude of the camera.   - For top down images (ie from drones, cranes, etc), the Point geometry may be used to indicate the longitude and latitude of the centroid of the image content, and the Polygon geometry may be used to indicate the border of the image content.

### Example
```R
library(openapi)

var.image.db.id <- 'image.db.id_example' # character | The unique identifier for a image
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.image.new.request <- ImageNewRequest$new(TODO, "copyright_example", "description_example", list("descriptiveOntologyTerms_example"), list(123), "imageFileName_example", 123, 123, geoJSON$new(TODO, "type_example"), "imageName_example", "imageTimeStamp_example", "imageURL_example", 123, "mimeType_example", list("observationDbIds_example"), "observationUnitDbId_example") # ImageNewRequest | 

#Update an image meta data
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ImagesImageDbIdPut(var.image.db.id, authorization=var.authorization, image.new.request=var.image.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image.db.id** | **character**| The unique identifier for a image | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **image.new.request** | [**ImageNewRequest**](ImageNewRequest.md)|  | [optional] 

### Return type

[**ImageSingleResponse**](ImageSingleResponse.md)

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

# **ImagesPost**
> ImageListResponse ImagesPost(authorization=var.authorization, image.new.request=var.image.new.request)

Create new image meta data objects

Create new image meta data objects  Implementation Notes  - ''imageURL'' should be a complete URL describing the location of the image. There is no BrAPI call for retrieving the image content, so it could be on a different path, or a different host.  - ''descriptiveOntologyTerm'' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI''s.  - The '/images' calls support a GeoJSON object structure for describing their location. The BrAPI spec for GeoJSON only supports two of the possible geometries: Points and Polygons.  - With most images, the Point geometry should be used, and it should indicate the longitude and latitude of the camera.  - For top down images (ie from drones, cranes, etc), the Point geometry may be used to indicate the longitude and latitude of the centroid of the image content, and the Polygon geometry may be used to indicate the border of the image content. '

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.image.new.request <- list(ImageNewRequest$new(TODO, "copyright_example", "description_example", list("descriptiveOntologyTerms_example"), list(123), "imageFileName_example", 123, 123, geoJSON$new(TODO, "type_example"), "imageName_example", "imageTimeStamp_example", "imageURL_example", 123, "mimeType_example", list("observationDbIds_example"), "observationUnitDbId_example")) # array[ImageNewRequest] | 

#Create new image meta data objects
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ImagesPost(authorization=var.authorization, image.new.request=var.image.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **image.new.request** | list( [**ImageNewRequest**](ImageNewRequest.md) )|  | [optional] 

### Return type

[**ImageListResponse**](ImageListResponse.md)

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

# **SearchImagesPost**
> ImageListResponse SearchImagesPost(authorization=var.authorization, image.search.request=var.image.search.request)

Submit a search request for Images

Get filtered set of image meta data  Implementation Notes  - ''imageURL'' should be a complete URL describing the location of the image. There is no BrAPI call for retrieving the image content, so it could be on a different path, or a different host.  - 'descriptiveOntologyTerm' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI's.  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.image.search.request <- ImageSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("descriptiveOntologyTerms_example"), list("imageDbIds_example"), list("imageFileNames_example"), 123, 123, 123, 123, geoJSONSearchArea$new(TODO, "type_example"), list("imageNames_example"), "imageTimeStampRangeEnd_example", "imageTimeStampRangeStart_example", 123, 123, list("mimeTypes_example"), list("observationDbIds_example"), list("observationUnitDbIds_example")) # ImageSearchRequest | 

#Submit a search request for Images
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchImagesPost(authorization=var.authorization, image.search.request=var.image.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **image.search.request** | [**ImageSearchRequest**](ImageSearchRequest.md)|  | [optional] 

### Return type

[**ImageListResponse**](ImageListResponse.md)

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

# **SearchImagesSearchResultsDbIdGet**
> ImageListResponse SearchImagesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of an Images search request

Get filtered set of image meta data  Implementation Notes  - ''imageURL'' should be a complete URL describing the location of the image. There is no BrAPI call for retrieving the image content, so it could be on a different path, or a different host.  - ''descriptiveOntologyTerm'' can be thought of as Tags for the image. These could be simple descriptive words, or ontology references, or full ontology URI''s.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of an Images search request
api.instance <- ImagesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchImagesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**ImageListResponse**](ImageListResponse.md)

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

