# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title TrialNewRequestDatasetAuthorships
#'
#' @description TrialNewRequestDatasetAuthorships Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field datasetPUI  character [optional]
#'
#' @field license  character [optional]
#'
#' @field publicReleaseDate  character [optional]
#'
#' @field submissionDate  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrialNewRequestDatasetAuthorships <- R6::R6Class(
  'TrialNewRequestDatasetAuthorships',
  public = list(
    `datasetPUI` = NULL,
    `license` = NULL,
    `publicReleaseDate` = NULL,
    `submissionDate` = NULL,
    initialize = function(
        `datasetPUI`=NULL, `license`=NULL, `publicReleaseDate`=NULL, `submissionDate`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`datasetPUI`)) {
        stopifnot(is.character(`datasetPUI`), length(`datasetPUI`) == 1)
        self$`datasetPUI` <- `datasetPUI`
      }
      if (!is.null(`license`)) {
        stopifnot(is.character(`license`), length(`license`) == 1)
        self$`license` <- `license`
      }
      if (!is.null(`publicReleaseDate`)) {
        stopifnot(is.character(`publicReleaseDate`), length(`publicReleaseDate`) == 1)
        self$`publicReleaseDate` <- `publicReleaseDate`
      }
      if (!is.null(`submissionDate`)) {
        stopifnot(is.character(`submissionDate`), length(`submissionDate`) == 1)
        self$`submissionDate` <- `submissionDate`
      }
    },
    toJSON = function() {
      TrialNewRequestDatasetAuthorshipsObject <- list()
      if (!is.null(self$`datasetPUI`)) {
        TrialNewRequestDatasetAuthorshipsObject[['datasetPUI']] <-
          self$`datasetPUI`
      }
      if (!is.null(self$`license`)) {
        TrialNewRequestDatasetAuthorshipsObject[['license']] <-
          self$`license`
      }
      if (!is.null(self$`publicReleaseDate`)) {
        TrialNewRequestDatasetAuthorshipsObject[['publicReleaseDate']] <-
          self$`publicReleaseDate`
      }
      if (!is.null(self$`submissionDate`)) {
        TrialNewRequestDatasetAuthorshipsObject[['submissionDate']] <-
          self$`submissionDate`
      }

      TrialNewRequestDatasetAuthorshipsObject
    },
    fromJSON = function(TrialNewRequestDatasetAuthorshipsJson) {
      TrialNewRequestDatasetAuthorshipsObject <- jsonlite::fromJSON(TrialNewRequestDatasetAuthorshipsJson)
      if (!is.null(TrialNewRequestDatasetAuthorshipsObject$`datasetPUI`)) {
        self$`datasetPUI` <- TrialNewRequestDatasetAuthorshipsObject$`datasetPUI`
      }
      if (!is.null(TrialNewRequestDatasetAuthorshipsObject$`license`)) {
        self$`license` <- TrialNewRequestDatasetAuthorshipsObject$`license`
      }
      if (!is.null(TrialNewRequestDatasetAuthorshipsObject$`publicReleaseDate`)) {
        self$`publicReleaseDate` <- TrialNewRequestDatasetAuthorshipsObject$`publicReleaseDate`
      }
      if (!is.null(TrialNewRequestDatasetAuthorshipsObject$`submissionDate`)) {
        self$`submissionDate` <- TrialNewRequestDatasetAuthorshipsObject$`submissionDate`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`datasetPUI`)) {
        sprintf(
        '"datasetPUI":
          "%s"
                ',
        self$`datasetPUI`
        )},
        if (!is.null(self$`license`)) {
        sprintf(
        '"license":
          "%s"
                ',
        self$`license`
        )},
        if (!is.null(self$`publicReleaseDate`)) {
        sprintf(
        '"publicReleaseDate":
          "%s"
                ',
        self$`publicReleaseDate`
        )},
        if (!is.null(self$`submissionDate`)) {
        sprintf(
        '"submissionDate":
          "%s"
                ',
        self$`submissionDate`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(TrialNewRequestDatasetAuthorshipsJson) {
      TrialNewRequestDatasetAuthorshipsObject <- jsonlite::fromJSON(TrialNewRequestDatasetAuthorshipsJson)
      self$`datasetPUI` <- TrialNewRequestDatasetAuthorshipsObject$`datasetPUI`
      self$`license` <- TrialNewRequestDatasetAuthorshipsObject$`license`
      self$`publicReleaseDate` <- TrialNewRequestDatasetAuthorshipsObject$`publicReleaseDate`
      self$`submissionDate` <- TrialNewRequestDatasetAuthorshipsObject$`submissionDate`
      self
    }
  )
)

