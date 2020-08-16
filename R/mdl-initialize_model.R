#' @title What the Function Does
#' @description `initialize_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family mdl subdomain
#' @export
initialize_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Oct'

    # Return
    invisible(self)
}
