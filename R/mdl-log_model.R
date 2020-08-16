#' @title What the Function Does
#' @description `log_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family mdl subdomain
#' @export
log_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Nov'

    # Return
    invisible(self)
}
