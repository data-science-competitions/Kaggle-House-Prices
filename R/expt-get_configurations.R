#' @title What the Function Does
#' @description `get_configurations` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family expt subdomain
#' @export
get_configurations <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...

    # Return
    invisible(session)
}
