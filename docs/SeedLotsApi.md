# SeedLotsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SeedlotsGet**](SeedLotsApi.md#SeedlotsGet) | **GET** /seedlots | Get a filtered list of Seed Lot descriptions
[**SeedlotsPost**](SeedLotsApi.md#SeedlotsPost) | **POST** /seedlots | Add new Seed Lot descriptions to a server
[**SeedlotsSeedLotDbIdGet**](SeedLotsApi.md#SeedlotsSeedLotDbIdGet) | **GET** /seedlots/{seedLotDbId} | Get a specific Seed Lot
[**SeedlotsSeedLotDbIdPut**](SeedLotsApi.md#SeedlotsSeedLotDbIdPut) | **PUT** /seedlots/{seedLotDbId} | Update an existing Seed Lot
[**SeedlotsSeedLotDbIdTransactionsGet**](SeedLotsApi.md#SeedlotsSeedLotDbIdTransactionsGet) | **GET** /seedlots/{seedLotDbId}/transactions | Get all Transactions related to a specific Seed Lot
[**SeedlotsTransactionsGet**](SeedLotsApi.md#SeedlotsTransactionsGet) | **GET** /seedlots/transactions | Get a filtered list of Seed Lot Transactions
[**SeedlotsTransactionsPost**](SeedLotsApi.md#SeedlotsTransactionsPost) | **POST** /seedlots/transactions | Add new Seed Lot Transaction to be recorded


# **SeedlotsGet**
> SeedLotListResponse SeedlotsGet(seed.lot.db.id=var.seed.lot.db.id, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Seed Lot descriptions

Get a filtered list of Seed Lot descriptions available in a system.

### Example
```R
library(openapi)

var.seed.lot.db.id <- 'seed.lot.db.id_example' # character | Unique id for a seed lot on this server
var.germplasm.db.id <- 'germplasm.db.id_example' # character | The internal id of the germplasm
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Seed Lot descriptions
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsGet(seed.lot.db.id=var.seed.lot.db.id, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seed.lot.db.id** | **character**| Unique id for a seed lot on this server | [optional] 
 **germplasm.db.id** | **character**| The internal id of the germplasm | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeedLotListResponse**](SeedLotListResponse.md)

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

# **SeedlotsPost**
> SeedLotListResponse SeedlotsPost(authorization=var.authorization, seed.lot.new.request=var.seed.lot.new.request)

Add new Seed Lot descriptions to a server

Add new Seed Lot descriptions to a server

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.seed.lot.new.request <- list(SeedLotNewRequest$new(TODO, 123, "createdDate_example", list(123), "germplasmDbId_example", "lastUpdated_example", "locationDbId_example", "programDbId_example", "seedLotDescription_example", "seedLotName_example", "sourceCollection_example", "storageLocation_example", "units_example")) # array[SeedLotNewRequest] | 

#Add new Seed Lot descriptions to a server
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsPost(authorization=var.authorization, seed.lot.new.request=var.seed.lot.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **seed.lot.new.request** | list( [**SeedLotNewRequest**](SeedLotNewRequest.md) )|  | [optional] 

### Return type

[**SeedLotListResponse**](SeedLotListResponse.md)

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

# **SeedlotsSeedLotDbIdGet**
> SeedLotSingleResponse SeedlotsSeedLotDbIdGet(seed.lot.db.id, authorization=var.authorization)

Get a specific Seed Lot

Get a specific Seed Lot by seedLotDbId

### Example
```R
library(openapi)

var.seed.lot.db.id <- 'seed.lot.db.id_example' # character | Unique id for a seed lot on this server
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a specific Seed Lot
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsSeedLotDbIdGet(var.seed.lot.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seed.lot.db.id** | **character**| Unique id for a seed lot on this server | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeedLotSingleResponse**](SeedLotSingleResponse.md)

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

# **SeedlotsSeedLotDbIdPut**
> SeedLotSingleResponse SeedlotsSeedLotDbIdPut(seed.lot.db.id, authorization=var.authorization, seed.lot.new.request=var.seed.lot.new.request)

Update an existing Seed Lot

Update an existing Seed Lot

### Example
```R
library(openapi)

var.seed.lot.db.id <- 'seed.lot.db.id_example' # character | Unique id for a seed lot on this server
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.seed.lot.new.request <- SeedLotNewRequest$new(TODO, 123, "createdDate_example", list(123), "germplasmDbId_example", "lastUpdated_example", "locationDbId_example", "programDbId_example", "seedLotDescription_example", "seedLotName_example", "sourceCollection_example", "storageLocation_example", "units_example") # SeedLotNewRequest | 

#Update an existing Seed Lot
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsSeedLotDbIdPut(var.seed.lot.db.id, authorization=var.authorization, seed.lot.new.request=var.seed.lot.new.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seed.lot.db.id** | **character**| Unique id for a seed lot on this server | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **seed.lot.new.request** | [**SeedLotNewRequest**](SeedLotNewRequest.md)|  | [optional] 

### Return type

[**SeedLotSingleResponse**](SeedLotSingleResponse.md)

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

# **SeedlotsSeedLotDbIdTransactionsGet**
> SeedLotTransactionListResponse SeedlotsSeedLotDbIdTransactionsGet(seed.lot.db.id, transaction.db.id=var.transaction.db.id, transaction.direction=var.transaction.direction, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get all Transactions related to a specific Seed Lot

Get all Transactions related to a specific Seed Lot

### Example
```R
library(openapi)

var.seed.lot.db.id <- 'seed.lot.db.id_example' # character | Unique id for a seed lot on this server
var.transaction.db.id <- 'transaction.db.id_example' # character | Unique id for a Transaction that has occurred
var.transaction.direction <- 'transaction.direction_example' # character | Filter results to only include transactions directed to the specific Seed Lot (TO), away from the specific Seed Lot (FROM), or both (BOTH). The default value for this parameter is BOTH
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get all Transactions related to a specific Seed Lot
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsSeedLotDbIdTransactionsGet(var.seed.lot.db.id, transaction.db.id=var.transaction.db.id, transaction.direction=var.transaction.direction, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seed.lot.db.id** | **character**| Unique id for a seed lot on this server | 
 **transaction.db.id** | **character**| Unique id for a Transaction that has occurred | [optional] 
 **transaction.direction** | Enum [TO, FROM, BOTH] | Filter results to only include transactions directed to the specific Seed Lot (TO), away from the specific Seed Lot (FROM), or both (BOTH). The default value for this parameter is BOTH | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeedLotTransactionListResponse**](SeedLotTransactionListResponse.md)

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

# **SeedlotsTransactionsGet**
> SeedLotTransactionListResponse SeedlotsTransactionsGet(transaction.db.id=var.transaction.db.id, seed.lot.db.id=var.seed.lot.db.id, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get a filtered list of Seed Lot Transactions

Get a filtered list of Seed Lot Transactions

### Example
```R
library(openapi)

var.transaction.db.id <- 'transaction.db.id_example' # character | Unique id for a transaction on this server
var.seed.lot.db.id <- 'seed.lot.db.id_example' # character | Unique id for a seed lot on this server
var.germplasm.db.id <- 'germplasm.db.id_example' # character | The internal id of the germplasm
var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get a filtered list of Seed Lot Transactions
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsTransactionsGet(transaction.db.id=var.transaction.db.id, seed.lot.db.id=var.seed.lot.db.id, germplasm.db.id=var.germplasm.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction.db.id** | **character**| Unique id for a transaction on this server | [optional] 
 **seed.lot.db.id** | **character**| Unique id for a seed lot on this server | [optional] 
 **germplasm.db.id** | **character**| The internal id of the germplasm | [optional] 
 **external.reference.id** | **character**| An external reference ID. Could be a simple string or a URI. (use with &#x60;externalReferenceSource&#x60; parameter) | [optional] 
 **external.reference.source** | **character**| An identifier for the source system or database of an external reference (use with &#x60;externalReferenceID&#x60; parameter) | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeedLotTransactionListResponse**](SeedLotTransactionListResponse.md)

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

# **SeedlotsTransactionsPost**
> SeedLotTransactionListResponse SeedlotsTransactionsPost(authorization=var.authorization, seed.lot.new.transaction.request=var.seed.lot.new.transaction.request)

Add new Seed Lot Transaction to be recorded

Add new Seed Lot Transaction to be recorded

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.seed.lot.new.transaction.request <- list(SeedLotNewTransactionRequest$new(TODO, 123, list(123), "fromSeedLotDbId_example", "toSeedLotDbId_example", "transactionDescription_example", "transactionTimestamp_example", "units_example")) # array[SeedLotNewTransactionRequest] | 

#Add new Seed Lot Transaction to be recorded
api.instance <- SeedLotsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeedlotsTransactionsPost(authorization=var.authorization, seed.lot.new.transaction.request=var.seed.lot.new.transaction.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **seed.lot.new.transaction.request** | list( [**SeedLotNewTransactionRequest**](SeedLotNewTransactionRequest.md) )|  | [optional] 

### Return type

[**SeedLotTransactionListResponse**](SeedLotTransactionListResponse.md)

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

