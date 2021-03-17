# openapi::LocationSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**locationDbIds** | **array[character]** | The location ids to search for | [optional] 
**locationNames** | **array[character]** | A human readable names to search for | [optional] 
**abbreviations** | **array[character]** | An abbreviation which represents this location | [optional] 
**altitudeMax** | **numeric** | The maximum altitude to search for | [optional] 
**altitudeMin** | **numeric** | The minimum altitude to search for | [optional] 
**coordinates** | [**GeoJSONSearchArea**](geoJSONSearchArea.md) |  | [optional] 
**countryCodes** | **array[character]** | [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec | [optional] 
**countryNames** | **array[character]** | The full name of the country to search for | [optional] 
**instituteAddresses** | **array[character]** | The street address of the institute to search for | [optional] 
**instituteNames** | **array[character]** | The name of the institute to search for | [optional] 
**locationTypes** | **array[character]** | The type of location this represents (ex. Breeding Location, Storage Location, etc) | [optional] 


