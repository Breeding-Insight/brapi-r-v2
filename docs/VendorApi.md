# VendorApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**VendorOrdersGet**](VendorApi.md#VendorOrdersGet) | **GET** /vendor/orders | List current available orders
[**VendorOrdersOrderIdPlatesGet**](VendorApi.md#VendorOrdersOrderIdPlatesGet) | **GET** /vendor/orders/{orderId}/plates | Get the Plates for a specific Order
[**VendorOrdersOrderIdResultsGet**](VendorApi.md#VendorOrdersOrderIdResultsGet) | **GET** /vendor/orders/{orderId}/results | Get the results of a specific Order
[**VendorOrdersOrderIdStatusGet**](VendorApi.md#VendorOrdersOrderIdStatusGet) | **GET** /vendor/orders/{orderId}/status | Get the status of a specific Order
[**VendorOrdersPost**](VendorApi.md#VendorOrdersPost) | **POST** /vendor/orders | Submit New Order
[**VendorPlatesPost**](VendorApi.md#VendorPlatesPost) | **POST** /vendor/plates | Submit a new set of Sample data
[**VendorPlatesSubmissionIdGet**](VendorApi.md#VendorPlatesSubmissionIdGet) | **GET** /vendor/plates/{submissionId} | Get the data for a submitted set of plates
[**VendorSpecificationsGet**](VendorApi.md#VendorSpecificationsGet) | **GET** /vendor/specifications | Get the Vendor Specifications


# **VendorOrdersGet**
> VendorOrderListResponse VendorOrdersGet(order.id=var.order.id, submission.id=var.submission.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

List current available orders

List current available orders

### Example
```R
library(openapi)

var.order.id <- 'order.id_example' # character | The order id returned by the vendor when the order was successfully submitted. From response of \"POST /vendor/orders\"
var.submission.id <- 'submission.id_example' # character | The submission id returned by the vendor when a set of plates was successfully submitted. From response of \"POST /vendor/plates\"
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#List current available orders
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorOrdersGet(order.id=var.order.id, submission.id=var.submission.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.id** | **character**| The order id returned by the vendor when the order was successfully submitted. From response of \&quot;POST /vendor/orders\&quot; | [optional] 
 **submission.id** | **character**| The submission id returned by the vendor when a set of plates was successfully submitted. From response of \&quot;POST /vendor/plates\&quot; | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorOrderListResponse**](VendorOrderListResponse.md)

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

# **VendorOrdersOrderIdPlatesGet**
> VendorPlateListResponse VendorOrdersOrderIdPlatesGet(order.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Plates for a specific Order

Retrieve the plate and sample details of an order being processed

### Example
```R
library(openapi)

var.order.id <- 'order.id_example' # character | The order id returned by the vendor when the order was successfully submitted.
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Plates for a specific Order
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorOrdersOrderIdPlatesGet(var.order.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.id** | **character**| The order id returned by the vendor when the order was successfully submitted. | 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorPlateListResponse**](VendorPlateListResponse.md)

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

# **VendorOrdersOrderIdResultsGet**
> VendorResultFileListResponse VendorOrdersOrderIdResultsGet(order.id, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the results of a specific Order

Retrieve the data files generated by the vendors analysis

### Example
```R
library(openapi)

var.order.id <- 'order.id_example' # character | The order id returned by the vendor when the order was successfully submitted.
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the results of a specific Order
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorOrdersOrderIdResultsGet(var.order.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.id** | **character**| The order id returned by the vendor when the order was successfully submitted. | 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorResultFileListResponse**](VendorResultFileListResponse.md)

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

# **VendorOrdersOrderIdStatusGet**
> VendorOrderStatusResponse VendorOrdersOrderIdStatusGet(order.id, authorization=var.authorization)

Get the status of a specific Order

Retrieve the current status of an order being processed

### Example
```R
library(openapi)

var.order.id <- 'order.id_example' # character | The order id returned by the vendor when the order was successfully submitted.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the status of a specific Order
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorOrdersOrderIdStatusGet(var.order.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.id** | **character**| The order id returned by the vendor when the order was successfully submitted. | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorOrderStatusResponse**](VendorOrderStatusResponse.md)

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

# **VendorOrdersPost**
> VendorOrderSubmissionSingleResponse VendorOrdersPost(authorization=var.authorization, vendor.order.submission.request=var.vendor.order.submission.request)

Submit New Order

Submit a new order to a vendor

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.vendor.order.submission.request <- VendorOrderSubmissionRequest$new("clientId_example", 123, list(VendorPlateSubmissionRequest_plates$new("clientPlateBarcode_example", "clientPlateId_example", PlateFormat$new(), list(VendorSample$new("clientSampleId_example", "clientSampleBarCode_example", 123, "comments_example", Measurement$new("units_example", 123), "organismName_example", "row_example", "speciesName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "tissueType_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), Measurement$new("units_example", 123), "well_example")))), "DNA", list("serviceIds_example"), TODO) # VendorOrderSubmissionRequest | 

#Submit New Order
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorOrdersPost(authorization=var.authorization, vendor.order.submission.request=var.vendor.order.submission.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **vendor.order.submission.request** | [**VendorOrderSubmissionRequest**](VendorOrderSubmissionRequest.md)|  | [optional] 

### Return type

[**VendorOrderSubmissionSingleResponse**](VendorOrderSubmissionSingleResponse.md)

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

# **VendorPlatesPost**
> VendorPlateSubmissionIdSingleResponse VendorPlatesPost(authorization=var.authorization, vendor.plate.submission.request=var.vendor.plate.submission.request)

Submit a new set of Sample data

Submit a new set of Sample data

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.vendor.plate.submission.request <- VendorPlateSubmissionRequest$new("clientId_example", 123, list(VendorPlateSubmissionRequest_plates$new("clientPlateBarcode_example", "clientPlateId_example", PlateFormat$new(), list(VendorSample$new("clientSampleId_example", "clientSampleBarCode_example", 123, "comments_example", Measurement$new("units_example", 123), "organismName_example", "row_example", "speciesName_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), "tissueType_example", OntologyReference$new("ontologyDbId_example", "ontologyName_example", list(OntologyReference_documentationLinks$new("URL_example", "OBO")), "version_example"), Measurement$new("units_example", 123), "well_example")))), "DNA") # VendorPlateSubmissionRequest | 

#Submit a new set of Sample data
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorPlatesPost(authorization=var.authorization, vendor.plate.submission.request=var.vendor.plate.submission.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **vendor.plate.submission.request** | [**VendorPlateSubmissionRequest**](VendorPlateSubmissionRequest.md)|  | [optional] 

### Return type

[**VendorPlateSubmissionIdSingleResponse**](VendorPlateSubmissionIdSingleResponse.md)

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

# **VendorPlatesSubmissionIdGet**
> VendorPlateSubmissionSingleResponse VendorPlatesSubmissionIdGet(submission.id, authorization=var.authorization)

Get the data for a submitted set of plates

Get data for a submitted set of plates

### Example
```R
library(openapi)

var.submission.id <- 'submission.id_example' # character | The submission id returned by the vendor when a set of plates was successfully submitted. From response of \"POST /vendor/plates\"
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the data for a submitted set of plates
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorPlatesSubmissionIdGet(var.submission.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission.id** | **character**| The submission id returned by the vendor when a set of plates was successfully submitted. From response of \&quot;POST /vendor/plates\&quot; | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorPlateSubmissionSingleResponse**](VendorPlateSubmissionSingleResponse.md)

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

# **VendorSpecificationsGet**
> VendorSpecificationSingleResponse VendorSpecificationsGet(authorization=var.authorization)

Get the Vendor Specifications

Defines the plate format specification for the vendor.

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Vendor Specifications
api.instance <- VendorApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$VendorSpecificationsGet(authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**VendorSpecificationSingleResponse**](VendorSpecificationSingleResponse.md)

### Authorization

[AuthorizationToken](../README.md#AuthorizationToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

