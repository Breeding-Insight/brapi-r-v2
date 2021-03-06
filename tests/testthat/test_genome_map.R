# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test GenomeMap")

model.instance <- GenomeMap$new()

test_that("additionalInfo", {
  # tests for the property `additionalInfo` (map(character))
  # Additional arbitrary info

  # uncomment below to test the property 
  #expect_equal(model.instance$`additionalInfo`, "EXPECTED_RESULT")
})

test_that("comments", {
  # tests for the property `comments` (character)
  # Additional comments

  # uncomment below to test the property 
  #expect_equal(model.instance$`comments`, "EXPECTED_RESULT")
})

test_that("commonCropName", {
  # tests for the property `commonCropName` (character)
  # The common name of the crop

  # uncomment below to test the property 
  #expect_equal(model.instance$`commonCropName`, "EXPECTED_RESULT")
})

test_that("documentationURL", {
  # tests for the property `documentationURL` (character)
  # A URL to the human readable documentation of this object

  # uncomment below to test the property 
  #expect_equal(model.instance$`documentationURL`, "EXPECTED_RESULT")
})

test_that("linkageGroupCount", {
  # tests for the property `linkageGroupCount` (integer)
  # The number of linkage groups present in this genomic map

  # uncomment below to test the property 
  #expect_equal(model.instance$`linkageGroupCount`, "EXPECTED_RESULT")
})

test_that("mapDbId", {
  # tests for the property `mapDbId` (character)
  # The ID which uniquely identifies this genomic map

  # uncomment below to test the property 
  #expect_equal(model.instance$`mapDbId`, "EXPECTED_RESULT")
})

test_that("mapName", {
  # tests for the property `mapName` (character)
  # A human readable name for this genomic map

  # uncomment below to test the property 
  #expect_equal(model.instance$`mapName`, "EXPECTED_RESULT")
})

test_that("mapPUI", {
  # tests for the property `mapPUI` (character)
  # The DOI or other permanent identifier for this genomic map

  # uncomment below to test the property 
  #expect_equal(model.instance$`mapPUI`, "EXPECTED_RESULT")
})

test_that("markerCount", {
  # tests for the property `markerCount` (integer)
  # The number of markers present in this genomic map

  # uncomment below to test the property 
  #expect_equal(model.instance$`markerCount`, "EXPECTED_RESULT")
})

test_that("publishedDate", {
  # tests for the property `publishedDate` (character)
  # The date this genome was published

  # uncomment below to test the property 
  #expect_equal(model.instance$`publishedDate`, "EXPECTED_RESULT")
})

test_that("scientificName", {
  # tests for the property `scientificName` (character)
  # Full scientific binomial format name. This includes Genus, Species, and Sub-species

  # uncomment below to test the property 
  #expect_equal(model.instance$`scientificName`, "EXPECTED_RESULT")
})

test_that("type", {
  # tests for the property `type` (character)
  # The type of map this represents, usually \&quot;Genetic\&quot;

  # uncomment below to test the property 
  #expect_equal(model.instance$`type`, "EXPECTED_RESULT")
})

test_that("unit", {
  # tests for the property `unit` (character)
  # The units used to describe the data in this map

  # uncomment below to test the property 
  #expect_equal(model.instance$`unit`, "EXPECTED_RESULT")
})

