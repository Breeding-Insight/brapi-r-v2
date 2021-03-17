# openapi::ReferenceBases

A string representation of the reference base alleles.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nextPageToken** | **character** | The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there are not any additional results. | [optional] 
**offset** | **integer** | The offset position (0-based) of the given sequence from the start of this &#x60;Reference&#x60;. This value will differ for each page in a request. | [optional] 
**sequence** | **character** | A sub-string of the bases that make up this reference. Bases are represented as IUPAC-IUB codes; this string matches the regular expression &#x60;[ACGTMRWSYKVHDBN]*&#x60;. | [optional] 


