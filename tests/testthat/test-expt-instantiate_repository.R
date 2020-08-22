context('unit test for instantiate_repository')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('instantiate_repository works', {
    attach(test_env)
    expect_silent(instantiate_repository(session))
})
