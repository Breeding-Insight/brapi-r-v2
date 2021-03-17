# openapi::Sample

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**column** | **integer** | The Column identifier for this samples location in the plate | [optional] 
**externalReferences** | **array[object]** | An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI. | [optional] 
**germplasmDbId** | **character** | The ID which uniquely identifies a germplasm | [optional] 
**observationUnitDbId** | **character** | The ID which uniquely identifies an observation unit | [optional] 
**plateDbId** | **character** | The ID which uniquely identifies a plate of samples | [optional] 
**plateName** | **character** | The human readable name of a plate | [optional] 
**programDbId** | **character** | The ID which uniquely identifies a program within the given database server | [optional] 
**row** | **character** | The Row identifier for this samples location in the plate | [optional] 
**sampleBarcode** | **character** | A unique identifier physically attached to the sample | [optional] 
**sampleDescription** | **character** | Description of a sample  MIAPPE V1.1 (DM-79) Sample description - Any information not captured by the other sample fields, including quantification, sample treatments and processing. | [optional] 
**sampleGroupDbId** | **character** | The ID which uniquely identifies a group of samples | [optional] 
**sampleName** | **character** | The name of the sample | [optional] 
**samplePUI** | **character** | A permanent unique identifier for the sample (DOI, URL, UUID, etc)  MIAPPE V1.1 (DM-81) External ID - An identifier for the sample in a persistent repository, comprising the name of the repository and the accession number of the observation unit therein. Submission to the EBI Biosamples repository is recommended. URI are recommended when possible.  | [optional] 
**sampleTimestamp** | **character** | The date and time a sample was collected from the field  MIAPPE V1.1 (DM-80) Collection date - The date and time when the sample was collected / harvested | [optional] 
**sampleType** | **character** | The type of sample taken. ex. &#39;DNA&#39;, &#39;RNA&#39;, &#39;Tissue&#39;, etc | [optional] 
**studyDbId** | **character** | The ID which uniquely identifies a study within the given database server | [optional] 
**takenBy** | **character** | The name or identifier of the entity which took the sample from the field | [optional] 
**tissueType** | **character** | The type of tissue sampled. ex. &#39;Leaf&#39;, &#39;Root&#39;, etc.  MIAPPE V1.1 (DM-78) Plant anatomical entity - A description of  the plant part (e.g. leaf) or the plant product (e.g. resin) from which the sample was taken, in the form of an accession number to a suitable controlled vocabulary (Plant Ontology). | [optional] 
**trialDbId** | **character** | The ID which uniquely identifies a trial within the given database server | [optional] 
**well** | **character** | The Well identifier for this samples location in the plate. Usually a concatenation of Row and Column, or just a number if the samples are not part of an ordered plate. | [optional] 
**sampleDbId** | **character** | The ID which uniquely identifies a sample  MIAPPE V1.1 (DM-76) Sample ID - Unique identifier for the sample. | [optional] 


