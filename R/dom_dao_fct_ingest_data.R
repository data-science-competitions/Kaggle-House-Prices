#' @title What the Function Does
#' @description `ingest_data` is an amazing function
#' @param self (`environment`) A shared environment.
#' @return self
#' @family dao subdomain
#' @export
ingest_data <- function(self) {
    # Assertions ...
    stopifnot(is.environment(self))

    # Code ...
    self$month <- 'May'

    # Return
    invisible(self)
}
