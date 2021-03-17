# openapi::VendorPlateSubmission

Response of a plate submission
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **character** | A unique, alpha-numeric ID which identifies the client to the vendor. Used to connect the order to the contract, billing, and contact info. | 
**numberOfSamples** | **integer** | The total number of samples contained in this request. Used for billing and basic validation of the request. | 
**plates** | [**array[VendorPlateSubmissionPlates]**](VendorPlateSubmission_plates.md) | Array of new plates to be submitted to a vendor | 


