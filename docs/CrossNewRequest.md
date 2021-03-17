# openapi::CrossNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**crossAttributes** | [**array[CrossNewRequestCrossAttributes]**](CrossNewRequest_crossAttributes.md) | Set of custom attributes associated with a cross | [optional] 
**crossName** | **character** | the human readable name for a cross | [optional] 
**crossType** | **character** | the type of cross | [optional] 
**crossingProjectDbId** | **character** | the unique identifier for a crossing project | [optional] 
**crossingProjectName** | **character** | the human readable name for a crossing project | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**parent1** | [**CrossParent**](CrossParent.md) |  | [optional] 
**parent2** | [**CrossParent**](CrossParent.md) |  | [optional] 
**pollinationTimeStamp** | **character** | the timestamp when the pollination took place | [optional] 


