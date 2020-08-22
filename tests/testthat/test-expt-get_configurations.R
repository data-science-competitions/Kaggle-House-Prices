context('unit test for get_configurations')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('get_configurations works', {
    attach(test_env)
    expect_silent(get_configurations(session))
})
