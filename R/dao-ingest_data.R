#' @title What the Function Does
#' @description `ingest_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
ingest_data <- function(session) {
    stopifnot(is.environment(session))

    session$con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    dplyr::copy_to(session$con, house.prices::test_set, "test_set", overwrite = TRUE)
    dplyr::copy_to(session$con, house.prices::train_set, "train_set", overwrite = TRUE)

    invisible(session)
}
