# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test GermplasmMCPDDonorInfoDonorInstitute")

model.instance <- GermplasmMCPDDonorInfoDonorInstitute$new()

test_that("instituteCode", {
  # tests for the property `instituteCode` (character)
  # MCPD (v2.1) (DONORCODE) 22. FAO WIEWS code of the donor institute. Follows INSTCODE standard.

  # uncomment below to test the property 
  #expect_equal(model.instance$`instituteCode`, "EXPECTED_RESULT")
})

test_that("instituteName", {
  # tests for the property `instituteName` (character)
  # MCPD (v2.1) (DONORNAME) 22.1  Name of the donor institute (or person). This descriptor should be used only if DONORCODE can not be filled because the FAO WIEWS code for this institute is not available.

  # uncomment below to test the property 
  #expect_equal(model.instance$`instituteName`, "EXPECTED_RESULT")
})

