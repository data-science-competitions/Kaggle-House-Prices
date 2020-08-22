context('unit test for validate_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('validate_data works', {
    attach(test_env)
    expect_silent(validate_data(session))
})
