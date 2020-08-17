# Dependency Inversion Principle (DIP) : Object-Relational Mapping (ORM)
install_cran <- purrr::partial(remotes::install_cran, quiet = TRUE)

ingest_data <- function(){
    con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    dplyr::copy_to(con, house.prices::test_set, "test_set", overwrite = TRUE)
    dplyr::copy_to(con, house.prices::train_set, "train_set", overwrite = TRUE)
    return(con)
}
