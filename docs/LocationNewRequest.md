# openapi::LocationNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**abbreviation** | **character** | An abbreviation which represents this location | [optional] 
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**coordinateDescription** | **character** | Describes the precision and landmarks of the coordinate values used for this location. (ex. the site, the nearest town, a 10 kilometers radius circle, +/- 20 meters, etc) | [optional] 
**coordinateUncertainty** | **character** | Uncertainty associated with the coordinates in meters. Leave the value empty if the uncertainty is unknown. | [optional] 
**coordinates** | [**GeoJSON**](geoJSON.md) |  | [optional] 
**countryCode** | **character** |  [ISO_3166-1_alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) spec MIAPPE V1.1 (DM-17) Geographic location (country) - The country where the experiment took place, either as a full name or preferably as a 2-letter code. | [optional] 
**countryName** | **character** | The full name of the country where this location is  MIAPPE V1.1 (DM-17) Geographic location (country) - The country where the experiment took place, either as a full name or preferably as a 2-letter code. | [optional] 
**documentationURL** | **character** | A URL to the human readable documentation of this object | [optional] 
**environmentType** | **character** | Describes the general type of environment of the location. (ex. forest, field, nursery, etc) | [optional] 
**exposure** | **character** | Describes the level of protection/exposure for things like sun light and wind. | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**instituteAddress** | **character** | The street address of the institute representing this location  MIAPPE V1.1 (DM-16) Contact institution - Name and address of the institution responsible for the study. | [optional] 
**instituteName** | **character** | Each institute/laboratory can have several experimental field  MIAPPE V1.1 (DM-16) Contact institution - Name and address of the institution responsible for the study. | [optional] 
**locationName** | **character** | A human readable name for this location  MIAPPE V1.1 (DM-18) Experimental site name - The name of the natural site, experimental field, greenhouse, phenotyping facility, etc. where the experiment took place. | [optional] 
**locationType** | **character** | The type of location this represents (ex. Breeding Location, Storage Location, etc) | [optional] 
**siteStatus** | **character** | Description of the accessibility of the location (ex. Public, Private) | [optional] 
**slope** | **character** | Describes the approximate slope (height/distance) of the location. | [optional] 
**topography** | **character** | Describes the topography of the land at the location. (ex. Plateau, Cirque, Hill, Valley, etc) | [optional] 


