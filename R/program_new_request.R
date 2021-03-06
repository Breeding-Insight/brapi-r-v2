# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ProgramNewRequest
#'
#' @description ProgramNewRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field abbreviation  character [optional]
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field commonCropName  character [optional]
#'
#' @field documentationURL  character [optional]
#'
#' @field externalReferences ExternalReferences list( object ) [optional]
#'
#' @field leadPersonDbId  character [optional]
#'
#' @field leadPersonName  character [optional]
#'
#' @field objective  character [optional]
#'
#' @field programName  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProgramNewRequest <- R6::R6Class(
  'ProgramNewRequest',
  public = list(
    `abbreviation` = NULL,
    `additionalInfo` = NULL,
    `commonCropName` = NULL,
    `documentationURL` = NULL,
    `externalReferences` = NULL,
    `leadPersonDbId` = NULL,
    `leadPersonName` = NULL,
    `objective` = NULL,
    `programName` = NULL,
    initialize = function(
        `abbreviation`=NULL, `additionalInfo`=NULL, `commonCropName`=NULL, `documentationURL`=NULL, `externalReferences`=NULL, `leadPersonDbId`=NULL, `leadPersonName`=NULL, `objective`=NULL, `programName`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`abbreviation`)) {
        stopifnot(is.character(`abbreviation`), length(`abbreviation`) == 1)
        self$`abbreviation` <- `abbreviation`
      }
      if (!is.null(`additionalInfo`)) {
        stopifnot(is.vector(`additionalInfo`), length(`additionalInfo`) != 0)
        sapply(`additionalInfo`, function(x) stopifnot(is.character(x)))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!is.null(`commonCropName`)) {
        stopifnot(is.character(`commonCropName`), length(`commonCropName`) == 1)
        self$`commonCropName` <- `commonCropName`
      }
      if (!is.null(`documentationURL`)) {
        stopifnot(is.character(`documentationURL`), length(`documentationURL`) == 1)
        self$`documentationURL` <- `documentationURL`
      }
      if (!is.null(`externalReferences`)) {
        stopifnot(is.vector(`externalReferences`), length(`externalReferences`) != 0)
        sapply(`externalReferences`, function(x) stopifnot(is.character(x)))
        self$`externalReferences` <- `externalReferences`
      }
      if (!is.null(`leadPersonDbId`)) {
        stopifnot(is.character(`leadPersonDbId`), length(`leadPersonDbId`) == 1)
        self$`leadPersonDbId` <- `leadPersonDbId`
      }
      if (!is.null(`leadPersonName`)) {
        stopifnot(is.character(`leadPersonName`), length(`leadPersonName`) == 1)
        self$`leadPersonName` <- `leadPersonName`
      }
      if (!is.null(`objective`)) {
        stopifnot(is.character(`objective`), length(`objective`) == 1)
        self$`objective` <- `objective`
      }
      if (!is.null(`programName`)) {
        stopifnot(is.character(`programName`), length(`programName`) == 1)
        self$`programName` <- `programName`
      }
    },
    toJSON = function() {
      ProgramNewRequestObject <- list()
      if (!is.null(self$`abbreviation`)) {
        ProgramNewRequestObject[['abbreviation']] <-
          self$`abbreviation`
      }
      if (!is.null(self$`additionalInfo`)) {
        ProgramNewRequestObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`commonCropName`)) {
        ProgramNewRequestObject[['commonCropName']] <-
          self$`commonCropName`
      }
      if (!is.null(self$`documentationURL`)) {
        ProgramNewRequestObject[['documentationURL']] <-
          self$`documentationURL`
      }
      if (!is.null(self$`externalReferences`)) {
        ProgramNewRequestObject[['externalReferences']] <-
          self$`externalReferences`
      }
      if (!is.null(self$`leadPersonDbId`)) {
        ProgramNewRequestObject[['leadPersonDbId']] <-
          self$`leadPersonDbId`
      }
      if (!is.null(self$`leadPersonName`)) {
        ProgramNewRequestObject[['leadPersonName']] <-
          self$`leadPersonName`
      }
      if (!is.null(self$`objective`)) {
        ProgramNewRequestObject[['objective']] <-
          self$`objective`
      }
      if (!is.null(self$`programName`)) {
        ProgramNewRequestObject[['programName']] <-
          self$`programName`
      }

      ProgramNewRequestObject
    },
    fromJSON = function(ProgramNewRequestJson) {
      ProgramNewRequestObject <- jsonlite::fromJSON(ProgramNewRequestJson)
      if (!is.null(ProgramNewRequestObject$`abbreviation`)) {
        self$`abbreviation` <- ProgramNewRequestObject$`abbreviation`
      }
      if (!is.null(ProgramNewRequestObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(ProgramNewRequestObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(ProgramNewRequestObject$`commonCropName`)) {
        self$`commonCropName` <- ProgramNewRequestObject$`commonCropName`
      }
      if (!is.null(ProgramNewRequestObject$`documentationURL`)) {
        self$`documentationURL` <- ProgramNewRequestObject$`documentationURL`
      }
      if (!is.null(ProgramNewRequestObject$`externalReferences`)) {
        self$`externalReferences` <- ApiClient$new()$deserializeObj(ProgramNewRequestObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(ProgramNewRequestObject$`leadPersonDbId`)) {
        self$`leadPersonDbId` <- ProgramNewRequestObject$`leadPersonDbId`
      }
      if (!is.null(ProgramNewRequestObject$`leadPersonName`)) {
        self$`leadPersonName` <- ProgramNewRequestObject$`leadPersonName`
      }
      if (!is.null(ProgramNewRequestObject$`objective`)) {
        self$`objective` <- ProgramNewRequestObject$`objective`
      }
      if (!is.null(ProgramNewRequestObject$`programName`)) {
        self$`programName` <- ProgramNewRequestObject$`programName`
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
        if (!is.null(self$`additionalInfo`)) {
        sprintf(
        '"additionalInfo":
          "%s"
        ',
        jsonlite::toJSON(lapply(self$`additionalInfo`, function(x){ x }), auto_unbox = TRUE, digits=NA)
        )},
        if (!is.null(self$`commonCropName`)) {
        sprintf(
        '"commonCropName":
          "%s"
                ',
        self$`commonCropName`
        )},
        if (!is.null(self$`documentationURL`)) {
        sprintf(
        '"documentationURL":
          "%s"
                ',
        self$`documentationURL`
        )},
        if (!is.null(self$`externalReferences`)) {
        sprintf(
        '"externalReferences":
           [%s]
        ',
        paste(unlist(lapply(self$`externalReferences`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`leadPersonDbId`)) {
        sprintf(
        '"leadPersonDbId":
          "%s"
                ',
        self$`leadPersonDbId`
        )},
        if (!is.null(self$`leadPersonName`)) {
        sprintf(
        '"leadPersonName":
          "%s"
                ',
        self$`leadPersonName`
        )},
        if (!is.null(self$`objective`)) {
        sprintf(
        '"objective":
          "%s"
                ',
        self$`objective`
        )},
        if (!is.null(self$`programName`)) {
        sprintf(
        '"programName":
          "%s"
                ',
        self$`programName`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ProgramNewRequestJson) {
      ProgramNewRequestObject <- jsonlite::fromJSON(ProgramNewRequestJson)
      self$`abbreviation` <- ProgramNewRequestObject$`abbreviation`
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(ProgramNewRequestObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`commonCropName` <- ProgramNewRequestObject$`commonCropName`
      self$`documentationURL` <- ProgramNewRequestObject$`documentationURL`
      self$`externalReferences` <- ApiClient$new()$deserializeObj(ProgramNewRequestObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      self$`leadPersonDbId` <- ProgramNewRequestObject$`leadPersonDbId`
      self$`leadPersonName` <- ProgramNewRequestObject$`leadPersonName`
      self$`objective` <- ProgramNewRequestObject$`objective`
      self$`programName` <- ProgramNewRequestObject$`programName`
      self
    }
  )
)

