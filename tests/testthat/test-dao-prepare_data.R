context('unit test for prepare_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('prepare_data works', {
    expect_silent(prepare_data(test_env$self))
})
