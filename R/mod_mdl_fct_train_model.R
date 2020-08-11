#' @title What the Function Does
#' @description `train_model` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
train_model <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jun'

    # Return
    invisible(self)
}
