#' @title What the Function Does
#' @description `predict_model` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family mdl subdomain
#' @export
predict_model <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Oct'

    # Return
    invisible(session)
}
