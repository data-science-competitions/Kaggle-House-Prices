context('unit test for collate_predictions')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('collate_predictions works', {
    expect_silent(collate_predictions(test_env$self))
})
