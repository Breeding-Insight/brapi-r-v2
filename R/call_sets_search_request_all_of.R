# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title CallSetsSearchRequestAllOf
#'
#' @description CallSetsSearchRequestAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field callSetDbIds  list( character ) [optional]
#'
#' @field callSetNames  list( character ) [optional]
#'
#' @field sampleDbIds  list( character ) [optional]
#'
#' @field sampleNames  list( character ) [optional]
#'
#' @field variantSetDbIds  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CallSetsSearchRequestAllOf <- R6::R6Class(
  'CallSetsSearchRequestAllOf',
  public = list(
    `callSetDbIds` = NULL,
    `callSetNames` = NULL,
    `sampleDbIds` = NULL,
    `sampleNames` = NULL,
    `variantSetDbIds` = NULL,
    initialize = function(
        `callSetDbIds`=NULL, `callSetNames`=NULL, `sampleDbIds`=NULL, `sampleNames`=NULL, `variantSetDbIds`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`callSetDbIds`)) {
        stopifnot(is.vector(`callSetDbIds`), length(`callSetDbIds`) != 0)
        sapply(`callSetDbIds`, function(x) stopifnot(is.character(x)))
        self$`callSetDbIds` <- `callSetDbIds`
      }
      if (!is.null(`callSetNames`)) {
        stopifnot(is.vector(`callSetNames`), length(`callSetNames`) != 0)
        sapply(`callSetNames`, function(x) stopifnot(is.character(x)))
        self$`callSetNames` <- `callSetNames`
      }
      if (!is.null(`sampleDbIds`)) {
        stopifnot(is.vector(`sampleDbIds`), length(`sampleDbIds`) != 0)
        sapply(`sampleDbIds`, function(x) stopifnot(is.character(x)))
        self$`sampleDbIds` <- `sampleDbIds`
      }
      if (!is.null(`sampleNames`)) {
        stopifnot(is.vector(`sampleNames`), length(`sampleNames`) != 0)
        sapply(`sampleNames`, function(x) stopifnot(is.character(x)))
        self$`sampleNames` <- `sampleNames`
      }
      if (!is.null(`variantSetDbIds`)) {
        stopifnot(is.vector(`variantSetDbIds`), length(`variantSetDbIds`) != 0)
        sapply(`variantSetDbIds`, function(x) stopifnot(is.character(x)))
        self$`variantSetDbIds` <- `variantSetDbIds`
      }
    },
    toJSON = function() {
      CallSetsSearchRequestAllOfObject <- list()
      if (!is.null(self$`callSetDbIds`)) {
        CallSetsSearchRequestAllOfObject[['callSetDbIds']] <-
          self$`callSetDbIds`
      }
      if (!is.null(self$`callSetNames`)) {
        CallSetsSearchRequestAllOfObject[['callSetNames']] <-
          self$`callSetNames`
      }
      if (!is.null(self$`sampleDbIds`)) {
        CallSetsSearchRequestAllOfObject[['sampleDbIds']] <-
          self$`sampleDbIds`
      }
      if (!is.null(self$`sampleNames`)) {
        CallSetsSearchRequestAllOfObject[['sampleNames']] <-
          self$`sampleNames`
      }
      if (!is.null(self$`variantSetDbIds`)) {
        CallSetsSearchRequestAllOfObject[['variantSetDbIds']] <-
          self$`variantSetDbIds`
      }

      CallSetsSearchRequestAllOfObject
    },
    fromJSON = function(CallSetsSearchRequestAllOfJson) {
      CallSetsSearchRequestAllOfObject <- jsonlite::fromJSON(CallSetsSearchRequestAllOfJson)
      if (!is.null(CallSetsSearchRequestAllOfObject$`callSetDbIds`)) {
        self$`callSetDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`callSetDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallSetsSearchRequestAllOfObject$`callSetNames`)) {
        self$`callSetNames` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`callSetNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallSetsSearchRequestAllOfObject$`sampleDbIds`)) {
        self$`sampleDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`sampleDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallSetsSearchRequestAllOfObject$`sampleNames`)) {
        self$`sampleNames` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`sampleNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallSetsSearchRequestAllOfObject$`variantSetDbIds`)) {
        self$`variantSetDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`variantSetDbIds`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`callSetDbIds`)) {
        sprintf(
        '"callSetDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`callSetDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`callSetNames`)) {
        sprintf(
        '"callSetNames":
           [%s]
        ',
        paste(unlist(lapply(self$`callSetNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`sampleDbIds`)) {
        sprintf(
        '"sampleDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`sampleDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`sampleNames`)) {
        sprintf(
        '"sampleNames":
           [%s]
        ',
        paste(unlist(lapply(self$`sampleNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`variantSetDbIds`)) {
        sprintf(
        '"variantSetDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`variantSetDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(CallSetsSearchRequestAllOfJson) {
      CallSetsSearchRequestAllOfObject <- jsonlite::fromJSON(CallSetsSearchRequestAllOfJson)
      self$`callSetDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`callSetDbIds`, "array[character]", loadNamespace("openapi"))
      self$`callSetNames` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`callSetNames`, "array[character]", loadNamespace("openapi"))
      self$`sampleDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`sampleDbIds`, "array[character]", loadNamespace("openapi"))
      self$`sampleNames` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`sampleNames`, "array[character]", loadNamespace("openapi"))
      self$`variantSetDbIds` <- ApiClient$new()$deserializeObj(CallSetsSearchRequestAllOfObject$`variantSetDbIds`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

