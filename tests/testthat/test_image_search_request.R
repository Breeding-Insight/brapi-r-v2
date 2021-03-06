# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ImageSearchRequest")

model.instance <- ImageSearchRequest$new()

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

test_that("descriptiveOntologyTerms", {
  # tests for the property `descriptiveOntologyTerms` (array[character])
  # A list of terms to formally describe the image to search for. Each item could be a simple Tag, an Ontology reference Id, or a full ontology URL.

  # uncomment below to test the property 
  #expect_equal(model.instance$`descriptiveOntologyTerms`, "EXPECTED_RESULT")
})

test_that("imageDbIds", {
  # tests for the property `imageDbIds` (array[character])
  # A list of image Ids to search for

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageDbIds`, "EXPECTED_RESULT")
})

test_that("imageFileNames", {
  # tests for the property `imageFileNames` (array[character])
  # Image file names to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageFileNames`, "EXPECTED_RESULT")
})

test_that("imageFileSizeMax", {
  # tests for the property `imageFileSizeMax` (integer)
  # A maximum image file size to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageFileSizeMax`, "EXPECTED_RESULT")
})

test_that("imageFileSizeMin", {
  # tests for the property `imageFileSizeMin` (integer)
  # A minimum image file size to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageFileSizeMin`, "EXPECTED_RESULT")
})

test_that("imageHeightMax", {
  # tests for the property `imageHeightMax` (integer)
  # A maximum image height to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageHeightMax`, "EXPECTED_RESULT")
})

test_that("imageHeightMin", {
  # tests for the property `imageHeightMin` (integer)
  # A minimum image height to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageHeightMin`, "EXPECTED_RESULT")
})

test_that("imageLocation", {
  # tests for the property `imageLocation` (GeoJSONSearchArea)

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageLocation`, "EXPECTED_RESULT")
})

test_that("imageNames", {
  # tests for the property `imageNames` (array[character])
  # Human readable names to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageNames`, "EXPECTED_RESULT")
})

test_that("imageTimeStampRangeEnd", {
  # tests for the property `imageTimeStampRangeEnd` (character)
  # The latest timestamp to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageTimeStampRangeEnd`, "EXPECTED_RESULT")
})

test_that("imageTimeStampRangeStart", {
  # tests for the property `imageTimeStampRangeStart` (character)
  # The earliest timestamp to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageTimeStampRangeStart`, "EXPECTED_RESULT")
})

test_that("imageWidthMax", {
  # tests for the property `imageWidthMax` (integer)
  # A maximum image width to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageWidthMax`, "EXPECTED_RESULT")
})

test_that("imageWidthMin", {
  # tests for the property `imageWidthMin` (integer)
  # A minimum image width to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`imageWidthMin`, "EXPECTED_RESULT")
})

test_that("mimeTypes", {
  # tests for the property `mimeTypes` (array[character])
  # A set of image file types to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`mimeTypes`, "EXPECTED_RESULT")
})

test_that("observationDbIds", {
  # tests for the property `observationDbIds` (array[character])
  # A list of observation Ids this image is associated with to search for

  # uncomment below to test the property 
  #expect_equal(model.instance$`observationDbIds`, "EXPECTED_RESULT")
})

test_that("observationUnitDbIds", {
  # tests for the property `observationUnitDbIds` (array[character])
  # A set of observation unit identifiers to search for.

  # uncomment below to test the property 
  #expect_equal(model.instance$`observationUnitDbIds`, "EXPECTED_RESULT")
})

