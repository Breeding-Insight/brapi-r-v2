# openapi::ObservationSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**observationDbIds** | **array[character]** | The unique id of an Observation | [optional] 
**observationLevelRelationships** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevelRelationships | [optional] 
**observationLevels** | [**array[ObservationUnitLevelRelationship]**](ObservationUnitLevelRelationship.md) | Searches for values in ObservationUnit-&gt;observationUnitPosition-&gt;observationLevel | [optional] 
**observationTimeStampRangeEnd** | **character** | Timestamp range end | [optional] 
**observationTimeStampRangeStart** | **character** | Timestamp range start | [optional] 
**observationUnitDbIds** | **array[character]** | The unique id of an Observation Unit | [optional] 
**seasonDbIds** | **array[character]** | The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) | [optional] 


