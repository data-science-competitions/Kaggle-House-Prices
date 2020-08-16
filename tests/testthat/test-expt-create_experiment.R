context('unit test for create_experiment')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('create_experiment works', {
    expect_silent(create_experiment(test_env$self))
})
