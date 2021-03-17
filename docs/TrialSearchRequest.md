# openapi::TrialSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**commonCropNames** | **array[character]** | Common name for the crop which this program is for | [optional] 
**programDbIds** | **array[character]** | A program identifier to search for | [optional] 
**programNames** | **array[character]** | A name of a program to search for | [optional] 
**trialDbIds** | **array[character]** | The ID which uniquely identifies a trial to search for | [optional] 
**trialNames** | **array[character]** | The human readable name of a trial to search for | [optional] 
**studyDbIds** | **array[character]** | List of study identifiers to search for | [optional] 
**studyNames** | **array[character]** | List of study names to filter search results | [optional] 
**locationDbIds** | **array[character]** | The location ids to search for | [optional] 
**locationNames** | **array[character]** | A human readable names to search for | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**active** | **character** | Is this trail currently active | [optional] 
**contactDbIds** | **array[character]** | List of contact entities associated with this trial | [optional] 
**searchDateRangeEnd** | **character** | The end of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
**searchDateRangeStart** | **character** | The start of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
**trialPUIs** | **array[character]** | A permanent identifier for a trial. Could be DOI or other URI formatted identifier. | [optional] 


