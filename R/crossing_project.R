# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title CrossingProject
#'
#' @description CrossingProject Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field commonCropName  character [optional]
#'
#' @field crossingProjectDescription  character [optional]
#'
#' @field crossingProjectName  character [optional]
#'
#' @field externalReferences ExternalReferences list( object ) [optional]
#'
#' @field programDbId  character [optional]
#'
#' @field programName  character [optional]
#'
#' @field crossingProjectDbId  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CrossingProject <- R6::R6Class(
  'CrossingProject',
  public = list(
    `additionalInfo` = NULL,
    `commonCropName` = NULL,
    `crossingProjectDescription` = NULL,
    `crossingProjectName` = NULL,
    `externalReferences` = NULL,
    `programDbId` = NULL,
    `programName` = NULL,
    `crossingProjectDbId` = NULL,
    initialize = function(
        `additionalInfo`=NULL, `commonCropName`=NULL, `crossingProjectDescription`=NULL, `crossingProjectName`=NULL, `externalReferences`=NULL, `programDbId`=NULL, `programName`=NULL, `crossingProjectDbId`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`additionalInfo`)) {
        stopifnot(is.vector(`additionalInfo`), length(`additionalInfo`) != 0)
        sapply(`additionalInfo`, function(x) stopifnot(is.character(x)))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!is.null(`commonCropName`)) {
        stopifnot(is.character(`commonCropName`), length(`commonCropName`) == 1)
        self$`commonCropName` <- `commonCropName`
      }
      if (!is.null(`crossingProjectDescription`)) {
        stopifnot(is.character(`crossingProjectDescription`), length(`crossingProjectDescription`) == 1)
        self$`crossingProjectDescription` <- `crossingProjectDescription`
      }
      if (!is.null(`crossingProjectName`)) {
        stopifnot(is.character(`crossingProjectName`), length(`crossingProjectName`) == 1)
        self$`crossingProjectName` <- `crossingProjectName`
      }
      if (!is.null(`externalReferences`)) {
        stopifnot(is.vector(`externalReferences`), length(`externalReferences`) != 0)
        sapply(`externalReferences`, function(x) stopifnot(is.character(x)))
        self$`externalReferences` <- `externalReferences`
      }
      if (!is.null(`programDbId`)) {
        stopifnot(is.character(`programDbId`), length(`programDbId`) == 1)
        self$`programDbId` <- `programDbId`
      }
      if (!is.null(`programName`)) {
        stopifnot(is.character(`programName`), length(`programName`) == 1)
        self$`programName` <- `programName`
      }
      if (!is.null(`crossingProjectDbId`)) {
        stopifnot(is.character(`crossingProjectDbId`), length(`crossingProjectDbId`) == 1)
        self$`crossingProjectDbId` <- `crossingProjectDbId`
      }
    },
    toJSON = function() {
      CrossingProjectObject <- list()
      if (!is.null(self$`additionalInfo`)) {
        CrossingProjectObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`commonCropName`)) {
        CrossingProjectObject[['commonCropName']] <-
          self$`commonCropName`
      }
      if (!is.null(self$`crossingProjectDescription`)) {
        CrossingProjectObject[['crossingProjectDescription']] <-
          self$`crossingProjectDescription`
      }
      if (!is.null(self$`crossingProjectName`)) {
        CrossingProjectObject[['crossingProjectName']] <-
          self$`crossingProjectName`
      }
      if (!is.null(self$`externalReferences`)) {
        CrossingProjectObject[['externalReferences']] <-
          self$`externalReferences`
      }
      if (!is.null(self$`programDbId`)) {
        CrossingProjectObject[['programDbId']] <-
          self$`programDbId`
      }
      if (!is.null(self$`programName`)) {
        CrossingProjectObject[['programName']] <-
          self$`programName`
      }
      if (!is.null(self$`crossingProjectDbId`)) {
        CrossingProjectObject[['crossingProjectDbId']] <-
          self$`crossingProjectDbId`
      }

      CrossingProjectObject
    },
    fromJSON = function(CrossingProjectJson) {
      CrossingProjectObject <- jsonlite::fromJSON(CrossingProjectJson)
      if (!is.null(CrossingProjectObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(CrossingProjectObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(CrossingProjectObject$`commonCropName`)) {
        self$`commonCropName` <- CrossingProjectObject$`commonCropName`
      }
      if (!is.null(CrossingProjectObject$`crossingProjectDescription`)) {
        self$`crossingProjectDescription` <- CrossingProjectObject$`crossingProjectDescription`
      }
      if (!is.null(CrossingProjectObject$`crossingProjectName`)) {
        self$`crossingProjectName` <- CrossingProjectObject$`crossingProjectName`
      }
      if (!is.null(CrossingProjectObject$`externalReferences`)) {
        self$`externalReferences` <- ApiClient$new()$deserializeObj(CrossingProjectObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(CrossingProjectObject$`programDbId`)) {
        self$`programDbId` <- CrossingProjectObject$`programDbId`
      }
      if (!is.null(CrossingProjectObject$`programName`)) {
        self$`programName` <- CrossingProjectObject$`programName`
      }
      if (!is.null(CrossingProjectObject$`crossingProjectDbId`)) {
        self$`crossingProjectDbId` <- CrossingProjectObject$`crossingProjectDbId`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
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
        if (!is.null(self$`crossingProjectDescription`)) {
        sprintf(
        '"crossingProjectDescription":
          "%s"
                ',
        self$`crossingProjectDescription`
        )},
        if (!is.null(self$`crossingProjectName`)) {
        sprintf(
        '"crossingProjectName":
          "%s"
                ',
        self$`crossingProjectName`
        )},
        if (!is.null(self$`externalReferences`)) {
        sprintf(
        '"externalReferences":
           [%s]
        ',
        paste(unlist(lapply(self$`externalReferences`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`programDbId`)) {
        sprintf(
        '"programDbId":
          "%s"
                ',
        self$`programDbId`
        )},
        if (!is.null(self$`programName`)) {
        sprintf(
        '"programName":
          "%s"
                ',
        self$`programName`
        )},
        if (!is.null(self$`crossingProjectDbId`)) {
        sprintf(
        '"crossingProjectDbId":
          "%s"
                ',
        self$`crossingProjectDbId`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(CrossingProjectJson) {
      CrossingProjectObject <- jsonlite::fromJSON(CrossingProjectJson)
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(CrossingProjectObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`commonCropName` <- CrossingProjectObject$`commonCropName`
      self$`crossingProjectDescription` <- CrossingProjectObject$`crossingProjectDescription`
      self$`crossingProjectName` <- CrossingProjectObject$`crossingProjectName`
      self$`externalReferences` <- ApiClient$new()$deserializeObj(CrossingProjectObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      self$`programDbId` <- CrossingProjectObject$`programDbId`
      self$`programName` <- CrossingProjectObject$`programName`
      self$`crossingProjectDbId` <- CrossingProjectObject$`crossingProjectDbId`
      self
    }
  )
)

