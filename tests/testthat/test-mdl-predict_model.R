context('unit test for predict_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
})

# General -----------------------------------------------------------------
test_that('predict_model works', {
    attach(test_env)
    expect_silent(predict_model(session))
})
