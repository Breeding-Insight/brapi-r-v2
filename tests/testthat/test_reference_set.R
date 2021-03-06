# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ReferenceSet")

model.instance <- ReferenceSet$new()

test_that("additionalInfo", {
  # tests for the property `additionalInfo` (map(character))
  # Additional arbitrary info

  # uncomment below to test the property 
  #expect_equal(model.instance$`additionalInfo`, "EXPECTED_RESULT")
})

test_that("assemblyPUI", {
  # tests for the property `assemblyPUI` (character)
  # The remaining information is about the source of the sequences Public id of this reference set, such as &#x60;GRCH_37&#x60;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`assemblyPUI`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # Optional free text description of this reference set.

  # uncomment below to test the property 
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("isDerived", {
  # tests for the property `isDerived` (character)
  # A reference set may be derived from a source if it contains additional sequences, or some of the sequences within it are derived (see the definition of &#x60;isDerived&#x60; in &#x60;Reference&#x60;).

  # uncomment below to test the property 
  #expect_equal(model.instance$`isDerived`, "EXPECTED_RESULT")
})

test_that("md5checksum", {
  # tests for the property `md5checksum` (character)
  # Order-independent MD5 checksum which identifies this &#x60;ReferenceSet&#x60;.  To compute this checksum, make a list of &#x60;Reference.md5checksum&#x60; for all &#x60;Reference&#x60; s in this set. Then sort that list, and take the MD5 hash of all the strings concatenated together. Express the hash as a lower-case hexadecimal string.

  # uncomment below to test the property 
  #expect_equal(model.instance$`md5checksum`, "EXPECTED_RESULT")
})

test_that("referenceSetDbId", {
  # tests for the property `referenceSetDbId` (character)
  # The reference set ID. Unique in the repository.

  # uncomment below to test the property 
  #expect_equal(model.instance$`referenceSetDbId`, "EXPECTED_RESULT")
})

test_that("referenceSetName", {
  # tests for the property `referenceSetName` (character)
  # The reference set name.

  # uncomment below to test the property 
  #expect_equal(model.instance$`referenceSetName`, "EXPECTED_RESULT")
})

test_that("sourceAccessions", {
  # tests for the property `sourceAccessions` (array[character])
  # All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with a version number, e.g. &#x60;NC_000001.11&#x60;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`sourceAccessions`, "EXPECTED_RESULT")
})

test_that("sourceURI", {
  # tests for the property `sourceURI` (character)
  # Specifies a FASTA format file/string.

  # uncomment below to test the property 
  #expect_equal(model.instance$`sourceURI`, "EXPECTED_RESULT")
})

test_that("species", {
  # tests for the property `species` (OntologyTerm)

  # uncomment below to test the property 
  #expect_equal(model.instance$`species`, "EXPECTED_RESULT")
})

