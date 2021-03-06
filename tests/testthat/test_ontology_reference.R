# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test OntologyReference")

model.instance <- OntologyReference$new()

test_that("documentationLinks", {
  # tests for the property `documentationLinks` (array[OntologyReferenceDocumentationLinks])
  # links to various ontology documentation

  # uncomment below to test the property 
  #expect_equal(model.instance$`documentationLinks`, "EXPECTED_RESULT")
})

test_that("ontologyDbId", {
  # tests for the property `ontologyDbId` (character)
  # Ontology database unique identifier

  # uncomment below to test the property 
  #expect_equal(model.instance$`ontologyDbId`, "EXPECTED_RESULT")
})

test_that("ontologyName", {
  # tests for the property `ontologyName` (character)
  # Ontology name

  # uncomment below to test the property 
  #expect_equal(model.instance$`ontologyName`, "EXPECTED_RESULT")
})

test_that("version", {
  # tests for the property `version` (character)
  # Ontology version (no specific format)

  # uncomment below to test the property 
  #expect_equal(model.instance$`version`, "EXPECTED_RESULT")
})

