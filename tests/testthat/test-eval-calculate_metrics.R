context('unit test for calculate_metrics')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('calculate_metrics works', {
    attach(test_env)
    expect_silent(calculate_metrics(session))
})
