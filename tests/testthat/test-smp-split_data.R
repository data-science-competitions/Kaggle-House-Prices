context('unit test for split_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- initialize_session()
})

# General -----------------------------------------------------------------
test_that('split_data works', {
    attach(test_env)
    expect_silent(split_data(session))
})
