# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test VendorPlateSubmissionRequest")

model.instance <- VendorPlateSubmissionRequest$new()

test_that("clientId", {
  # tests for the property `clientId` (character)
  # A unique, alpha-numeric ID which identifies the client to the vendor. Used to connect the order to the contract, billing, and contact info.

  # uncomment below to test the property 
  #expect_equal(model.instance$`clientId`, "EXPECTED_RESULT")
})

test_that("numberOfSamples", {
  # tests for the property `numberOfSamples` (integer)
  # The total number of samples contained in this request. Used for billing and basic validation of the request.

  # uncomment below to test the property 
  #expect_equal(model.instance$`numberOfSamples`, "EXPECTED_RESULT")
})

test_that("plates", {
  # tests for the property `plates` (array[VendorPlateSubmissionRequestPlates])
  # Array of new plates to be submitted to a vendor

  # uncomment below to test the property 
  #expect_equal(model.instance$`plates`, "EXPECTED_RESULT")
})

test_that("sampleType", {
  # tests for the property `sampleType` (character)
  # The type of Samples being submitted

  # uncomment below to test the property 
  #expect_equal(model.instance$`sampleType`, "EXPECTED_RESULT")
})

