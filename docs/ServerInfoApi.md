# ServerInfoApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ServerinfoGet**](ServerInfoApi.md#ServerinfoGet) | **GET** /serverinfo | Get the list of implemented Calls


# **ServerinfoGet**
> ServerInfoResponse ServerinfoGet(data.type=var.data.type, authorization=var.authorization)

Get the list of implemented Calls

Implementation Notes  Having a consistent structure for the path string of each call is very  important for teams to be able to connect and find errors. Read more on Github.  Here are the rules for the path of each call that should be returned  Every word in the call path should match the documentation exactly, both in  spelling and capitalization. Note that path strings are all lower case, but  path parameters are camel case.  Each path should start relative to \\\"/\\\" and therefore should not include \\\"/\\\"  No leading or trailing slashes (\\\"/\\\")   Path parameters are wrapped in curly braces (\\\"{}\\\"). The name of the path parameter  should be spelled exactly as it is specified in the documentation.  Examples   GOOD   \"call\": \"germplasm/{germplasmDbId}/pedigree\"   BAD    \"call\": \"germplasm/{id}/pedigree\"  BAD    \"call\": \"germplasm/{germplasmDBid}/pedigree\"   BAD    \"call\": \"brapi/v2/germplasm/{germplasmDbId}/pedigree\"   BAD    \"call\": \"/germplasm/{germplasmDbId}/pedigree/\"   BAD    \"call\": \"germplasm/<germplasmDbId>/pedigree\"

### Example
```R
library(openapi)

var.data.type <- WSMIMEDataTypes$new() # WSMIMEDataTypes | The data format supported by the call.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the list of implemented Calls
api.instance <- ServerInfoApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ServerinfoGet(data.type=var.data.type, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data.type** | [**WSMIMEDataTypes**](.md)| The data format supported by the call. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**ServerInfoResponse**](ServerInfoResponse.md)

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

