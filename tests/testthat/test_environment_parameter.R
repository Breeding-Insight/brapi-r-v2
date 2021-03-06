# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test EnvironmentParameter")

model.instance <- EnvironmentParameter$new()

test_that("description", {
  # tests for the property `description` (character)
  # Human-readable value of the environment parameter (defined above) constant within the experiment

  # uncomment below to test the property 
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("parameterName", {
  # tests for the property `parameterName` (character)
  # Name of the environment parameter constant within the experiment  MIAPPE V1.1 (DM-58) Environment parameter - Name of the environment parameter constant within the experiment. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`parameterName`, "EXPECTED_RESULT")
})

test_that("parameterPUI", {
  # tests for the property `parameterPUI` (character)
  # URI pointing to an ontology class for the parameter

  # uncomment below to test the property 
  #expect_equal(model.instance$`parameterPUI`, "EXPECTED_RESULT")
})

test_that("unit", {
  # tests for the property `unit` (character)
  # Unit of the value for this parameter

  # uncomment below to test the property 
  #expect_equal(model.instance$`unit`, "EXPECTED_RESULT")
})

test_that("unitPUI", {
  # tests for the property `unitPUI` (character)
  # URI pointing to an ontology class for the unit

  # uncomment below to test the property 
  #expect_equal(model.instance$`unitPUI`, "EXPECTED_RESULT")
})

test_that("value", {
  # tests for the property `value` (character)
  # Numerical or categorical value  MIAPPE V1.1 (DM-59) Environment parameter value - Value of the environment parameter (defined above) constant within the experiment.

  # uncomment below to test the property 
  #expect_equal(model.instance$`value`, "EXPECTED_RESULT")
})

test_that("valuePUI", {
  # tests for the property `valuePUI` (character)
  # URI pointing to an ontology class for the parameter value

  # uncomment below to test the property 
  #expect_equal(model.instance$`valuePUI`, "EXPECTED_RESULT")
})

