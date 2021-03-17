# openapi::ReferenceSet

A `ReferenceSet` is a set of `Reference` s which typically comprise a reference assembly, such as `GRCH_38`. A `ReferenceSet` defines a common coordinate space for comparing reference-aligned experimental data.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**assemblyPUI** | **character** | The remaining information is about the source of the sequences Public id of this reference set, such as &#x60;GRCH_37&#x60;. | [optional] 
**description** | **character** | Optional free text description of this reference set. | [optional] 
**isDerived** | **character** | A reference set may be derived from a source if it contains additional sequences, or some of the sequences within it are derived (see the definition of &#x60;isDerived&#x60; in &#x60;Reference&#x60;). | [optional] 
**md5checksum** | **character** | Order-independent MD5 checksum which identifies this &#x60;ReferenceSet&#x60;.  To compute this checksum, make a list of &#x60;Reference.md5checksum&#x60; for all &#x60;Reference&#x60; s in this set. Then sort that list, and take the MD5 hash of all the strings concatenated together. Express the hash as a lower-case hexadecimal string. | [optional] 
**referenceSetDbId** | **character** | The reference set ID. Unique in the repository. | [optional] 
**referenceSetName** | **character** | The reference set name. | [optional] 
**sourceAccessions** | **array[character]** | All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with a version number, e.g. &#x60;NC_000001.11&#x60;. | [optional] 
**sourceURI** | **character** | Specifies a FASTA format file/string. | [optional] 
**species** | [**OntologyTerm**](OntologyTerm.md) |  | [optional] 


