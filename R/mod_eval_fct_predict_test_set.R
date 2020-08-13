#' @title What the Function Does
#' @description `predict_test_set` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family eval
#' @export
predict_test_set <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jan'

    # Return
    invisible(self)
}
