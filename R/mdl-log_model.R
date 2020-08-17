#' @title What the Function Does
#' @description `log_model` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family mdl subdomain
#' @export
log_model <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Apr'

    # Return
    invisible(session)
}
