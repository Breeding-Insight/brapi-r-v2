# openapi::ListSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**dateCreated** | **character** | Timestamp when the entity was first created | [optional] 
**dateModified** | **character** | Timestamp when the entity was last updated | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**listDescription** | **character** | Description of a List | [optional] 
**listName** | **character** | Human readable name of a List | [optional] 
**listOwnerName** | **character** | Human readable name of a List Owner. (usually a user or person) | [optional] 
**listOwnerPersonDbId** | **character** | The unique identifier for a List Owner. (usually a user or person) | [optional] 
**listSize** | **integer** | The number of elements in a List | [optional] 
**listSource** | **character** | The description of where a List originated from | [optional] 
**listType** | [**ListTypes**](ListTypes.md) |  | 
**listDbId** | **character** | The unique identifier for a List | 


