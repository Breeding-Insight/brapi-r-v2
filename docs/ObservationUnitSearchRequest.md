# openapi::ObservationUnitSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**programDbIds** | **array[character]** | A program identifier to search for | [optional] 
**programNames** | **array[character]** | A name of a program to search for | [optional] 
**trialDbIds** | **array[character]** | The ID which uniquely identifies a trial to search for | [optional] 
**trialNames** | **array[character]** | The human readable name of a trial to search for | [optional] 
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**locationDbIds** | **array[character]** | The location ids to search for | [optional] 
**locationNames** | **array[character]** | A human readable names to search for | [optional] 
**germplasmDbIds** | **array[character]** | List of IDs which uniquely identify germplasm to search for | [optional] 
**germplasmNames** | **array[character]** | List of human readable names to identify germplasm to search for | [optional] 
**observationVariableDbIds** | **array[character]** | The DbIds of Variables to search for | [optional] 
**observationVariableNames** | **array[character]** | The names of Variables to search for | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**includeObservations** | **character** | Use this parameter to include a list of observations embedded in each ObservationUnit object.   CAUTION - Use this parameter at your own risk. It may return large, unpaginated lists of observation data. Only set this value to True if you are sure you need to. | [optional] 
**observationLevelRelationships** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevelRelationships | [optional] 
**observationLevels** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel | [optional] 
**observationUnitDbIds** | **array[character]** | The unique id of an observation unit | [optional] 


