#' @title What the Function Does
#' @description `log_metrics` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family eval subdomain
#' @export
log_metrics <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Nov'

    # Return
    invisible(session)
}
