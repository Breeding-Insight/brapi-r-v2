# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title MarkerPositionSearchRequest
#'
#' @description MarkerPositionSearchRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field page  integer [optional]
#'
#' @field pageSize  integer [optional]
#'
#' @field linkageGroupNames  list( character ) [optional]
#'
#' @field mapDbIds  list( character ) [optional]
#'
#' @field maxPosition  integer [optional]
#'
#' @field minPosition  integer [optional]
#'
#' @field variantDbIds  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MarkerPositionSearchRequest <- R6::R6Class(
  'MarkerPositionSearchRequest',
  public = list(
    `page` = NULL,
    `pageSize` = NULL,
    `linkageGroupNames` = NULL,
    `mapDbIds` = NULL,
    `maxPosition` = NULL,
    `minPosition` = NULL,
    `variantDbIds` = NULL,
    initialize = function(
        `page`=NULL, `pageSize`=NULL, `linkageGroupNames`=NULL, `mapDbIds`=NULL, `maxPosition`=NULL, `minPosition`=NULL, `variantDbIds`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`page`)) {
        stopifnot(is.numeric(`page`), length(`page`) == 1)
        self$`page` <- `page`
      }
      if (!is.null(`pageSize`)) {
        stopifnot(is.numeric(`pageSize`), length(`pageSize`) == 1)
        self$`pageSize` <- `pageSize`
      }
      if (!is.null(`linkageGroupNames`)) {
        stopifnot(is.vector(`linkageGroupNames`), length(`linkageGroupNames`) != 0)
        sapply(`linkageGroupNames`, function(x) stopifnot(is.character(x)))
        self$`linkageGroupNames` <- `linkageGroupNames`
      }
      if (!is.null(`mapDbIds`)) {
        stopifnot(is.vector(`mapDbIds`), length(`mapDbIds`) != 0)
        sapply(`mapDbIds`, function(x) stopifnot(is.character(x)))
        self$`mapDbIds` <- `mapDbIds`
      }
      if (!is.null(`maxPosition`)) {
        stopifnot(is.numeric(`maxPosition`), length(`maxPosition`) == 1)
        self$`maxPosition` <- `maxPosition`
      }
      if (!is.null(`minPosition`)) {
        stopifnot(is.numeric(`minPosition`), length(`minPosition`) == 1)
        self$`minPosition` <- `minPosition`
      }
      if (!is.null(`variantDbIds`)) {
        stopifnot(is.vector(`variantDbIds`), length(`variantDbIds`) != 0)
        sapply(`variantDbIds`, function(x) stopifnot(is.character(x)))
        self$`variantDbIds` <- `variantDbIds`
      }
    },
    toJSON = function() {
      MarkerPositionSearchRequestObject <- list()
      if (!is.null(self$`page`)) {
        MarkerPositionSearchRequestObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`pageSize`)) {
        MarkerPositionSearchRequestObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`linkageGroupNames`)) {
        MarkerPositionSearchRequestObject[['linkageGroupNames']] <-
          self$`linkageGroupNames`
      }
      if (!is.null(self$`mapDbIds`)) {
        MarkerPositionSearchRequestObject[['mapDbIds']] <-
          self$`mapDbIds`
      }
      if (!is.null(self$`maxPosition`)) {
        MarkerPositionSearchRequestObject[['maxPosition']] <-
          self$`maxPosition`
      }
      if (!is.null(self$`minPosition`)) {
        MarkerPositionSearchRequestObject[['minPosition']] <-
          self$`minPosition`
      }
      if (!is.null(self$`variantDbIds`)) {
        MarkerPositionSearchRequestObject[['variantDbIds']] <-
          self$`variantDbIds`
      }

      MarkerPositionSearchRequestObject
    },
    fromJSON = function(MarkerPositionSearchRequestJson) {
      MarkerPositionSearchRequestObject <- jsonlite::fromJSON(MarkerPositionSearchRequestJson)
      if (!is.null(MarkerPositionSearchRequestObject$`page`)) {
        self$`page` <- MarkerPositionSearchRequestObject$`page`
      }
      if (!is.null(MarkerPositionSearchRequestObject$`pageSize`)) {
        self$`pageSize` <- MarkerPositionSearchRequestObject$`pageSize`
      }
      if (!is.null(MarkerPositionSearchRequestObject$`linkageGroupNames`)) {
        self$`linkageGroupNames` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`linkageGroupNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(MarkerPositionSearchRequestObject$`mapDbIds`)) {
        self$`mapDbIds` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`mapDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(MarkerPositionSearchRequestObject$`maxPosition`)) {
        self$`maxPosition` <- MarkerPositionSearchRequestObject$`maxPosition`
      }
      if (!is.null(MarkerPositionSearchRequestObject$`minPosition`)) {
        self$`minPosition` <- MarkerPositionSearchRequestObject$`minPosition`
      }
      if (!is.null(MarkerPositionSearchRequestObject$`variantDbIds`)) {
        self$`variantDbIds` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`variantDbIds`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`page`)) {
        sprintf(
        '"page":
          %d
                ',
        self$`page`
        )},
        if (!is.null(self$`pageSize`)) {
        sprintf(
        '"pageSize":
          %d
                ',
        self$`pageSize`
        )},
        if (!is.null(self$`linkageGroupNames`)) {
        sprintf(
        '"linkageGroupNames":
           [%s]
        ',
        paste(unlist(lapply(self$`linkageGroupNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`mapDbIds`)) {
        sprintf(
        '"mapDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`mapDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`maxPosition`)) {
        sprintf(
        '"maxPosition":
          %d
                ',
        self$`maxPosition`
        )},
        if (!is.null(self$`minPosition`)) {
        sprintf(
        '"minPosition":
          %d
                ',
        self$`minPosition`
        )},
        if (!is.null(self$`variantDbIds`)) {
        sprintf(
        '"variantDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`variantDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(MarkerPositionSearchRequestJson) {
      MarkerPositionSearchRequestObject <- jsonlite::fromJSON(MarkerPositionSearchRequestJson)
      self$`page` <- MarkerPositionSearchRequestObject$`page`
      self$`pageSize` <- MarkerPositionSearchRequestObject$`pageSize`
      self$`linkageGroupNames` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`linkageGroupNames`, "array[character]", loadNamespace("openapi"))
      self$`mapDbIds` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`mapDbIds`, "array[character]", loadNamespace("openapi"))
      self$`maxPosition` <- MarkerPositionSearchRequestObject$`maxPosition`
      self$`minPosition` <- MarkerPositionSearchRequestObject$`minPosition`
      self$`variantDbIds` <- ApiClient$new()$deserializeObj(MarkerPositionSearchRequestObject$`variantDbIds`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

