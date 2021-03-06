# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test Trait")

model.instance <- Trait$new()

test_that("additionalInfo", {
  # tests for the property `additionalInfo` (map(character))
  # Additional arbitrary info

  # uncomment below to test the property 
  #expect_equal(model.instance$`additionalInfo`, "EXPECTED_RESULT")
})

test_that("alternativeAbbreviations", {
  # tests for the property `alternativeAbbreviations` (array[character])
  # Other frequent abbreviations of the trait, if any. These abbreviations do not have to follow a convention

  # uncomment below to test the property 
  #expect_equal(model.instance$`alternativeAbbreviations`, "EXPECTED_RESULT")
})

test_that("attribute", {
  # tests for the property `attribute` (character)
  # A trait can be decomposed as \&quot;Trait\&quot; &#x3D; \&quot;Entity\&quot; + \&quot;Attribute\&quot;, the attribute is the observed feature (or characteristic) of the entity e.g., for \&quot;grain colour\&quot;, attribute &#x3D; \&quot;colour\&quot;

  # uncomment below to test the property 
  #expect_equal(model.instance$`attribute`, "EXPECTED_RESULT")
})

test_that("entity", {
  # tests for the property `entity` (character)
  # A trait can be decomposed as \&quot;Trait\&quot; &#x3D; \&quot;Entity\&quot; + \&quot;Attribute\&quot;, the entity is the part of the plant that the trait refers to e.g., for \&quot;grain colour\&quot;, entity &#x3D; \&quot;grain\&quot;

  # uncomment below to test the property 
  #expect_equal(model.instance$`entity`, "EXPECTED_RESULT")
})

test_that("externalReferences", {
  # tests for the property `externalReferences` (array[object])
  # An array of external reference ids. These are references to this piece of data in an external system. Could be a simple string or a URI.

  # uncomment below to test the property 
  #expect_equal(model.instance$`externalReferences`, "EXPECTED_RESULT")
})

test_that("mainAbbreviation", {
  # tests for the property `mainAbbreviation` (character)
  # Main abbreviation for trait name. (examples: \&quot;Carotenoid content\&quot; &#x3D;&gt; \&quot;CC\&quot;)

  # uncomment below to test the property 
  #expect_equal(model.instance$`mainAbbreviation`, "EXPECTED_RESULT")
})

test_that("ontologyReference", {
  # tests for the property `ontologyReference` (OntologyReference)

  # uncomment below to test the property 
  #expect_equal(model.instance$`ontologyReference`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (character)
  # Trait status (examples: \&quot;recommended\&quot;, \&quot;obsolete\&quot;, \&quot;legacy\&quot;, etc.)

  # uncomment below to test the property 
  #expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("synonyms", {
  # tests for the property `synonyms` (array[character])
  # Other trait names

  # uncomment below to test the property 
  #expect_equal(model.instance$`synonyms`, "EXPECTED_RESULT")
})

test_that("traitClass", {
  # tests for the property `traitClass` (character)
  # Trait class. (examples: \&quot;morphological\&quot;, \&quot;phenological\&quot;, \&quot;agronomical\&quot;, \&quot;physiological\&quot;, \&quot;abiotic stress\&quot;, \&quot;biotic stress\&quot;, \&quot;biochemical\&quot;, \&quot;quality traits\&quot;, \&quot;fertility\&quot;, etc.)

  # uncomment below to test the property 
  #expect_equal(model.instance$`traitClass`, "EXPECTED_RESULT")
})

test_that("traitDescription", {
  # tests for the property `traitDescription` (character)
  # The description of a trait

  # uncomment below to test the property 
  #expect_equal(model.instance$`traitDescription`, "EXPECTED_RESULT")
})

test_that("traitName", {
  # tests for the property `traitName` (character)
  # The human readable name of a trait  MIAPPE V1.1 (DM-86) Trait - Name of the (plant or environmental) trait under observation

  # uncomment below to test the property 
  #expect_equal(model.instance$`traitName`, "EXPECTED_RESULT")
})

test_that("traitDbId", {
  # tests for the property `traitDbId` (character)
  # The ID which uniquely identifies a trait

  # uncomment below to test the property 
  #expect_equal(model.instance$`traitDbId`, "EXPECTED_RESULT")
})

