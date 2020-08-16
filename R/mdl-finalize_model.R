#' @title What the Function Does
#' @description `finalize_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family mdl subdomain
#' @export
finalize_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Feb'

    # Return
    invisible(self)
}
