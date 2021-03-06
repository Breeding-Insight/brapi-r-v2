# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test CallSetsApi")

api.instance <- CallSetsApi$new()

test_that("CallsetsCallSetDbIdCallsGet", {
  # tests for CallsetsCallSetDbIdCallsGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Gets a list of &#x60;Calls&#x60; associated with a &#x60;CallSet&#x60;.
  # Gets a list of &#x60;Calls&#x60; associated with a &#x60;CallSet&#x60;.  ** THIS ENDPOINT USES TOKEN BASED PAGING **
  # @param call.set.db.id character The ID of the `CallSet` to be retrieved.
  # @param expand.homozygotes character Should homozygotes be expanded (true) or collapsed into a single occurrence (false) (optional)
  # @param unknown.string character The string to use as a representation for missing data (optional)
  # @param sep.phased character The string to use as a separator for phased allele calls (optional)
  # @param sep.unphased character The string to use as a separator for unphased allele calls (optional)
  # @param page.token character Used to request a specific page of data to be returned.  Tokenized pages are for large data sets which can not be efficiently broken into indexed pages. Use the nextPageToken and prevPageToken from a prior response to construct a query and move to the next or previous page respectively.  (optional)
  # @param page.size integer The size of the pages to be returned. Default is `1000`. (optional)
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [CallsListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CallsetsCallSetDbIdGet", {
  # tests for CallsetsCallSetDbIdGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Gets a &#x60;CallSet&#x60; by ID.
  # Gets a &#x60;CallSet&#x60; by ID.
  # @param call.set.db.id character The ID of the `CallSet` to be retrieved.
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [CallSetResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CallsetsGet", {
  # tests for CallsetsGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Gets a filtered list of &#x60;CallSet&#x60; JSON objects.
  # Gets a filtered list of &#x60;CallSet&#x60; JSON objects.
  # @param call.set.db.id character The ID of the `CallSet` to be retrieved. (optional)
  # @param call.set.name character The human readable name of the `CallSet` to be retrieved. (optional)
  # @param variant.set.db.id character The ID of the `VariantSet` to be retrieved. (optional)
  # @param sample.db.id character The ID of the `VariantSet` to be retrieved. (optional)
  # @param germplasm.db.id character Return only call sets generated from the Sample of this Germplasm (optional)
  # @param page integer Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`. (optional)
  # @param page.size integer The size of the pages to be returned. Default is `1000`. (optional)
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [CallSetsListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SearchCallsetsPost", {
  # tests for SearchCallsetsPost
  # base path: https://test-server.brapi.org/brapi/v2
  # Gets a list of call sets matching the search criteria.
  # Gets a list of call sets matching the search criteria.
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param call.sets.search.request CallSetsSearchRequest Study Search request (optional)
  # @return [CallSetsListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SearchCallsetsSearchResultsDbIdGet", {
  # tests for SearchCallsetsSearchResultsDbIdGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Gets a list of call sets matching the search criteria.
  # Gets a list of call sets matching the search criteria.
  # @param search.results.db.id character Unique identifier which references the search results
  # @param page integer Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`. (optional)
  # @param page.size integer The size of the pages to be returned. Default is `1000`. (optional)
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [CallSetsListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

