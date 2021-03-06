# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ObservationVariables operations
#' @description openapi.ObservationVariables
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ SearchVariablesPost } \emph{ Submit a search request for Observation Variables }
#' Search observation variables.  See Search Services for additional implementation details.
#'
#' \itemize{
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } observation.variable.search.request \link{ObservationVariableSearchRequest}
#' \item \emph{ @returnType } \link{ObservationVariableListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableListResponse 
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
#' \strong{ SearchVariablesSearchResultsDbIdGet } \emph{ Get the results of a Observation Variable search request }
#' Search observation variables.  See Search Services for additional implementation details.
#'
#' \itemize{
#' \item \emph{ @param } search.results.db.id character
#' \item \emph{ @param } page integer
#' \item \emph{ @param } page.size integer
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{ObservationVariableListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableListResponse 
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
#' \strong{ VariablesGet } \emph{ Get the Observation Variables }
#' Call to retrieve a list of observationVariables available in the system.
#'
#' \itemize{
#' \item \emph{ @param } observation.variable.db.id character
#' \item \emph{ @param } trait.class character
#' \item \emph{ @param } study.db.id character
#' \item \emph{ @param } external.reference.id character
#' \item \emph{ @param } external.reference.source character
#' \item \emph{ @param } page integer
#' \item \emph{ @param } page.size integer
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{ObservationVariableListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableListResponse 
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
#' \strong{ VariablesObservationVariableDbIdGet } \emph{ Get the details for a specific Observation Variable }
#' Retrieve variable details
#'
#' \itemize{
#' \item \emph{ @param } observation.variable.db.id character
#' \item \emph{ @param } authorization character
#' \item \emph{ @returnType } \link{ObservationVariableSingleResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableSingleResponse 
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
#' \strong{ VariablesObservationVariableDbIdPut } \emph{ Update an existing Observation Variable }
#' Update an existing Observation Variable
#'
#' \itemize{
#' \item \emph{ @param } observation.variable.db.id character
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } observation.variable.new.request \link{ObservationVariableNewRequest}
#' \item \emph{ @returnType } \link{ObservationVariableSingleResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableSingleResponse 
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
#' \strong{ VariablesPost } \emph{ Add new Observation Variables }
#' Add new Observation Variables to the system.
#'
#' \itemize{
#' \item \emph{ @param } authorization character
#' \item \emph{ @param } observation.variable.new.request list( \link{ObservationVariableNewRequest} )
#' \item \emph{ @returnType } \link{ObservationVariableListResponse} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ObservationVariableListResponse 
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
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  SearchVariablesPost  ####################
#'
#' library(openapi)
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.observation.variable.search.request <- ObservationVariableSearchRequest$new() # ObservationVariableSearchRequest | 
#'
#' #Submit a search request for Observation Variables
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$SearchVariablesPost(authorization=var.authorization, observation.variable.search.request=var.observation.variable.search.request)
#'
#'
#' ####################  SearchVariablesSearchResultsDbIdGet  ####################
#'
#' library(openapi)
#' var.search.results.db.id <- 'search.results.db.id_example' # character | Unique identifier which references the search results
#' var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
#' var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get the results of a Observation Variable search request
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$SearchVariablesSearchResultsDbIdGet(var.search.results.db.id, page=var.page, page.size=var.page.size, authorization=var.authorization)
#'
#'
#' ####################  VariablesGet  ####################
#'
#' library(openapi)
#' var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | Variable's unique ID
#' var.trait.class <- 'trait.class_example' # character | Variable's trait class (phenological, physiological, morphological, etc.)
#' var.study.db.id <- 'study.db.id_example' # character | The unique ID of a studies to filter on
#' var.external.reference.id <- 'external.reference.id_example' # character | An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter)
#' var.external.reference.source <- 'external.reference.source_example' # character | An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter)
#' var.page <- 0 # integer | Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`.
#' var.page.size <- 1000 # integer | The size of the pages to be returned. Default is `1000`.
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get the Observation Variables
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$VariablesGet(observation.variable.db.id=var.observation.variable.db.id, trait.class=var.trait.class, study.db.id=var.study.db.id, external.reference.id=var.external.reference.id, external.reference.source=var.external.reference.source, page=var.page, page.size=var.page.size, authorization=var.authorization)
#'
#'
#' ####################  VariablesObservationVariableDbIdGet  ####################
#'
#' library(openapi)
#' var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | string id of the variable
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#'
#' #Get the details for a specific Observation Variable
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$VariablesObservationVariableDbIdGet(var.observation.variable.db.id, authorization=var.authorization)
#'
#'
#' ####################  VariablesObservationVariableDbIdPut  ####################
#'
#' library(openapi)
#' var.observation.variable.db.id <- 'observation.variable.db.id_example' # character | string id of the variable
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.observation.variable.new.request <- ObservationVariableNewRequest$new() # ObservationVariableNewRequest | 
#'
#' #Update an existing Observation Variable
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$VariablesObservationVariableDbIdPut(var.observation.variable.db.id, authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)
#'
#'
#' ####################  VariablesPost  ####################
#'
#' library(openapi)
#' var.authorization <- 'Bearer XXXX' # character | HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong>
#' var.observation.variable.new.request <- [ObservationVariableNewRequest$new()] # array[ObservationVariableNewRequest] | 
#'
#' #Add new Observation Variables
#' api.instance <- ObservationVariablesApi$new()
#'
#' #Configure HTTP basic authorization: AuthorizationToken
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$VariablesPost(authorization=var.authorization, observation.variable.new.request=var.observation.variable.new.request)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
ObservationVariablesApi <- R6::R6Class(
  'ObservationVariablesApi',
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
    SearchVariablesPost = function(authorization=NULL, observation.variable.search.request=NULL, ...){
      apiResponse <- self$SearchVariablesPostWithHttpInfo(authorization, observation.variable.search.request, ...)
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

    SearchVariablesPostWithHttpInfo = function(authorization=NULL, observation.variable.search.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      if (!missing(`observation.variable.search.request`)) {
        body <- `observation.variable.search.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/search/variables"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ObservationVariableListResponse", loadNamespace("openapi")),
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
    SearchVariablesSearchResultsDbIdGet = function(search.results.db.id, page=NULL, page.size=NULL, authorization=NULL, ...){
      apiResponse <- self$SearchVariablesSearchResultsDbIdGetWithHttpInfo(search.results.db.id, page, page.size, authorization, ...)
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

    SearchVariablesSearchResultsDbIdGetWithHttpInfo = function(search.results.db.id, page=NULL, page.size=NULL, authorization=NULL, ...){
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
      urlPath <- "/search/variables/{searchResultsDbId}"
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
          self$apiClient$deserialize(resp, "ObservationVariableListResponse", loadNamespace("openapi")),
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
    VariablesGet = function(observation.variable.db.id=NULL, trait.class=NULL, study.db.id=NULL, external.reference.id=NULL, external.reference.source=NULL, page=NULL, page.size=NULL, authorization=NULL, ...){
      apiResponse <- self$VariablesGetWithHttpInfo(observation.variable.db.id, trait.class, study.db.id, external.reference.id, external.reference.source, page, page.size, authorization, ...)
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

    VariablesGetWithHttpInfo = function(observation.variable.db.id=NULL, trait.class=NULL, study.db.id=NULL, external.reference.id=NULL, external.reference.source=NULL, page=NULL, page.size=NULL, authorization=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      queryParams['observationVariableDbId'] <- observation.variable.db.id

      queryParams['traitClass'] <- trait.class

      queryParams['studyDbId'] <- study.db.id

      queryParams['externalReferenceID'] <- external.reference.id

      queryParams['externalReferenceSource'] <- external.reference.source

      queryParams['page'] <- page

      queryParams['pageSize'] <- page.size

      body <- NULL
      urlPath <- "/variables"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ObservationVariableListResponse", loadNamespace("openapi")),
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
    VariablesObservationVariableDbIdGet = function(observation.variable.db.id, authorization=NULL, ...){
      apiResponse <- self$VariablesObservationVariableDbIdGetWithHttpInfo(observation.variable.db.id, authorization, ...)
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

    VariablesObservationVariableDbIdGetWithHttpInfo = function(observation.variable.db.id, authorization=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`observation.variable.db.id`)) {
        stop("Missing required parameter `observation.variable.db.id`.")
      }

      headerParams['Authorization'] <- `authorization`

      body <- NULL
      urlPath <- "/variables/{observationVariableDbId}"
      if (!missing(`observation.variable.db.id`)) {
        urlPath <- gsub(paste0("\\{", "observationVariableDbId", "\\}"), URLencode(as.character(`observation.variable.db.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ObservationVariableSingleResponse", loadNamespace("openapi")),
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
    VariablesObservationVariableDbIdPut = function(observation.variable.db.id, authorization=NULL, observation.variable.new.request=NULL, ...){
      apiResponse <- self$VariablesObservationVariableDbIdPutWithHttpInfo(observation.variable.db.id, authorization, observation.variable.new.request, ...)
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

    VariablesObservationVariableDbIdPutWithHttpInfo = function(observation.variable.db.id, authorization=NULL, observation.variable.new.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`observation.variable.db.id`)) {
        stop("Missing required parameter `observation.variable.db.id`.")
      }

      headerParams['Authorization'] <- `authorization`

      if (!missing(`observation.variable.new.request`)) {
        body <- `observation.variable.new.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/variables/{observationVariableDbId}"
      if (!missing(`observation.variable.db.id`)) {
        urlPath <- gsub(paste0("\\{", "observationVariableDbId", "\\}"), URLencode(as.character(`observation.variable.db.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ObservationVariableSingleResponse", loadNamespace("openapi")),
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
    VariablesPost = function(authorization=NULL, observation.variable.new.request=NULL, ...){
      apiResponse <- self$VariablesPostWithHttpInfo(authorization, observation.variable.new.request, ...)
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

    VariablesPostWithHttpInfo = function(authorization=NULL, observation.variable.new.request=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      headerParams['Authorization'] <- `authorization`

      if (!missing(`observation.variable.new.request`)) {
        body.items = paste(unlist(lapply(observation.variable.new.request, function(param){param$toJSONString()})), collapse = ",")
        body <- paste0('[', body.items, ']')
      } else {
        body <- NULL
      }

      urlPath <- "/variables"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ObservationVariableListResponse", loadNamespace("openapi")),
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
