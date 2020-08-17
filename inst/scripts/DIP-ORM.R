# Dependency Inversion Principle (DIP) : Object-Relational Mapping (ORM)
install_cran <- purrr::partial(remotes::install_cran, quiet = TRUE)

# DBI ---------------------------------------------------------------------
# <https://db.rstudio.com/dbi/>
install_cran(c("DBI", "RSQLite"))
con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
class(con) # SQLiteConnection
DBI::dbWriteTable(con, "mtcars", mtcars)
DBI::dbListTables(con)
DBI::dbListFields(con, "mtcars")
mtcars <- DBI::dbReadTable(con, "mtcars")
class(mtcars)
DBI::dbDisconnect(con)

# {dplyr} copy_to, compute and collect -------------------------------------
install_cran(c("DBI", "dplyr", "RSQLite"))
con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
dplyr::copy_to(con, datasets::mtcars)


mtcars <- dplyr::tbl(con, "mtcars")
# dplyr::compute
# dplyr::collect
# dplyr::collapse

class(mtcars)
DBI::dbConnect()
# dbplyr ------------------------------------------------------------------
# install_cran(c("dbplyr", "RSQLite"))
dbplyr::tbl_
mtcars <- dbplyr::tbl_memdb(df = datasets::mtcars, name = "mtcars", overwrite = TRUE, append = FALSE)
dbplyr::src_memdb()

# copy_to, compute and collect --------------------------------------------



