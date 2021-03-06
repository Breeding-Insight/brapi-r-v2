# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Service
#'
#' @description Service Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field dataTypes  list( \link{WSMIMEDataTypes} ) [optional]
#'
#' @field methods  list( character ) 
#'
#' @field service  character 
#'
#' @field versions  list( character ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Service <- R6::R6Class(
  'Service',
  public = list(
    `dataTypes` = NULL,
    `methods` = NULL,
    `service` = NULL,
    `versions` = NULL,
    initialize = function(
        `methods`, `service`, `versions`, `dataTypes`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`methods`)) {
        stopifnot(is.vector(`methods`), length(`methods`) != 0)
        sapply(`methods`, function(x) stopifnot(is.character(x)))
        self$`methods` <- `methods`
      }
      if (!missing(`service`)) {
        stopifnot(is.character(`service`), length(`service`) == 1)
        self$`service` <- `service`
      }
      if (!missing(`versions`)) {
        stopifnot(is.vector(`versions`), length(`versions`) != 0)
        sapply(`versions`, function(x) stopifnot(is.character(x)))
        self$`versions` <- `versions`
      }
      if (!is.null(`dataTypes`)) {
        stopifnot(is.vector(`dataTypes`), length(`dataTypes`) != 0)
        sapply(`dataTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`dataTypes` <- `dataTypes`
      }
    },
    toJSON = function() {
      ServiceObject <- list()
      if (!is.null(self$`dataTypes`)) {
        ServiceObject[['dataTypes']] <-
          lapply(self$`dataTypes`, function(x) x$toJSON())
      }
      if (!is.null(self$`methods`)) {
        ServiceObject[['methods']] <-
          self$`methods`
      }
      if (!is.null(self$`service`)) {
        ServiceObject[['service']] <-
          self$`service`
      }
      if (!is.null(self$`versions`)) {
        ServiceObject[['versions']] <-
          self$`versions`
      }

      ServiceObject
    },
    fromJSON = function(ServiceJson) {
      ServiceObject <- jsonlite::fromJSON(ServiceJson)
      if (!is.null(ServiceObject$`dataTypes`)) {
        self$`dataTypes` <- ApiClient$new()$deserializeObj(ServiceObject$`dataTypes`, "array[WSMIMEDataTypes]", loadNamespace("openapi"))
      }
      if (!is.null(ServiceObject$`methods`)) {
        self$`methods` <- ApiClient$new()$deserializeObj(ServiceObject$`methods`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(ServiceObject$`service`)) {
        self$`service` <- ServiceObject$`service`
      }
      if (!is.null(ServiceObject$`versions`)) {
        self$`versions` <- ApiClient$new()$deserializeObj(ServiceObject$`versions`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`dataTypes`)) {
        sprintf(
        '"dataTypes":
        [%s]
',
        paste(sapply(self$`dataTypes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`methods`)) {
        sprintf(
        '"methods":
           [%s]
        ',
        paste(unlist(lapply(self$`methods`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`service`)) {
        sprintf(
        '"service":
          "%s"
                ',
        self$`service`
        )},
        if (!is.null(self$`versions`)) {
        sprintf(
        '"versions":
           [%s]
        ',
        paste(unlist(lapply(self$`versions`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ServiceJson) {
      ServiceObject <- jsonlite::fromJSON(ServiceJson)
      self$`dataTypes` <- ApiClient$new()$deserializeObj(ServiceObject$`dataTypes`, "array[WSMIMEDataTypes]", loadNamespace("openapi"))
      self$`methods` <- ApiClient$new()$deserializeObj(ServiceObject$`methods`, "array[character]", loadNamespace("openapi"))
      self$`service` <- ServiceObject$`service`
      self$`versions` <- ApiClient$new()$deserializeObj(ServiceObject$`versions`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

