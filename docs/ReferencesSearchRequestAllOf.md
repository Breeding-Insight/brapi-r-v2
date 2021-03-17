# openapi::ReferencesSearchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessions** | **array[character]** | If specified, return the references for which the &#x60;accession&#x60; matches this string (case-sensitive, exact match). | [optional] 
**isDerived** | **character** | A sequence X is said to be derived from source sequence Y, if X and Y are of the same length and the per-base sequence divergence at A/C/G/T bases is sufficiently small. Two sequences derived from the same official sequence share the same coordinates and annotations, and can be replaced with the official sequence for certain use cases. | [optional] 
**maxLength** | **integer** | The minimum length of this reference&#39;s sequence. | [optional] 
**md5checksums** | **array[character]** | If specified, return the references for which the &#x60;md5checksum&#x60; matches this string (case-sensitive, exact match). | [optional] 
**minLength** | **integer** | The minimum length of this reference&#39;s sequence. | [optional] 
**referenceDbIds** | **array[character]** | The &#x60;References&#x60; to search. | [optional] 
**referenceSetDbIds** | **array[character]** | The &#x60;ReferenceSets&#x60; to search. | [optional] 


