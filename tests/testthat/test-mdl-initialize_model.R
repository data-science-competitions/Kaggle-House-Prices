context('unit test for initialize_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('initialize_model works', {
    attach(test_env)
    expect_silent(initialize_model(session))
})
