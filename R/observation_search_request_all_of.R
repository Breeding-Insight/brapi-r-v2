# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ObservationSearchRequestAllOf
#'
#' @description ObservationSearchRequestAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field observationDbIds  list( character ) [optional]
#'
#' @field observationLevelRelationships  list( \link{ObservationUnitLevelRelationship} ) [optional]
#'
#' @field observationLevels  list( \link{ObservationUnitLevelRelationship} ) [optional]
#'
#' @field observationTimeStampRangeEnd  character [optional]
#'
#' @field observationTimeStampRangeStart  character [optional]
#'
#' @field observationUnitDbIds  list( character ) [optional]
#'
#' @field seasonDbIds  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationSearchRequestAllOf <- R6::R6Class(
  'ObservationSearchRequestAllOf',
  public = list(
    `observationDbIds` = NULL,
    `observationLevelRelationships` = NULL,
    `observationLevels` = NULL,
    `observationTimeStampRangeEnd` = NULL,
    `observationTimeStampRangeStart` = NULL,
    `observationUnitDbIds` = NULL,
    `seasonDbIds` = NULL,
    initialize = function(
        `observationDbIds`=NULL, `observationLevelRelationships`=NULL, `observationLevels`=NULL, `observationTimeStampRangeEnd`=NULL, `observationTimeStampRangeStart`=NULL, `observationUnitDbIds`=NULL, `seasonDbIds`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`observationDbIds`)) {
        stopifnot(is.vector(`observationDbIds`), length(`observationDbIds`) != 0)
        sapply(`observationDbIds`, function(x) stopifnot(is.character(x)))
        self$`observationDbIds` <- `observationDbIds`
      }
      if (!is.null(`observationLevelRelationships`)) {
        stopifnot(is.vector(`observationLevelRelationships`), length(`observationLevelRelationships`) != 0)
        sapply(`observationLevelRelationships`, function(x) stopifnot(R6::is.R6(x)))
        self$`observationLevelRelationships` <- `observationLevelRelationships`
      }
      if (!is.null(`observationLevels`)) {
        stopifnot(is.vector(`observationLevels`), length(`observationLevels`) != 0)
        sapply(`observationLevels`, function(x) stopifnot(R6::is.R6(x)))
        self$`observationLevels` <- `observationLevels`
      }
      if (!is.null(`observationTimeStampRangeEnd`)) {
        stopifnot(is.character(`observationTimeStampRangeEnd`), length(`observationTimeStampRangeEnd`) == 1)
        self$`observationTimeStampRangeEnd` <- `observationTimeStampRangeEnd`
      }
      if (!is.null(`observationTimeStampRangeStart`)) {
        stopifnot(is.character(`observationTimeStampRangeStart`), length(`observationTimeStampRangeStart`) == 1)
        self$`observationTimeStampRangeStart` <- `observationTimeStampRangeStart`
      }
      if (!is.null(`observationUnitDbIds`)) {
        stopifnot(is.vector(`observationUnitDbIds`), length(`observationUnitDbIds`) != 0)
        sapply(`observationUnitDbIds`, function(x) stopifnot(is.character(x)))
        self$`observationUnitDbIds` <- `observationUnitDbIds`
      }
      if (!is.null(`seasonDbIds`)) {
        stopifnot(is.vector(`seasonDbIds`), length(`seasonDbIds`) != 0)
        sapply(`seasonDbIds`, function(x) stopifnot(is.character(x)))
        self$`seasonDbIds` <- `seasonDbIds`
      }
    },
    toJSON = function() {
      ObservationSearchRequestAllOfObject <- list()
      if (!is.null(self$`observationDbIds`)) {
        ObservationSearchRequestAllOfObject[['observationDbIds']] <-
          self$`observationDbIds`
      }
      if (!is.null(self$`observationLevelRelationships`)) {
        ObservationSearchRequestAllOfObject[['observationLevelRelationships']] <-
          lapply(self$`observationLevelRelationships`, function(x) x$toJSON())
      }
      if (!is.null(self$`observationLevels`)) {
        ObservationSearchRequestAllOfObject[['observationLevels']] <-
          lapply(self$`observationLevels`, function(x) x$toJSON())
      }
      if (!is.null(self$`observationTimeStampRangeEnd`)) {
        ObservationSearchRequestAllOfObject[['observationTimeStampRangeEnd']] <-
          self$`observationTimeStampRangeEnd`
      }
      if (!is.null(self$`observationTimeStampRangeStart`)) {
        ObservationSearchRequestAllOfObject[['observationTimeStampRangeStart']] <-
          self$`observationTimeStampRangeStart`
      }
      if (!is.null(self$`observationUnitDbIds`)) {
        ObservationSearchRequestAllOfObject[['observationUnitDbIds']] <-
          self$`observationUnitDbIds`
      }
      if (!is.null(self$`seasonDbIds`)) {
        ObservationSearchRequestAllOfObject[['seasonDbIds']] <-
          self$`seasonDbIds`
      }

      ObservationSearchRequestAllOfObject
    },
    fromJSON = function(ObservationSearchRequestAllOfJson) {
      ObservationSearchRequestAllOfObject <- jsonlite::fromJSON(ObservationSearchRequestAllOfJson)
      if (!is.null(ObservationSearchRequestAllOfObject$`observationDbIds`)) {
        self$`observationDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`observationLevelRelationships`)) {
        self$`observationLevelRelationships` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationLevelRelationships`, "array[ObservationUnitLevelRelationship]", loadNamespace("openapi"))
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`observationLevels`)) {
        self$`observationLevels` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationLevels`, "array[ObservationUnitLevelRelationship]", loadNamespace("openapi"))
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`observationTimeStampRangeEnd`)) {
        self$`observationTimeStampRangeEnd` <- ObservationSearchRequestAllOfObject$`observationTimeStampRangeEnd`
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`observationTimeStampRangeStart`)) {
        self$`observationTimeStampRangeStart` <- ObservationSearchRequestAllOfObject$`observationTimeStampRangeStart`
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`observationUnitDbIds`)) {
        self$`observationUnitDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationUnitDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(ObservationSearchRequestAllOfObject$`seasonDbIds`)) {
        self$`seasonDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`seasonDbIds`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`observationDbIds`)) {
        sprintf(
        '"observationDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`observationDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`observationLevelRelationships`)) {
        sprintf(
        '"observationLevelRelationships":
        [%s]
',
        paste(sapply(self$`observationLevelRelationships`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`observationLevels`)) {
        sprintf(
        '"observationLevels":
        [%s]
',
        paste(sapply(self$`observationLevels`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`observationTimeStampRangeEnd`)) {
        sprintf(
        '"observationTimeStampRangeEnd":
          "%s"
                ',
        self$`observationTimeStampRangeEnd`
        )},
        if (!is.null(self$`observationTimeStampRangeStart`)) {
        sprintf(
        '"observationTimeStampRangeStart":
          "%s"
                ',
        self$`observationTimeStampRangeStart`
        )},
        if (!is.null(self$`observationUnitDbIds`)) {
        sprintf(
        '"observationUnitDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`observationUnitDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`seasonDbIds`)) {
        sprintf(
        '"seasonDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`seasonDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ObservationSearchRequestAllOfJson) {
      ObservationSearchRequestAllOfObject <- jsonlite::fromJSON(ObservationSearchRequestAllOfJson)
      self$`observationDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationDbIds`, "array[character]", loadNamespace("openapi"))
      self$`observationLevelRelationships` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationLevelRelationships`, "array[ObservationUnitLevelRelationship]", loadNamespace("openapi"))
      self$`observationLevels` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationLevels`, "array[ObservationUnitLevelRelationship]", loadNamespace("openapi"))
      self$`observationTimeStampRangeEnd` <- ObservationSearchRequestAllOfObject$`observationTimeStampRangeEnd`
      self$`observationTimeStampRangeStart` <- ObservationSearchRequestAllOfObject$`observationTimeStampRangeStart`
      self$`observationUnitDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`observationUnitDbIds`, "array[character]", loadNamespace("openapi"))
      self$`seasonDbIds` <- ApiClient$new()$deserializeObj(ObservationSearchRequestAllOfObject$`seasonDbIds`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

