# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ListNewRequest
#'
#' @description ListNewRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field dateCreated  character [optional]
#'
#' @field dateModified  character [optional]
#'
#' @field externalReferences ExternalReferences list( object ) [optional]
#'
#' @field listDescription  character [optional]
#'
#' @field listName  character [optional]
#'
#' @field listOwnerName  character [optional]
#'
#' @field listOwnerPersonDbId  character [optional]
#'
#' @field listSize  integer [optional]
#'
#' @field listSource  character [optional]
#'
#' @field listType  \link{ListTypes} 
#'
#' @field data  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListNewRequest <- R6::R6Class(
  'ListNewRequest',
  public = list(
    `additionalInfo` = NULL,
    `dateCreated` = NULL,
    `dateModified` = NULL,
    `externalReferences` = NULL,
    `listDescription` = NULL,
    `listName` = NULL,
    `listOwnerName` = NULL,
    `listOwnerPersonDbId` = NULL,
    `listSize` = NULL,
    `listSource` = NULL,
    `listType` = NULL,
    `data` = NULL,
    initialize = function(
        `listType`, `additionalInfo`=NULL, `dateCreated`=NULL, `dateModified`=NULL, `externalReferences`=NULL, `listDescription`=NULL, `listName`=NULL, `listOwnerName`=NULL, `listOwnerPersonDbId`=NULL, `listSize`=NULL, `listSource`=NULL, `data`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`listType`)) {
        stopifnot(R6::is.R6(`listType`))
        self$`listType` <- `listType`
      }
      if (!is.null(`additionalInfo`)) {
        stopifnot(is.vector(`additionalInfo`), length(`additionalInfo`) != 0)
        sapply(`additionalInfo`, function(x) stopifnot(is.character(x)))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!is.null(`dateCreated`)) {
        stopifnot(is.character(`dateCreated`), length(`dateCreated`) == 1)
        self$`dateCreated` <- `dateCreated`
      }
      if (!is.null(`dateModified`)) {
        stopifnot(is.character(`dateModified`), length(`dateModified`) == 1)
        self$`dateModified` <- `dateModified`
      }
      if (!is.null(`externalReferences`)) {
        stopifnot(is.vector(`externalReferences`), length(`externalReferences`) != 0)
        sapply(`externalReferences`, function(x) stopifnot(is.character(x)))
        self$`externalReferences` <- `externalReferences`
      }
      if (!is.null(`listDescription`)) {
        stopifnot(is.character(`listDescription`), length(`listDescription`) == 1)
        self$`listDescription` <- `listDescription`
      }
      if (!is.null(`listName`)) {
        stopifnot(is.character(`listName`), length(`listName`) == 1)
        self$`listName` <- `listName`
      }
      if (!is.null(`listOwnerName`)) {
        stopifnot(is.character(`listOwnerName`), length(`listOwnerName`) == 1)
        self$`listOwnerName` <- `listOwnerName`
      }
      if (!is.null(`listOwnerPersonDbId`)) {
        stopifnot(is.character(`listOwnerPersonDbId`), length(`listOwnerPersonDbId`) == 1)
        self$`listOwnerPersonDbId` <- `listOwnerPersonDbId`
      }
      if (!is.null(`listSize`)) {
        stopifnot(is.numeric(`listSize`), length(`listSize`) == 1)
        self$`listSize` <- `listSize`
      }
      if (!is.null(`listSource`)) {
        stopifnot(is.character(`listSource`), length(`listSource`) == 1)
        self$`listSource` <- `listSource`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(is.character(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      ListNewRequestObject <- list()
      if (!is.null(self$`additionalInfo`)) {
        ListNewRequestObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`dateCreated`)) {
        ListNewRequestObject[['dateCreated']] <-
          self$`dateCreated`
      }
      if (!is.null(self$`dateModified`)) {
        ListNewRequestObject[['dateModified']] <-
          self$`dateModified`
      }
      if (!is.null(self$`externalReferences`)) {
        ListNewRequestObject[['externalReferences']] <-
          self$`externalReferences`
      }
      if (!is.null(self$`listDescription`)) {
        ListNewRequestObject[['listDescription']] <-
          self$`listDescription`
      }
      if (!is.null(self$`listName`)) {
        ListNewRequestObject[['listName']] <-
          self$`listName`
      }
      if (!is.null(self$`listOwnerName`)) {
        ListNewRequestObject[['listOwnerName']] <-
          self$`listOwnerName`
      }
      if (!is.null(self$`listOwnerPersonDbId`)) {
        ListNewRequestObject[['listOwnerPersonDbId']] <-
          self$`listOwnerPersonDbId`
      }
      if (!is.null(self$`listSize`)) {
        ListNewRequestObject[['listSize']] <-
          self$`listSize`
      }
      if (!is.null(self$`listSource`)) {
        ListNewRequestObject[['listSource']] <-
          self$`listSource`
      }
      if (!is.null(self$`listType`)) {
        ListNewRequestObject[['listType']] <-
          self$`listType`$toJSON()
      }
      if (!is.null(self$`data`)) {
        ListNewRequestObject[['data']] <-
          self$`data`
      }

      ListNewRequestObject
    },
    fromJSON = function(ListNewRequestJson) {
      ListNewRequestObject <- jsonlite::fromJSON(ListNewRequestJson)
      if (!is.null(ListNewRequestObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(ListNewRequestObject$`dateCreated`)) {
        self$`dateCreated` <- ListNewRequestObject$`dateCreated`
      }
      if (!is.null(ListNewRequestObject$`dateModified`)) {
        self$`dateModified` <- ListNewRequestObject$`dateModified`
      }
      if (!is.null(ListNewRequestObject$`externalReferences`)) {
        self$`externalReferences` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(ListNewRequestObject$`listDescription`)) {
        self$`listDescription` <- ListNewRequestObject$`listDescription`
      }
      if (!is.null(ListNewRequestObject$`listName`)) {
        self$`listName` <- ListNewRequestObject$`listName`
      }
      if (!is.null(ListNewRequestObject$`listOwnerName`)) {
        self$`listOwnerName` <- ListNewRequestObject$`listOwnerName`
      }
      if (!is.null(ListNewRequestObject$`listOwnerPersonDbId`)) {
        self$`listOwnerPersonDbId` <- ListNewRequestObject$`listOwnerPersonDbId`
      }
      if (!is.null(ListNewRequestObject$`listSize`)) {
        self$`listSize` <- ListNewRequestObject$`listSize`
      }
      if (!is.null(ListNewRequestObject$`listSource`)) {
        self$`listSource` <- ListNewRequestObject$`listSource`
      }
      if (!is.null(ListNewRequestObject$`listType`)) {
        listTypeObject <- ListTypes$new()
        listTypeObject$fromJSON(jsonlite::toJSON(ListNewRequestObject$listType, auto_unbox = TRUE, digits = NA))
        self$`listType` <- listTypeObject
      }
      if (!is.null(ListNewRequestObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`data`, "array[character]", loadNamespace("openapi"))
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
        if (!is.null(self$`dateCreated`)) {
        sprintf(
        '"dateCreated":
          "%s"
                ',
        self$`dateCreated`
        )},
        if (!is.null(self$`dateModified`)) {
        sprintf(
        '"dateModified":
          "%s"
                ',
        self$`dateModified`
        )},
        if (!is.null(self$`externalReferences`)) {
        sprintf(
        '"externalReferences":
           [%s]
        ',
        paste(unlist(lapply(self$`externalReferences`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`listDescription`)) {
        sprintf(
        '"listDescription":
          "%s"
                ',
        self$`listDescription`
        )},
        if (!is.null(self$`listName`)) {
        sprintf(
        '"listName":
          "%s"
                ',
        self$`listName`
        )},
        if (!is.null(self$`listOwnerName`)) {
        sprintf(
        '"listOwnerName":
          "%s"
                ',
        self$`listOwnerName`
        )},
        if (!is.null(self$`listOwnerPersonDbId`)) {
        sprintf(
        '"listOwnerPersonDbId":
          "%s"
                ',
        self$`listOwnerPersonDbId`
        )},
        if (!is.null(self$`listSize`)) {
        sprintf(
        '"listSize":
          %d
                ',
        self$`listSize`
        )},
        if (!is.null(self$`listSource`)) {
        sprintf(
        '"listSource":
          "%s"
                ',
        self$`listSource`
        )},
        if (!is.null(self$`listType`)) {
        sprintf(
        '"listType":
        %s
        ',
        jsonlite::toJSON(self$`listType`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`data`)) {
        sprintf(
        '"data":
           [%s]
        ',
        paste(unlist(lapply(self$`data`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ListNewRequestJson) {
      ListNewRequestObject <- jsonlite::fromJSON(ListNewRequestJson)
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`dateCreated` <- ListNewRequestObject$`dateCreated`
      self$`dateModified` <- ListNewRequestObject$`dateModified`
      self$`externalReferences` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      self$`listDescription` <- ListNewRequestObject$`listDescription`
      self$`listName` <- ListNewRequestObject$`listName`
      self$`listOwnerName` <- ListNewRequestObject$`listOwnerName`
      self$`listOwnerPersonDbId` <- ListNewRequestObject$`listOwnerPersonDbId`
      self$`listSize` <- ListNewRequestObject$`listSize`
      self$`listSource` <- ListNewRequestObject$`listSource`
      self$`listType` <- ListTypes$new()$fromJSON(jsonlite::toJSON(ListNewRequestObject$listType, auto_unbox = TRUE, digits = NA))
      self$`data` <- ApiClient$new()$deserializeObj(ListNewRequestObject$`data`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

