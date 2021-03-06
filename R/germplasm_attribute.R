# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title GermplasmAttribute
#'
#' @description GermplasmAttribute Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field additionalInfo  named list( character ) [optional]
#'
#' @field commonCropName  character [optional]
#'
#' @field contextOfUse  list( character ) [optional]
#'
#' @field defaultValue  character [optional]
#'
#' @field documentationURL  character [optional]
#'
#' @field externalReferences ExternalReferences list( object ) [optional]
#'
#' @field growthStage  character [optional]
#'
#' @field institution  character [optional]
#'
#' @field language  character [optional]
#'
#' @field method  \link{MethodBaseClass} 
#'
#' @field ontologyReference  \link{OntologyReference} [optional]
#'
#' @field scale  \link{ScaleBaseClass} 
#'
#' @field scientist  character [optional]
#'
#' @field status  character [optional]
#'
#' @field submissionTimestamp  character [optional]
#'
#' @field synonyms  list( character ) [optional]
#'
#' @field trait  \link{TraitBaseClass} 
#'
#' @field attributeCategory  character [optional]
#'
#' @field attributeDescription  character [optional]
#'
#' @field attributeName  character 
#'
#' @field attributeDbId  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GermplasmAttribute <- R6::R6Class(
  'GermplasmAttribute',
  public = list(
    `additionalInfo` = NULL,
    `commonCropName` = NULL,
    `contextOfUse` = NULL,
    `defaultValue` = NULL,
    `documentationURL` = NULL,
    `externalReferences` = NULL,
    `growthStage` = NULL,
    `institution` = NULL,
    `language` = NULL,
    `method` = NULL,
    `ontologyReference` = NULL,
    `scale` = NULL,
    `scientist` = NULL,
    `status` = NULL,
    `submissionTimestamp` = NULL,
    `synonyms` = NULL,
    `trait` = NULL,
    `attributeCategory` = NULL,
    `attributeDescription` = NULL,
    `attributeName` = NULL,
    `attributeDbId` = NULL,
    initialize = function(
        `method`, `scale`, `trait`, `attributeName`, `attributeDbId`, `additionalInfo`=NULL, `commonCropName`=NULL, `contextOfUse`=NULL, `defaultValue`=NULL, `documentationURL`=NULL, `externalReferences`=NULL, `growthStage`=NULL, `institution`=NULL, `language`=NULL, `ontologyReference`=NULL, `scientist`=NULL, `status`=NULL, `submissionTimestamp`=NULL, `synonyms`=NULL, `attributeCategory`=NULL, `attributeDescription`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`method`)) {
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!missing(`scale`)) {
        stopifnot(R6::is.R6(`scale`))
        self$`scale` <- `scale`
      }
      if (!missing(`trait`)) {
        stopifnot(R6::is.R6(`trait`))
        self$`trait` <- `trait`
      }
      if (!missing(`attributeName`)) {
        stopifnot(is.character(`attributeName`), length(`attributeName`) == 1)
        self$`attributeName` <- `attributeName`
      }
      if (!missing(`attributeDbId`)) {
        stopifnot(is.character(`attributeDbId`), length(`attributeDbId`) == 1)
        self$`attributeDbId` <- `attributeDbId`
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
      if (!is.null(`contextOfUse`)) {
        stopifnot(is.vector(`contextOfUse`), length(`contextOfUse`) != 0)
        sapply(`contextOfUse`, function(x) stopifnot(is.character(x)))
        self$`contextOfUse` <- `contextOfUse`
      }
      if (!is.null(`defaultValue`)) {
        stopifnot(is.character(`defaultValue`), length(`defaultValue`) == 1)
        self$`defaultValue` <- `defaultValue`
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
      if (!is.null(`growthStage`)) {
        stopifnot(is.character(`growthStage`), length(`growthStage`) == 1)
        self$`growthStage` <- `growthStage`
      }
      if (!is.null(`institution`)) {
        stopifnot(is.character(`institution`), length(`institution`) == 1)
        self$`institution` <- `institution`
      }
      if (!is.null(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self$`language` <- `language`
      }
      if (!is.null(`ontologyReference`)) {
        stopifnot(R6::is.R6(`ontologyReference`))
        self$`ontologyReference` <- `ontologyReference`
      }
      if (!is.null(`scientist`)) {
        stopifnot(is.character(`scientist`), length(`scientist`) == 1)
        self$`scientist` <- `scientist`
      }
      if (!is.null(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!is.null(`submissionTimestamp`)) {
        stopifnot(is.character(`submissionTimestamp`), length(`submissionTimestamp`) == 1)
        self$`submissionTimestamp` <- `submissionTimestamp`
      }
      if (!is.null(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!is.null(`attributeCategory`)) {
        stopifnot(is.character(`attributeCategory`), length(`attributeCategory`) == 1)
        self$`attributeCategory` <- `attributeCategory`
      }
      if (!is.null(`attributeDescription`)) {
        stopifnot(is.character(`attributeDescription`), length(`attributeDescription`) == 1)
        self$`attributeDescription` <- `attributeDescription`
      }
    },
    toJSON = function() {
      GermplasmAttributeObject <- list()
      if (!is.null(self$`additionalInfo`)) {
        GermplasmAttributeObject[['additionalInfo']] <-
          self$`additionalInfo`
      }
      if (!is.null(self$`commonCropName`)) {
        GermplasmAttributeObject[['commonCropName']] <-
          self$`commonCropName`
      }
      if (!is.null(self$`contextOfUse`)) {
        GermplasmAttributeObject[['contextOfUse']] <-
          self$`contextOfUse`
      }
      if (!is.null(self$`defaultValue`)) {
        GermplasmAttributeObject[['defaultValue']] <-
          self$`defaultValue`
      }
      if (!is.null(self$`documentationURL`)) {
        GermplasmAttributeObject[['documentationURL']] <-
          self$`documentationURL`
      }
      if (!is.null(self$`externalReferences`)) {
        GermplasmAttributeObject[['externalReferences']] <-
          self$`externalReferences`
      }
      if (!is.null(self$`growthStage`)) {
        GermplasmAttributeObject[['growthStage']] <-
          self$`growthStage`
      }
      if (!is.null(self$`institution`)) {
        GermplasmAttributeObject[['institution']] <-
          self$`institution`
      }
      if (!is.null(self$`language`)) {
        GermplasmAttributeObject[['language']] <-
          self$`language`
      }
      if (!is.null(self$`method`)) {
        GermplasmAttributeObject[['method']] <-
          self$`method`$toJSON()
      }
      if (!is.null(self$`ontologyReference`)) {
        GermplasmAttributeObject[['ontologyReference']] <-
          self$`ontologyReference`$toJSON()
      }
      if (!is.null(self$`scale`)) {
        GermplasmAttributeObject[['scale']] <-
          self$`scale`$toJSON()
      }
      if (!is.null(self$`scientist`)) {
        GermplasmAttributeObject[['scientist']] <-
          self$`scientist`
      }
      if (!is.null(self$`status`)) {
        GermplasmAttributeObject[['status']] <-
          self$`status`
      }
      if (!is.null(self$`submissionTimestamp`)) {
        GermplasmAttributeObject[['submissionTimestamp']] <-
          self$`submissionTimestamp`
      }
      if (!is.null(self$`synonyms`)) {
        GermplasmAttributeObject[['synonyms']] <-
          self$`synonyms`
      }
      if (!is.null(self$`trait`)) {
        GermplasmAttributeObject[['trait']] <-
          self$`trait`$toJSON()
      }
      if (!is.null(self$`attributeCategory`)) {
        GermplasmAttributeObject[['attributeCategory']] <-
          self$`attributeCategory`
      }
      if (!is.null(self$`attributeDescription`)) {
        GermplasmAttributeObject[['attributeDescription']] <-
          self$`attributeDescription`
      }
      if (!is.null(self$`attributeName`)) {
        GermplasmAttributeObject[['attributeName']] <-
          self$`attributeName`
      }
      if (!is.null(self$`attributeDbId`)) {
        GermplasmAttributeObject[['attributeDbId']] <-
          self$`attributeDbId`
      }

      GermplasmAttributeObject
    },
    fromJSON = function(GermplasmAttributeJson) {
      GermplasmAttributeObject <- jsonlite::fromJSON(GermplasmAttributeJson)
      if (!is.null(GermplasmAttributeObject$`additionalInfo`)) {
        self$`additionalInfo` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmAttributeObject$`commonCropName`)) {
        self$`commonCropName` <- GermplasmAttributeObject$`commonCropName`
      }
      if (!is.null(GermplasmAttributeObject$`contextOfUse`)) {
        self$`contextOfUse` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`contextOfUse`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmAttributeObject$`defaultValue`)) {
        self$`defaultValue` <- GermplasmAttributeObject$`defaultValue`
      }
      if (!is.null(GermplasmAttributeObject$`documentationURL`)) {
        self$`documentationURL` <- GermplasmAttributeObject$`documentationURL`
      }
      if (!is.null(GermplasmAttributeObject$`externalReferences`)) {
        self$`externalReferences` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmAttributeObject$`growthStage`)) {
        self$`growthStage` <- GermplasmAttributeObject$`growthStage`
      }
      if (!is.null(GermplasmAttributeObject$`institution`)) {
        self$`institution` <- GermplasmAttributeObject$`institution`
      }
      if (!is.null(GermplasmAttributeObject$`language`)) {
        self$`language` <- GermplasmAttributeObject$`language`
      }
      if (!is.null(GermplasmAttributeObject$`method`)) {
        methodObject <- MethodBaseClass$new()
        methodObject$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$method, auto_unbox = TRUE, digits = NA))
        self$`method` <- methodObject
      }
      if (!is.null(GermplasmAttributeObject$`ontologyReference`)) {
        ontologyReferenceObject <- OntologyReference$new()
        ontologyReferenceObject$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$ontologyReference, auto_unbox = TRUE, digits = NA))
        self$`ontologyReference` <- ontologyReferenceObject
      }
      if (!is.null(GermplasmAttributeObject$`scale`)) {
        scaleObject <- ScaleBaseClass$new()
        scaleObject$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$scale, auto_unbox = TRUE, digits = NA))
        self$`scale` <- scaleObject
      }
      if (!is.null(GermplasmAttributeObject$`scientist`)) {
        self$`scientist` <- GermplasmAttributeObject$`scientist`
      }
      if (!is.null(GermplasmAttributeObject$`status`)) {
        self$`status` <- GermplasmAttributeObject$`status`
      }
      if (!is.null(GermplasmAttributeObject$`submissionTimestamp`)) {
        self$`submissionTimestamp` <- GermplasmAttributeObject$`submissionTimestamp`
      }
      if (!is.null(GermplasmAttributeObject$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`synonyms`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmAttributeObject$`trait`)) {
        traitObject <- TraitBaseClass$new()
        traitObject$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$trait, auto_unbox = TRUE, digits = NA))
        self$`trait` <- traitObject
      }
      if (!is.null(GermplasmAttributeObject$`attributeCategory`)) {
        self$`attributeCategory` <- GermplasmAttributeObject$`attributeCategory`
      }
      if (!is.null(GermplasmAttributeObject$`attributeDescription`)) {
        self$`attributeDescription` <- GermplasmAttributeObject$`attributeDescription`
      }
      if (!is.null(GermplasmAttributeObject$`attributeName`)) {
        self$`attributeName` <- GermplasmAttributeObject$`attributeName`
      }
      if (!is.null(GermplasmAttributeObject$`attributeDbId`)) {
        self$`attributeDbId` <- GermplasmAttributeObject$`attributeDbId`
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
        if (!is.null(self$`contextOfUse`)) {
        sprintf(
        '"contextOfUse":
           [%s]
        ',
        paste(unlist(lapply(self$`contextOfUse`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`defaultValue`)) {
        sprintf(
        '"defaultValue":
          "%s"
                ',
        self$`defaultValue`
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
        if (!is.null(self$`growthStage`)) {
        sprintf(
        '"growthStage":
          "%s"
                ',
        self$`growthStage`
        )},
        if (!is.null(self$`institution`)) {
        sprintf(
        '"institution":
          "%s"
                ',
        self$`institution`
        )},
        if (!is.null(self$`language`)) {
        sprintf(
        '"language":
          "%s"
                ',
        self$`language`
        )},
        if (!is.null(self$`method`)) {
        sprintf(
        '"method":
        %s
        ',
        jsonlite::toJSON(self$`method`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`ontologyReference`)) {
        sprintf(
        '"ontologyReference":
        %s
        ',
        jsonlite::toJSON(self$`ontologyReference`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`scale`)) {
        sprintf(
        '"scale":
        %s
        ',
        jsonlite::toJSON(self$`scale`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`scientist`)) {
        sprintf(
        '"scientist":
          "%s"
                ',
        self$`scientist`
        )},
        if (!is.null(self$`status`)) {
        sprintf(
        '"status":
          "%s"
                ',
        self$`status`
        )},
        if (!is.null(self$`submissionTimestamp`)) {
        sprintf(
        '"submissionTimestamp":
          "%s"
                ',
        self$`submissionTimestamp`
        )},
        if (!is.null(self$`synonyms`)) {
        sprintf(
        '"synonyms":
           [%s]
        ',
        paste(unlist(lapply(self$`synonyms`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`trait`)) {
        sprintf(
        '"trait":
        %s
        ',
        jsonlite::toJSON(self$`trait`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`attributeCategory`)) {
        sprintf(
        '"attributeCategory":
          "%s"
                ',
        self$`attributeCategory`
        )},
        if (!is.null(self$`attributeDescription`)) {
        sprintf(
        '"attributeDescription":
          "%s"
                ',
        self$`attributeDescription`
        )},
        if (!is.null(self$`attributeName`)) {
        sprintf(
        '"attributeName":
          "%s"
                ',
        self$`attributeName`
        )},
        if (!is.null(self$`attributeDbId`)) {
        sprintf(
        '"attributeDbId":
          "%s"
                ',
        self$`attributeDbId`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(GermplasmAttributeJson) {
      GermplasmAttributeObject <- jsonlite::fromJSON(GermplasmAttributeJson)
      self$`additionalInfo` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`additionalInfo`, "map(character)", loadNamespace("openapi"))
      self$`commonCropName` <- GermplasmAttributeObject$`commonCropName`
      self$`contextOfUse` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`contextOfUse`, "array[character]", loadNamespace("openapi"))
      self$`defaultValue` <- GermplasmAttributeObject$`defaultValue`
      self$`documentationURL` <- GermplasmAttributeObject$`documentationURL`
      self$`externalReferences` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`externalReferences`, "array[object]", loadNamespace("openapi"))
      self$`growthStage` <- GermplasmAttributeObject$`growthStage`
      self$`institution` <- GermplasmAttributeObject$`institution`
      self$`language` <- GermplasmAttributeObject$`language`
      self$`method` <- MethodBaseClass$new()$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$method, auto_unbox = TRUE, digits = NA))
      self$`ontologyReference` <- OntologyReference$new()$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$ontologyReference, auto_unbox = TRUE, digits = NA))
      self$`scale` <- ScaleBaseClass$new()$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$scale, auto_unbox = TRUE, digits = NA))
      self$`scientist` <- GermplasmAttributeObject$`scientist`
      self$`status` <- GermplasmAttributeObject$`status`
      self$`submissionTimestamp` <- GermplasmAttributeObject$`submissionTimestamp`
      self$`synonyms` <- ApiClient$new()$deserializeObj(GermplasmAttributeObject$`synonyms`, "array[character]", loadNamespace("openapi"))
      self$`trait` <- TraitBaseClass$new()$fromJSON(jsonlite::toJSON(GermplasmAttributeObject$trait, auto_unbox = TRUE, digits = NA))
      self$`attributeCategory` <- GermplasmAttributeObject$`attributeCategory`
      self$`attributeDescription` <- GermplasmAttributeObject$`attributeDescription`
      self$`attributeName` <- GermplasmAttributeObject$`attributeName`
      self$`attributeDbId` <- GermplasmAttributeObject$`attributeDbId`
      self
    }
  )
)

