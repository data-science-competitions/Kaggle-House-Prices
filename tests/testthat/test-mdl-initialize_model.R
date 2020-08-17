context('unit test for initialize_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('initialize_model works', {
    expect_silent(initialize_model(test_env$session))
})
