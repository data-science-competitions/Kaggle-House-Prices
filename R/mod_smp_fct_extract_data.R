#' @title What the Function Does
#' @description `extract_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
extract_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Sep'

    # Return
    invisible(self)
}
