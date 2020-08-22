context('unit test for log_metrics')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- initialize_session()
})

# General -----------------------------------------------------------------
test_that('log_metrics works', {
    attach(test_env)
    expect_silent(log_metrics(session))
})
