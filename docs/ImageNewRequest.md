# openapi::ImageNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** |  | [optional] 
**copyright** | **character** | The copyright information of this image. Example &#39;Copyright 2018 Bob Robertson&#39; | [optional] 
**description** | **character** | The human readable description of an image. | [optional] 
**descriptiveOntologyTerms** | **array[character]** | A list of terms to formally describe the image. Each item could be a simple Tag, an Ontology reference Id, or a full ontology URL. | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**imageFileName** | **character** | The name of the image file. Might be the same as &#39;imageName&#39;, but could be different. | [optional] 
**imageFileSize** | **integer** | The size of the image in Bytes. | [optional] 
**imageHeight** | **integer** | The height of the image in Pixels. | [optional] 
**imageLocation** | [**GeoJSON**](geoJSON.md) |  | [optional] 
**imageName** | **character** | The human readable name of an image. Might be the same as &#39;imageFileName&#39;, but could be different. | [optional] 
**imageTimeStamp** | **character** | The date and time the image was taken | [optional] 
**imageURL** | **character** | The complete, absolute URI path to the image file. Images might be stored on a different host or path than the BrAPI web server. | [optional] 
**imageWidth** | **integer** | The width of the image in Pixels. | [optional] 
**mimeType** | **character** | The file type of the image. Examples &#39;image/jpeg&#39;, &#39;image/png&#39;, &#39;image/svg&#39;, etc | [optional] 
**observationDbIds** | **array[character]** | A list of observation Ids this image is associated with, if applicable. | [optional] 
**observationUnitDbId** | **character** | The related observation unit identifier, if relevant. | [optional] 


