#' @title What the Function Does
#' @description `ingest_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
ingest_data <- function(session) { # nocov start
    stopifnot(is.environment(session))

    conn <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    dplyr::copy_to(conn, house.prices::test_set, "test_set", overwrite = TRUE)
    dplyr::copy_to(conn, house.prices::train_set, "train_set", overwrite = TRUE)
    data_tests(conn)

    session$add("conn", conn)
    invisible(session)
} # nocov end

data_tests <- function(conn){
    assert_is_subset <- function(x, y) if(length(setdiff(x, y))) stop("x is not a subset of y")
    table_names <- c("test_set", "train_set")
    variable_names <- c("Id", "Neighborhood", "YrSold")

    assert_is_subset(table_names, DBI::dbListTables(conn))
    for(table_name in table_names) assert_is_subset(variable_names, DBI::dbListFields(conn, table_name))

    invisible()
}
