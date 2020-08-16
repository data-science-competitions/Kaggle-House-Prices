#' @title What the Function Does
#' @description `calculate_metrics` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family eval subdomain
#' @export
calculate_metrics <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'May'

    # Return
    invisible(session)
}
