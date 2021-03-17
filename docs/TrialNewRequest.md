# openapi::TrialNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **character** | Is this trail currently active | [optional] 
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**commonCropName** | **character** | Common name for the crop associated with this trial | [optional] 
**contacts** | [**array[Contact]**](Contact.md) | List of contact entities associated with this trial | [optional] 
**datasetAuthorships** | [**array[TrialNewRequestDatasetAuthorships]**](TrialNewRequest_datasetAuthorships.md) | License and citation information for the data in this trial | [optional] 
**documentationURL** | **character** | A URL to the human readable documentation of this object | [optional] 
**endDate** | **character** | The date this trial ends | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**programDbId** | **character** | A program identifier to search for | [optional] 
**programName** | **character** | Human readable name of the program | [optional] 
**publications** | [**array[TrialNewRequestPublications]**](TrialNewRequest_publications.md) | MIAPPE V1.1 (DM-9) Associated publication - An identifier for a literature publication where the investigation is described. Use of DOIs is recommended. | [optional] 
**startDate** | **character** | The date this trial started | [optional] 
**trialDescription** | **character** | The human readable description of a trial  MIAPPE V1.1 (DM-4) Investigation description - Human-readable text describing the investigation in more detail. | [optional] 
**trialName** | **character** | The human readable name of a trial  MIAPPE V1.1 (DM-3) Investigation title - Human-readable string summarising the investigation. | [optional] 
**trialPUI** | **character** | A permanent identifier for a trial. Could be DOI or other URI formatted identifier. | [optional] 


