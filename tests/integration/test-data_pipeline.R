context("integration test for data pipeline")

# Setup -------------------------------------------------------------------
testthat::setup({
    assign("test_env", testthat::test_env(), envir = parent.frame())
    test_env$with_envvar <- withr::with_envvar
})

# Test --------------------------------------------------------------------
test_that("cascading data pipeline operations work with Mock plugin", {
    attach(test_env)
    with_envvar(
        c(TESTTHAT = "true"), {
            expect_not_failure(session <- initialize_session())
            expect_not_failure(session <- establish_database_connection(session))
        })
})

test_that("cascading data pipeline operations work with API plugin", {
    attach(test_env)
    with_envvar(
        c(TESTTHAT = ""), {
            expect_not_failure(session <- initialize_session())
            expect_not_failure(session <- establish_database_connection(session))
        })
})
