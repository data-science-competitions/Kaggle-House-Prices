#' @title TODO: Write What the Function Does
#' @description  TODO: Write description for`instantiate_ml_task`.
#' @param session (`environment`) A shared environment.
#' @return session
#' @family train_model subdomain
#' @export
instantiate_ml_task <- function(session) { # nocov start
    stopifnot(is.environment(session))
    attach(.instantiate_ml_task, warn.conflicts = FALSE)
    on.exit(detach(.instantiate_ml_task))

    # Code ...

    # Return
    invisible(session)
} # nocov end

# Steps -------------------------------------------------------------------
.instantiate_ml_task <- new.env()
.instantiate_ml_task$dummy_step <- function(...) NULL
