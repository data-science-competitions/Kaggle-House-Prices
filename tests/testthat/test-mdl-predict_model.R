context('unit test for predict_model')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('predict_model works', {
    expect_silent(predict_model(test_env$self))
})
