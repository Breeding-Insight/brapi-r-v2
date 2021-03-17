# openapi::ImageSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**descriptiveOntologyTerms** | **array[character]** | A list of terms to formally describe the image to search for. Each item could be a simple Tag, an Ontology reference Id, or a full ontology URL. | [optional] 
**imageDbIds** | **array[character]** | A list of image Ids to search for | [optional] 
**imageFileNames** | **array[character]** | Image file names to search for. | [optional] 
**imageFileSizeMax** | **integer** | A maximum image file size to search for. | [optional] 
**imageFileSizeMin** | **integer** | A minimum image file size to search for. | [optional] 
**imageHeightMax** | **integer** | A maximum image height to search for. | [optional] 
**imageHeightMin** | **integer** | A minimum image height to search for. | [optional] 
**imageLocation** | [**GeoJSONSearchArea**](geoJSONSearchArea.md) |  | [optional] 
**imageNames** | **array[character]** | Human readable names to search for. | [optional] 
**imageTimeStampRangeEnd** | **character** | The latest timestamp to search for. | [optional] 
**imageTimeStampRangeStart** | **character** | The earliest timestamp to search for. | [optional] 
**imageWidthMax** | **integer** | A maximum image width to search for. | [optional] 
**imageWidthMin** | **integer** | A minimum image width to search for. | [optional] 
**mimeTypes** | **array[character]** | A set of image file types to search for. | [optional] 
**observationDbIds** | **array[character]** | A list of observation Ids this image is associated with to search for | [optional] 
**observationUnitDbIds** | **array[character]** | A set of observation unit identifiers to search for. | [optional] 


