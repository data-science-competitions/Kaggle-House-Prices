#' @title What the Function Does
#' @description `extract_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family smp subdomain
#' @export
extract_data <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Oct'

    # Return
    invisible(session)
}
