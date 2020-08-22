#' @title What the Function Does
#' @description `create_experiment` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family expt subdomain
#' @export
create_experiment <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...

    # Return
    invisible(session)
}
