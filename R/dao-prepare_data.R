#' @title What the Function Does
#' @description `prepare_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family dao subdomain
#' @export
prepare_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Oct'

    # Return
    invisible(self)
}
