# openapi::Analysis

An analysis contains an interpretation of one or several experiments. (e.g. SNVs, copy number variations, methylation status) together with information about the methodology used.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysisDbId** | **character** | Unique identifier for this analysis description | [optional] 
**analysisName** | **character** | A human readable name for this analysis | [optional] 
**created** | **character** | The time at which this record was created, in ISO 8601 format. | [optional] 
**description** | **character** | A human readable description of the analysis | [optional] 
**software** | **array[character]** | The software run to generate this analysis. | [optional] 
**type** | **character** | The type of analysis. | [optional] 
**updated** | **character** | The time at which this record was last updated, in ISO 8601 format. | [optional] 


