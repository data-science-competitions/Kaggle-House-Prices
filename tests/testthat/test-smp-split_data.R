context('unit test for split_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('split_data works', {
    expect_silent(split_data(test_env$session))
})
