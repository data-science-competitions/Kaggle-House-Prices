context('unit test for ingest_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('ingest_data works', {
    attach(test_env)
    expect_silent(ingest_data(session))
})

# Establish DB Connection --------------------------------------------------
test_that('ingest_data establish db connection', {
    attach(test_env)
    expect_true("SQLiteConnection" %in% class(session$con))
})

