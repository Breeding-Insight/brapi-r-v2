# openapi::PersonNewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**description** | **character** | description of this person | [optional] 
**emailAddress** | **character** | email address for this person | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**firstName** | **character** | Persons first name | [optional] 
**lastName** | **character** | Persons last name | [optional] 
**mailingAddress** | **character** | physical address of this person | [optional] 
**middleName** | **character** | Persons middle name | [optional] 
**phoneNumber** | **character** | phone number of this person | [optional] 
**userID** | **character** | A systems user ID associated with this person. Different from personDbId because you could have a person who is not a user of the system. | [optional] 


