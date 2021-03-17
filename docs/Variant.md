# openapi::Variant

A `Variant` represents a change in DNA sequence relative to some reference. For example, a variant could represent a SNP or an insertion. Variants belong to a `VariantSet`. This is equivalent to a row in VCF.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalInfo** | **map(character)** | Additional arbitrary info | [optional] 
**alternate_bases** | **array[character]** | The bases that appear instead of the reference bases. Multiple alternate alleles are possible. | [optional] 
**ciend** | **array[integer]** | Similar to \&quot;cipos\&quot;, but for the variant&#39;s end position (which is derived from start + svlen). | [optional] 
**cipos** | **array[integer]** | In the case of structural variants, start and end of the variant may not be known with an exact base position. \&quot;cipos\&quot; provides an interval with high confidence for the start position. The interval is provided by 0 or 2 signed integers which are added to the start position. Based on the use in VCF v4.2 | [optional] 
**created** | **character** | The timestamp when this variant was created. | [optional] 
**end** | **integer** | This field is optional and may be ignored if there is no relevant map or reference to be associated with.  The end position (exclusive), resulting in [start, end) closed-open interval. This is typically calculated  by &#x60;start + referenceBases.length&#x60;. | [optional] 
**filtersApplied** | **character** | True if filters were applied for this variant. VCF column 7 \&quot;FILTER\&quot; any value other than the missing value. | [optional] 
**filtersFailed** | **array[character]** | Zero or more filters that failed for this variant. VCF column 7 \&quot;FILTER\&quot; shared across all alleles in the same VCF record. | [optional] 
**filtersPassed** | **character** | True if all filters for this variant passed. VCF column 7 \&quot;FILTER\&quot; value PASS. | [optional] 
**referenceBases** | **character** | The reference bases for this variant. They start at the given start position. | [optional] 
**referenceName** | **character** | The reference on which this variant occurs. (e.g. &#x60;chr_20&#x60; or &#x60;X&#x60;) | [optional] 
**start** | **integer** | This field is optional and may be ignored if there is no relevant map or reference to be associated with.  The start position at which this variant occurs (0-based). This corresponds to the first base of the string  of reference bases. Genomic positions are non-negative integers less than reference length. Variants spanning  the join of circular genomes are represented as two variants one on each side of the join (position 0). | [optional] 
**svlen** | **integer** | Length of the - if labeled as such in variant_type - structural variation. Based on the use in VCF v4.2 | [optional] 
**updated** | **character** | The time at which this variant was last updated. | [optional] 
**variantDbId** | **character** | The variant ID. | [optional] 
**variantNames** | **array[character]** | Names for the variant, for example a RefSNP ID. | [optional] 
**variantSetDbId** | **array[character]** | An array of &#x60;VariantSet&#x60; IDs this variant belongs to. This also defines the &#x60;ReferenceSet&#x60; against which the &#x60;Variant&#x60; is to be interpreted. | [optional] 
**variantType** | **character** | The \&quot;variant_type\&quot; is used to denote e.g. structural variants. Examples:   DUP  : duplication of sequence following \&quot;start\&quot;   DEL  : deletion of sequence following \&quot;start\&quot; | [optional] 


