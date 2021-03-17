# openapi::PersonSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** | Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;. | [optional] 
**pageSize** | **integer** | The size of the pages to be returned. Default is &#x60;1000&#x60;. | [optional] 
**externalReferenceIDs** | **array[character]** | List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter) | [optional] 
**externalReferenceSources** | **array[character]** | List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter) | [optional] 
**emailAddresses** | **array[character]** | email address for this person | [optional] 
**firstNames** | **array[character]** | Persons first name | [optional] 
**lastNames** | **array[character]** | Persons last name | [optional] 
**mailingAddresses** | **array[character]** | physical address of this person | [optional] 
**middleNames** | **array[character]** | Persons middle name | [optional] 
**personDbIds** | **array[character]** | Unique ID for this person | [optional] 
**phoneNumbers** | **array[character]** | phone number of this person | [optional] 
**userIDs** | **array[character]** | A systems user ID associated with this person. Different from personDbId because you could have a person who is not a user of the system. | [optional] 


