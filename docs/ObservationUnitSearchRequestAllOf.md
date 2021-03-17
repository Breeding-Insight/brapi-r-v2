# openapi::ObservationUnitSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**includeObservations** | **character** | Use this parameter to include a list of observations embedded in each ObservationUnit object.   CAUTION - Use this parameter at your own risk. It may return large, unpaginated lists of observation data. Only set this value to True if you are sure you need to. | [optional] 
**observationLevelRelationships** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevelRelationships | [optional] 
**observationLevels** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel | [optional] 
**observationUnitDbIds** | **array[character]** | The unique id of an observation unit | [optional] 


