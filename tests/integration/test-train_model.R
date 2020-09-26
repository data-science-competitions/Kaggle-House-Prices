context("integration test for train model phase")

# Setup -------------------------------------------------------------------
testthat::setup({
    assign("test_env", testthat::test_env(), envir = parent.frame())
    test_env$session <-
        initialize_session() %>%
        establish_database_connection()
})

# Test --------------------------------------------------------------------
test_that("concatenating train model commands works", {
    attach(test_env)
    expect_not_failure(instantiate_ml_task(session))
    expect_not_failure(instantiate_ml_learning_algorithm(session))
    expect_not_failure(instantiate_ml_resampling_strategy(session))
})
