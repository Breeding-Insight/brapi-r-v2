# openapi::VariantSetAvailableFormats

Each 'availableFormat' object is a pairing of dataFormat and fileFormat. These must be communicated in pairs because they are not independant parameters and sometimes one influences the other.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dataFormat** | **character** | dataFormat defines the structure of the data within a file (ie DartSeq, VCF, Hapmap, tabular, etc) | [optional] 
**fileFormat** | **character** | fileFormat defines the MIME type of the file (ie text/csv, application/excel, application/zip). This should also be reflected in the Accept and ContentType HTTP headers for every relevant request and response. | [optional] 
**fileURL** | **character** | A URL which indicates the location of the file version of this VariantSet. Could be a static file URL or an API endpoint which generates the file. | [optional] 


