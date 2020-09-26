# testthat ----------------------------------------------------------------
expect_not_failure <- purrr::partial(testthat::expect_type, type = "environment")

