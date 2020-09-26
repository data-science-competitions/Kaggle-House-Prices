#' @title TODO: Write What the Function Does
#' @description  TODO: Write description for`instantiate_ml_learning_algorithm`.
#' @param session (`environment`) A shared environment.
#' @return session
#' @family train_model subdomain
#' @export
instantiate_ml_learning_algorithm <- function(session) { # nocov start
    stopifnot(is.environment(session))
    attach(.instantiate_ml_learning_algorithm, warn.conflicts = FALSE)
    on.exit(detach(.instantiate_ml_learning_algorithm))

    # Code ...

    # Return
    invisible(session)
} # nocov end

# Steps -------------------------------------------------------------------
.instantiate_ml_learning_algorithm <- new.env()
.instantiate_ml_learning_algorithm$dummy_step <- function(...) NULL
