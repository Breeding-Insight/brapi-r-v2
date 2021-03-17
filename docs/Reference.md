# openapi::Reference

A `Reference` is a canonical assembled contig, intended to act as a reference coordinate space for other genomic annotations. A single `Reference` might represent the human chromosome 1, for instance. `References` are designed to be immutable.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**isDerived** | **character** | A sequence X is said to be derived from source sequence Y, if X and Y are of the same length and the per-base sequence divergence at A/C/G/T bases is sufficiently small. Two sequences derived from the same official sequence share the same coordinates and annotations, and can be replaced with the official sequence for certain use cases. | [optional] 
**length** | **integer** | The length of this reference&#39;s sequence. | [optional] 
**md5checksum** | **character** | The MD5 checksum uniquely representing this &#x60;Reference&#x60; as a lower-case hexadecimal string, calculated as the MD5 of the upper-case sequence excluding all whitespace characters (this is equivalent to SQ:M5 in SAM). | [optional] 
**referenceDbId** | **character** | The reference ID. Unique within the repository. | [optional] 
**referenceName** | **character** | The unique name of this reference within the Reference Set. | [optional] 
**referenceSetDbId** | **character** | The reference ID. Unique within the repository. | [optional] 
**sourceAccessions** | **array[character]** | All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) which must include a version number, e.g. &#x60;GCF_000001405.26&#x60;. | [optional] 
**sourceDivergence** | **numeric** | The &#x60;sourceDivergence&#x60; is the fraction of non-indel bases that do not match the reference this message was derived from. | [optional] 
**sourceURI** | **character** | The URI from which the sequence was obtained. Specifies a FASTA format file/string with one name, sequence pair. In most cases, clients should call the &#x60;getReferenceBases()&#x60; method to obtain sequence bases for a &#x60;Reference&#x60; instead of attempting to retrieve this URI. | [optional] 
**species** | [**OntologyTerm**](OntologyTerm.md) |  | [optional] 


