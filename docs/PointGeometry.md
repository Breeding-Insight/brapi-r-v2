# openapi::PointGeometry

Copied from RFC 7946 Section 3.1.1  A position is an array of numbers. There MUST be two or more elements. The first two elements are longitude and latitude, or easting and northing, precisely in that order and using decimal numbers. Altitude or elevation MAY be included as an optional third element.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coordinates** | **array[numeric]** | A single position | [optional] 
**type** | **character** | The literal string \&quot;Point\&quot; | [optional] [default to &#39;Point&#39;]


