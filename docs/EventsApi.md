# EventsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EventsGet**](EventsApi.md#EventsGet) | **GET** /events | Get the Events


# **EventsGet**
> EventsResponse EventsGet(study.db.id=var.study.db.id, observation.unit.db.id=var.observation.unit.db.id, event.db.id=var.event.db.id, event.type=var.event.type, date.range.start=var.date.range.start, date.range.end=var.date.range.end, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Events

Get list of events

### Example
```R
library(openapi)

var.study.db.id <- 'study.db.id_example' # character | Filter based on study unique identifier in which the events occurred
var.observation.unit.db.id <- 'observation.unit.db.id_example' # character | Filter based on an ObservationUnit unique identifier in which the events occurred
var.event.db.id <- 'event.db.id_example' # character | Filter based on an Event DbId
var.event.type <- 'event.type_example' # character | Filter based on an Event Type
var.date.range.start <- 'date.range.start_example' # character | Filter based on an Date Range
var.date.range.end <- 'date.range.end_example' # character | Filter based on an Date Range
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Events
api.instance <- EventsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$EventsGet(study.db.id=var.study.db.id, observation.unit.db.id=var.observation.unit.db.id, event.db.id=var.event.db.id, event.type=var.event.type, date.range.start=var.date.range.start, date.range.end=var.date.range.end, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study.db.id** | **character**| Filter based on study unique identifier in which the events occurred | [optional] 
 **observation.unit.db.id** | **character**| Filter based on an ObservationUnit unique identifier in which the events occurred | [optional] 
 **event.db.id** | **character**| Filter based on an Event DbId | [optional] 
 **event.type** | **character**| Filter based on an Event Type | [optional] 
 **date.range.start** | **character**| Filter based on an Date Range | [optional] 
 **date.range.end** | **character**| Filter based on an Date Range | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**EventsResponse**](eventsResponse.md)

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

