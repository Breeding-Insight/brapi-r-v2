# openapi::ObservationVariable

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**commonCropName** | **character** | Crop name (examples: \&quot;Maize\&quot;, \&quot;Wheat\&quot;) | [optional] 
**contextOfUse** | **array[character]** | Indication of how trait is routinely used. (examples: [\&quot;Trial evaluation\&quot;, \&quot;Nursery evaluation\&quot;]) | [optional] 
**defaultValue** | **character** | Variable default value. (examples: \&quot;red\&quot;, \&quot;2.3\&quot;, etc.) | [optional] 
**documentationURL** | **character** | A URL to the human readable documentation of this object | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**growthStage** | **character** | Growth stage at which measurement is made (examples: \&quot;flowering\&quot;) | [optional] 
**institution** | **character** | Name of institution submitting the variable | [optional] 
**language** | **character** | 2 letter ISO 639-1 code for the language of submission of the variable. | [optional] 
**method** | [**MethodBaseClass**](MethodBaseClass.md) |  | 
**ontologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**scale** | [**ScaleBaseClass**](ScaleBaseClass.md) |  | 
**scientist** | **character** | Name of scientist submitting the variable. | [optional] 
**status** | **character** | Variable status. (examples: \&quot;recommended\&quot;, \&quot;obsolete\&quot;, \&quot;legacy\&quot;, etc.) | [optional] 
**submissionTimestamp** | **character** | Timestamp when the Variable was added (ISO 8601) | [optional] 
**synonyms** | **array[character]** | Other variable names | [optional] 
**trait** | [**TraitBaseClass**](TraitBaseClass.md) |  | 
**observationVariableDbId** | **character** | Variable unique identifier  MIAPPE V1.1 (DM-83) Variable ID - Code used to identify the variable in the data file. We recommend using a variable definition from the Crop Ontology where possible. Otherwise, the Crop Ontology naming convention is recommended: &lt;trait abbreviation&gt;_&lt;method abbreviation&gt;_&lt;scale abbreviation&gt;). A variable ID must be unique within a given investigation. | 
**observationVariableName** | **character** | Variable name (usually a short name)  MIAPPE V1.1 (DM-84) Variable name - Name of the variable. | 


