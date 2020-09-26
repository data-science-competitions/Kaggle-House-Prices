#' @title TODO: Write What the Function Does
#' @description  TODO: Write description for`instantiate_ml_resampling_strategy`.
#' @param session (`environment`) A shared environment.
#' @return session
#' @family train_model subdomain
#' @export
instantiate_ml_resampling_strategy <- function(session) { # nocov start
    stopifnot(is.environment(session))
    attach(.instantiate_ml_resampling_strategy, warn.conflicts = FALSE)
    on.exit(detach(.instantiate_ml_resampling_strategy))

    # Code ...

    # Return
    invisible(session)
} # nocov end

# Steps -------------------------------------------------------------------
.instantiate_ml_resampling_strategy <- new.env()
.instantiate_ml_resampling_strategy$dummy_step <- function(...) NULL
