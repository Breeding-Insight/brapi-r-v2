# openapi::GermplasmMCPDCollectingInfoCollectingSite

Information about the location where the sample was collected
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coordinateUncertainty** | **character** | MCPD (v2.1) (COORDUNCERT) 15.5 Uncertainty associated with the coordinates in metres. Leave the value empty if the uncertainty is unknown. | [optional] 
**elevation** | **character** | MCPD (v2.1) (ELEVATION) 16. Elevation of collecting site expressed in metres above sea level. Negative values are allowed. | [optional] 
**georeferencingMethod** | **character** | MCPD (v2.1) (GEOREFMETH) 15.7  The georeferencing method used (GPS, determined from map, gazetteer, or estimated using software). Leave the value empty if georeferencing method is not known. | [optional] 
**latitudeDecimal** | **character** | MCPD (v2.1) (DECLATITUDE) 15.1 Latitude expressed in decimal degrees. Positive values are North of the Equator; negative values are South of the Equator (e.g. -44.6975). | [optional] 
**latitudeDegrees** | **character** | MCPD (v2.1) (LATITUDE) 15.2 Degrees (2 digits) minutes (2 digits), and seconds (2 digits) followed by N (North) or S (South) (e.g. 103020S). Every missing digit (minutes or seconds) should be indicated with a hyphen. Leading zeros are required (e.g. 10 | [optional] 
**locationDescription** | **character** | MCPD (v2.1) (COLLSITE) 14. Location information below the country level that describes where the accession was collected, preferable in English. This might include the distance in kilometres and direction from the nearest town, village or map grid reference point, (e.g. 7 km south of Townsville). | [optional] 
**longitudeDecimal** | **character** | MCPD (v2.1) (DECLONGITUDE) 15.3 Longitude expressed in decimal degrees. Positive values are East of the Greenwich Meridian; negative values are West of the Greenwich Meridian (e.g. +120.9123). | [optional] 
**longitudeDegrees** | **character** | MCPD (v2.1) (LONGITUDE) 15.4 Degrees (3 digits), minutes (2 digits), and seconds (2 digits) followed by E (East) or W (West) (e.g. 0762510W). Every missing digit (minutes or seconds) should be indicated with a hyphen. Leading zeros are required (e.g. 076 | [optional] 
**spatialReferenceSystem** | **character** | MCPD (v2.1) (COORDDATUM) 15.6 The geodetic datum or spatial reference system upon which the coordinates given in decimal latitude and decimal longitude are based (e.g. WGS84). The GPS uses the WGS84 datum. | [optional] 


