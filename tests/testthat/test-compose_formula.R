context('unit test for compose_formula')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$self <- new.env()
})

# General -----------------------------------------------------------------
test_that('compose_formula works', {
    expect_silent(compose_formula(test_env$self))
})
