# openapi::GermplasmMCPDCollectingInfoCollectingInstitutes

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instituteAddress** | **character** | MCPD (v2.1) (COLLINSTADDRESS) 4.1.1  Address of the institute collecting the sample. This descriptor should be used only if COLLCODE can not be filled since the FAO WIEWS code for this institute is not available. Multiple values are separated by a semicolon without space. | [optional] 
**instituteCode** | **character** | MCPD (v2.1) (COLLCODE) 4.  FAO WIEWS code of the institute collecting the sample. If the holding institute has collected the material, the collecting institute code (COLLCODE) should be the same as the holding institute code (INSTCODE). Follows INSTCODE standard. Multiple values are separated by a semicolon without space. | [optional] 
**instituteName** | **character** | MCPD (v2.1) (COLLNAME) 4.1  Name of the institute collecting the sample. This descriptor should be used only if COLLCODE can not be filled because the FAO WIEWS code for this institute is not available. Multiple values are separated by a semicolon without space. | [optional] 


