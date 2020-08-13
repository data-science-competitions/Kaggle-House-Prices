#' @title What the Function Does
#' @description `log_metrics` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family eval
#' @export
log_metrics <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jun'

    # Return
    invisible(self)
}
