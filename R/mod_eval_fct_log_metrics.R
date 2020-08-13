#' @title What the Function Does
#' @description `log_metrics` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
log_metrics <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'May'

    # Return
    invisible(self)
}
