context('unit test for prepare_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('prepare_data works', {
    attach(test_env)
    expect_silent(prepare_data(session))
})
