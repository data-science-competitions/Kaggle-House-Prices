#' @title What the Function Does
#' @description `split_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family smp subdomain
#' @export
split_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Feb'

    # Return
    invisible(self)
}
