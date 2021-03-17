# openapi::TrialSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **character** | Is this trail currently active | [optional] 
**contactDbIds** | **array[character]** | List of contact entities associated with this trial | [optional] 
**searchDateRangeEnd** | **character** | The end of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
**searchDateRangeStart** | **character** | The start of the overlapping search date range. &#x60;searchDateRangeStart&#x60; must be before &#x60;searchDateRangeEnd&#x60;.  Return a Trial entity if any of the following cases are true  - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is null   - &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; AND &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60;  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is null  - &#x60;searchDateRangeEnd&#x60; is after &#x60;trial.startDate&#x60; AND &#x60;searchDateRangeStart&#x60; is before &#x60;trial.endDate&#x60; | [optional] 
**trialPUIs** | **array[character]** | A permanent identifier for a trial. Could be DOI or other URI formatted identifier. | [optional] 


