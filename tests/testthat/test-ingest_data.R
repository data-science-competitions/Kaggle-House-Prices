context('unit test for ingest_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('ingest_data works', {
    expect_silent(ingest_data(test_env$self))
})
