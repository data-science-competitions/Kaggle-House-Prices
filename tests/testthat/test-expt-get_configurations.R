context('unit test for get_configurations')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('get_configurations works', {
    expect_silent(get_configurations(test_env$session))
})
