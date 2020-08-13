context('unit test for calculate_metrics')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('calculate_metrics works', {
    expect_silent(calculate_metrics(test_env$self))
})
