context('unit test for create_experiment')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('create_experiment works', {
    attach(test_env)
    expect_silent(create_experiment(session))
})
