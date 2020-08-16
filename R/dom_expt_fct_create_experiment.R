#' @title What the Function Does
#' @description `create_experiment` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family expt subdomain
#' @export
create_experiment <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Oct'

    # Return
    invisible(self)
}
