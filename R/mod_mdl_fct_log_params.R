#' @title What the Function Does
#' @description `log_params` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
log_params <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Feb'

    # Return
    invisible(self)
}
