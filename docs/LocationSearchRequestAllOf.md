# openapi::LocationSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**abbreviations** | **array[character]** | An abbreviation which represents this location | [optional] 
**altitudeMax** | **numeric** | The maximum altitude to search for | [optional] 
**altitudeMin** | **numeric** | The minimum altitude to search for | [optional] 
**coordinates** | [**GeoJSONSearchArea**](geoJSONSearchArea.md) |  | [optional] 
**countryCodes** | **array[character]** | [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec | [optional] 
**countryNames** | **array[character]** | The full name of the country to search for | [optional] 
**instituteAddresses** | **array[character]** | The street address of the institute to search for | [optional] 
**instituteNames** | **array[character]** | The name of the institute to search for | [optional] 
**locationTypes** | **array[character]** | The type of location this represents (ex. Breeding Location, Storage Location, etc) | [optional] 


