# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test StudyNewRequestExperimentalDesign")

model.instance <- StudyNewRequestExperimentalDesign$new()

test_that("PUI", {
  # tests for the property `PUI` (character)
  # MIAPPE V1.1 (DM-23) Type of experimental design - Type of experimental  design of the study, in the form of an accession number from the Crop Ontology.

  # uncomment below to test the property 
  #expect_equal(model.instance$`PUI`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # MIAPPE V1.1 (DM-22) Description of the experimental design - Short description of the experimental design, possibly including statistical design. In specific cases, e.g. legacy datasets or data computed from several studies, the experimental design can be \&quot;unknown\&quot;/\&quot;NA\&quot;, \&quot;aggregated/reduced data\&quot;, or simply &#39;none&#39;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

