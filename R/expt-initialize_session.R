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
    return <-  function(value) invisible(base::return(value))

    if(exists("session", envir = parent.frame())){
        return(get0("session", envir = parent.frame()))
    } else {
        return(R6DS::RDict$new())
    }
}# nocov end
