# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test VariantSetsSearchRequestAllOf")

model.instance <- VariantSetsSearchRequestAllOf$new()

test_that("callSetDbIds", {
  # tests for the property `callSetDbIds` (array[character])
  # The CallSet to search.

  # uncomment below to test the property 
  #expect_equal(model.instance$`callSetDbIds`, "EXPECTED_RESULT")
})

test_that("variantDbIds", {
  # tests for the property `variantDbIds` (array[character])
  # The Variant to search.

  # uncomment below to test the property 
  #expect_equal(model.instance$`variantDbIds`, "EXPECTED_RESULT")
})

test_that("variantSetDbIds", {
  # tests for the property `variantSetDbIds` (array[character])
  # The VariantSet to search.

  # uncomment below to test the property 
  #expect_equal(model.instance$`variantSetDbIds`, "EXPECTED_RESULT")
})

