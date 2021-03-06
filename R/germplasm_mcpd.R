# BrAPI-Core
#
# The Breeding API (BrAPI) is a Standardized REST ful Web Service API Specification for communicating Plant Breeding Data. BrAPI allows for easy data sharing between databases and tools involved in plant breeding. <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">General Reference Documentation</h2> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/URL_Structure.md\">URL Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Response_Structure.md\">Response Structure</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Date_Time_Encoding.md\">Date/Time Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Location_Encoding.md\">Location Encoding</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Error_Handling.md\">Error Handling</a></div> <div class=\"gen-info-link\"><a href=\"https://github.com/plantbreeding/API/blob/master/Specification/GeneralInfo/Search_Services.md\">Search Services</a></div> </div>  <div class=\"current-brapi-section brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Core</h2> <div class=\"brapi-section-description\">The BrAPI Core module contains high level entities used for organization and management. This includes Programs, Trials, Studies, Locations, People, and Lists</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Core\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Core\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapicore.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Phenotyping</h2> <div class=\"brapi-section-description\">The BrAPI Phenotyping module contains entities related to phenotypic observations. This includes Observation Units, Observations, Observation Variables, Traits, Scales, Methods, and Images</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Phenotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Phenotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapiphenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Genotyping</h2> <div class=\"brapi-section-description\">The BrAPI Genotyping module contains entities related to genotyping analysis. This includes Samples, Markers, Variant Sets, Variants, Call Sets, Calls, References, Reads, and Vendor Orders</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Genotyping\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Genotyping\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigenotyping.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <div class=\"brapi-section\"> <h2 class=\"brapi-section-title\">BrAPI Germplasm</h2> <div class=\"brapi-section-description\">The BrAPI Germplasm module contains entities related to germplasm management. This includes Germplasm, Germplasm Attributes, Seed Lots, Crosses, Pedigree, and Progeny</div> <div class=\"version-number\">V2.0</div> <div class=\"link-btn\"><a href=\"https://github.com/plantbreeding/API/tree/master/Specification/BrAPI-Germplasm\">GitHub</a></div> <div class=\"link-btn\"><a href=\"https://app.swaggerhub.com/apis/PlantBreedingAPI/BrAPI-Germplasm\">SwaggerHub</a></div> <div class=\"link-btn\"><a href=\"https://brapigermplasm.docs.apiary.io\">Apiary</a></div> <div class=\"stop-float\"></div> </div>  <style> .link-btn{ float: left;  margin: 2px 10px 0 0;  padding: 0 5px;  border-radius: 5px;  background-color: #ddd; } .stop-float{   clear: both; } .version-number{   float: left;    margin: 5px 10px 0 5px; } .brapi-section-title{   margin: 0 10px 0 0;   font-size: 20px; } .current-brapi-section{   font-weight: bolder;   border-radius: 5px;    background-color: #ddd; } .brapi-section{   padding: 5px 5px;  } .brapi-section-description{   margin: 5px 0 0 5px; } </style>
#
# The version of the OpenAPI document: 2.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title GermplasmMCPD
#'
#' @description GermplasmMCPD Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field accessionNames  list( character ) [optional]
#'
#' @field accessionNumber  character [optional]
#'
#' @field acquisitionDate  character [optional]
#'
#' @field acquisitionSourceCode  character [optional]
#'
#' @field alternateIDs  list( character ) [optional]
#'
#' @field ancestralData  character [optional]
#'
#' @field biologicalStatusOfAccessionCode  character [optional]
#'
#' @field breedingInstitutes  list( \link{GermplasmMCPDBreedingInstitutes} ) [optional]
#'
#' @field collectingInfo  \link{GermplasmMCPDCollectingInfo} [optional]
#'
#' @field commonCropName  character [optional]
#'
#' @field countryOfOrigin  character [optional]
#'
#' @field donorInfo  \link{GermplasmMCPDDonorInfo} [optional]
#'
#' @field genus  character [optional]
#'
#' @field germplasmDbId  character [optional]
#'
#' @field germplasmPUI  character [optional]
#'
#' @field instituteCode  character [optional]
#'
#' @field mlsStatus  character [optional]
#'
#' @field remarks  character [optional]
#'
#' @field safetyDuplicateInstitutes  list( \link{GermplasmMCPDSafetyDuplicateInstitutes} ) [optional]
#'
#' @field species  character [optional]
#'
#' @field speciesAuthority  character [optional]
#'
#' @field storageTypeCodes  list( character ) [optional]
#'
#' @field subtaxon  character [optional]
#'
#' @field subtaxonAuthority  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GermplasmMCPD <- R6::R6Class(
  'GermplasmMCPD',
  public = list(
    `accessionNames` = NULL,
    `accessionNumber` = NULL,
    `acquisitionDate` = NULL,
    `acquisitionSourceCode` = NULL,
    `alternateIDs` = NULL,
    `ancestralData` = NULL,
    `biologicalStatusOfAccessionCode` = NULL,
    `breedingInstitutes` = NULL,
    `collectingInfo` = NULL,
    `commonCropName` = NULL,
    `countryOfOrigin` = NULL,
    `donorInfo` = NULL,
    `genus` = NULL,
    `germplasmDbId` = NULL,
    `germplasmPUI` = NULL,
    `instituteCode` = NULL,
    `mlsStatus` = NULL,
    `remarks` = NULL,
    `safetyDuplicateInstitutes` = NULL,
    `species` = NULL,
    `speciesAuthority` = NULL,
    `storageTypeCodes` = NULL,
    `subtaxon` = NULL,
    `subtaxonAuthority` = NULL,
    initialize = function(
        `accessionNames`=NULL, `accessionNumber`=NULL, `acquisitionDate`=NULL, `acquisitionSourceCode`=NULL, `alternateIDs`=NULL, `ancestralData`=NULL, `biologicalStatusOfAccessionCode`=NULL, `breedingInstitutes`=NULL, `collectingInfo`=NULL, `commonCropName`=NULL, `countryOfOrigin`=NULL, `donorInfo`=NULL, `genus`=NULL, `germplasmDbId`=NULL, `germplasmPUI`=NULL, `instituteCode`=NULL, `mlsStatus`=NULL, `remarks`=NULL, `safetyDuplicateInstitutes`=NULL, `species`=NULL, `speciesAuthority`=NULL, `storageTypeCodes`=NULL, `subtaxon`=NULL, `subtaxonAuthority`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`accessionNames`)) {
        stopifnot(is.vector(`accessionNames`), length(`accessionNames`) != 0)
        sapply(`accessionNames`, function(x) stopifnot(is.character(x)))
        self$`accessionNames` <- `accessionNames`
      }
      if (!is.null(`accessionNumber`)) {
        stopifnot(is.character(`accessionNumber`), length(`accessionNumber`) == 1)
        self$`accessionNumber` <- `accessionNumber`
      }
      if (!is.null(`acquisitionDate`)) {
        stopifnot(is.character(`acquisitionDate`), length(`acquisitionDate`) == 1)
        self$`acquisitionDate` <- `acquisitionDate`
      }
      if (!is.null(`acquisitionSourceCode`)) {
        stopifnot(is.character(`acquisitionSourceCode`), length(`acquisitionSourceCode`) == 1)
        self$`acquisitionSourceCode` <- `acquisitionSourceCode`
      }
      if (!is.null(`alternateIDs`)) {
        stopifnot(is.vector(`alternateIDs`), length(`alternateIDs`) != 0)
        sapply(`alternateIDs`, function(x) stopifnot(is.character(x)))
        self$`alternateIDs` <- `alternateIDs`
      }
      if (!is.null(`ancestralData`)) {
        stopifnot(is.character(`ancestralData`), length(`ancestralData`) == 1)
        self$`ancestralData` <- `ancestralData`
      }
      if (!is.null(`biologicalStatusOfAccessionCode`)) {
        stopifnot(is.character(`biologicalStatusOfAccessionCode`), length(`biologicalStatusOfAccessionCode`) == 1)
        self$`biologicalStatusOfAccessionCode` <- `biologicalStatusOfAccessionCode`
      }
      if (!is.null(`breedingInstitutes`)) {
        stopifnot(is.vector(`breedingInstitutes`), length(`breedingInstitutes`) != 0)
        sapply(`breedingInstitutes`, function(x) stopifnot(R6::is.R6(x)))
        self$`breedingInstitutes` <- `breedingInstitutes`
      }
      if (!is.null(`collectingInfo`)) {
        stopifnot(R6::is.R6(`collectingInfo`))
        self$`collectingInfo` <- `collectingInfo`
      }
      if (!is.null(`commonCropName`)) {
        stopifnot(is.character(`commonCropName`), length(`commonCropName`) == 1)
        self$`commonCropName` <- `commonCropName`
      }
      if (!is.null(`countryOfOrigin`)) {
        stopifnot(is.character(`countryOfOrigin`), length(`countryOfOrigin`) == 1)
        self$`countryOfOrigin` <- `countryOfOrigin`
      }
      if (!is.null(`donorInfo`)) {
        stopifnot(R6::is.R6(`donorInfo`))
        self$`donorInfo` <- `donorInfo`
      }
      if (!is.null(`genus`)) {
        stopifnot(is.character(`genus`), length(`genus`) == 1)
        self$`genus` <- `genus`
      }
      if (!is.null(`germplasmDbId`)) {
        stopifnot(is.character(`germplasmDbId`), length(`germplasmDbId`) == 1)
        self$`germplasmDbId` <- `germplasmDbId`
      }
      if (!is.null(`germplasmPUI`)) {
        stopifnot(is.character(`germplasmPUI`), length(`germplasmPUI`) == 1)
        self$`germplasmPUI` <- `germplasmPUI`
      }
      if (!is.null(`instituteCode`)) {
        stopifnot(is.character(`instituteCode`), length(`instituteCode`) == 1)
        self$`instituteCode` <- `instituteCode`
      }
      if (!is.null(`mlsStatus`)) {
        stopifnot(is.character(`mlsStatus`), length(`mlsStatus`) == 1)
        self$`mlsStatus` <- `mlsStatus`
      }
      if (!is.null(`remarks`)) {
        stopifnot(is.character(`remarks`), length(`remarks`) == 1)
        self$`remarks` <- `remarks`
      }
      if (!is.null(`safetyDuplicateInstitutes`)) {
        stopifnot(is.vector(`safetyDuplicateInstitutes`), length(`safetyDuplicateInstitutes`) != 0)
        sapply(`safetyDuplicateInstitutes`, function(x) stopifnot(R6::is.R6(x)))
        self$`safetyDuplicateInstitutes` <- `safetyDuplicateInstitutes`
      }
      if (!is.null(`species`)) {
        stopifnot(is.character(`species`), length(`species`) == 1)
        self$`species` <- `species`
      }
      if (!is.null(`speciesAuthority`)) {
        stopifnot(is.character(`speciesAuthority`), length(`speciesAuthority`) == 1)
        self$`speciesAuthority` <- `speciesAuthority`
      }
      if (!is.null(`storageTypeCodes`)) {
        stopifnot(is.vector(`storageTypeCodes`), length(`storageTypeCodes`) != 0)
        sapply(`storageTypeCodes`, function(x) stopifnot(is.character(x)))
        self$`storageTypeCodes` <- `storageTypeCodes`
      }
      if (!is.null(`subtaxon`)) {
        stopifnot(is.character(`subtaxon`), length(`subtaxon`) == 1)
        self$`subtaxon` <- `subtaxon`
      }
      if (!is.null(`subtaxonAuthority`)) {
        stopifnot(is.character(`subtaxonAuthority`), length(`subtaxonAuthority`) == 1)
        self$`subtaxonAuthority` <- `subtaxonAuthority`
      }
    },
    toJSON = function() {
      GermplasmMCPDObject <- list()
      if (!is.null(self$`accessionNames`)) {
        GermplasmMCPDObject[['accessionNames']] <-
          self$`accessionNames`
      }
      if (!is.null(self$`accessionNumber`)) {
        GermplasmMCPDObject[['accessionNumber']] <-
          self$`accessionNumber`
      }
      if (!is.null(self$`acquisitionDate`)) {
        GermplasmMCPDObject[['acquisitionDate']] <-
          self$`acquisitionDate`
      }
      if (!is.null(self$`acquisitionSourceCode`)) {
        GermplasmMCPDObject[['acquisitionSourceCode']] <-
          self$`acquisitionSourceCode`
      }
      if (!is.null(self$`alternateIDs`)) {
        GermplasmMCPDObject[['alternateIDs']] <-
          self$`alternateIDs`
      }
      if (!is.null(self$`ancestralData`)) {
        GermplasmMCPDObject[['ancestralData']] <-
          self$`ancestralData`
      }
      if (!is.null(self$`biologicalStatusOfAccessionCode`)) {
        GermplasmMCPDObject[['biologicalStatusOfAccessionCode']] <-
          self$`biologicalStatusOfAccessionCode`
      }
      if (!is.null(self$`breedingInstitutes`)) {
        GermplasmMCPDObject[['breedingInstitutes']] <-
          lapply(self$`breedingInstitutes`, function(x) x$toJSON())
      }
      if (!is.null(self$`collectingInfo`)) {
        GermplasmMCPDObject[['collectingInfo']] <-
          self$`collectingInfo`$toJSON()
      }
      if (!is.null(self$`commonCropName`)) {
        GermplasmMCPDObject[['commonCropName']] <-
          self$`commonCropName`
      }
      if (!is.null(self$`countryOfOrigin`)) {
        GermplasmMCPDObject[['countryOfOrigin']] <-
          self$`countryOfOrigin`
      }
      if (!is.null(self$`donorInfo`)) {
        GermplasmMCPDObject[['donorInfo']] <-
          self$`donorInfo`$toJSON()
      }
      if (!is.null(self$`genus`)) {
        GermplasmMCPDObject[['genus']] <-
          self$`genus`
      }
      if (!is.null(self$`germplasmDbId`)) {
        GermplasmMCPDObject[['germplasmDbId']] <-
          self$`germplasmDbId`
      }
      if (!is.null(self$`germplasmPUI`)) {
        GermplasmMCPDObject[['germplasmPUI']] <-
          self$`germplasmPUI`
      }
      if (!is.null(self$`instituteCode`)) {
        GermplasmMCPDObject[['instituteCode']] <-
          self$`instituteCode`
      }
      if (!is.null(self$`mlsStatus`)) {
        GermplasmMCPDObject[['mlsStatus']] <-
          self$`mlsStatus`
      }
      if (!is.null(self$`remarks`)) {
        GermplasmMCPDObject[['remarks']] <-
          self$`remarks`
      }
      if (!is.null(self$`safetyDuplicateInstitutes`)) {
        GermplasmMCPDObject[['safetyDuplicateInstitutes']] <-
          lapply(self$`safetyDuplicateInstitutes`, function(x) x$toJSON())
      }
      if (!is.null(self$`species`)) {
        GermplasmMCPDObject[['species']] <-
          self$`species`
      }
      if (!is.null(self$`speciesAuthority`)) {
        GermplasmMCPDObject[['speciesAuthority']] <-
          self$`speciesAuthority`
      }
      if (!is.null(self$`storageTypeCodes`)) {
        GermplasmMCPDObject[['storageTypeCodes']] <-
          self$`storageTypeCodes`
      }
      if (!is.null(self$`subtaxon`)) {
        GermplasmMCPDObject[['subtaxon']] <-
          self$`subtaxon`
      }
      if (!is.null(self$`subtaxonAuthority`)) {
        GermplasmMCPDObject[['subtaxonAuthority']] <-
          self$`subtaxonAuthority`
      }

      GermplasmMCPDObject
    },
    fromJSON = function(GermplasmMCPDJson) {
      GermplasmMCPDObject <- jsonlite::fromJSON(GermplasmMCPDJson)
      if (!is.null(GermplasmMCPDObject$`accessionNames`)) {
        self$`accessionNames` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`accessionNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmMCPDObject$`accessionNumber`)) {
        self$`accessionNumber` <- GermplasmMCPDObject$`accessionNumber`
      }
      if (!is.null(GermplasmMCPDObject$`acquisitionDate`)) {
        self$`acquisitionDate` <- GermplasmMCPDObject$`acquisitionDate`
      }
      if (!is.null(GermplasmMCPDObject$`acquisitionSourceCode`)) {
        self$`acquisitionSourceCode` <- GermplasmMCPDObject$`acquisitionSourceCode`
      }
      if (!is.null(GermplasmMCPDObject$`alternateIDs`)) {
        self$`alternateIDs` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`alternateIDs`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmMCPDObject$`ancestralData`)) {
        self$`ancestralData` <- GermplasmMCPDObject$`ancestralData`
      }
      if (!is.null(GermplasmMCPDObject$`biologicalStatusOfAccessionCode`)) {
        self$`biologicalStatusOfAccessionCode` <- GermplasmMCPDObject$`biologicalStatusOfAccessionCode`
      }
      if (!is.null(GermplasmMCPDObject$`breedingInstitutes`)) {
        self$`breedingInstitutes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`breedingInstitutes`, "array[GermplasmMCPDBreedingInstitutes]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmMCPDObject$`collectingInfo`)) {
        collectingInfoObject <- GermplasmMCPDCollectingInfo$new()
        collectingInfoObject$fromJSON(jsonlite::toJSON(GermplasmMCPDObject$collectingInfo, auto_unbox = TRUE, digits = NA))
        self$`collectingInfo` <- collectingInfoObject
      }
      if (!is.null(GermplasmMCPDObject$`commonCropName`)) {
        self$`commonCropName` <- GermplasmMCPDObject$`commonCropName`
      }
      if (!is.null(GermplasmMCPDObject$`countryOfOrigin`)) {
        self$`countryOfOrigin` <- GermplasmMCPDObject$`countryOfOrigin`
      }
      if (!is.null(GermplasmMCPDObject$`donorInfo`)) {
        donorInfoObject <- GermplasmMCPDDonorInfo$new()
        donorInfoObject$fromJSON(jsonlite::toJSON(GermplasmMCPDObject$donorInfo, auto_unbox = TRUE, digits = NA))
        self$`donorInfo` <- donorInfoObject
      }
      if (!is.null(GermplasmMCPDObject$`genus`)) {
        self$`genus` <- GermplasmMCPDObject$`genus`
      }
      if (!is.null(GermplasmMCPDObject$`germplasmDbId`)) {
        self$`germplasmDbId` <- GermplasmMCPDObject$`germplasmDbId`
      }
      if (!is.null(GermplasmMCPDObject$`germplasmPUI`)) {
        self$`germplasmPUI` <- GermplasmMCPDObject$`germplasmPUI`
      }
      if (!is.null(GermplasmMCPDObject$`instituteCode`)) {
        self$`instituteCode` <- GermplasmMCPDObject$`instituteCode`
      }
      if (!is.null(GermplasmMCPDObject$`mlsStatus`)) {
        self$`mlsStatus` <- GermplasmMCPDObject$`mlsStatus`
      }
      if (!is.null(GermplasmMCPDObject$`remarks`)) {
        self$`remarks` <- GermplasmMCPDObject$`remarks`
      }
      if (!is.null(GermplasmMCPDObject$`safetyDuplicateInstitutes`)) {
        self$`safetyDuplicateInstitutes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`safetyDuplicateInstitutes`, "array[GermplasmMCPDSafetyDuplicateInstitutes]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmMCPDObject$`species`)) {
        self$`species` <- GermplasmMCPDObject$`species`
      }
      if (!is.null(GermplasmMCPDObject$`speciesAuthority`)) {
        self$`speciesAuthority` <- GermplasmMCPDObject$`speciesAuthority`
      }
      if (!is.null(GermplasmMCPDObject$`storageTypeCodes`)) {
        self$`storageTypeCodes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`storageTypeCodes`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(GermplasmMCPDObject$`subtaxon`)) {
        self$`subtaxon` <- GermplasmMCPDObject$`subtaxon`
      }
      if (!is.null(GermplasmMCPDObject$`subtaxonAuthority`)) {
        self$`subtaxonAuthority` <- GermplasmMCPDObject$`subtaxonAuthority`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`accessionNames`)) {
        sprintf(
        '"accessionNames":
           [%s]
        ',
        paste(unlist(lapply(self$`accessionNames`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`accessionNumber`)) {
        sprintf(
        '"accessionNumber":
          "%s"
                ',
        self$`accessionNumber`
        )},
        if (!is.null(self$`acquisitionDate`)) {
        sprintf(
        '"acquisitionDate":
          "%s"
                ',
        self$`acquisitionDate`
        )},
        if (!is.null(self$`acquisitionSourceCode`)) {
        sprintf(
        '"acquisitionSourceCode":
          "%s"
                ',
        self$`acquisitionSourceCode`
        )},
        if (!is.null(self$`alternateIDs`)) {
        sprintf(
        '"alternateIDs":
           [%s]
        ',
        paste(unlist(lapply(self$`alternateIDs`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`ancestralData`)) {
        sprintf(
        '"ancestralData":
          "%s"
                ',
        self$`ancestralData`
        )},
        if (!is.null(self$`biologicalStatusOfAccessionCode`)) {
        sprintf(
        '"biologicalStatusOfAccessionCode":
          "%s"
                ',
        self$`biologicalStatusOfAccessionCode`
        )},
        if (!is.null(self$`breedingInstitutes`)) {
        sprintf(
        '"breedingInstitutes":
        [%s]
',
        paste(sapply(self$`breedingInstitutes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`collectingInfo`)) {
        sprintf(
        '"collectingInfo":
        %s
        ',
        jsonlite::toJSON(self$`collectingInfo`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`commonCropName`)) {
        sprintf(
        '"commonCropName":
          "%s"
                ',
        self$`commonCropName`
        )},
        if (!is.null(self$`countryOfOrigin`)) {
        sprintf(
        '"countryOfOrigin":
          "%s"
                ',
        self$`countryOfOrigin`
        )},
        if (!is.null(self$`donorInfo`)) {
        sprintf(
        '"donorInfo":
        %s
        ',
        jsonlite::toJSON(self$`donorInfo`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`genus`)) {
        sprintf(
        '"genus":
          "%s"
                ',
        self$`genus`
        )},
        if (!is.null(self$`germplasmDbId`)) {
        sprintf(
        '"germplasmDbId":
          "%s"
                ',
        self$`germplasmDbId`
        )},
        if (!is.null(self$`germplasmPUI`)) {
        sprintf(
        '"germplasmPUI":
          "%s"
                ',
        self$`germplasmPUI`
        )},
        if (!is.null(self$`instituteCode`)) {
        sprintf(
        '"instituteCode":
          "%s"
                ',
        self$`instituteCode`
        )},
        if (!is.null(self$`mlsStatus`)) {
        sprintf(
        '"mlsStatus":
          "%s"
                ',
        self$`mlsStatus`
        )},
        if (!is.null(self$`remarks`)) {
        sprintf(
        '"remarks":
          "%s"
                ',
        self$`remarks`
        )},
        if (!is.null(self$`safetyDuplicateInstitutes`)) {
        sprintf(
        '"safetyDuplicateInstitutes":
        [%s]
',
        paste(sapply(self$`safetyDuplicateInstitutes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`species`)) {
        sprintf(
        '"species":
          "%s"
                ',
        self$`species`
        )},
        if (!is.null(self$`speciesAuthority`)) {
        sprintf(
        '"speciesAuthority":
          "%s"
                ',
        self$`speciesAuthority`
        )},
        if (!is.null(self$`storageTypeCodes`)) {
        sprintf(
        '"storageTypeCodes":
           [%s]
        ',
        paste(unlist(lapply(self$`storageTypeCodes`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`subtaxon`)) {
        sprintf(
        '"subtaxon":
          "%s"
                ',
        self$`subtaxon`
        )},
        if (!is.null(self$`subtaxonAuthority`)) {
        sprintf(
        '"subtaxonAuthority":
          "%s"
                ',
        self$`subtaxonAuthority`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(GermplasmMCPDJson) {
      GermplasmMCPDObject <- jsonlite::fromJSON(GermplasmMCPDJson)
      self$`accessionNames` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`accessionNames`, "array[character]", loadNamespace("openapi"))
      self$`accessionNumber` <- GermplasmMCPDObject$`accessionNumber`
      self$`acquisitionDate` <- GermplasmMCPDObject$`acquisitionDate`
      self$`acquisitionSourceCode` <- GermplasmMCPDObject$`acquisitionSourceCode`
      self$`alternateIDs` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`alternateIDs`, "array[character]", loadNamespace("openapi"))
      self$`ancestralData` <- GermplasmMCPDObject$`ancestralData`
      self$`biologicalStatusOfAccessionCode` <- GermplasmMCPDObject$`biologicalStatusOfAccessionCode`
      self$`breedingInstitutes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`breedingInstitutes`, "array[GermplasmMCPDBreedingInstitutes]", loadNamespace("openapi"))
      self$`collectingInfo` <- GermplasmMCPDCollectingInfo$new()$fromJSON(jsonlite::toJSON(GermplasmMCPDObject$collectingInfo, auto_unbox = TRUE, digits = NA))
      self$`commonCropName` <- GermplasmMCPDObject$`commonCropName`
      self$`countryOfOrigin` <- GermplasmMCPDObject$`countryOfOrigin`
      self$`donorInfo` <- GermplasmMCPDDonorInfo$new()$fromJSON(jsonlite::toJSON(GermplasmMCPDObject$donorInfo, auto_unbox = TRUE, digits = NA))
      self$`genus` <- GermplasmMCPDObject$`genus`
      self$`germplasmDbId` <- GermplasmMCPDObject$`germplasmDbId`
      self$`germplasmPUI` <- GermplasmMCPDObject$`germplasmPUI`
      self$`instituteCode` <- GermplasmMCPDObject$`instituteCode`
      self$`mlsStatus` <- GermplasmMCPDObject$`mlsStatus`
      self$`remarks` <- GermplasmMCPDObject$`remarks`
      self$`safetyDuplicateInstitutes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`safetyDuplicateInstitutes`, "array[GermplasmMCPDSafetyDuplicateInstitutes]", loadNamespace("openapi"))
      self$`species` <- GermplasmMCPDObject$`species`
      self$`speciesAuthority` <- GermplasmMCPDObject$`speciesAuthority`
      self$`storageTypeCodes` <- ApiClient$new()$deserializeObj(GermplasmMCPDObject$`storageTypeCodes`, "array[character]", loadNamespace("openapi"))
      self$`subtaxon` <- GermplasmMCPDObject$`subtaxon`
      self$`subtaxonAuthority` <- GermplasmMCPDObject$`subtaxonAuthority`
      self
    }
  )
)

