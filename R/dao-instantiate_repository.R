#' @title What the Function Does
#' @description `instantiate_repository` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
instantiate_repository <- function(session) { # nocov start
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...

    # Return
    invisible(session)
} # nocov end
