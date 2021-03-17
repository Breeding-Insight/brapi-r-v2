# openapi::Method

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**bibliographicalReference** | **character** | Bibliographical reference describing the method.  MIAPPE V1.1 (DM-91) Reference associated to the method - URI/DOI of reference describing the method. | [optional] 
**description** | **character** | Method description  MIAPPE V1.1 (DM-90) Method description - Textual description of the method, which may extend a method defined in an external reference with specific parameters, e.g. growth stage, inoculation precise organ (leaf number) | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**formula** | **character** | For computational methods i.e., when the method consists in assessing the trait by computing measurements, write the generic formula used for the calculation | [optional] 
**methodClass** | **character** | Method class (examples: \&quot;Measurement\&quot;, \&quot;Counting\&quot;, \&quot;Estimation\&quot;, \&quot;Computation\&quot;, etc.) | [optional] 
**methodName** | **character** | Human readable name for the method  MIAPPE V1.1 (DM-88) Method  Name of the method of observation | [optional] 
**ontologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**methodDbId** | **character** | Method unique identifier | [optional] 


