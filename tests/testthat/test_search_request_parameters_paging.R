# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SearchRequestParametersPaging")

model.instance <- SearchRequestParametersPaging$new()

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

