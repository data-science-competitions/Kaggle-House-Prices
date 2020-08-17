context('unit test for finalize_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('finalize_model works', {
    expect_silent(finalize_model(test_env$session))
})
