# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SampleSearchRequest")

model.instance <- SampleSearchRequest$new()

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

test_that("observationUnitDbIds", {
  # tests for the property `observationUnitDbIds` (array[character])
  # The ID which uniquely identifies an observation unit

  # uncomment below to test the property 
  #expect_equal(model.instance$`observationUnitDbIds`, "EXPECTED_RESULT")
})

test_that("plateDbIds", {
  # tests for the property `plateDbIds` (array[character])
  # The ID which uniquely identifies a plate of samples

  # uncomment below to test the property 
  #expect_equal(model.instance$`plateDbIds`, "EXPECTED_RESULT")
})

test_that("sampleDbIds", {
  # tests for the property `sampleDbIds` (array[character])
  # The ID which uniquely identifies a sample

  # uncomment below to test the property 
  #expect_equal(model.instance$`sampleDbIds`, "EXPECTED_RESULT")
})

