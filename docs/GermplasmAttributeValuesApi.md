# GermplasmAttributeValuesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AttributevaluesAttributeValueDbIdGet**](GermplasmAttributeValuesApi.md#AttributevaluesAttributeValueDbIdGet) | **GET** /attributevalues/{attributeValueDbId} | Get the details for a specific Germplasm Attribute
[**AttributevaluesAttributeValueDbIdPut**](GermplasmAttributeValuesApi.md#AttributevaluesAttributeValueDbIdPut) | **PUT** /attributevalues/{attributeValueDbId} | Update an existing Germplasm Attribute Value
[**AttributevaluesGet**](GermplasmAttributeValuesApi.md#AttributevaluesGet) | **GET** /attributevalues | Get the Germplasm Attribute Values
[**AttributevaluesPost**](GermplasmAttributeValuesApi.md#AttributevaluesPost) | **POST** /attributevalues | Create new Germplasm Attribute Values
[**SearchAttributevaluesPost**](GermplasmAttributeValuesApi.md#SearchAttributevaluesPost) | **POST** /search/attributevalues | Submit a search request for Germplasm Attribute Values
[**SearchAttributevaluesSearchResultsDbIdGet**](GermplasmAttributeValuesApi.md#SearchAttributevaluesSearchResultsDbIdGet) | **GET** /search/attributevalues/{searchResultsDbId} | Get the results of a Germplasm Attribute Values search request


# **AttributevaluesAttributeValueDbIdGet**
> GermplasmAttributeValueSingleResponse AttributevaluesAttributeValueDbIdGet(attribute.value.db.id, authorization=var.authorization)

Get the details for a specific Germplasm Attribute

Get the details for a specific Germplasm Attribute

### Example
```R
library(openapi)

var.attribute.value.db.id <- 'attribute.value.db.id_example' # character | The unique id for an attribute value
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Germplasm Attribute
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributevaluesAttributeValueDbIdGet(var.attribute.value.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.value.db.id** | **character**| The unique id for an attribute value | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmAttributeValueSingleResponse**](GermplasmAttributeValueSingleResponse.md)

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

# **AttributevaluesAttributeValueDbIdPut**
> GermplasmAttributeValueSingleResponse AttributevaluesAttributeValueDbIdPut(attribute.value.db.id, authorization=var.authorization, germplasm.attribute.value.new.request=var.germplasm.attribute.value.new.request)

Update an existing Germplasm Attribute Value

Update an existing Germplasm Attribute Value

### Example
```R
library(openapi)

var.attribute.value.db.id <- 'attribute.value.db.id_example' # character | The unique id for an attribute value
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.value.new.request <- GermplasmAttributeValueNewRequest$new("attributeName_example", TODO, "attributeDbId_example", "determinedDate_example", list(123), "germplasmDbId_example", "germplasmName_example", "value_example") # GermplasmAttributeValueNewRequest | 

#Update an existing Germplasm Attribute Value
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributevaluesAttributeValueDbIdPut(var.attribute.value.db.id, authorization=var.authorization, germplasm.attribute.value.new.request=var.germplasm.attribute.value.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.value.db.id** | **character**| The unique id for an attribute value | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.value.new.request** | [**GermplasmAttributeValueNewRequest**](GermplasmAttributeValueNewRequest.md)|  | [optional] 

### Return type

[**GermplasmAttributeValueSingleResponse**](GermplasmAttributeValueSingleResponse.md)

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

# **AttributevaluesGet**
> GermplasmAttributeValueListResponse AttributevaluesGet(attribute.value.db.id=var.attribute.value.db.id, attribute.db.id=var.attribute.db.id, attribute.name=var.attribute.name, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Germplasm Attribute Values

Get the Germplasm Attribute Values

### Example
```R
library(openapi)

var.attribute.value.db.id <- 'attribute.value.db.id_example' # character | The unique id for an attribute value
var.attribute.db.id <- 'attribute.db.id_example' # character | The unique id for an attribute
var.attribute.name <- 'attribute.name_example' # character | The human readable name for an attribute
var.germplasm.db.id <- 'germplasm.db.id_example' # character | Get all attributes associated with this germplasm
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Germplasm Attribute Values
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributevaluesGet(attribute.value.db.id=var.attribute.value.db.id, attribute.db.id=var.attribute.db.id, attribute.name=var.attribute.name, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.value.db.id** | **character**| The unique id for an attribute value | [optional] 
 **attribute.db.id** | **character**| The unique id for an attribute | [optional] 
 **attribute.name** | **character**| The human readable name for an attribute | [optional] 
 **germplasm.db.id** | **character**| Get all attributes associated with this germplasm | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmAttributeValueListResponse**](GermplasmAttributeValueListResponse.md)

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

# **AttributevaluesPost**
> GermplasmAttributeValueListResponse AttributevaluesPost(authorization=var.authorization, germplasm.attribute.value.new.request=var.germplasm.attribute.value.new.request)

Create new Germplasm Attribute Values

Create new Germplasm Attribute Values

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.value.new.request <- list(GermplasmAttributeValueNewRequest$new("attributeName_example", TODO, "attributeDbId_example", "determinedDate_example", list(123), "germplasmDbId_example", "germplasmName_example", "value_example")) # array[GermplasmAttributeValueNewRequest] | 

#Create new Germplasm Attribute Values
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributevaluesPost(authorization=var.authorization, germplasm.attribute.value.new.request=var.germplasm.attribute.value.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.value.new.request** | list( [**GermplasmAttributeValueNewRequest**](GermplasmAttributeValueNewRequest.md) )|  | [optional] 

### Return type

[**GermplasmAttributeValueListResponse**](GermplasmAttributeValueListResponse.md)

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

# **SearchAttributevaluesPost**
> GermplasmAttributeValueListResponse SearchAttributevaluesPost(authorization=var.authorization, germplasm.attribute.value.search.request=var.germplasm.attribute.value.search.request)

Submit a search request for Germplasm Attribute Values

Search for a set of Germplasm Attribute Values based on some criteria          See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.value.search.request <- GermplasmAttributeValueSearchRequest$new(123, 123, list("germplasmDbIds_example"), list("germplasmNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("attributeDbIds_example"), list("attributeNames_example"), list("attributeValueDbIds_example"), list(TraitDataType$new()), list("methodDbIds_example"), list("ontologyDbIds_example"), list("scaleDbIds_example"), list("traitClasses_example"), list("traitDbIds_example")) # GermplasmAttributeValueSearchRequest | 

#Submit a search request for Germplasm Attribute Values
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchAttributevaluesPost(authorization=var.authorization, germplasm.attribute.value.search.request=var.germplasm.attribute.value.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.value.search.request** | [**GermplasmAttributeValueSearchRequest**](GermplasmAttributeValueSearchRequest.md)|  | [optional] 

### Return type

[**GermplasmAttributeValueListResponse**](GermplasmAttributeValueListResponse.md)

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

# **SearchAttributevaluesSearchResultsDbIdGet**
> GermplasmAttributeValueListResponse SearchAttributevaluesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Germplasm Attribute Values search request

Get the results of a Germplasm Attribute Values search request  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Germplasm Attribute Values search request
api.instance <- GermplasmAttributeValuesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchAttributevaluesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**GermplasmAttributeValueListResponse**](GermplasmAttributeValueListResponse.md)

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

