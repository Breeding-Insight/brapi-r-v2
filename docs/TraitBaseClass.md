# openapi::TraitBaseClass

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**alternativeAbbreviations** | **array[character]** | Other frequent abbreviations of the trait, if any. These abbreviations do not have to follow a convention | [optional] 
**attribute** | **character** | A trait can be decomposed as \&quot;Trait\&quot; &#x3D; \&quot;Entity\&quot; + \&quot;Attribute\&quot;, the attribute is the observed feature (or characteristic) of the entity e.g., for \&quot;grain colour\&quot;, attribute &#x3D; \&quot;colour\&quot; | [optional] 
**entity** | **character** | A trait can be decomposed as \&quot;Trait\&quot; &#x3D; \&quot;Entity\&quot; + \&quot;Attribute\&quot;, the entity is the part of the plant that the trait refers to e.g., for \&quot;grain colour\&quot;, entity &#x3D; \&quot;grain\&quot; | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**mainAbbreviation** | **character** | Main abbreviation for trait name. (examples: \&quot;Carotenoid content\&quot; &#x3D;&gt; \&quot;CC\&quot;) | [optional] 
**ontologyReference** | [**OntologyReference**](OntologyReference.md) |  | [optional] 
**status** | **character** | Trait status (examples: \&quot;recommended\&quot;, \&quot;obsolete\&quot;, \&quot;legacy\&quot;, etc.) | [optional] 
**synonyms** | **array[character]** | Other trait names | [optional] 
**traitClass** | **character** | Trait class. (examples: \&quot;morphological\&quot;, \&quot;phenological\&quot;, \&quot;agronomical\&quot;, \&quot;physiological\&quot;, \&quot;abiotic stress\&quot;, \&quot;biotic stress\&quot;, \&quot;biochemical\&quot;, \&quot;quality traits\&quot;, \&quot;fertility\&quot;, etc.) | [optional] 
**traitDescription** | **character** | The description of a trait | [optional] 
**traitName** | **character** | The human readable name of a trait  MIAPPE V1.1 (DM-86) Trait - Name of the (plant or environmental) trait under observation | [optional] 


