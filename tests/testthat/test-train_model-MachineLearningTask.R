context('unit test for MachineLearningTask')

# Setup -------------------------------------------------------------------
testthat::setup({
    assign('test_env', testthat::test_env(), envir = parent.frame())
    test_env$session <- new.env()
    test_env$id <- "mtcars regression model"
    test_env$backend <- mtcars
    test_env$target <- "mpg"
})

# General -----------------------------------------------------------------
test_that('calling MachineLearningTask instantiates an R6 Object', {
    attach(test_env)
    expect_is(
        ml_task <- MachineLearningTask(id = id, backend = backend, target = target),
        "R6"
    )
    test_env$ml_task <- ml_task
})
