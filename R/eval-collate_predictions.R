#' @title What the Function Does
#' @description `collate_predictions` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family eval subdomain
#' @export
collate_predictions <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    # Code ...
    session$month <- 'Jul'

    # Return
    invisible(session)
}
