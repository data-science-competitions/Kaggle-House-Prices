#' @title What the Function Does
#' @description `prepare_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
prepare_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jun'

    # Return
    invisible(self)
}
