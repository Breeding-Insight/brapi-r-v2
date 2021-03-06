# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Scale
#'
#' @description Scale Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field dataType  \link{TraitDataType} [optional]
#'
#' @field decimalPlaces  integer [optional]
#'
#' @field externalReferences ExternalReferences list( object ) [optional]
#'
#' @field ontologyReference  \link{OntologyReference} [optional]
#'
#' @field scaleName  character 
#'
#' @field validValues  \link{ScaleBaseClassValidValues} [optional]
#'
#' @field scaleDbId  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Scale <- R6::R6Class(
  'Scale',
  public = list(
    `additionalInfo` = NULL,
    `dataType` = NULL,
    `decimalPlaces` = NULL,
    `externalReferences` = NULL,
    `ontologyReference` = NULL,
    `scaleName` = NULL,
    `validValues` = NULL,
    `scaleDbId` = NULL,
    initialize = function(
        `scaleName`, `scaleDbId`, `additionalInfo`=NULL, `dataType`=NULL, `decimalPlaces`=NULL, `externalReferences`=NULL, `ontologyReference`=NULL, `validValues`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`scaleName`)) {
        stopifnot(is.character(`scaleName`), length(`scaleName`) == 1)
        self$`scaleName` <- `scaleName`
      }
      if (!missing(`scaleDbId`)) {
        stopifnot(is.character(`scaleDbId`), length(`scaleDbId`) == 1)
        self$`scaleDbId` <- `scaleDbId`
      }
      if (!is.null(`additionalInfo`)) {
        stopifnot(is.vector(`additionalInfo`), length(`additionalInfo`) != 0)
        sapply(`additionalInfo`, function(x) stopifnot(is.character(x)))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!is.null(`dataType`)) {
        stopifnot(R6::is.R6(`dataType`))
        self$`dataType` <- `dataType`
      }
      if (!is.null(`decimalPlaces`)) {
        stopifnot(is.numeric(`decimalPlaces`), length(`decimalPlaces`) == 1)
        self$`decimalPlaces` <- `decimalPlaces`
      }
      if (!is.null(`externalReferences`)) {
        stopifnot(is.vector(`externalReferences`), length(`externalReferences`) != 0)
        sapply(`externalReferences`, function(x) stopifnot(is.character(x)))
        self$`externalReferences` <- `externalReferences`
      }
      if (!is.null(`ontologyReference`)) {
        stopifnot(R6::is.R6(`ontologyReference`))
        self$`ontologyReference` <- `ontologyReference`
      }
      if (!is.null(`validValues`)) {
        stopifnot(R6::is.R6(`validValues`))
        self$`validValues` <- `validValues`
      }
    },
    toJSON = function() {
      ScaleObject <- list()
      if (!is.null(self$`additionalInfo`)) {
        ScaleObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`dataType`)) {
        ScaleObject[['dataType']] <-
          self$`dataType`$toJSON()
      }
      if (!is.null(self$`decimalPlaces`)) {
        ScaleObject[['decimalPlaces']] <-
          self$`decimalPlaces`
      }
      if (!is.null(self$`externalReferences`)) {
        ScaleObject[['externalReferences']] <-
          self$`externalReferences`
      }
      if (!is.null(self$`ontologyReference`)) {
        ScaleObject[['ontologyReference']] <-
          self$`ontologyReference`$toJSON()
      }
      if (!is.null(self$`scaleName`)) {
        ScaleObject[['scaleName']] <-
          self$`scaleName`
      }
      if (!is.null(self$`validValues`)) {
        ScaleObject[['validValues']] <-
          self$`validValues`$toJSON()
      }
      if (!is.null(self$`scaleDbId`)) {
        ScaleObject[['scaleDbId']] <-
          self$`scaleDbId`
      }

      ScaleObject
    },
    fromJSON = function(ScaleJson) {
      ScaleObject <- jsonlite::fromJSON(ScaleJson)
      if (!is.null(ScaleObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(ScaleObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(ScaleObject$`dataType`)) {
        dataTypeObject <- TraitDataType$new()
        dataTypeObject$fromJSON(jsonlite::toJSON(ScaleObject$dataType, auto_unbox = TRUE, digits = NA))
        self$`dataType` <- dataTypeObject
      }
      if (!is.null(ScaleObject$`decimalPlaces`)) {
        self$`decimalPlaces` <- ScaleObject$`decimalPlaces`
      }
      if (!is.null(ScaleObject$`externalReferences`)) {
        self$`externalReferences` <- ApiClient$new()$deserializeObj(ScaleObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(ScaleObject$`ontologyReference`)) {
        ontologyReferenceObject <- OntologyReference$new()
        ontologyReferenceObject$fromJSON(jsonlite::toJSON(ScaleObject$ontologyReference, auto_unbox = TRUE, digits = NA))
        self$`ontologyReference` <- ontologyReferenceObject
      }
      if (!is.null(ScaleObject$`scaleName`)) {
        self$`scaleName` <- ScaleObject$`scaleName`
      }
      if (!is.null(ScaleObject$`validValues`)) {
        validValuesObject <- ScaleBaseClassValidValues$new()
        validValuesObject$fromJSON(jsonlite::toJSON(ScaleObject$validValues, auto_unbox = TRUE, digits = NA))
        self$`validValues` <- validValuesObject
      }
      if (!is.null(ScaleObject$`scaleDbId`)) {
        self$`scaleDbId` <- ScaleObject$`scaleDbId`
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
        if (!is.null(self$`dataType`)) {
        sprintf(
        '"dataType":
        %s
        ',
        jsonlite::toJSON(self$`dataType`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`decimalPlaces`)) {
        sprintf(
        '"decimalPlaces":
          %d
                ',
        self$`decimalPlaces`
        )},
        if (!is.null(self$`externalReferences`)) {
        sprintf(
        '"externalReferences":
           [%s]
        ',
        paste(unlist(lapply(self$`externalReferences`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`ontologyReference`)) {
        sprintf(
        '"ontologyReference":
        %s
        ',
        jsonlite::toJSON(self$`ontologyReference`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`scaleName`)) {
        sprintf(
        '"scaleName":
          "%s"
                ',
        self$`scaleName`
        )},
        if (!is.null(self$`validValues`)) {
        sprintf(
        '"validValues":
        %s
        ',
        jsonlite::toJSON(self$`validValues`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`scaleDbId`)) {
        sprintf(
        '"scaleDbId":
          "%s"
                ',
        self$`scaleDbId`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ScaleJson) {
      ScaleObject <- jsonlite::fromJSON(ScaleJson)
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(ScaleObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`dataType` <- TraitDataType$new()$fromJSON(jsonlite::toJSON(ScaleObject$dataType, auto_unbox = TRUE, digits = NA))
      self$`decimalPlaces` <- ScaleObject$`decimalPlaces`
      self$`externalReferences` <- ApiClient$new()$deserializeObj(ScaleObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      self$`ontologyReference` <- OntologyReference$new()$fromJSON(jsonlite::toJSON(ScaleObject$ontologyReference, auto_unbox = TRUE, digits = NA))
      self$`scaleName` <- ScaleObject$`scaleName`
      self$`validValues` <- ScaleBaseClassValidValues$new()$fromJSON(jsonlite::toJSON(ScaleObject$validValues, auto_unbox = TRUE, digits = NA))
      self$`scaleDbId` <- ScaleObject$`scaleDbId`
      self
    }
  )
)

