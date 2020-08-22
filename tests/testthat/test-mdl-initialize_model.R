context('unit test for initialize_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- initialize_session()
})

# General -----------------------------------------------------------------
test_that('initialize_model works', {
    attach(test_env)
    expect_silent(initialize_model(session))
})
