#' @title TODO: Write What the Function Does
#' @description  TODO: Write description for`establish_database_connection`.
#' @param session (`environment`) A shared environment.
#' @return session
#' @family data_pipeline subdomain
#' @export
establish_database_connection <- function(session) { # nocov start
    stopifnot(is.environment(session))
    attach(.establish_database_connection, warn.conflicts = FALSE)
    on.exit(detach(.establish_database_connection))

    conn <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    dplyr::copy_to(conn, house.prices::test_set, "test_set", overwrite = TRUE)
    dplyr::copy_to(conn, house.prices::train_set, "train_set", overwrite = TRUE)
    data_tests(conn)

    session$conn <- conn
    invisible(session)
} # nocov end

# Steps -------------------------------------------------------------------
.establish_database_connection <- new.env()
.establish_database_connection$data_tests <- function(conn){
    assert_is_subset <- function(x, y) if(length(setdiff(x, y))) stop("x is not a subset of y")
    table_names <- c("test_set", "train_set")
    variable_names <- c("Id", "Neighborhood", "YrSold")

    assert_is_subset(table_names, DBI::dbListTables(conn))
    for(table_name in table_names) assert_is_subset(variable_names, DBI::dbListFields(conn, table_name))

    invisible()
}
