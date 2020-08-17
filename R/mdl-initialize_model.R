#' @title What the Function Does
#' @description `initialize_model` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family mdl subdomain
#' @export
initialize_model <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Aug'

    # Return
    invisible(session)
}
