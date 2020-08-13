#' @title What the Function Does
#' @description `collate_predictions` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family eval
#' @export
collate_predictions <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'Jul'

    # Return
    invisible(self)
}
