# TraitsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TraitsGet**](TraitsApi.md#TraitsGet) | **GET** /traits | Get the Traits
[**TraitsPost**](TraitsApi.md#TraitsPost) | **POST** /traits | Add new Traits
[**TraitsTraitDbIdGet**](TraitsApi.md#TraitsTraitDbIdGet) | **GET** /traits/{traitDbId} | Get the details of a specific Trait
[**TraitsTraitDbIdPut**](TraitsApi.md#TraitsTraitDbIdPut) | **PUT** /traits/{traitDbId} | Update an existing Trait


# **TraitsGet**
> TraitListResponse TraitsGet(trait.db.id=var.trait.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Traits

Call to retrieve a list of traits available in the system and their associated variables.  An Observation Variable has 3 critical parts; A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.'

### Example
```R
library(openapi)

var.trait.db.id <- 'trait.db.id_example' # character | The unique identifier for a trait
var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | The unique identifier for an observation variable
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Traits
api.instance <- TraitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TraitsGet(trait.db.id=var.trait.db.id, observation.variable.db.id=var.observation.variable.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trait.db.id** | **character**| The unique identifier for a trait | [optional] 
 **observation.variable.db.id** | **character**| The unique identifier for an observation variable | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**TraitListResponse**](TraitListResponse.md)

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

# **TraitsPost**
> TraitListResponse TraitsPost(authorization=var.authorization, trait.base.class=var.trait.base.class)

Add new Traits

Create new trait objects in the database

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.trait.base.class <- list(TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example")) # array[TraitBaseClass] | 

#Add new Traits
api.instance <- TraitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TraitsPost(authorization=var.authorization, trait.base.class=var.trait.base.class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **trait.base.class** | list( [**TraitBaseClass**](TraitBaseClass.md) )|  | [optional] 

### Return type

[**TraitListResponse**](TraitListResponse.md)

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

# **TraitsTraitDbIdGet**
> TraitSingleResponse TraitsTraitDbIdGet(trait.db.id, authorization=var.authorization)

Get the details of a specific Trait

Retrieve the details of a single trait  An Observation Variable has 3 critical parts: A Trait being observed, a Method for making the observation, and a Scale on which the observation can be measured and compared with other observations.

### Example
```R
library(openapi)

var.trait.db.id <- 'trait.db.id_example' # character | Id of the trait to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Trait
api.instance <- TraitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TraitsTraitDbIdGet(var.trait.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trait.db.id** | **character**| Id of the trait to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**TraitSingleResponse**](TraitSingleResponse.md)

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

# **TraitsTraitDbIdPut**
> TraitSingleResponse TraitsTraitDbIdPut(trait.db.id, authorization=var.authorization, body=var.body)

Update an existing Trait

Update an existing trait

### Example
```R
library(openapi)

var.trait.db.id <- 'trait.db.id_example' # character | Id of the trait to retrieve details of.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.body <- TraitBaseClass$new(TODO, list("alternativeAbbreviations_example"), "attribute_example", "entity_example", list(123), "mainAbbreviation_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "status_example", list("synonyms_example"), "traitClass_example", "traitDescription_example", "traitName_example") # TraitBaseClass | 

#Update an existing Trait
api.instance <- TraitsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$TraitsTraitDbIdPut(var.trait.db.id, authorization=var.authorization, body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trait.db.id** | **character**| Id of the trait to retrieve details of. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **body** | **TraitBaseClass**|  | [optional] 

### Return type

[**TraitSingleResponse**](TraitSingleResponse.md)

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

