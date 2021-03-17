# openapi::ObservationUnitAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**observationUnitDbId** | **character** | The ID which uniquely identifies an observation unit  MIAPPE V1.1 (DM-70) Observation unit ID - Identifier used to identify the observation unit in data files containing the values observed or measured on that unit. Must be locally unique.  | [optional] 
**observations** | [**array[Observation]**](Observation.md) | All observations attached to this observation unit.   Default for this field is null or omitted. Do NOT include data in this field unless the &#39;includeObservations&#39; flag is explicitly set to True. | [optional] 


