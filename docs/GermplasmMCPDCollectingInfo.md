# openapi::GermplasmMCPDCollectingInfo

Information about the collection of this germplasm
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collectingDate** | **character** | MCPD (v2.1) (COLLDATE) 17. Collecting date of the sample [YYYYMMDD] where YYYY is the year, MM is the month and DD is the day. Missing data (MM or DD) should be indicated with hyphens or \&quot;00\&quot; [double zero]. | [optional] 
**collectingInstitutes** | [**array[GermplasmMCPDCollectingInfoCollectingInstitutes]**](GermplasmMCPD_collectingInfo_collectingInstitutes.md) | Institutes which collected the sample | [optional] 
**collectingMissionIdentifier** | **character** | MCPD (v2.1) (COLLMISSID) 4.2 Identifier of the collecting mission used by the Collecting Institute (4 or 4.1) (e.g. \&quot;CIATFOR_052\&quot;, \&quot;CN_426\&quot;). | [optional] 
**collectingNumber** | **character** | MCPD (v2.1) (COLLNUMB) 3. Original identifier assigned by the collector(s) of the sample, normally composed of the name or initials of the collector(s) followed by a number (e.g. \&quot;ab109909\&quot;). This identifier is essential for identifying duplicates held in different collections. | [optional] 
**collectingSite** | [**GermplasmMCPDCollectingInfoCollectingSite**](GermplasmMCPD_collectingInfo_collectingSite.md) |  | [optional] 


