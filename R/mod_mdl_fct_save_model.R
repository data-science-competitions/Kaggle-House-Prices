#' @title What the Function Does
#' @description `save_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
save_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Aug'

    # Return
    invisible(self)
}
