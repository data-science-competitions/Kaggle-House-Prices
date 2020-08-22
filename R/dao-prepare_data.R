#' @title What the Function Does
#' @description `prepare_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
prepare_data <- function(session) { # nocov start
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...

    # Return
    invisible(session)
} # nocov end
