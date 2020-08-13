#' @title What the Function Does
#' @description `get_configurations` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family ns
#' @export
get_configurations <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Dec'

    # Return
    invisible(self)
}
