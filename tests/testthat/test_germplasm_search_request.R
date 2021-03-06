# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test GermplasmSearchRequest")

model.instance <- GermplasmSearchRequest$new()

test_that("page", {
  # tests for the property `page` (integer)
  # Which result page is requested. The page indexing starts at 0 (the first page is &#39;page&#39;&#x3D; 0). Default is &#x60;0&#x60;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`page`, "EXPECTED_RESULT")
})

test_that("pageSize", {
  # tests for the property `pageSize` (integer)
  # The size of the pages to be returned. Default is &#x60;1000&#x60;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`pageSize`, "EXPECTED_RESULT")
})

test_that("commonCropNames", {
  # tests for the property `commonCropNames` (array[character])
  # Common name for the crop which this program is for

  # uncomment below to test the property 
  #expect_equal(model.instance$`commonCropNames`, "EXPECTED_RESULT")
})

test_that("germplasmDbIds", {
  # tests for the property `germplasmDbIds` (array[character])
  # List of IDs which uniquely identify germplasm to search for

  # uncomment below to test the property 
  #expect_equal(model.instance$`germplasmDbIds`, "EXPECTED_RESULT")
})

test_that("germplasmNames", {
  # tests for the property `germplasmNames` (array[character])
  # List of human readable names to identify germplasm to search for

  # uncomment below to test the property 
  #expect_equal(model.instance$`germplasmNames`, "EXPECTED_RESULT")
})

test_that("studyDbIds", {
  # tests for the property `studyDbIds` (array[character])
  # List of study identifiers to search for

  # uncomment below to test the property 
  #expect_equal(model.instance$`studyDbIds`, "EXPECTED_RESULT")
})

test_that("studyNames", {
  # tests for the property `studyNames` (array[character])
  # List of study names to filter search results

  # uncomment below to test the property 
  #expect_equal(model.instance$`studyNames`, "EXPECTED_RESULT")
})

test_that("externalReferenceIDs", {
  # tests for the property `externalReferenceIDs` (array[character])
  # List of external reference IDs. Could be a simple strings or a URIs. (use with &#x60;externalReferenceSources&#x60; parameter)

  # uncomment below to test the property 
  #expect_equal(model.instance$`externalReferenceIDs`, "EXPECTED_RESULT")
})

test_that("externalReferenceSources", {
  # tests for the property `externalReferenceSources` (array[character])
  # List of identifiers for the source system or database of an external reference (use with &#x60;externalReferenceIDs&#x60; parameter)

  # uncomment below to test the property 
  #expect_equal(model.instance$`externalReferenceSources`, "EXPECTED_RESULT")
})

test_that("accessionNumbers", {
  # tests for the property `accessionNumbers` (array[character])
  # List unique identifiers for accessions within a genebank

  # uncomment below to test the property 
  #expect_equal(model.instance$`accessionNumbers`, "EXPECTED_RESULT")
})

test_that("collections", {
  # tests for the property `collections` (array[character])
  # A specific panel/collection/population name this germplasm belongs to.

  # uncomment below to test the property 
  #expect_equal(model.instance$`collections`, "EXPECTED_RESULT")
})

test_that("genus", {
  # tests for the property `genus` (array[character])
  # List of Genus names to identify germplasm

  # uncomment below to test the property 
  #expect_equal(model.instance$`genus`, "EXPECTED_RESULT")
})

test_that("germplasmPUIs", {
  # tests for the property `germplasmPUIs` (array[character])
  # List of Permanent Unique Identifiers to identify germplasm

  # uncomment below to test the property 
  #expect_equal(model.instance$`germplasmPUIs`, "EXPECTED_RESULT")
})

test_that("parentDbIds", {
  # tests for the property `parentDbIds` (array[character])
  # Search for Germplasm with these parents

  # uncomment below to test the property 
  #expect_equal(model.instance$`parentDbIds`, "EXPECTED_RESULT")
})

test_that("progenyDbIds", {
  # tests for the property `progenyDbIds` (array[character])
  # Search for Germplasm with these children

  # uncomment below to test the property 
  #expect_equal(model.instance$`progenyDbIds`, "EXPECTED_RESULT")
})

test_that("species", {
  # tests for the property `species` (array[character])
  # List of Species names to identify germplasm

  # uncomment below to test the property 
  #expect_equal(model.instance$`species`, "EXPECTED_RESULT")
})

test_that("synonyms", {
  # tests for the property `synonyms` (array[character])
  # List of alternative names or IDs used to reference this germplasm

  # uncomment below to test the property 
  #expect_equal(model.instance$`synonyms`, "EXPECTED_RESULT")
})

