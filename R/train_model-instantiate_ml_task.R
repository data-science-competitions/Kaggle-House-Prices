#' @title TODO: Write What the Function Does
#' @description  TODO: Write description for`instantiate_ml_task`.
#' @param session (`environment`) A shared environment.
#' @return session
#' @family train_model subdomain
#' @export
instantiate_ml_task <- function(session) { # nocov start
    stopifnot(is.environment(session), is.not.null(session$conn))

    session$ml_task <- MachineLearningTask(
        id = "house-prices",
        backend = DBI::dbReadTable(session$conn, "train_set"),
        target = "SalePrice",
        extra_args = list()
    )

    # Return
    invisible(session)
} # nocov end
