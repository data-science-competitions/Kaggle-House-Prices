#' @title Initialize Session for the Model Training Phase
#' @description `initialize_session` restricts the instantiating of a
#'   \code{session} to one "single" instance. This is useful as exactly one
#'   session is needed to coordinate actions across the system.
#' @references
#' \href{https://en.wikipedia.org/wiki/Singleton_pattern}{Singleton pattern}
#' @return session
#' @family expt subdomain
#' @export
initialize_session <- function() {# nocov start
    session.exists <- function() "session" %in% search()
    session.getenv <- function() as.environment("session")
    session.setenv <- function() attach(new.env(), name = "session", warn.conflicts = FALSE)

    if(!session.exists()) session.setenv()
    return(session.getenv())
}# nocov end
