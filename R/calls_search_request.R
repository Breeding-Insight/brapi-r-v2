# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title CallsSearchRequest
#'
#' @description CallsSearchRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field pageSize  integer [optional]
#'
#' @field pageToken  character [optional]
#'
#' @field callSetDbIds  list( character ) [optional]
#'
#' @field expandHomozygotes  character [optional]
#'
#' @field sepPhased  character [optional]
#'
#' @field sepUnphased  character [optional]
#'
#' @field unknownString  character [optional]
#'
#' @field variantDbIds  list( character ) [optional]
#'
#' @field variantSetDbIds  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CallsSearchRequest <- R6::R6Class(
  'CallsSearchRequest',
  public = list(
    `pageSize` = NULL,
    `pageToken` = NULL,
    `callSetDbIds` = NULL,
    `expandHomozygotes` = NULL,
    `sepPhased` = NULL,
    `sepUnphased` = NULL,
    `unknownString` = NULL,
    `variantDbIds` = NULL,
    `variantSetDbIds` = NULL,
    initialize = function(
        `pageSize`=NULL, `pageToken`=NULL, `callSetDbIds`=NULL, `expandHomozygotes`=NULL, `sepPhased`=NULL, `sepUnphased`=NULL, `unknownString`=NULL, `variantDbIds`=NULL, `variantSetDbIds`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`pageSize`)) {
        stopifnot(is.numeric(`pageSize`), length(`pageSize`) == 1)
        self$`pageSize` <- `pageSize`
      }
      if (!is.null(`pageToken`)) {
        stopifnot(is.character(`pageToken`), length(`pageToken`) == 1)
        self$`pageToken` <- `pageToken`
      }
      if (!is.null(`callSetDbIds`)) {
        stopifnot(is.vector(`callSetDbIds`), length(`callSetDbIds`) != 0)
        sapply(`callSetDbIds`, function(x) stopifnot(is.character(x)))
        self$`callSetDbIds` <- `callSetDbIds`
      }
      if (!is.null(`expandHomozygotes`)) {
        self$`expandHomozygotes` <- `expandHomozygotes`
      }
      if (!is.null(`sepPhased`)) {
        stopifnot(is.character(`sepPhased`), length(`sepPhased`) == 1)
        self$`sepPhased` <- `sepPhased`
      }
      if (!is.null(`sepUnphased`)) {
        stopifnot(is.character(`sepUnphased`), length(`sepUnphased`) == 1)
        self$`sepUnphased` <- `sepUnphased`
      }
      if (!is.null(`unknownString`)) {
        stopifnot(is.character(`unknownString`), length(`unknownString`) == 1)
        self$`unknownString` <- `unknownString`
      }
      if (!is.null(`variantDbIds`)) {
        stopifnot(is.vector(`variantDbIds`), length(`variantDbIds`) != 0)
        sapply(`variantDbIds`, function(x) stopifnot(is.character(x)))
        self$`variantDbIds` <- `variantDbIds`
      }
      if (!is.null(`variantSetDbIds`)) {
        stopifnot(is.vector(`variantSetDbIds`), length(`variantSetDbIds`) != 0)
        sapply(`variantSetDbIds`, function(x) stopifnot(is.character(x)))
        self$`variantSetDbIds` <- `variantSetDbIds`
      }
    },
    toJSON = function() {
      CallsSearchRequestObject <- list()
      if (!is.null(self$`pageSize`)) {
        CallsSearchRequestObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`pageToken`)) {
        CallsSearchRequestObject[['pageToken']] <-
          self$`pageToken`
      }
      if (!is.null(self$`callSetDbIds`)) {
        CallsSearchRequestObject[['callSetDbIds']] <-
          self$`callSetDbIds`
      }
      if (!is.null(self$`expandHomozygotes`)) {
        CallsSearchRequestObject[['expandHomozygotes']] <-
          self$`expandHomozygotes`
      }
      if (!is.null(self$`sepPhased`)) {
        CallsSearchRequestObject[['sepPhased']] <-
          self$`sepPhased`
      }
      if (!is.null(self$`sepUnphased`)) {
        CallsSearchRequestObject[['sepUnphased']] <-
          self$`sepUnphased`
      }
      if (!is.null(self$`unknownString`)) {
        CallsSearchRequestObject[['unknownString']] <-
          self$`unknownString`
      }
      if (!is.null(self$`variantDbIds`)) {
        CallsSearchRequestObject[['variantDbIds']] <-
          self$`variantDbIds`
      }
      if (!is.null(self$`variantSetDbIds`)) {
        CallsSearchRequestObject[['variantSetDbIds']] <-
          self$`variantSetDbIds`
      }

      CallsSearchRequestObject
    },
    fromJSON = function(CallsSearchRequestJson) {
      CallsSearchRequestObject <- jsonlite::fromJSON(CallsSearchRequestJson)
      if (!is.null(CallsSearchRequestObject$`pageSize`)) {
        self$`pageSize` <- CallsSearchRequestObject$`pageSize`
      }
      if (!is.null(CallsSearchRequestObject$`pageToken`)) {
        self$`pageToken` <- CallsSearchRequestObject$`pageToken`
      }
      if (!is.null(CallsSearchRequestObject$`callSetDbIds`)) {
        self$`callSetDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`callSetDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallsSearchRequestObject$`expandHomozygotes`)) {
        self$`expandHomozygotes` <- CallsSearchRequestObject$`expandHomozygotes`
      }
      if (!is.null(CallsSearchRequestObject$`sepPhased`)) {
        self$`sepPhased` <- CallsSearchRequestObject$`sepPhased`
      }
      if (!is.null(CallsSearchRequestObject$`sepUnphased`)) {
        self$`sepUnphased` <- CallsSearchRequestObject$`sepUnphased`
      }
      if (!is.null(CallsSearchRequestObject$`unknownString`)) {
        self$`unknownString` <- CallsSearchRequestObject$`unknownString`
      }
      if (!is.null(CallsSearchRequestObject$`variantDbIds`)) {
        self$`variantDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`variantDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(CallsSearchRequestObject$`variantSetDbIds`)) {
        self$`variantSetDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`variantSetDbIds`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pageSize`)) {
        sprintf(
        '"pageSize":
          %d
                ',
        self$`pageSize`
        )},
        if (!is.null(self$`pageToken`)) {
        sprintf(
        '"pageToken":
          "%s"
                ',
        self$`pageToken`
        )},
        if (!is.null(self$`callSetDbIds`)) {
        sprintf(
        '"callSetDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`callSetDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`expandHomozygotes`)) {
        sprintf(
        '"expandHomozygotes":
          "%s"
                ',
        self$`expandHomozygotes`
        )},
        if (!is.null(self$`sepPhased`)) {
        sprintf(
        '"sepPhased":
          "%s"
                ',
        self$`sepPhased`
        )},
        if (!is.null(self$`sepUnphased`)) {
        sprintf(
        '"sepUnphased":
          "%s"
                ',
        self$`sepUnphased`
        )},
        if (!is.null(self$`unknownString`)) {
        sprintf(
        '"unknownString":
          "%s"
                ',
        self$`unknownString`
        )},
        if (!is.null(self$`variantDbIds`)) {
        sprintf(
        '"variantDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`variantDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
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
    fromJSONString = function(CallsSearchRequestJson) {
      CallsSearchRequestObject <- jsonlite::fromJSON(CallsSearchRequestJson)
      self$`pageSize` <- CallsSearchRequestObject$`pageSize`
      self$`pageToken` <- CallsSearchRequestObject$`pageToken`
      self$`callSetDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`callSetDbIds`, "array[character]", loadNamespace("openapi"))
      self$`expandHomozygotes` <- CallsSearchRequestObject$`expandHomozygotes`
      self$`sepPhased` <- CallsSearchRequestObject$`sepPhased`
      self$`sepUnphased` <- CallsSearchRequestObject$`sepUnphased`
      self$`unknownString` <- CallsSearchRequestObject$`unknownString`
      self$`variantDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`variantDbIds`, "array[character]", loadNamespace("openapi"))
      self$`variantSetDbIds` <- ApiClient$new()$deserializeObj(CallsSearchRequestObject$`variantSetDbIds`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

