# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PersonSearchRequestAllOf
#'
#' @description PersonSearchRequestAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field emailAddresses  list( character ) [optional]
#'
#' @field firstNames  list( character ) [optional]
#'
#' @field lastNames  list( character ) [optional]
#'
#' @field mailingAddresses  list( character ) [optional]
#'
#' @field middleNames  list( character ) [optional]
#'
#' @field personDbIds  list( character ) [optional]
#'
#' @field phoneNumbers  list( character ) [optional]
#'
#' @field userIDs  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PersonSearchRequestAllOf <- R6::R6Class(
  'PersonSearchRequestAllOf',
  public = list(
    `emailAddresses` = NULL,
    `firstNames` = NULL,
    `lastNames` = NULL,
    `mailingAddresses` = NULL,
    `middleNames` = NULL,
    `personDbIds` = NULL,
    `phoneNumbers` = NULL,
    `userIDs` = NULL,
    initialize = function(
        `emailAddresses`=NULL, `firstNames`=NULL, `lastNames`=NULL, `mailingAddresses`=NULL, `middleNames`=NULL, `personDbIds`=NULL, `phoneNumbers`=NULL, `userIDs`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`emailAddresses`)) {
        stopifnot(is.vector(`emailAddresses`), length(`emailAddresses`) != 0)
        sapply(`emailAddresses`, function(x) stopifnot(is.character(x)))
        self$`emailAddresses` <- `emailAddresses`
      }
      if (!is.null(`firstNames`)) {
        stopifnot(is.vector(`firstNames`), length(`firstNames`) != 0)
        sapply(`firstNames`, function(x) stopifnot(is.character(x)))
        self$`firstNames` <- `firstNames`
      }
      if (!is.null(`lastNames`)) {
        stopifnot(is.vector(`lastNames`), length(`lastNames`) != 0)
        sapply(`lastNames`, function(x) stopifnot(is.character(x)))
        self$`lastNames` <- `lastNames`
      }
      if (!is.null(`mailingAddresses`)) {
        stopifnot(is.vector(`mailingAddresses`), length(`mailingAddresses`) != 0)
        sapply(`mailingAddresses`, function(x) stopifnot(is.character(x)))
        self$`mailingAddresses` <- `mailingAddresses`
      }
      if (!is.null(`middleNames`)) {
        stopifnot(is.vector(`middleNames`), length(`middleNames`) != 0)
        sapply(`middleNames`, function(x) stopifnot(is.character(x)))
        self$`middleNames` <- `middleNames`
      }
      if (!is.null(`personDbIds`)) {
        stopifnot(is.vector(`personDbIds`), length(`personDbIds`) != 0)
        sapply(`personDbIds`, function(x) stopifnot(is.character(x)))
        self$`personDbIds` <- `personDbIds`
      }
      if (!is.null(`phoneNumbers`)) {
        stopifnot(is.vector(`phoneNumbers`), length(`phoneNumbers`) != 0)
        sapply(`phoneNumbers`, function(x) stopifnot(is.character(x)))
        self$`phoneNumbers` <- `phoneNumbers`
      }
      if (!is.null(`userIDs`)) {
        stopifnot(is.vector(`userIDs`), length(`userIDs`) != 0)
        sapply(`userIDs`, function(x) stopifnot(is.character(x)))
        self$`userIDs` <- `userIDs`
      }
    },
    toJSON = function() {
      PersonSearchRequestAllOfObject <- list()
      if (!is.null(self$`emailAddresses`)) {
        PersonSearchRequestAllOfObject[['emailAddresses']] <-
          self$`emailAddresses`
      }
      if (!is.null(self$`firstNames`)) {
        PersonSearchRequestAllOfObject[['firstNames']] <-
          self$`firstNames`
      }
      if (!is.null(self$`lastNames`)) {
        PersonSearchRequestAllOfObject[['lastNames']] <-
          self$`lastNames`
      }
      if (!is.null(self$`mailingAddresses`)) {
        PersonSearchRequestAllOfObject[['mailingAddresses']] <-
          self$`mailingAddresses`
      }
      if (!is.null(self$`middleNames`)) {
        PersonSearchRequestAllOfObject[['middleNames']] <-
          self$`middleNames`
      }
      if (!is.null(self$`personDbIds`)) {
        PersonSearchRequestAllOfObject[['personDbIds']] <-
          self$`personDbIds`
      }
      if (!is.null(self$`phoneNumbers`)) {
        PersonSearchRequestAllOfObject[['phoneNumbers']] <-
          self$`phoneNumbers`
      }
      if (!is.null(self$`userIDs`)) {
        PersonSearchRequestAllOfObject[['userIDs']] <-
          self$`userIDs`
      }

      PersonSearchRequestAllOfObject
    },
    fromJSON = function(PersonSearchRequestAllOfJson) {
      PersonSearchRequestAllOfObject <- jsonlite::fromJSON(PersonSearchRequestAllOfJson)
      if (!is.null(PersonSearchRequestAllOfObject$`emailAddresses`)) {
        self$`emailAddresses` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`emailAddresses`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`firstNames`)) {
        self$`firstNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`firstNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`lastNames`)) {
        self$`lastNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`lastNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`mailingAddresses`)) {
        self$`mailingAddresses` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`mailingAddresses`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`middleNames`)) {
        self$`middleNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`middleNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`personDbIds`)) {
        self$`personDbIds` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`personDbIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`phoneNumbers`)) {
        self$`phoneNumbers` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`phoneNumbers`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(PersonSearchRequestAllOfObject$`userIDs`)) {
        self$`userIDs` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`userIDs`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`emailAddresses`)) {
        sprintf(
        '"emailAddresses":
           [%s]
        ',
        paste(unlist(lapply(self$`emailAddresses`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`firstNames`)) {
        sprintf(
        '"firstNames":
           [%s]
        ',
        paste(unlist(lapply(self$`firstNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`lastNames`)) {
        sprintf(
        '"lastNames":
           [%s]
        ',
        paste(unlist(lapply(self$`lastNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`mailingAddresses`)) {
        sprintf(
        '"mailingAddresses":
           [%s]
        ',
        paste(unlist(lapply(self$`mailingAddresses`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`middleNames`)) {
        sprintf(
        '"middleNames":
           [%s]
        ',
        paste(unlist(lapply(self$`middleNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`personDbIds`)) {
        sprintf(
        '"personDbIds":
           [%s]
        ',
        paste(unlist(lapply(self$`personDbIds`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`phoneNumbers`)) {
        sprintf(
        '"phoneNumbers":
           [%s]
        ',
        paste(unlist(lapply(self$`phoneNumbers`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`userIDs`)) {
        sprintf(
        '"userIDs":
           [%s]
        ',
        paste(unlist(lapply(self$`userIDs`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(PersonSearchRequestAllOfJson) {
      PersonSearchRequestAllOfObject <- jsonlite::fromJSON(PersonSearchRequestAllOfJson)
      self$`emailAddresses` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`emailAddresses`, "array[character]", loadNamespace("openapi"))
      self$`firstNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`firstNames`, "array[character]", loadNamespace("openapi"))
      self$`lastNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`lastNames`, "array[character]", loadNamespace("openapi"))
      self$`mailingAddresses` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`mailingAddresses`, "array[character]", loadNamespace("openapi"))
      self$`middleNames` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`middleNames`, "array[character]", loadNamespace("openapi"))
      self$`personDbIds` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`personDbIds`, "array[character]", loadNamespace("openapi"))
      self$`phoneNumbers` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`phoneNumbers`, "array[character]", loadNamespace("openapi"))
      self$`userIDs` <- ApiClient$new()$deserializeObj(PersonSearchRequestAllOfObject$`userIDs`, "array[character]", loadNamespace("openapi"))
      self
    }
  )
)

