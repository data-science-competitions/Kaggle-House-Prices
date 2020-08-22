context('unit test for collate_predictions')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- R6DS::RDict$new()
})

# General -----------------------------------------------------------------
test_that('collate_predictions works', {
    attach(test_env)
    expect_silent(collate_predictions(session))
})
