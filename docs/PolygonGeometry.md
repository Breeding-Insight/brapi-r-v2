# openapi::PolygonGeometry

An array of Linear Rings. Each Linear Ring is an array of Points.   A Point is an array of numbers. There MUST be two or more elements. The first two elements are longitude and latitude, or easting and northing, precisely in that order and using decimal numbers. Altitude or elevation MAY be included as an optional third element.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coordinates** | [**array[Array]**](array.md) | An array of linear rings | [optional] 
**type** | **character** | The literal string \&quot;Polygon\&quot; | [optional] [default to &#39;Polygon&#39;]


