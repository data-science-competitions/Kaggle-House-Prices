#' @title What the Function Does
#' @description `fit_model` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family mdl subdomain
#' @export
fit_model <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Jul'

    # Return
    invisible(session)
}
