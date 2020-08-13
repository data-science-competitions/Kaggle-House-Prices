context('unit test for predict_test_set')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('predict_test_set works', {
    expect_silent(predict_test_set(test_env$self))
})
