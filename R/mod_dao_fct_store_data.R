#' @title What the Function Does
#' @description `store_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family dao
#' @export
store_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jan'

    # Return
    invisible(self)
}
