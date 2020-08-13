#' @title What the Function Does
#' @description `train_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family mdl
#' @export
train_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Sep'

    # Return
    invisible(self)
}
