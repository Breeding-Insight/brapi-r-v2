# GermplasmAttributesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AttributesAttributeDbIdGet**](GermplasmAttributesApi.md#AttributesAttributeDbIdGet) | **GET** /attributes/{attributeDbId} | Get the details for a specific Germplasm Attribute
[**AttributesAttributeDbIdPut**](GermplasmAttributesApi.md#AttributesAttributeDbIdPut) | **PUT** /attributes/{attributeDbId} | Update an existing Germplasm Attribute
[**AttributesCategoriesGet**](GermplasmAttributesApi.md#AttributesCategoriesGet) | **GET** /attributes/categories | Get the Categories of Germplasm Attributes
[**AttributesGet**](GermplasmAttributesApi.md#AttributesGet) | **GET** /attributes | Get the Germplasm Attributes
[**AttributesPost**](GermplasmAttributesApi.md#AttributesPost) | **POST** /attributes | Create new Germplasm Attributes
[**SearchAttributesPost**](GermplasmAttributesApi.md#SearchAttributesPost) | **POST** /search/attributes | Submit a search request for Germplasm Attributes
[**SearchAttributesSearchResultsDbIdGet**](GermplasmAttributesApi.md#SearchAttributesSearchResultsDbIdGet) | **GET** /search/attributes/{searchResultsDbId} | Get the results of a Germplasm Attributes search request


# **AttributesAttributeDbIdGet**
> GermplasmAttributeSingleResponse AttributesAttributeDbIdGet(attribute.db.id, authorization=var.authorization)

Get the details for a specific Germplasm Attribute

Get the details for a specific Germplasm Attribute

### Example
```R
library(openapi)

var.attribute.db.id <- 'attribute.db.id_example' # character | The unique id for an attribute
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details for a specific Germplasm Attribute
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributesAttributeDbIdGet(var.attribute.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.db.id** | **character**| The unique id for an attribute | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmAttributeSingleResponse**](GermplasmAttributeSingleResponse.md)

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

# **AttributesAttributeDbIdPut**
> GermplasmAttributeSingleResponse AttributesAttributeDbIdPut(attribute.db.id, authorization=var.authorization, germplasm.attribute.new.request=var.germplasm.attribute.new.request)

Update an existing Germplasm Attribute

Update an existing Germplasm Attribute

### Example
```R
library(openapi)

var.attribute.db.id <- 'attribute.db.id_example' # character | The unique id for an attribute
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.new.request <- GermplasmAttributeNewRequest$new(MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example")), ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123)), TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example"), "attributeName_example", TODO, "commonCropName_example", list("contextOfUse_example"), "defaultValue_example", "documentationURL_example", list(123), "growthStage_example", "institution_example", "language_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "scientist_example", "status_example", "submissionTimestamp_example", list("synonyms_example"), "attributeCategory_example", "attributeDescription_example") # GermplasmAttributeNewRequest | 

#Update an existing Germplasm Attribute
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributesAttributeDbIdPut(var.attribute.db.id, authorization=var.authorization, germplasm.attribute.new.request=var.germplasm.attribute.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.db.id** | **character**| The unique id for an attribute | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.new.request** | [**GermplasmAttributeNewRequest**](GermplasmAttributeNewRequest.md)|  | [optional] 

### Return type

[**GermplasmAttributeSingleResponse**](GermplasmAttributeSingleResponse.md)

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

# **AttributesCategoriesGet**
> GermplasmAttributeCategoryListResponse AttributesCategoriesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Categories of Germplasm Attributes

List all available attribute categories.

### Example
```R
library(openapi)

var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Categories of Germplasm Attributes
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributesCategoriesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmAttributeCategoryListResponse**](GermplasmAttributeCategoryListResponse.md)

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

# **AttributesGet**
> GermplasmAttributeListResponse AttributesGet(attribute.category=var.attribute.category, attribute.db.id=var.attribute.db.id, attribute.name=var.attribute.name, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Germplasm Attributes

List available attributes.

### Example
```R
library(openapi)

var.attribute.category <- 'attribute.category_example' # character | The general category for the attribute. very similar to Trait class.
var.attribute.db.id <- 'attribute.db.id_example' # character | The unique id for an attribute
var.attribute.name <- 'attribute.name_example' # character | The human readable name for an attribute
var.germplasm.db.id <- 'germplasm.db.id_example' # character | Get all attributes associated with this germplasm
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Germplasm Attributes
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributesGet(attribute.category=var.attribute.category, attribute.db.id=var.attribute.db.id, attribute.name=var.attribute.name, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute.category** | **character**| The general category for the attribute. very similar to Trait class. | [optional] 
 **attribute.db.id** | **character**| The unique id for an attribute | [optional] 
 **attribute.name** | **character**| The human readable name for an attribute | [optional] 
 **germplasm.db.id** | **character**| Get all attributes associated with this germplasm | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmAttributeListResponse**](GermplasmAttributeListResponse.md)

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

# **AttributesPost**
> GermplasmAttributeListResponse AttributesPost(authorization=var.authorization, germplasm.attribute.new.request=var.germplasm.attribute.new.request)

Create new Germplasm Attributes

Create new Germplasm Attributes

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.new.request <- list(GermplasmAttributeNewRequest$new(MethodBaseClass$new(TODO, "bibliographicalReference_example", "description_example", list(123), "formula_example", "methodClass_example", "methodName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example")), ScaleBaseClass$new("scaleName_example", TODO, TraitDataType$new(), 123, list(123), OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), ScaleBaseClass_validValues$new(list(ScaleBaseClass_validValues_categories$new("label_example", "value_example")), 123, 123)), TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example"), "attributeName_example", TODO, "commonCropName_example", list("contextOfUse_example"), "defaultValue_example", "documentationURL_example", list(123), "growthStage_example", "institution_example", "language_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "scientist_example", "status_example", "submissionTimestamp_example", list("synonyms_example"), "attributeCategory_example", "attributeDescription_example")) # array[GermplasmAttributeNewRequest] | 

#Create new Germplasm Attributes
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AttributesPost(authorization=var.authorization, germplasm.attribute.new.request=var.germplasm.attribute.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.new.request** | list( [**GermplasmAttributeNewRequest**](GermplasmAttributeNewRequest.md) )|  | [optional] 

### Return type

[**GermplasmAttributeListResponse**](GermplasmAttributeListResponse.md)

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

# **SearchAttributesPost**
> GermplasmAttributeListResponse SearchAttributesPost(authorization=var.authorization, germplasm.attribute.search.request=var.germplasm.attribute.search.request)

Submit a search request for Germplasm Attributes

Search for a set of Germplasm Attributes based on some criteria          See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.attribute.search.request <- GermplasmAttributeSearchRequest$new(123, 123, list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("attributeDbIds_example"), list("attributeNames_example"), list(TraitDataType$new()), list("methodDbIds_example"), list("ontologyDbIds_example"), list("scaleDbIds_example"), list("studyDbId_example"), list("traitClasses_example"), list("traitDbIds_example")) # GermplasmAttributeSearchRequest | 

#Submit a search request for Germplasm Attributes
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchAttributesPost(authorization=var.authorization, germplasm.attribute.search.request=var.germplasm.attribute.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.attribute.search.request** | [**GermplasmAttributeSearchRequest**](GermplasmAttributeSearchRequest.md)|  | [optional] 

### Return type

[**GermplasmAttributeListResponse**](GermplasmAttributeListResponse.md)

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

# **SearchAttributesSearchResultsDbIdGet**
> GermplasmAttributeListResponse SearchAttributesSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Germplasm Attributes search request

Get the results of a Germplasm Attributes search request  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Germplasm Attributes search request
api.instance <- GermplasmAttributesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchAttributesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**GermplasmAttributeListResponse**](GermplasmAttributeListResponse.md)

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

