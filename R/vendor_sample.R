# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title VendorSample
#'
#' @description VendorSample Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field clientSampleBarCode  character [optional]
#'
#' @field clientSampleId  character 
#'
#' @field column  integer [optional]
#'
#' @field comments  character [optional]
#'
#' @field concentration  \link{Measurement} [optional]
#'
#' @field organismName  character [optional]
#'
#' @field row  character [optional]
#'
#' @field speciesName  character [optional]
#'
#' @field taxonomyOntologyReference  \link{OntologyReference} [optional]
#'
#' @field tissueType  character [optional]
#'
#' @field tissueTypeOntologyReference  \link{OntologyReference} [optional]
#'
#' @field volume  \link{Measurement} [optional]
#'
#' @field well  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VendorSample <- R6::R6Class(
  'VendorSample',
  public = list(
    `clientSampleBarCode` = NULL,
    `clientSampleId` = NULL,
    `column` = NULL,
    `comments` = NULL,
    `concentration` = NULL,
    `organismName` = NULL,
    `row` = NULL,
    `speciesName` = NULL,
    `taxonomyOntologyReference` = NULL,
    `tissueType` = NULL,
    `tissueTypeOntologyReference` = NULL,
    `volume` = NULL,
    `well` = NULL,
    initialize = function(
        `clientSampleId`, `clientSampleBarCode`=NULL, `column`=NULL, `comments`=NULL, `concentration`=NULL, `organismName`=NULL, `row`=NULL, `speciesName`=NULL, `taxonomyOntologyReference`=NULL, `tissueType`=NULL, `tissueTypeOntologyReference`=NULL, `volume`=NULL, `well`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`clientSampleId`)) {
        stopifnot(is.character(`clientSampleId`), length(`clientSampleId`) == 1)
        self$`clientSampleId` <- `clientSampleId`
      }
      if (!is.null(`clientSampleBarCode`)) {
        stopifnot(is.character(`clientSampleBarCode`), length(`clientSampleBarCode`) == 1)
        self$`clientSampleBarCode` <- `clientSampleBarCode`
      }
      if (!is.null(`column`)) {
        stopifnot(is.numeric(`column`), length(`column`) == 1)
        self$`column` <- `column`
      }
      if (!is.null(`comments`)) {
        stopifnot(is.character(`comments`), length(`comments`) == 1)
        self$`comments` <- `comments`
      }
      if (!is.null(`concentration`)) {
        stopifnot(R6::is.R6(`concentration`))
        self$`concentration` <- `concentration`
      }
      if (!is.null(`organismName`)) {
        stopifnot(is.character(`organismName`), length(`organismName`) == 1)
        self$`organismName` <- `organismName`
      }
      if (!is.null(`row`)) {
        stopifnot(is.character(`row`), length(`row`) == 1)
        self$`row` <- `row`
      }
      if (!is.null(`speciesName`)) {
        stopifnot(is.character(`speciesName`), length(`speciesName`) == 1)
        self$`speciesName` <- `speciesName`
      }
      if (!is.null(`taxonomyOntologyReference`)) {
        stopifnot(R6::is.R6(`taxonomyOntologyReference`))
        self$`taxonomyOntologyReference` <- `taxonomyOntologyReference`
      }
      if (!is.null(`tissueType`)) {
        stopifnot(is.character(`tissueType`), length(`tissueType`) == 1)
        self$`tissueType` <- `tissueType`
      }
      if (!is.null(`tissueTypeOntologyReference`)) {
        stopifnot(R6::is.R6(`tissueTypeOntologyReference`))
        self$`tissueTypeOntologyReference` <- `tissueTypeOntologyReference`
      }
      if (!is.null(`volume`)) {
        stopifnot(R6::is.R6(`volume`))
        self$`volume` <- `volume`
      }
      if (!is.null(`well`)) {
        stopifnot(is.character(`well`), length(`well`) == 1)
        self$`well` <- `well`
      }
    },
    toJSON = function() {
      VendorSampleObject <- list()
      if (!is.null(self$`clientSampleBarCode`)) {
        VendorSampleObject[['clientSampleBarCode']] <-
          self$`clientSampleBarCode`
      }
      if (!is.null(self$`clientSampleId`)) {
        VendorSampleObject[['clientSampleId']] <-
          self$`clientSampleId`
      }
      if (!is.null(self$`column`)) {
        VendorSampleObject[['column']] <-
          self$`column`
      }
      if (!is.null(self$`comments`)) {
        VendorSampleObject[['comments']] <-
          self$`comments`
      }
      if (!is.null(self$`concentration`)) {
        VendorSampleObject[['concentration']] <-
          self$`concentration`$toJSON()
      }
      if (!is.null(self$`organismName`)) {
        VendorSampleObject[['organismName']] <-
          self$`organismName`
      }
      if (!is.null(self$`row`)) {
        VendorSampleObject[['row']] <-
          self$`row`
      }
      if (!is.null(self$`speciesName`)) {
        VendorSampleObject[['speciesName']] <-
          self$`speciesName`
      }
      if (!is.null(self$`taxonomyOntologyReference`)) {
        VendorSampleObject[['taxonomyOntologyReference']] <-
          self$`taxonomyOntologyReference`$toJSON()
      }
      if (!is.null(self$`tissueType`)) {
        VendorSampleObject[['tissueType']] <-
          self$`tissueType`
      }
      if (!is.null(self$`tissueTypeOntologyReference`)) {
        VendorSampleObject[['tissueTypeOntologyReference']] <-
          self$`tissueTypeOntologyReference`$toJSON()
      }
      if (!is.null(self$`volume`)) {
        VendorSampleObject[['volume']] <-
          self$`volume`$toJSON()
      }
      if (!is.null(self$`well`)) {
        VendorSampleObject[['well']] <-
          self$`well`
      }

      VendorSampleObject
    },
    fromJSON = function(VendorSampleJson) {
      VendorSampleObject <- jsonlite::fromJSON(VendorSampleJson)
      if (!is.null(VendorSampleObject$`clientSampleBarCode`)) {
        self$`clientSampleBarCode` <- VendorSampleObject$`clientSampleBarCode`
      }
      if (!is.null(VendorSampleObject$`clientSampleId`)) {
        self$`clientSampleId` <- VendorSampleObject$`clientSampleId`
      }
      if (!is.null(VendorSampleObject$`column`)) {
        self$`column` <- VendorSampleObject$`column`
      }
      if (!is.null(VendorSampleObject$`comments`)) {
        self$`comments` <- VendorSampleObject$`comments`
      }
      if (!is.null(VendorSampleObject$`concentration`)) {
        concentrationObject <- Measurement$new()
        concentrationObject$fromJSON(jsonlite::toJSON(VendorSampleObject$concentration, auto_unbox = TRUE, digits = NA))
        self$`concentration` <- concentrationObject
      }
      if (!is.null(VendorSampleObject$`organismName`)) {
        self$`organismName` <- VendorSampleObject$`organismName`
      }
      if (!is.null(VendorSampleObject$`row`)) {
        self$`row` <- VendorSampleObject$`row`
      }
      if (!is.null(VendorSampleObject$`speciesName`)) {
        self$`speciesName` <- VendorSampleObject$`speciesName`
      }
      if (!is.null(VendorSampleObject$`taxonomyOntologyReference`)) {
        taxonomyOntologyReferenceObject <- OntologyReference$new()
        taxonomyOntologyReferenceObject$fromJSON(jsonlite::toJSON(VendorSampleObject$taxonomyOntologyReference, auto_unbox = TRUE, digits = NA))
        self$`taxonomyOntologyReference` <- taxonomyOntologyReferenceObject
      }
      if (!is.null(VendorSampleObject$`tissueType`)) {
        self$`tissueType` <- VendorSampleObject$`tissueType`
      }
      if (!is.null(VendorSampleObject$`tissueTypeOntologyReference`)) {
        tissueTypeOntologyReferenceObject <- OntologyReference$new()
        tissueTypeOntologyReferenceObject$fromJSON(jsonlite::toJSON(VendorSampleObject$tissueTypeOntologyReference, auto_unbox = TRUE, digits = NA))
        self$`tissueTypeOntologyReference` <- tissueTypeOntologyReferenceObject
      }
      if (!is.null(VendorSampleObject$`volume`)) {
        volumeObject <- Measurement$new()
        volumeObject$fromJSON(jsonlite::toJSON(VendorSampleObject$volume, auto_unbox = TRUE, digits = NA))
        self$`volume` <- volumeObject
      }
      if (!is.null(VendorSampleObject$`well`)) {
        self$`well` <- VendorSampleObject$`well`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`clientSampleBarCode`)) {
        sprintf(
        '"clientSampleBarCode":
          "%s"
                ',
        self$`clientSampleBarCode`
        )},
        if (!is.null(self$`clientSampleId`)) {
        sprintf(
        '"clientSampleId":
          "%s"
                ',
        self$`clientSampleId`
        )},
        if (!is.null(self$`column`)) {
        sprintf(
        '"column":
          %d
                ',
        self$`column`
        )},
        if (!is.null(self$`comments`)) {
        sprintf(
        '"comments":
          "%s"
                ',
        self$`comments`
        )},
        if (!is.null(self$`concentration`)) {
        sprintf(
        '"concentration":
        %s
        ',
        jsonlite::toJSON(self$`concentration`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`organismName`)) {
        sprintf(
        '"organismName":
          "%s"
                ',
        self$`organismName`
        )},
        if (!is.null(self$`row`)) {
        sprintf(
        '"row":
          "%s"
                ',
        self$`row`
        )},
        if (!is.null(self$`speciesName`)) {
        sprintf(
        '"speciesName":
          "%s"
                ',
        self$`speciesName`
        )},
        if (!is.null(self$`taxonomyOntologyReference`)) {
        sprintf(
        '"taxonomyOntologyReference":
        %s
        ',
        jsonlite::toJSON(self$`taxonomyOntologyReference`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`tissueType`)) {
        sprintf(
        '"tissueType":
          "%s"
                ',
        self$`tissueType`
        )},
        if (!is.null(self$`tissueTypeOntologyReference`)) {
        sprintf(
        '"tissueTypeOntologyReference":
        %s
        ',
        jsonlite::toJSON(self$`tissueTypeOntologyReference`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`volume`)) {
        sprintf(
        '"volume":
        %s
        ',
        jsonlite::toJSON(self$`volume`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`well`)) {
        sprintf(
        '"well":
          "%s"
                ',
        self$`well`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(VendorSampleJson) {
      VendorSampleObject <- jsonlite::fromJSON(VendorSampleJson)
      self$`clientSampleBarCode` <- VendorSampleObject$`clientSampleBarCode`
      self$`clientSampleId` <- VendorSampleObject$`clientSampleId`
      self$`column` <- VendorSampleObject$`column`
      self$`comments` <- VendorSampleObject$`comments`
      self$`concentration` <- Measurement$new()$fromJSON(jsonlite::toJSON(VendorSampleObject$concentration, auto_unbox = TRUE, digits = NA))
      self$`organismName` <- VendorSampleObject$`organismName`
      self$`row` <- VendorSampleObject$`row`
      self$`speciesName` <- VendorSampleObject$`speciesName`
      self$`taxonomyOntologyReference` <- OntologyReference$new()$fromJSON(jsonlite::toJSON(VendorSampleObject$taxonomyOntologyReference, auto_unbox = TRUE, digits = NA))
      self$`tissueType` <- VendorSampleObject$`tissueType`
      self$`tissueTypeOntologyReference` <- OntologyReference$new()$fromJSON(jsonlite::toJSON(VendorSampleObject$tissueTypeOntologyReference, auto_unbox = TRUE, digits = NA))
      self$`volume` <- Measurement$new()$fromJSON(jsonlite::toJSON(VendorSampleObject$volume, auto_unbox = TRUE, digits = NA))
      self$`well` <- VendorSampleObject$`well`
      self
    }
  )
)

