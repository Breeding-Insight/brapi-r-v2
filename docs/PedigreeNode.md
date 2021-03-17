# openapi::PedigreeNode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crossingProjectDbId** | **character** | The crossing project used to generate this germplasm | [optional] 
**crossingYear** | **integer** | The year the parents were originally crossed | [optional] 
**familyCode** | **character** | The code representing the family | [optional] 
**germplasmDbId** | **character** | The ID which uniquely identifies a germplasm | 
**germplasmName** | **character** | A human readable name for a germplasm | [optional] 
**parents** | [**array[PedigreeNodeParents]**](PedigreeNode_parents.md) | List of parent nodes in the pedigree tree. | [optional] 
**pedigree** | **character** | The string representation of the pedigree. | [optional] 
**siblings** | [**array[PedigreeNodeSiblings]**](PedigreeNode_siblings.md) | List of sibling germplasm | [optional] 


