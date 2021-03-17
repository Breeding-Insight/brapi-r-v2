# openapi::SeedLotNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**amount** | **numeric** | Current balance of seeds in this lot. Could be a count (seeds, bulbs, etc) or a weight (kg of seed). | [optional] 
**createdDate** | **character** | The time stamp for when this seed lot was created | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**germplasmDbId** | **character** | Unique DbId of the Germplasm held in this Seed Lot | [optional] 
**lastUpdated** | **character** | The timestamp for the last update to this Seed Lot (including transactions) | [optional] 
**locationDbId** | **character** | DbId of the storage location | [optional] 
**programDbId** | **character** | Unique DbId of the breeding Program this Seed Lot belongs to | [optional] 
**seedLotDescription** | **character** | A general description of this Seed Lot | [optional] 
**seedLotName** | **character** | A human readable name for this Seed Lot | [optional] 
**sourceCollection** | **character** | The description of the source where this material was originally collected (wild, nursery, etc) | [optional] 
**storageLocation** | **character** | Description the storage location | [optional] 
**units** | **character** | Description of the things being counted in this Seed Lot (seeds, bulbs, kg, tree, etc) | [optional] 


