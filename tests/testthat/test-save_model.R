context('unit test for save_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('save_model works', {
    expect_silent(save_model(test_env$self))
})
