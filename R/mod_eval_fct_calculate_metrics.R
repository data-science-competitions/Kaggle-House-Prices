#' @title What the Function Does
#' @description `calculate_metrics` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family eval
#' @export
calculate_metrics <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jul'

    # Return
    invisible(self)
}
