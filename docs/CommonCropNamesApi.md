# CommonCropNamesApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommoncropnamesGet**](CommonCropNamesApi.md#CommoncropnamesGet) | **GET** /commoncropnames | Get the Common Crop Names


# **CommoncropnamesGet**
> CommonCropNamesResponse CommoncropnamesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Common Crop Names

List the common crop names for the crops available in a database server.   This call is ** required ** for multi-crop systems where data from multiple  crops may be stored in the same database server. A distinct database server  is defined by everything in the URL before \"/brapi/v2\", including host  name and base path.  This call is recommended for single crop systems to be compatible with  multi-crop clients. For a single crop system the response should contain  an array with exactly 1 element.   The common crop name can be used as a search parameter for Programs,  Studies, and Germplasm.

### Example
```R
library(openapi)

var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Common Crop Names
api.instance <- CommonCropNamesApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$CommoncropnamesGet(page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**CommonCropNamesResponse**](commonCropNamesResponse.md)

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

