# openapi::Call

A `Call` represents the determination of genotype with respect to a particular `Variant`.  It may include associated information such as quality and phasing. For example, a call might assign a probability of 0.32 to the occurrence of a SNP named RS_1234 in a call set with the name NA_12345.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**callSetDbId** | **character** | The ID of the call set this variant call belongs to.  If this field is not present, the ordering of the call sets from a &#x60;SearchCallSetsRequest&#x60; over this &#x60;VariantSet&#x60; is guaranteed to match the ordering of the calls on this &#x60;Variant&#x60;. The number of results will also be the same. | [optional] 
**callSetName** | **character** | The name of the call set this variant call belongs to. If this field is not present, the ordering of the call sets from a &#x60;SearchCallSetsRequest&#x60; over this &#x60;VariantSet&#x60; is guaranteed to match the ordering of the calls on this &#x60;Variant&#x60;. The number of results will also be the same. | [optional] 
**genotype** | [**ListValue**](ListValue.md) |  | [optional] 
**genotype_likelihood** | **array[numeric]** | The genotype likelihood for this variant call. Each array entry represents how likely a specific genotype is for this call as log10(P(data | genotype)), analogous to the GL tag in the VCF spec. The value ordering is defined by the GL tag in the VCF spec. | [optional] 
**phaseSet** | **character** | If this field is populated, this variant call&#39;s genotype ordering implies the phase of the bases and is consistent with any other variant calls on the same contig which have the same phase set string. | [optional] 
**variantDbId** | **character** | The ID of the variant this call belongs to. | [optional] 
**variantName** | **character** | The name of the variant this call belongs to. | [optional] 


