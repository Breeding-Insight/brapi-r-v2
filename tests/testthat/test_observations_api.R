# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ObservationsApi")

api.instance <- ObservationsApi$new()

test_that("ObservationsGet", {
  # tests for ObservationsGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Get a filtered set of Observations
  # Retrieve all observations where there are measurements for the given observation variables.  observationTimestamp should be ISO8601 format with timezone -&gt; YYYY-MM-DDThh:mm:ss+hhmm
  # @param observation.db.id character The unique ID of an Observation (optional)
  # @param observation.unit.db.id character The unique ID of an Observation Unit (optional)
  # @param germplasm.db.id character The unique ID of a germplasm (accession) to filter on (optional)
  # @param observation.variable.db.id character The unique ID of an observation variable (optional)
  # @param study.db.id character The unique ID of a studies to filter on (optional)
  # @param location.db.id character The unique ID of a location where these observations were collected (optional)
  # @param trial.db.id character The unique ID of a trial to filter on (optional)
  # @param program.db.id character The unique ID of a program to filter on (optional)
  # @param season.db.id character The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) (optional)
  # @param observation.unit.level.name character The Observation Unit Level. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelName (optional)
  # @param observation.unit.level.order character The Observation Unit Level Order Number. Returns only the observation unit of the specified Level. References ObservationUnit->observationUnitPosition->observationLevel->levelOrder (optional)
  # @param observation.unit.level.code character The Observation Unit Level Code. This parameter should be used together with `observationUnitLevelName` or `observationUnitLevelOrder`. References ObservationUnit->observationUnitPosition->observationLevel->levelCode (optional)
  # @param observation.time.stamp.range.start character Timestamp range start (optional)
  # @param observation.time.stamp.range.end character Timestamp range end (optional)
  # @param external.reference.id character An external reference ID. Could be a simple string or a URI. (use with `externalReferenceSource` parameter) (optional)
  # @param external.reference.source character An identifier for the source system or database of an external reference (use with `externalReferenceID` parameter) (optional)
  # @param page integer Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`. (optional)
  # @param page.size integer The size of the pages to be returned. Default is `1000`. (optional)
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [ObservationListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ObservationsObservationDbIdGet", {
  # tests for ObservationsObservationDbIdGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Get the details of a specific Observations
  # Get the details of a specific Observations  observationTimestamp should be ISO8601 format with timezone -&gt; YYYY-MM-DDThh:mm:ss+hhmm
  # @param observation.db.id character The unique ID of an observation
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [ObservationSingleResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ObservationsObservationDbIdPut", {
  # tests for ObservationsObservationDbIdPut
  # base path: https://test-server.brapi.org/brapi/v2
  # Update an existing Observation
  # Update an existing Observation
  # @param observation.db.id character The unique ID of an observation
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param observation.new.request ObservationNewRequest  (optional)
  # @return [ObservationSingleResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ObservationsPost", {
  # tests for ObservationsPost
  # base path: https://test-server.brapi.org/brapi/v2
  # Add new Observation entities
  # Add new Observation entities
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param observation.new.request array[ObservationNewRequest]  (optional)
  # @return [ObservationListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ObservationsPut", {
  # tests for ObservationsPut
  # base path: https://test-server.brapi.org/brapi/v2
  # Update multiple Observation entities
  # Update multiple Observation entities simultaneously with a single call  Include as many &#x60;observationDbIds&#x60; in the request as needed.  Note - In strictly typed languages, this structure can be represented as a Map or Dictionary of objects and parsed directly from JSON.
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param request.body map(ObservationNewRequest)  (optional)
  # @return [ObservationListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ObservationsTableGet", {
  # tests for ObservationsTableGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Get a list of Observations in a table format
  # &lt;p&gt;This service is designed to retrieve a table of time dependant observation values as a matrix of Observation Units and Observation Variables. This is also sometimes called a Time Series. This service takes the \&quot;Sparse Table\&quot; approach for representing this time dependant data.&lt;/p&gt; &lt;p&gt;The table may be represented by JSON, CSV, or TSV. The \&quot;Accept\&quot; HTTP header is used for the client to request different return formats.  By default, if the \&quot;Accept\&quot; header is not included in the request, the server should return JSON as described below.&lt;/p&gt; &lt;p&gt;The table is REQUIRED to have the following columns&lt;/p&gt; &lt;ul&gt;   &lt;li&gt;observationUnitDbId - Each row is related to one Observation Unit&lt;/li&gt;   &lt;li&gt;observationTimeStamp - Each row is has a time stamp for when the observation was taken&lt;/li&gt;   &lt;li&gt;At least one column with an observationVariableDbId&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The table may have any or all of the following OPTIONAL columns. Included columns are decided by the server developer&lt;/p&gt; &lt;ul&gt;   &lt;li&gt;observationUnitName&lt;/li&gt;   &lt;li&gt;studyDbId&lt;/li&gt;   &lt;li&gt;studyName&lt;/li&gt;   &lt;li&gt;germplasmDbId&lt;/li&gt;   &lt;li&gt;germplasmName&lt;/li&gt;   &lt;li&gt;positionCoordinateX&lt;/li&gt;   &lt;li&gt;positionCoordinateY&lt;/li&gt;   &lt;li&gt;year&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The table also may have any number of Observation Unit Hierarchy Level columns. For example:&lt;/p&gt; &lt;ul&gt;   &lt;li&gt;field&lt;/li&gt;   &lt;li&gt;plot&lt;/li&gt;   &lt;li&gt;sub-plot&lt;/li&gt;   &lt;li&gt;plant&lt;/li&gt;   &lt;li&gt;pot&lt;/li&gt;   &lt;li&gt;block&lt;/li&gt;   &lt;li&gt;entry&lt;/li&gt;   &lt;li&gt;rep&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The JSON representation provides a pair of extra arrays for defining the headers of the table.  The first array \&quot;headerRow\&quot; will always contain \&quot;observationUnitDbId\&quot; and any or all of the OPTIONAL column header names.  The second array \&quot;observationVariables\&quot; contains the names and DbIds for the Observation Variables represented in the table.  By appending the two arrays, you can construct the complete header row of the table. &lt;/p&gt; &lt;p&gt;For CSV and TSV representations of the table, an extra header row is needed to describe both the Observation Variable DbId and the Observation Variable Name for each data column.  See the example responses below&lt;/p&gt; 
  # @param accept WSMIMEDataTypes The requested content type which should be returned by the server
  # @param observation.unit.db.id character The unique ID of an Observation Unit (optional)
  # @param germplasm.db.id character The unique ID of a germplasm (accession) to filter on (optional)
  # @param observation.variable.db.id character The unique ID of an observation variable (optional)
  # @param study.db.id character The unique ID of a studies to filter on (optional)
  # @param location.db.id character The unique ID of a location where these observations were collected (optional)
  # @param trial.db.id character The unique ID of a trial to filter on (optional)
  # @param program.db.id character The unique ID of a program to filter on (optional)
  # @param season.db.id character The year or Phenotyping campaign of a multi-annual study (trees, grape, ...) (optional)
  # @param observation.level character The type of the observationUnit. Returns only the observation unit of the specified type; the parent levels ID can be accessed through observationUnitStructure. (optional)
  # @param search.results.db.id character Permanent unique identifier which references the search results (optional)
  # @param observation.time.stamp.range.start character Timestamp range start (optional)
  # @param observation.time.stamp.range.end character Timestamp range end (optional)
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @return [ObservationTableResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SearchObservationsPost", {
  # tests for SearchObservationsPost
  # base path: https://test-server.brapi.org/brapi/v2
  # Submit a search request for a set of Observations
  # Submit a search request for a set of Observations. Returns an Id which reference the results of this search
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param observation.search.request ObservationSearchRequest  (optional)
  # @return [ObservationListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SearchObservationsSearchResultsDbIdGet", {
  # tests for SearchObservationsSearchResultsDbIdGet
  # base path: https://test-server.brapi.org/brapi/v2
  # Returns a list of Observations based on search criteria.
  # Returns a list of Observations based on search criteria.  observationTimeStamp - Iso Standard 8601.  observationValue data type inferred from the ontology
  # @param accept WSMIMEDataTypes The requested content type which should be returned by the server
  # @param search.results.db.id character Unique identifier which references the search results
  # @param authorization character HTTP HEADER - Token used for Authorization   <strong> Bearer {token_string} </strong> (optional)
  # @param page integer Used to request a specific page of data to be returned.  The page indexing starts at 0 (the first page is 'page'= 0). Default is `0`. (optional)
  # @param page.size integer The size of the pages to be returned. Default is `1000`. (optional)
  # @return [ObservationListResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

