#' @title What the Function Does
#' @description `ingest_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
ingest_data <- function(session) { # nocov start
    stopifnot(is.environment(session))

    session$con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    dplyr::copy_to(session$con, house.prices::test_set, "test_set", overwrite = TRUE)
    dplyr::copy_to(session$con, house.prices::train_set, "train_set", overwrite = TRUE)
    data_tests(session$con)

    invisible(session)
} # nocov end

data_tests <- function(con){
    table_names <- c("test_set", "train_set")
    variable_names <- c("Id", "Neighborhood", "YrSold")

    assertive::assert_is_subset(table_names, DBI::dbListTables(con))
    for(table_name in table_names) assertive::assert_is_subset(variable_names, DBI::dbListFields(con, table_name))

    invisible()
}
