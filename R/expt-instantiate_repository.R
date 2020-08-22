#' @title What the Function Does
#' @description `instantiate_repository` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family expt subdomain
#' @export
instantiate_repository <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...

    # Return
    invisible(session)
}
