# openapi::VendorOrderSubmissionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **character** | A unique, alpha-numeric ID which identifies the client to the vendor. Used to connect the order to the contract, billing, and contact info. | 
**numberOfSamples** | **integer** | The total number of samples contained in this request. Used for billing and basic validation of the request. | 
**plates** | [**array[VendorPlateSubmissionRequestPlates]**](VendorPlateSubmissionRequest_plates.md) | Array of new plates to be submitted to a vendor | 
**sampleType** | **character** | The type of Samples being submitted | 
**requiredServiceInfo** | **map(character)** | A map of additional data required by the requested service. This includes things like Volume and Concentration. | [optional] 
**serviceIds** | **array[character]** | A list of unique, alpha-numeric ID which identify the requested services to be applied to this order.  A Vendor Service defines what platform, technology, and markers will be used.  A list of available service IDs can be retrieved from the Vendor Specs. | 


