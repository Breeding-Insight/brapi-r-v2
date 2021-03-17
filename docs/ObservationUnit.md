# openapi::ObservationUnit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**germplasmDbId** | **character** | The ID which uniquely identifies a germplasm | [optional] 
**germplasmName** | **character** | Name of the germplasm. It can be the preferred name and does not have to be unique. | [optional] 
**locationDbId** | **character** | The ID which uniquely identifies a location, associated with this study | [optional] 
**locationName** | **character** | The human readable name of a location associated with this study | [optional] 
**observationUnitName** | **character** | A human readable name for an observation unit | [optional] 
**observationUnitPUI** | **character** | A Permanent Unique Identifier for an observation unit  MIAPPE V1.1 (DM-72) External ID - Identifier for the observation unit in a persistent repository, comprises the name of the repository and the identifier of the observation unit therein. The EBI Biosamples repository can be used. URI are recommended when possible. | [optional] 
**observationUnitPosition** | [**ObservationUnitPosition**](ObservationUnitPosition.md) |  | [optional] 
**programDbId** | **character** | The ID which uniquely identifies a program | [optional] 
**programName** | **character** | The human readable name of a program | [optional] 
**seedLotDbId** | **character** | The unique identifier for the originating Seed Lot | [optional] 
**studyDbId** | **character** | The ID which uniquely identifies a study within the given database server | [optional] 
**studyName** | **character** | The human readable name for a study | [optional] 
**treatments** | [**array[ObservationTreatment]**](ObservationTreatment.md) | List of treatments applied to an observation unit.  MIAPPE V1.1 (DM-74) Observation Unit factor value - List of values for each factor applied to the observation unit. | [optional] 
**trialDbId** | **character** | The ID which uniquely identifies a trial | [optional] 
**trialName** | **character** | The human readable name of a trial | [optional] 
**observationUnitDbId** | **character** | The ID which uniquely identifies an observation unit  MIAPPE V1.1 (DM-70) Observation unit ID - Identifier used to identify the observation unit in data files containing the values observed or measured on that unit. Must be locally unique.  | [optional] 
**observations** | [**array[Observation]**](Observation.md) | All observations attached to this observation unit.   Default for this field is null or omitted. Do NOT include data in this field unless the &#39;includeObservations&#39; flag is explicitly set to True. | [optional] 


