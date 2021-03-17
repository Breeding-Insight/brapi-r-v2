# openapi::ObservationUnitHierarchyLevel

Observation levels indicate the granularity level at which the measurements are taken. `levelName` defines the level, `levelOrder` defines where that level exists in the hierarchy of levels. `levelOrder`s lower numbers are at the top of the hierarchy (ie field > 0) and higher numbers are at the bottom of the hierarchy (ie plant > 6). 
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**levelName** | **character** | A name for this level | [optional] 
**levelOrder** | **integer** | &#x60;levelOrder&#x60; defines where that level exists in the hierarchy of levels. &#x60;levelOrder&#x60;&#39;s lower numbers are at the top of the hierarchy (ie field -&gt; 1) and higher numbers are at the bottom of the hierarchy (ie plant -&gt; 9). | [optional] 


