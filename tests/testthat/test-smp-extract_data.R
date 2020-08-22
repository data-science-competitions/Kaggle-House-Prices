context('unit test for extract_data')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- initialize_session()
})

# General -----------------------------------------------------------------
test_that('extract_data works', {
    attach(test_env)
    expect_silent(extract_data(session))
})
