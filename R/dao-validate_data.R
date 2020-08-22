#' @title What the Function Does
#' @description `validate_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
validate_data <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Dec'

    # Return
    invisible(session)
}
