# openapi::MetadataBase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datafiles** | [**array[DataFile]**](dataFile.md) | The datafiles contains a list of file URLs and metadata.  These files contain additional information related to the returned object and can be retrieved by a subsequent call.  This could be a supplementary data file, an informational file, the uploaded file where the data originated from, a generated file representing the whole dataset in a particular format, or any other related file.  | [optional] 
**status** | [**array[Status]**](status.md) | The status field contains a list of informational status messages from the server.  If no status is reported, an empty list should be returned. See Error Reporting for more information. | [optional] 


