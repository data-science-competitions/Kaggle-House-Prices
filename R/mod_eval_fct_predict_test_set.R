#' @title What the Function Does
#' @description `predict_test_set` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
predict_test_set <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jun'

    # Return
    invisible(self)
}
