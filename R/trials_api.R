# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Trials operations
#' @description openapi.Trials
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ SearchTrialsPost } \emph{ Submit a search request for Trials }
#' Advanced searching for the programs resource. See Search Services for additional implementation details.
#'
#' \itemize{
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } trial.search.request \link{TrialSearchRequest}
#' \item \emph{ @returnType } \link{TrialListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialListResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 202 | Accepted
#'
#' \item return type : Accepted202SearchResponse
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ SearchTrialsSearchResultsDbIdGet } \emph{ Get the results of a Trials search request }
#' Advanced searching for the trials resource. See Search Services for additional implementation details.
#'
#' \itemize{
#' \item \emph{ @param } search.results.db.id character
#' \item \emph{ @param } page integer
#' \item \emph{ @param } page.size integer
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{TrialListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialListResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 202 | Accepted
#'
#' \item return type : Accepted202SearchResponse
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | Not Found
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ TrialsGet } \emph{ Get a filtered list of Trials }
#' Retrieve a filtered list of breeding Trials. A Trial is a collection of Studies
#'
#' \itemize{
#' \item \emph{ @param } active character
#' \item \emph{ @param } common.crop.name character
#' \item \emph{ @param } contact.db.id character
#' \item \emph{ @param } program.db.id character
#' \item \emph{ @param } location.db.id character
#' \item \emph{ @param } search.date.range.start character
#' \item \emph{ @param } search.date.range.end character
#' \item \emph{ @param } study.db.id character
#' \item \emph{ @param } trial.db.id character
#' \item \emph{ @param } trial.name character
#' \item \emph{ @param } trial.pui character
#' \item \emph{ @param } sort.by Enum < [trialDbId, trialName, programDbId, programName, locationDbId, startDate, endDate] > 
#' \item \emph{ @param } sort.order Enum < [asc, ASC, desc, DESC] > 
#' \item \emph{ @param } external.reference.id character
#' \item \emph{ @param } external.reference.source character
#' \item \emph{ @param } page integer
#' \item \emph{ @param } page.size integer
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{TrialListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialListResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ TrialsPost } \emph{ Create new trials }
#' Create new breeding Trials. A Trial represents a collection of related Studies. &#x60;trialDbId&#x60; is generated by the server.
#'
#' \itemize{
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } trial.new.request list( \link{TrialNewRequest} )
#' \item \emph{ @returnType } \link{TrialListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialListResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ TrialsTrialDbIdGet } \emph{ Get the details of a specific Trial }
#' Get the details of a specific Trial
#'
#' \itemize{
#' \item \emph{ @param } trial.db.id character
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{TrialSingleResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialSingleResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | Not Found
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ TrialsTrialDbIdPut } \emph{ Update the details of an existing Trial }
#' Update the details of an existing Trial
#'
#' \itemize{
#' \item \emph{ @param } trial.db.id character
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } trial.new.request \link{TrialNewRequest}
#' \item \emph{ @returnType } \link{TrialSingleResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : TrialSingleResponse 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | Forbidden
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | Not Found
#'
#' \item return type : character 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  SearchTrialsPost  ####################
#'
#' library(openapi)
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.trial.search.request <- TrialSearchRequest$new() # TrialSearchRequest | 
#'
#' #Submit a search request for Trials
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$SearchTrialsPost(authorization=var.authorization, trial.search.request=var.trial.search.request)
#'
#'
#' ####################  SearchTrialsSearchResultsDbIdGet  ####################
#'
#' library(openapi)
#' var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
#' var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
#' var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get the results of a Trials search request
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$SearchTrialsSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
#'
#'
#' ####################  TrialsGet  ####################
#'
#' library(openapi)
#' var.active <- 'active_example' # character | Filter active status true/false.
#' var.common.crop.name <- 'common.crop.name_example' # character | Common name for the crop associated with this trial
#' var.contact.db.id <- 'contact.db.id_example' # character | Contact entities associated with this trial
#' var.program.db.id <- 'program.db.id_example' # character | Program filter to only return trials associated with given program id.
#' var.location.db.id <- 'location.db.id_example' # character | Filter by location
#' var.search.date.range.start <- 'search.date.range.start_example' # character | The start of the overlapping search date range. `searchDateRangeStart` must be before `searchDateRangeEnd`.  Return a Trial entity if any of the following cases are true  - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is null   - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is after `trial.startDate`  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is null  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is before `trial.endDate`
#' var.search.date.range.end <- 'search.date.range.end_example' # character | The start of the overlapping search date range. `searchDateRangeStart` must be before `searchDateRangeEnd`.  Return a Trial entity if any of the following cases are true  - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is null   - `searchDateRangeStart` is before `trial.endDate` AND `searchDateRangeEnd` is after `trial.startDate`  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is null  - `searchDateRangeEnd` is after `trial.startDate` AND `searchDateRangeStart` is before `trial.endDate`
#' var.study.db.id <- 'study.db.id_example' # character | Filter by connected studyDbId
#' var.trial.db.id <- 'trial.db.id_example' # character | Filter by trialDbId
#' var.trial.name <- 'trial.name_example' # character | Filter by trial name
#' var.trial.pui <- 'trial.pui_example' # character | Filter by trial PUI
#' var.sort.by <- 'sort.by_example' # character | Sort order. Name of the field to sort by.
#' var.sort.order <- 'sort.order_example' # character | Sort order direction: asc/desc
#' var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
#' var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
#' var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
#' var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get a filtered list of Trials
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$TrialsGet(active=var.active, common.crop.name=var.common.crop.name, contact.db.id=var.contact.db.id, program.db.id=var.program.db.id, location.db.id=var.location.db.id, search.date.range.start=var.search.date.range.start, search.date.range.end=var.search.date.range.end, study.db.id=var.study.db.id, trial.db.id=var.trial.db.id, trial.name=var.trial.name, trial.pui=var.trial.pui, sort.by=var.sort.by, sort.order=var.sort.order, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
#'
#'
#' ####################  TrialsPost  ####################
#'
#' library(openapi)
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.trial.new.request <- [TrialNewRequest$new()] # array[TrialNewRequest] | 
#'
#' #Create new trials
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$TrialsPost(authorization=var.authorization, trial.new.request=var.trial.new.request)
#'
#'
#' ####################  TrialsTrialDbIdGet  ####################
#'
#' library(openapi)
#' var.trial.db.id <- 'trial.db.id_example' # character | The internal trialDbId
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get the details of a specific Trial
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$TrialsTrialDbIdGet(var.trial.db.id, authorization=var.authorization)
#'
#'
#' ####################  TrialsTrialDbIdPut  ####################
#'
#' library(openapi)
#' var.trial.db.id <- 'trial.db.id_example' # character | The internal trialDbId
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.trial.new.request <- TrialNewRequest$new() # TrialNewRequest | 
#'
#' #Update the details of an existing Trial
#' api.instance <- TrialsApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$TrialsTrialDbIdPut(var.trial.db.id, authorization=var.authorization, trial.new.request=var.trial.new.request)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
TrialsApi <- R6::R6Class(
  'TrialsApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    SearchTrialsPost = function(authorization=NULL, trial.search.request=NULL, ...){
      apiResponse <- self$SearchTrialsPostWithHttpInfo(authorization, trial.search.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    SearchTrialsPostWithHttpInfo = function(authorization=NULL, trial.search.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      if (!missing(`trial.search.request`)) {
        body <- `trial.search.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/search/trials"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialListResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    SearchTrialsSearchResultsDbIdGet = function(search.results.db.id, page=NULL, page.size=NULL, authorization=NULL, ...){
      apiResponse <- self$SearchTrialsSearchResultsDbIdGetWithHttpInfo(search.results.db.id, page, page.size, authorization, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    SearchTrialsSearchResultsDbIdGetWithHttpInfo = function(search.results.db.id, page=NULL, page.size=NULL, authorization=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`search.results.db.id`)) {
        stop("Missing required parameter `search.results.db.id`.")
      }

      headerParams['Authorization'] <- `authorization`

      queryParams['page'] <- page

      queryParams['pageSize'] <- page.size

      body <- NULL
      urlPath <- "/search/trials/{searchResultsDbId}"
      if (!missing(`search.results.db.id`)) {
        urlPath <- gsub(paste0("\\{", "searchResultsDbId", "\\}"), URLencode(as.character(`search.results.db.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialListResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    TrialsGet = function(active=NULL, common.crop.name=NULL, contact.db.id=NULL, program.db.id=NULL, location.db.id=NULL, search.date.range.start=NULL, search.date.range.end=NULL, study.db.id=NULL, trial.db.id=NULL, trial.name=NULL, trial.pui=NULL, sort.by=NULL, sort.order=NULL, external.reference.id=NULL, external.reference.source=NULL, page=NULL, page.size=NULL, authorization=NULL, ...){
      apiResponse <- self$TrialsGetWithHttpInfo(active, common.crop.name, contact.db.id, program.db.id, location.db.id, search.date.range.start, search.date.range.end, study.db.id, trial.db.id, trial.name, trial.pui, sort.by, sort.order, external.reference.id, external.reference.source, page, page.size, authorization, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    TrialsGetWithHttpInfo = function(active=NULL, common.crop.name=NULL, contact.db.id=NULL, program.db.id=NULL, location.db.id=NULL, search.date.range.start=NULL, search.date.range.end=NULL, study.db.id=NULL, trial.db.id=NULL, trial.name=NULL, trial.pui=NULL, sort.by=NULL, sort.order=NULL, external.reference.id=NULL, external.reference.source=NULL, page=NULL, page.size=NULL, authorization=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      queryParams['active'] <- active

      queryParams['commonCropName'] <- common.crop.name

      queryParams['contactDbId'] <- contact.db.id

      queryParams['programDbId'] <- program.db.id

      queryParams['locationDbId'] <- location.db.id

      queryParams['searchDateRangeStart'] <- search.date.range.start

      queryParams['searchDateRangeEnd'] <- search.date.range.end

      queryParams['studyDbId'] <- study.db.id

      queryParams['trialDbId'] <- trial.db.id

      queryParams['trialName'] <- trial.name

      queryParams['trialPUI'] <- trial.pui

      queryParams['sortBy'] <- sort.by

      queryParams['sortOrder'] <- sort.order

      queryParams['externalReferenceID'] <- external.reference.id

      queryParams['externalReferenceSource'] <- external.reference.source

      queryParams['page'] <- page

      queryParams['pageSize'] <- page.size

      body <- NULL
      urlPath <- "/trials"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialListResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    TrialsPost = function(authorization=NULL, trial.new.request=NULL, ...){
      apiResponse <- self$TrialsPostWithHttpInfo(authorization, trial.new.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    TrialsPostWithHttpInfo = function(authorization=NULL, trial.new.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      if (!missing(`trial.new.request`)) {
        body.items = paste(unlist(lapply(trial.new.request, function(param){param$toJSONString()})), collapse = ",")
        body <- paste0('[', body.items, ']')
      } else {
        body <- NULL
      }

      urlPath <- "/trials"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialListResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    TrialsTrialDbIdGet = function(trial.db.id, authorization=NULL, ...){
      apiResponse <- self$TrialsTrialDbIdGetWithHttpInfo(trial.db.id, authorization, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    TrialsTrialDbIdGetWithHttpInfo = function(trial.db.id, authorization=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`trial.db.id`)) {
        stop("Missing required parameter `trial.db.id`.")
      }

      headerParams['Authorization'] <- `authorization`

      body <- NULL
      urlPath <- "/trials/{trialDbId}"
      if (!missing(`trial.db.id`)) {
        urlPath <- gsub(paste0("\\{", "trialDbId", "\\}"), URLencode(as.character(`trial.db.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialSingleResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    TrialsTrialDbIdPut = function(trial.db.id, authorization=NULL, trial.new.request=NULL, ...){
      apiResponse <- self$TrialsTrialDbIdPutWithHttpInfo(trial.db.id, authorization, trial.new.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    TrialsTrialDbIdPutWithHttpInfo = function(trial.db.id, authorization=NULL, trial.new.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`trial.db.id`)) {
        stop("Missing required parameter `trial.db.id`.")
      }

      headerParams['Authorization'] <- `authorization`

      if (!missing(`trial.new.request`)) {
        body <- `trial.new.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/trials/{trialDbId}"
      if (!missing(`trial.db.id`)) {
        urlPath <- gsub(paste0("\\{", "trialDbId", "\\}"), URLencode(as.character(`trial.db.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "TrialSingleResponse", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
