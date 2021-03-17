# openapi::Study

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **character** | Is this study currently active | [optional] 
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**commonCropName** | **character** | Common name for the crop associated with this study | [optional] 
**contacts** | [**array[Contact]**](Contact.md) | List of contact entities associated with this study | [optional] 
**culturalPractices** | **character** | MIAPPE V1.1 (DM-28) Cultural practices - General description of the cultural practices of the study. | [optional] 
**dataLinks** | [**array[DataLink]**](DataLink.md) | List of links to extra data files associated with this study. Extra data could include notes, images, and reference data. | [optional] 
**documentationURL** | **character** | A URL to the human readable documentation of this object | [optional] 
**endDate** | **character** | The date the study ends  MIAPPE V1.1 (DM-15) End date of study - Date and, if relevant, time when the experiment ended | [optional] 
**environmentParameters** | [**array[EnvironmentParameter]**](EnvironmentParameter.md) | Environmental parameters that were kept constant throughout the study and did not change between observation units.  MIAPPE V1.1 (DM-57) Environment - Environmental parameters that were kept constant throughout the study and did not change between observation units or assays. Environment characteristics that vary over time, i.e. environmental variables, should be recorded as Observed Variables (see below). | [optional] 
**experimentalDesign** | [**StudyNewRequestExperimentalDesign**](StudyNewRequest_experimentalDesign.md) |  | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**growthFacility** | [**StudyNewRequestGrowthFacility**](StudyNewRequest_growthFacility.md) |  | [optional] 
**lastUpdate** | [**StudyNewRequestLastUpdate**](StudyNewRequest_lastUpdate.md) |  | [optional] 
**license** | **character** | The usage license associated with the study data | [optional] 
**locationDbId** | **character** | The unique identifier for a Location | [optional] 
**locationName** | **character** | A human readable name for this location  MIAPPE V1.1 (DM-18) Experimental site name - The name of the natural site, experimental field, greenhouse, phenotyping facility, etc. where the experiment took place. | [optional] 
**observationLevels** | [**array[ObservationUnitHierarchyLevel]**](ObservationUnitHierarchyLevel.md) | Observation levels indicate the granularity level at which the measurements are taken. &#x60;levelName&#x60; defines the level, &#x60;levelOrder&#x60; defines where that level exists in the hierarchy of levels. &#x60;levelOrder&#x60;s lower numbers are at the top of the hierarchy (ie field &gt; 0) and higher numbers are at the bottom of the hierarchy (ie plant &gt; 6).  | [optional] 
**observationUnitsDescription** | **character** | MIAPPE V1.1 (DM-25) Observation unit description - General description of the observation units in the study. | [optional] 
**seasons** | **array[character]** | List of seasons over which this study was performed. | [optional] 
**startDate** | **character** | The date this study started  MIAPPE V1.1 (DM-14) Start date of study - Date and, if relevant, time when the experiment started | [optional] 
**studyCode** | **character** | A short human readable code for a study | [optional] 
**studyDescription** | **character** | The description of this study  MIAPPE V1.1 (DM-13) Study description - Human-readable text describing the study | [optional] 
**studyName** | **character** | The human readable name for a study  MIAPPE V1.1 (DM-12) Study title - Human-readable text summarising the study | [optional] 
**studyPUI** | **character** | A permanent unique identifier associated with this study data. For example, a URI or DOI | [optional] 
**studyType** | **character** | The type of study being performed. ex. \&quot;Yield Trial\&quot;, etc | [optional] 
**trialDbId** | **character** | The ID which uniquely identifies a trial | [optional] 
**trialName** | **character** | The human readable name of a trial | [optional] 
**studyDbId** | **character** | The ID which uniquely identifies a study within the given database server  MIAPPE V1.1 (DM-11) Study unique ID - Unique identifier comprising the name or identifier for the institution/database hosting the submission of the study data, and the identifier of the study in that institution. | 


