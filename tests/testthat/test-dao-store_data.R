context('unit test for store_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('store_data works', {
    attach(test_env)
    expect_silent(store_data(session))
})
