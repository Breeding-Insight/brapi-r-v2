# GermplasmApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BreedingmethodsBreedingMethodDbIdGet**](GermplasmApi.md#BreedingmethodsBreedingMethodDbIdGet) | **GET** /breedingmethods/{breedingMethodDbId} | Get the details of a specific Breeding Method
[**BreedingmethodsGet**](GermplasmApi.md#BreedingmethodsGet) | **GET** /breedingmethods | Get the Breeding Methods
[**GermplasmGermplasmDbIdGet**](GermplasmApi.md#GermplasmGermplasmDbIdGet) | **GET** /germplasm/{germplasmDbId} | Get the details of a specific Germplasm
[**GermplasmGermplasmDbIdMcpdGet**](GermplasmApi.md#GermplasmGermplasmDbIdMcpdGet) | **GET** /germplasm/{germplasmDbId}/mcpd | Get the details of a specific Germplasm in MCPD format
[**GermplasmGermplasmDbIdPedigreeGet**](GermplasmApi.md#GermplasmGermplasmDbIdPedigreeGet) | **GET** /germplasm/{germplasmDbId}/pedigree | Get the pedigree details of a specific Germplasm
[**GermplasmGermplasmDbIdProgenyGet**](GermplasmApi.md#GermplasmGermplasmDbIdProgenyGet) | **GET** /germplasm/{germplasmDbId}/progeny | Get the progeny details of a specific Germplasm
[**GermplasmGermplasmDbIdPut**](GermplasmApi.md#GermplasmGermplasmDbIdPut) | **PUT** /germplasm/{germplasmDbId} | Update the details of an existing Germplasm
[**GermplasmGet**](GermplasmApi.md#GermplasmGet) | **GET** /germplasm | Get a filtered list of Germplasm
[**GermplasmPost**](GermplasmApi.md#GermplasmPost) | **POST** /germplasm | Create new Germplasm entities on this server
[**SearchGermplasmPost**](GermplasmApi.md#SearchGermplasmPost) | **POST** /search/germplasm | Submit a search request for Germplasm
[**SearchGermplasmSearchResultsDbIdGet**](GermplasmApi.md#SearchGermplasmSearchResultsDbIdGet) | **GET** /search/germplasm/{searchResultsDbId} | Get the results of a Germplasm search request


# **BreedingmethodsBreedingMethodDbIdGet**
> BreedingMethodSingleResponse BreedingmethodsBreedingMethodDbIdGet(breeding.method.db.id, authorization=var.authorization)

Get the details of a specific Breeding Method

Get the details of a specific Breeding Method used to produce Germplasm

### Example
```R
library(openapi)

var.breeding.method.db.id <- 'breeding.method.db.id_example' # character | Internal database identifier for a breeding method
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Breeding Method
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$BreedingmethodsBreedingMethodDbIdGet(var.breeding.method.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breeding.method.db.id** | **character**| Internal database identifier for a breeding method | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**BreedingMethodSingleResponse**](BreedingMethodSingleResponse.md)

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

# **BreedingmethodsGet**
> BreedingMethodListResponse BreedingmethodsGet(page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Breeding Methods

Get the list of germplasm breeding methods available in a system.

### Example
```R
library(openapi)

var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Breeding Methods
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$BreedingmethodsGet(page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**BreedingMethodListResponse**](BreedingMethodListResponse.md)

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

# **GermplasmGermplasmDbIdGet**
> GermplasmSingleResponse GermplasmGermplasmDbIdGet(germplasm.db.id, authorization=var.authorization)

Get the details of a specific Germplasm

Germplasm Details by germplasmDbId was merged with Germplasm Multi Crop Passport Data. The MCPD fields are optional and marked with the prefix [MCPD].

### Example
```R
library(openapi)

var.germplasm.db.id <- 'germplasm.db.id_example' # character | The internal id of the germplasm
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGermplasmDbIdGet(var.germplasm.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.db.id** | **character**| The internal id of the germplasm | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmSingleResponse**](GermplasmSingleResponse.md)

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

# **GermplasmGermplasmDbIdMcpdGet**
> GermplasmMCPDResponse GermplasmGermplasmDbIdMcpdGet(germplasm.db.id, authorization=var.authorization)

Get the details of a specific Germplasm in MCPD format

Get all MCPD details of a germplasm  <a target=\"_blank\" href=\"https://www.bioversityInternational.org/fileadmin/user_upload/online_library/publications/pdfs/FAOBIOVERSITY_MULTI-CROP_PASSPORT_DESCRIPTORS_V.2.1_2015_2020.pdf\"> MCPD v2.1 spec can be found here </a>  Implementation Notes  - When the MCPD spec identifies a field which can have multiple values returned, the JSON response should be an array instead of a semi-colon separated string.

### Example
```R
library(openapi)

var.germplasm.db.id <- 'germplasm.db.id_example' # character | the internal id of the germplasm
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the details of a specific Germplasm in MCPD format
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGermplasmDbIdMcpdGet(var.germplasm.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.db.id** | **character**| the internal id of the germplasm | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmMCPDResponse**](GermplasmMCPDResponse.md)

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

# **GermplasmGermplasmDbIdPedigreeGet**
> GermplasmPedigreeResponse GermplasmGermplasmDbIdPedigreeGet(germplasm.db.id, notation=var.notation, include.siblings=var.include.siblings, authorization=var.authorization)

Get the pedigree details of a specific Germplasm

Get the parentage information of a specific Germplasm

### Example
```R
library(openapi)

var.germplasm.db.id <- 'germplasm.db.id_example' # character | the internal id of the germplasm
var.notation <- 'notation_example' # character | text representation of the pedigree
var.include.siblings <- 'include.siblings_example' # character | include array of siblings in response
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the pedigree details of a specific Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGermplasmDbIdPedigreeGet(var.germplasm.db.id, notation=var.notation, include.siblings=var.include.siblings, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.db.id** | **character**| the internal id of the germplasm | 
 **notation** | **character**| text representation of the pedigree | [optional] 
 **include.siblings** | **character**| include array of siblings in response | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmPedigreeResponse**](GermplasmPedigreeResponse.md)

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

# **GermplasmGermplasmDbIdProgenyGet**
> GermplasmProgenyResponse GermplasmGermplasmDbIdProgenyGet(germplasm.db.id, authorization=var.authorization)

Get the progeny details of a specific Germplasm

Get the germplasmDbIds for all the Progeny of a particular germplasm.  Implementation Notes  - Regarding the ''parentType'' field in the progeny object. Given a germplasm A having a progeny B and C, ''parentType'' for progeny B refers to the ''parentType'' of A toward B.

### Example
```R
library(openapi)

var.germplasm.db.id <- 'germplasm.db.id_example' # character | the internal id of the germplasm
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the progeny details of a specific Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGermplasmDbIdProgenyGet(var.germplasm.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.db.id** | **character**| the internal id of the germplasm | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmProgenyResponse**](GermplasmProgenyResponse.md)

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

# **GermplasmGermplasmDbIdPut**
> GermplasmSingleResponse GermplasmGermplasmDbIdPut(germplasm.db.id, authorization=var.authorization, germplasm.new.request=var.germplasm.new.request)

Update the details of an existing Germplasm

Germplasm Details by germplasmDbId was merged with Germplasm Multi Crop Passport Data. The MCPD fields are optional and marked with the prefix [MCPD].

### Example
```R
library(openapi)

var.germplasm.db.id <- 'germplasm.db.id_example' # character | The internal id of the germplasm
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.new.request <- GermplasmNewRequest$new("commonCropName_example", "germplasmName_example", "germplasmPUI_example", "accessionNumber_example", "acquisitionDate_example", TODO, "100", "biologicalStatusOfAccessionDescription_example", "breedingMethodDbId_example", "collection_example", "countryOfOriginCode_example", "defaultDisplayName_example", "documentationURL_example", list(GermplasmNewRequest_donors$new("donorAccessionNumber_example", "donorInstituteCode_example", "germplasmPUI_example")), list(123), "genus_example", list(GermplasmOrigin$new("coordinateUncertainty_example", geoJSON$new(TODO, "type_example"))), "germplasmPreprocessing_example", "instituteCode_example", "instituteName_example", "pedigree_example", "seedSource_example", "seedSourceDescription_example", "species_example", "speciesAuthority_example", list(GermplasmNewRequest_storageTypes$new("10", "description_example")), "subtaxa_example", "subtaxaAuthority_example", list(GermplasmNewRequest_synonyms$new("synonym_example", "type_example")), list(TaxonID$new("sourceName_example", "taxonId_example"))) # GermplasmNewRequest | 

#Update the details of an existing Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGermplasmDbIdPut(var.germplasm.db.id, authorization=var.authorization, germplasm.new.request=var.germplasm.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.db.id** | **character**| The internal id of the germplasm | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.new.request** | [**GermplasmNewRequest**](GermplasmNewRequest.md)|  | [optional] 

### Return type

[**GermplasmSingleResponse**](GermplasmSingleResponse.md)

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

# **GermplasmGet**
> GermplasmListResponse GermplasmGet(germplasm.pui=var.germplasm.pui, germplasm.db.id=var.germplasm.db.id, germplasm.name=var.germplasm.name, common.crop.name=var.common.crop.name, accession.number=var.accession.number, collection=var.collection, genus=var.genus, species=var.species, study.db.id=var.study.db.id, synonym=var.synonym, parent.db.id=var.parent.db.id, progeny.db.id=var.progeny.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Germplasm

Addresses these needs  - General germplasm search mechanism that accepts POST for complex queries   - Possibility to search germplasm by more parameters than those allowed by the existing germplasm search   - Possibility to get MCPD details by PUID rather than dbId

### Example
```R
library(openapi)

var.germplasm.pui <- 'germplasm.pui_example' # character | Permanent unique identifier (DOI, URI, etc.)
var.germplasm.db.id <- 'germplasm.db.id_example' # character | Internal database identifier
var.germplasm.name <- 'germplasm.name_example' # character | Name of the germplasm
var.common.crop.name <- 'common.crop.name_example' # character | The common crop name related to this germplasm
var.accession.number <- 'accession.number_example' # character | Unique identifiers for accessions within a genebank
var.collection <- 'collection_example' # character | A specific panel/collection/population name this germplasm belongs to.
var.genus <- 'genus_example' # character | Genus name to identify germplasm
var.species <- 'species_example' # character | Species name to identify germplasm
var.study.db.id <- 'study.db.id_example' # character | Search for Germplasm that are associated with a particular Study
var.synonym <- 'synonym_example' # character | Alternative name or ID used to reference this germplasm
var.parent.db.id <- 'parent.db.id_example' # character | Search for Germplasm with this parent
var.progeny.db.id <- 'progeny.db.id_example' # character | Search for Germplasm with this child
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmGet(germplasm.pui=var.germplasm.pui, germplasm.db.id=var.germplasm.db.id, germplasm.name=var.germplasm.name, common.crop.name=var.common.crop.name, accession.number=var.accession.number, collection=var.collection, genus=var.genus, species=var.species, study.db.id=var.study.db.id, synonym=var.synonym, parent.db.id=var.parent.db.id, progeny.db.id=var.progeny.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **germplasm.pui** | **character**| Permanent unique identifier (DOI, URI, etc.) | [optional] 
 **germplasm.db.id** | **character**| Internal database identifier | [optional] 
 **germplasm.name** | **character**| Name of the germplasm | [optional] 
 **common.crop.name** | **character**| The common crop name related to this germplasm | [optional] 
 **accession.number** | **character**| Unique identifiers for accessions within a genebank | [optional] 
 **collection** | **character**| A specific panel/collection/population name this germplasm belongs to. | [optional] 
 **genus** | **character**| Genus name to identify germplasm | [optional] 
 **species** | **character**| Species name to identify germplasm | [optional] 
 **study.db.id** | **character**| Search for Germplasm that are associated with a particular Study | [optional] 
 **synonym** | **character**| Alternative name or ID used to reference this germplasm | [optional] 
 **parent.db.id** | **character**| Search for Germplasm with this parent | [optional] 
 **progeny.db.id** | **character**| Search for Germplasm with this child | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**GermplasmListResponse**](GermplasmListResponse.md)

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

# **GermplasmPost**
> GermplasmListResponse GermplasmPost(authorization=var.authorization, germplasm.new.request=var.germplasm.new.request)

Create new Germplasm entities on this server

Create new Germplasm entities on this server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.new.request <- list(GermplasmNewRequest$new("commonCropName_example", "germplasmName_example", "germplasmPUI_example", "accessionNumber_example", "acquisitionDate_example", TODO, "100", "biologicalStatusOfAccessionDescription_example", "breedingMethodDbId_example", "collection_example", "countryOfOriginCode_example", "defaultDisplayName_example", "documentationURL_example", list(GermplasmNewRequest_donors$new("donorAccessionNumber_example", "donorInstituteCode_example", "germplasmPUI_example")), list(123), "genus_example", list(GermplasmOrigin$new("coordinateUncertainty_example", geoJSON$new(TODO, "type_example"))), "germplasmPreprocessing_example", "instituteCode_example", "instituteName_example", "pedigree_example", "seedSource_example", "seedSourceDescription_example", "species_example", "speciesAuthority_example", list(GermplasmNewRequest_storageTypes$new("10", "description_example")), "subtaxa_example", "subtaxaAuthority_example", list(GermplasmNewRequest_synonyms$new("synonym_example", "type_example")), list(TaxonID$new("sourceName_example", "taxonId_example")))) # array[GermplasmNewRequest] | 

#Create new Germplasm entities on this server
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GermplasmPost(authorization=var.authorization, germplasm.new.request=var.germplasm.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.new.request** | list( [**GermplasmNewRequest**](GermplasmNewRequest.md) )|  | [optional] 

### Return type

[**GermplasmListResponse**](GermplasmListResponse.md)

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

# **SearchGermplasmPost**
> GermplasmListResponse SearchGermplasmPost(authorization=var.authorization, germplasm.search.request=var.germplasm.search.request)

Submit a search request for Germplasm

Search for a set of germplasm based on some criteria  Addresses these needs   - General germplasm search mechanism that accepts POST for complex queries   - Possibility to search germplasm by more parameters than those allowed by the existing germplasm search   - Possibility to get MCPD details by PUID rather than dbId  See Search Services for additional implementation details.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.germplasm.search.request <- GermplasmSearchRequest$new(123, 123, list("commonCropNames_example"), list("germplasmDbIds_example"), list("germplasmNames_example"), list("studyDbIds_example"), list("studyNames_example"), list("externalReferenceIDs_example"), list("externalReferenceSources_example"), list("accessionNumbers_example"), list("collections_example"), list("genus_example"), list("germplasmPUIs_example"), list("parentDbIds_example"), list("progenyDbIds_example"), list("species_example"), list("synonyms_example")) # GermplasmSearchRequest | 

#Submit a search request for Germplasm
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchGermplasmPost(authorization=var.authorization, germplasm.search.request=var.germplasm.search.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **germplasm.search.request** | [**GermplasmSearchRequest**](GermplasmSearchRequest.md)|  | [optional] 

### Return type

[**GermplasmListResponse**](GermplasmListResponse.md)

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

# **SearchGermplasmSearchResultsDbIdGet**
> GermplasmListResponse SearchGermplasmSearchResultsDbIdGet(search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a Germplasm search request

See Search Services for additional implementation details.  Addresses these needs:   1. General germplasm search mechanism that accepts POST for complex queries   2. possibility to search germplasm by more parameters than those allowed by the existing germplasm search   3. possibility to get MCPD details by PUID rather than dbId

### Example
```R
library(openapi)

var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a Germplasm search request
api.instance <- GermplasmApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchGermplasmSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
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

[**GermplasmListResponse**](GermplasmListResponse.md)

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

