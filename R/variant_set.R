# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title VariantSet
#'
#' @description VariantSet Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field analysis  list( \link{Analysis} ) [optional]
#'
#' @field availableFormats  list( \link{VariantSetAvailableFormats} ) [optional]
#'
#' @field callSetCount  integer [optional]
#'
#' @field referenceSetDbId  character [optional]
#'
#' @field studyDbId  character [optional]
#'
#' @field variantCount  integer [optional]
#'
#' @field variantSetDbId  character [optional]
#'
#' @field variantSetName  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantSet <- R6::R6Class(
  'VariantSet',
  public = list(
    `additionalInfo` = NULL,
    `analysis` = NULL,
    `availableFormats` = NULL,
    `callSetCount` = NULL,
    `referenceSetDbId` = NULL,
    `studyDbId` = NULL,
    `variantCount` = NULL,
    `variantSetDbId` = NULL,
    `variantSetName` = NULL,
    initialize = function(
        `additionalInfo`=NULL, `analysis`=NULL, `availableFormats`=NULL, `callSetCount`=NULL, `referenceSetDbId`=NULL, `studyDbId`=NULL, `variantCount`=NULL, `variantSetDbId`=NULL, `variantSetName`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`additionalInfo`)) {
        stopifnot(is.vector(`additionalInfo`), length(`additionalInfo`) != 0)
        sapply(`additionalInfo`, function(x) stopifnot(is.character(x)))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!is.null(`analysis`)) {
        stopifnot(is.vector(`analysis`), length(`analysis`) != 0)
        sapply(`analysis`, function(x) stopifnot(R6::is.R6(x)))
        self$`analysis` <- `analysis`
      }
      if (!is.null(`availableFormats`)) {
        stopifnot(is.vector(`availableFormats`), length(`availableFormats`) != 0)
        sapply(`availableFormats`, function(x) stopifnot(R6::is.R6(x)))
        self$`availableFormats` <- `availableFormats`
      }
      if (!is.null(`callSetCount`)) {
        stopifnot(is.numeric(`callSetCount`), length(`callSetCount`) == 1)
        self$`callSetCount` <- `callSetCount`
      }
      if (!is.null(`referenceSetDbId`)) {
        stopifnot(is.character(`referenceSetDbId`), length(`referenceSetDbId`) == 1)
        self$`referenceSetDbId` <- `referenceSetDbId`
      }
      if (!is.null(`studyDbId`)) {
        stopifnot(is.character(`studyDbId`), length(`studyDbId`) == 1)
        self$`studyDbId` <- `studyDbId`
      }
      if (!is.null(`variantCount`)) {
        stopifnot(is.numeric(`variantCount`), length(`variantCount`) == 1)
        self$`variantCount` <- `variantCount`
      }
      if (!is.null(`variantSetDbId`)) {
        stopifnot(is.character(`variantSetDbId`), length(`variantSetDbId`) == 1)
        self$`variantSetDbId` <- `variantSetDbId`
      }
      if (!is.null(`variantSetName`)) {
        stopifnot(is.character(`variantSetName`), length(`variantSetName`) == 1)
        self$`variantSetName` <- `variantSetName`
      }
    },
    toJSON = function() {
      VariantSetObject <- list()
      if (!is.null(self$`additionalInfo`)) {
        VariantSetObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`analysis`)) {
        VariantSetObject[['analysis']] <-
          lapply(self$`analysis`, function(x) x$toJSON())
      }
      if (!is.null(self$`availableFormats`)) {
        VariantSetObject[['availableFormats']] <-
          lapply(self$`availableFormats`, function(x) x$toJSON())
      }
      if (!is.null(self$`callSetCount`)) {
        VariantSetObject[['callSetCount']] <-
          self$`callSetCount`
      }
      if (!is.null(self$`referenceSetDbId`)) {
        VariantSetObject[['referenceSetDbId']] <-
          self$`referenceSetDbId`
      }
      if (!is.null(self$`studyDbId`)) {
        VariantSetObject[['studyDbId']] <-
          self$`studyDbId`
      }
      if (!is.null(self$`variantCount`)) {
        VariantSetObject[['variantCount']] <-
          self$`variantCount`
      }
      if (!is.null(self$`variantSetDbId`)) {
        VariantSetObject[['variantSetDbId']] <-
          self$`variantSetDbId`
      }
      if (!is.null(self$`variantSetName`)) {
        VariantSetObject[['variantSetName']] <-
          self$`variantSetName`
      }

      VariantSetObject
    },
    fromJSON = function(VariantSetJson) {
      VariantSetObject <- jsonlite::fromJSON(VariantSetJson)
      if (!is.null(VariantSetObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(VariantSetObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(VariantSetObject$`analysis`)) {
        self$`analysis` <- ApiClient$new()$deserializeObj(VariantSetObject$`analysis`, "array[Analysis]", loadNamespace("openapi"))
      }
      if (!is.null(VariantSetObject$`availableFormats`)) {
        self$`availableFormats` <- ApiClient$new()$deserializeObj(VariantSetObject$`availableFormats`, "array[VariantSetAvailableFormats]", loadNamespace("openapi"))
      }
      if (!is.null(VariantSetObject$`callSetCount`)) {
        self$`callSetCount` <- VariantSetObject$`callSetCount`
      }
      if (!is.null(VariantSetObject$`referenceSetDbId`)) {
        self$`referenceSetDbId` <- VariantSetObject$`referenceSetDbId`
      }
      if (!is.null(VariantSetObject$`studyDbId`)) {
        self$`studyDbId` <- VariantSetObject$`studyDbId`
      }
      if (!is.null(VariantSetObject$`variantCount`)) {
        self$`variantCount` <- VariantSetObject$`variantCount`
      }
      if (!is.null(VariantSetObject$`variantSetDbId`)) {
        self$`variantSetDbId` <- VariantSetObject$`variantSetDbId`
      }
      if (!is.null(VariantSetObject$`variantSetName`)) {
        self$`variantSetName` <- VariantSetObject$`variantSetName`
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
        if (!is.null(self$`analysis`)) {
        sprintf(
        '"analysis":
        [%s]
',
        paste(sapply(self$`analysis`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`availableFormats`)) {
        sprintf(
        '"availableFormats":
        [%s]
',
        paste(sapply(self$`availableFormats`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`callSetCount`)) {
        sprintf(
        '"callSetCount":
          %d
                ',
        self$`callSetCount`
        )},
        if (!is.null(self$`referenceSetDbId`)) {
        sprintf(
        '"referenceSetDbId":
          "%s"
                ',
        self$`referenceSetDbId`
        )},
        if (!is.null(self$`studyDbId`)) {
        sprintf(
        '"studyDbId":
          "%s"
                ',
        self$`studyDbId`
        )},
        if (!is.null(self$`variantCount`)) {
        sprintf(
        '"variantCount":
          %d
                ',
        self$`variantCount`
        )},
        if (!is.null(self$`variantSetDbId`)) {
        sprintf(
        '"variantSetDbId":
          "%s"
                ',
        self$`variantSetDbId`
        )},
        if (!is.null(self$`variantSetName`)) {
        sprintf(
        '"variantSetName":
          "%s"
                ',
        self$`variantSetName`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(VariantSetJson) {
      VariantSetObject <- jsonlite::fromJSON(VariantSetJson)
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(VariantSetObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`analysis` <- ApiClient$new()$deserializeObj(VariantSetObject$`analysis`, "array[Analysis]", loadNamespace("openapi"))
      self$`availableFormats` <- ApiClient$new()$deserializeObj(VariantSetObject$`availableFormats`, "array[VariantSetAvailableFormats]", loadNamespace("openapi"))
      self$`callSetCount` <- VariantSetObject$`callSetCount`
      self$`referenceSetDbId` <- VariantSetObject$`referenceSetDbId`
      self$`studyDbId` <- VariantSetObject$`studyDbId`
      self$`variantCount` <- VariantSetObject$`variantCount`
      self$`variantSetDbId` <- VariantSetObject$`variantSetDbId`
      self$`variantSetName` <- VariantSetObject$`variantSetName`
      self
    }
  )
)

