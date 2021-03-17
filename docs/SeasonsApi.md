# SeasonsApi

All URIs are relative to *https://test-server.brapi.org/brapi/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SeasonsGet**](SeasonsApi.md#SeasonsGet) | **GET** /seasons | Get the Seasons
[**SeasonsPost**](SeasonsApi.md#SeasonsPost) | **POST** /seasons | POST new Seasons
[**SeasonsSeasonDbIdGet**](SeasonsApi.md#SeasonsSeasonDbIdGet) | **GET** /seasons/{seasonDbId} | Get the a single Season
[**SeasonsSeasonDbIdPut**](SeasonsApi.md#SeasonsSeasonDbIdPut) | **PUT** /seasons/{seasonDbId} | Update existing Seasons


# **SeasonsGet**
> SeasonListResponse SeasonsGet(season.db.id=var.season.db.id, season=var.season, year=var.year, page=var.page, page.size=var.page.size, authorization=var.authorization)

Get the Seasons

Call to retrieve all seasons in the database.  A season is made of 2 parts; the primary year and a term which defines a segment of the year.  This could be a traditional season, like \"Spring\" or \"Summer\" or this could be a month, like  \"May\" or \"June\" or this could be an arbitrary season name which is meaningful to the breeding  program like \"PlantingTime_3\" or \"Season E\"

### Example
```R
library(openapi)

var.season.db.id <- 'b230a1d2, Spring_2017, 3' # character | The unique identifier for a season. For backward compatibility it can be a string like '2012', '1957-2004'
var.season <- 'Spring' # character | The term to describe a given season. Example \"Spring\" OR \"May\" OR \"Planting_Time_7\".
var.year <- 2017 # integer | The 4 digit year of a season. Example \"2017\"
var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the Seasons
api.instance <- SeasonsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeasonsGet(season.db.id=var.season.db.id, season=var.season, year=var.year, page=var.page, page.size=var.page.size, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season.db.id** | **character**| The unique identifier for a season. For backward compatibility it can be a string like &#39;2012&#39;, &#39;1957-2004&#39; | [optional] 
 **season** | **character**| The term to describe a given season. Example \&quot;Spring\&quot; OR \&quot;May\&quot; OR \&quot;Planting_Time_7\&quot;. | [optional] 
 **year** | **integer**| The 4 digit year of a season. Example \&quot;2017\&quot; | [optional] 
 **page** | **integer**| Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
 **page.size** | **integer**| The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeasonListResponse**](SeasonListResponse.md)

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

# **SeasonsPost**
> SeasonListResponse SeasonsPost(authorization=var.authorization, season=var.season)

POST new Seasons

Add new season entries to the database

### Example
```R
library(openapi)

var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.season <- list(Season$new("seasonDbId_example", "season_example", 123)) # array[Season] | 

#POST new Seasons
api.instance <- SeasonsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeasonsPost(authorization=var.authorization, season=var.season)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **season** | list( [**Season**](Season.md) )|  | [optional] 

### Return type

[**SeasonListResponse**](SeasonListResponse.md)

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

# **SeasonsSeasonDbIdGet**
> SeasonSingleResponse SeasonsSeasonDbIdGet(season.db.id, authorization=var.authorization)

Get the a single Season

Get the a single Season

### Example
```R
library(openapi)

var.season.db.id <- 'b230a1d2, Spring_2017, 3' # character | The unique identifier for a season. For backward compatibility it can be a string like '2012', '1957-2004'
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>

#Get the a single Season
api.instance <- SeasonsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeasonsSeasonDbIdGet(var.season.db.id, authorization=var.authorization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season.db.id** | **character**| The unique identifier for a season. For backward compatibility it can be a string like &#39;2012&#39;, &#39;1957-2004&#39; | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 

### Return type

[**SeasonSingleResponse**](SeasonSingleResponse.md)

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

# **SeasonsSeasonDbIdPut**
> SeasonSingleResponse SeasonsSeasonDbIdPut(season.db.id, authorization=var.authorization, season=var.season)

Update existing Seasons

Update existing Seasons

### Example
```R
library(openapi)

var.season.db.id <- 'b230a1d2, Spring_2017, 3' # character | The unique identifier for a season. For backward compatibility it can be a string like '2012', '1957-2004'
var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
var.season <- Season$new("seasonDbId_example", "season_example", 123) # Season | 

#Update existing Seasons
api.instance <- SeasonsApi$new()
# Configure HTTP basic authorization: AuthorizationToken
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SeasonsSeasonDbIdPut(var.season.db.id, authorization=var.authorization, season=var.season)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season.db.id** | **character**| The unique identifier for a season. For backward compatibility it can be a string like &#39;2012&#39;, &#39;1957-2004&#39; | 
 **authorization** | **character**| HTTP HEADER - Token used for Authorization   &lt;strong&gt; Bearer {token_string} &lt;/strong&gt; | [optional] 
 **season** | [**Season**](Season.md)|  | [optional] 

### Return type

[**SeasonSingleResponse**](SeasonSingleResponse.md)

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

