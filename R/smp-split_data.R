#' @title What the Function Does
#' @description `split_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family smp subdomain
#' @export
split_data <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Jul'

    # Return
    invisible(session)
}
