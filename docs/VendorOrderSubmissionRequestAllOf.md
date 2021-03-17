# openapi::VendorOrderSubmissionRequestAllOf

Request object structure to submit plate data to a vendor
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requiredServiceInfo** | **map(character)** | A map of additional data required by the requested service. This includes things like Volume and Concentration. | [optional] 
**serviceIds** | **array[character]** | A list of unique, alpha-numeric ID which identify the requested services to be applied to this order.  A Vendor Service defines what platform, technology, and markers will be used.  A list of available service IDs can be retrieved from the Vendor Specs. | 


