# openapi::VendorPlateSubmissionRequest

Request object structure to submit plate data to a vendor
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **character** | A unique, alpha-numeric ID which identifies the client to the vendor. Used to connect the order to the contract, billing, and contact info. | 
**numberOfSamples** | **integer** | The total number of samples contained in this request. Used for billing and basic validation of the request. | 
**plates** | [**array[VendorPlateSubmissionRequestPlates]**](VendorPlateSubmissionRequest_plates.md) | Array of new plates to be submitted to a vendor | 
**sampleType** | **character** | The type of Samples being submitted | 


