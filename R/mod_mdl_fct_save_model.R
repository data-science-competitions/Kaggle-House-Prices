#' @title What the Function Does
#' @description `save_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family mdl
#' @export
save_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jun'

    # Return
    invisible(self)
}
