`%+%` <- base::paste0
is.not.null <- Negate(is.null)

# testthat ----------------------------------------------------------------
expect_class <- purrr::partial(testthat::expect_is)
expect_not_null <- function(obj) testthat::expect_true(is.not.null(obj))
