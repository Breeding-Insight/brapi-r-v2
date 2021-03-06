# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title BreedingMethod
#'
#' @description BreedingMethod Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field abbreviation  character [optional]
#'
#' @field breedingMethodDbId  character 
#'
#' @field breedingMethodName  character [optional]
#'
#' @field description  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingMethod <- R6::R6Class(
  'BreedingMethod',
  public = list(
    `abbreviation` = NULL,
    `breedingMethodDbId` = NULL,
    `breedingMethodName` = NULL,
    `description` = NULL,
    initialize = function(
        `breedingMethodDbId`, `abbreviation`=NULL, `breedingMethodName`=NULL, `description`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`breedingMethodDbId`)) {
        stopifnot(is.character(`breedingMethodDbId`), length(`breedingMethodDbId`) == 1)
        self$`breedingMethodDbId` <- `breedingMethodDbId`
      }
      if (!is.null(`abbreviation`)) {
        stopifnot(is.character(`abbreviation`), length(`abbreviation`) == 1)
        self$`abbreviation` <- `abbreviation`
      }
      if (!is.null(`breedingMethodName`)) {
        stopifnot(is.character(`breedingMethodName`), length(`breedingMethodName`) == 1)
        self$`breedingMethodName` <- `breedingMethodName`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      BreedingMethodObject <- list()
      if (!is.null(self$`abbreviation`)) {
        BreedingMethodObject[['abbreviation']] <-
          self$`abbreviation`
      }
      if (!is.null(self$`breedingMethodDbId`)) {
        BreedingMethodObject[['breedingMethodDbId']] <-
          self$`breedingMethodDbId`
      }
      if (!is.null(self$`breedingMethodName`)) {
        BreedingMethodObject[['breedingMethodName']] <-
          self$`breedingMethodName`
      }
      if (!is.null(self$`description`)) {
        BreedingMethodObject[['description']] <-
          self$`description`
      }

      BreedingMethodObject
    },
    fromJSON = function(BreedingMethodJson) {
      BreedingMethodObject <- jsonlite::fromJSON(BreedingMethodJson)
      if (!is.null(BreedingMethodObject$`abbreviation`)) {
        self$`abbreviation` <- BreedingMethodObject$`abbreviation`
      }
      if (!is.null(BreedingMethodObject$`breedingMethodDbId`)) {
        self$`breedingMethodDbId` <- BreedingMethodObject$`breedingMethodDbId`
      }
      if (!is.null(BreedingMethodObject$`breedingMethodName`)) {
        self$`breedingMethodName` <- BreedingMethodObject$`breedingMethodName`
      }
      if (!is.null(BreedingMethodObject$`description`)) {
        self$`description` <- BreedingMethodObject$`description`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`abbreviation`)) {
        sprintf(
        '"abbreviation":
          "%s"
                ',
        self$`abbreviation`
        )},
        if (!is.null(self$`breedingMethodDbId`)) {
        sprintf(
        '"breedingMethodDbId":
          "%s"
                ',
        self$`breedingMethodDbId`
        )},
        if (!is.null(self$`breedingMethodName`)) {
        sprintf(
        '"breedingMethodName":
          "%s"
                ',
        self$`breedingMethodName`
        )},
        if (!is.null(self$`description`)) {
        sprintf(
        '"description":
          "%s"
                ',
        self$`description`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(BreedingMethodJson) {
      BreedingMethodObject <- jsonlite::fromJSON(BreedingMethodJson)
      self$`abbreviation` <- BreedingMethodObject$`abbreviation`
      self$`breedingMethodDbId` <- BreedingMethodObject$`breedingMethodDbId`
      self$`breedingMethodName` <- BreedingMethodObject$`breedingMethodName`
      self$`description` <- BreedingMethodObject$`description`
      self
    }
  )
)

