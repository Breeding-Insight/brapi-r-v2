# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title VendorSpecificationService
#'
#' @description VendorSpecificationService Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field serviceDescription  character [optional]
#'
#' @field serviceId  character 
#'
#' @field serviceName  character 
#'
#' @field servicePlatformMarkerType  character [optional]
#'
#' @field servicePlatformName  character [optional]
#'
#' @field specificRequirements  list( \link{VendorSpecificationServiceSpecificRequirements} ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VendorSpecificationService <- R6::R6Class(
  'VendorSpecificationService',
  public = list(
    `serviceDescription` = NULL,
    `serviceId` = NULL,
    `serviceName` = NULL,
    `servicePlatformMarkerType` = NULL,
    `servicePlatformName` = NULL,
    `specificRequirements` = NULL,
    initialize = function(
        `serviceId`, `serviceName`, `serviceDescription`=NULL, `servicePlatformMarkerType`=NULL, `servicePlatformName`=NULL, `specificRequirements`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`serviceId`)) {
        stopifnot(is.character(`serviceId`), length(`serviceId`) == 1)
        self$`serviceId` <- `serviceId`
      }
      if (!missing(`serviceName`)) {
        stopifnot(is.character(`serviceName`), length(`serviceName`) == 1)
        self$`serviceName` <- `serviceName`
      }
      if (!is.null(`serviceDescription`)) {
        stopifnot(is.character(`serviceDescription`), length(`serviceDescription`) == 1)
        self$`serviceDescription` <- `serviceDescription`
      }
      if (!is.null(`servicePlatformMarkerType`)) {
        stopifnot(is.character(`servicePlatformMarkerType`), length(`servicePlatformMarkerType`) == 1)
        self$`servicePlatformMarkerType` <- `servicePlatformMarkerType`
      }
      if (!is.null(`servicePlatformName`)) {
        stopifnot(is.character(`servicePlatformName`), length(`servicePlatformName`) == 1)
        self$`servicePlatformName` <- `servicePlatformName`
      }
      if (!is.null(`specificRequirements`)) {
        stopifnot(is.vector(`specificRequirements`), length(`specificRequirements`) != 0)
        sapply(`specificRequirements`, function(x) stopifnot(R6::is.R6(x)))
        self$`specificRequirements` <- `specificRequirements`
      }
    },
    toJSON = function() {
      VendorSpecificationServiceObject <- list()
      if (!is.null(self$`serviceDescription`)) {
        VendorSpecificationServiceObject[['serviceDescription']] <-
          self$`serviceDescription`
      }
      if (!is.null(self$`serviceId`)) {
        VendorSpecificationServiceObject[['serviceId']] <-
          self$`serviceId`
      }
      if (!is.null(self$`serviceName`)) {
        VendorSpecificationServiceObject[['serviceName']] <-
          self$`serviceName`
      }
      if (!is.null(self$`servicePlatformMarkerType`)) {
        VendorSpecificationServiceObject[['servicePlatformMarkerType']] <-
          self$`servicePlatformMarkerType`
      }
      if (!is.null(self$`servicePlatformName`)) {
        VendorSpecificationServiceObject[['servicePlatformName']] <-
          self$`servicePlatformName`
      }
      if (!is.null(self$`specificRequirements`)) {
        VendorSpecificationServiceObject[['specificRequirements']] <-
          lapply(self$`specificRequirements`, function(x) x$toJSON())
      }

      VendorSpecificationServiceObject
    },
    fromJSON = function(VendorSpecificationServiceJson) {
      VendorSpecificationServiceObject <- jsonlite::fromJSON(VendorSpecificationServiceJson)
      if (!is.null(VendorSpecificationServiceObject$`serviceDescription`)) {
        self$`serviceDescription` <- VendorSpecificationServiceObject$`serviceDescription`
      }
      if (!is.null(VendorSpecificationServiceObject$`serviceId`)) {
        self$`serviceId` <- VendorSpecificationServiceObject$`serviceId`
      }
      if (!is.null(VendorSpecificationServiceObject$`serviceName`)) {
        self$`serviceName` <- VendorSpecificationServiceObject$`serviceName`
      }
      if (!is.null(VendorSpecificationServiceObject$`servicePlatformMarkerType`)) {
        self$`servicePlatformMarkerType` <- VendorSpecificationServiceObject$`servicePlatformMarkerType`
      }
      if (!is.null(VendorSpecificationServiceObject$`servicePlatformName`)) {
        self$`servicePlatformName` <- VendorSpecificationServiceObject$`servicePlatformName`
      }
      if (!is.null(VendorSpecificationServiceObject$`specificRequirements`)) {
        self$`specificRequirements` <- ApiClient$new()$deserializeObj(VendorSpecificationServiceObject$`specificRequirements`, "array[VendorSpecificationServiceSpecificRequirements]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`serviceDescription`)) {
        sprintf(
        '"serviceDescription":
          "%s"
                ',
        self$`serviceDescription`
        )},
        if (!is.null(self$`serviceId`)) {
        sprintf(
        '"serviceId":
          "%s"
                ',
        self$`serviceId`
        )},
        if (!is.null(self$`serviceName`)) {
        sprintf(
        '"serviceName":
          "%s"
                ',
        self$`serviceName`
        )},
        if (!is.null(self$`servicePlatformMarkerType`)) {
        sprintf(
        '"servicePlatformMarkerType":
          "%s"
                ',
        self$`servicePlatformMarkerType`
        )},
        if (!is.null(self$`servicePlatformName`)) {
        sprintf(
        '"servicePlatformName":
          "%s"
                ',
        self$`servicePlatformName`
        )},
        if (!is.null(self$`specificRequirements`)) {
        sprintf(
        '"specificRequirements":
        [%s]
',
        paste(sapply(self$`specificRequirements`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(VendorSpecificationServiceJson) {
      VendorSpecificationServiceObject <- jsonlite::fromJSON(VendorSpecificationServiceJson)
      self$`serviceDescription` <- VendorSpecificationServiceObject$`serviceDescription`
      self$`serviceId` <- VendorSpecificationServiceObject$`serviceId`
      self$`serviceName` <- VendorSpecificationServiceObject$`serviceName`
      self$`servicePlatformMarkerType` <- VendorSpecificationServiceObject$`servicePlatformMarkerType`
      self$`servicePlatformName` <- VendorSpecificationServiceObject$`servicePlatformName`
      self$`specificRequirements` <- ApiClient$new()$deserializeObj(VendorSpecificationServiceObject$`specificRequirements`, "array[VendorSpecificationServiceSpecificRequirements]", loadNamespace("openapi"))
      self
    }
  )
)

