#' @title Start Session
#' @description `initialize_session` restricts the instantiating of a
#'   \code{session} to one "single" instance. This is useful as exactly one
#'   session is needed to coordinate actions across the system.
#' @references
#' \href{https://en.wikipedia.org/wiki/Singleton_pattern}{Singleton pattern}
#' @return session
#' @family service layer
#' @export
start_session <- function() {# nocov start
    attach(.session, warn.conflicts = FALSE)
    on.exit(detach(.session))

    if(!session.exists()) initialize_session()

    return(session.get())
}# nocov end

#' @title Initialize Session
#' @return session
#' @family service layer
#' @export
initialize_session <- function() {# nocov start
    attach(.session, warn.conflicts = FALSE)
    on.exit(detach(.session))

    while(session.exists()) session.del()
    session.set()

    return(session.get())
}# nocov end


# Helpers -----------------------------------------------------------------
.session <- new.env()

.session$session.exists <- function() "session" %in% search()
.session$session.get <- function() as.environment("session")
.session$session.del <- function() detach("session", unload = TRUE, force = TRUE)
.session$session.set <- function() attach(new.env(), name = "session", warn.conflicts = FALSE)


