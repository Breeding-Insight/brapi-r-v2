# openapi::Event

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**date** | **array[character]** | A list of dates when the event occurred  MIAPPE V1.1 (DM-68) Event date - Date and time of the event. | [optional] 
**eventDbId** | **character** | Internal database identifier | 
**eventDescription** | **character** | A detailed, human-readable description of this event  MIAPPE V1.1 (DM-67) Event description - Description of the event, including details such as amount applied and possibly duration of the event.  | [optional] 
**eventParameters** | [**array[EventEventParameters]**](Event_eventParameters.md) | A list of objects describing additional event parameters. Each of the following accepts a human-readable value or URI | [optional] 
**eventType** | **character** | General category for this event (e.g. Sowing, Watering, Rain). Each eventType should correspond to exactly one eventTypeDbId, if provided.  MIAPPE V1.1 (DM-65) Event type - Short name of the event. | 
**eventTypeDbId** | **character** | An identifier for this event type, in the form of an ontology class reference  MIAPPE V1.1 (DM-66) Event accession number - Accession number of the event type in a suitable controlled vocabulary (Crop Ontology). | [optional] 
**observationUnitDbIds** | **array[character]** | A list of the affected observation units. If this parameter is not given, it is understood that the event affected all units in the study | [optional] 
**studyDbId** | **character** | The study in which the event occurred | [optional] 


