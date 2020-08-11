#' @title What the Function Does
#' @description `compose_formula` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
compose_formula <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Sep'

    # Return
    invisible(self)
}
