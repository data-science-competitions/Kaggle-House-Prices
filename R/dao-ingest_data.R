#' @title What the Function Does
#' @description `ingest_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
ingest_data <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'May'

    # Return
    invisible(session)
}
