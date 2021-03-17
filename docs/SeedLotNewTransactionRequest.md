# openapi::SeedLotNewTransactionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**amount** | **numeric** | The amount of units being transfered. Could be a count (seeds, bulbs, etc) or a weight (kg of seed). | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**fromSeedLotDbId** | **character** | The identifier for the Seed Lot being transfered out of | [optional] 
**toSeedLotDbId** | **character** | The identifier for the Seed Lot being transfered into | [optional] 
**transactionDescription** | **character** | A general description of this Seed Lot Transaction | [optional] 
**transactionTimestamp** | **character** | The time stamp for when the transaction occurred | [optional] 
**units** | **character** | Description of the things being transfered in this transaction (seeds, bulbs, kg, etc) | [optional] 


