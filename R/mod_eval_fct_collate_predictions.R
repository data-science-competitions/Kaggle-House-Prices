#' @title What the Function Does
#' @description `collate_predictions` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @export
collate_predictions <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jan'

    # Return
    invisible(self)
}
