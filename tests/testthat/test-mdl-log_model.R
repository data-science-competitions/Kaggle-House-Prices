context('unit test for log_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('log_model works', {
    attach(test_env)
    expect_silent(log_model(session))
})
