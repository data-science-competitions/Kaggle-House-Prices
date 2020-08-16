context("unit test for add_command")

# Setup -------------------------------------------------------------------
testthat::setup({
    assign("test_env", testthat::test_env(), envir = parent.frame())
    withr::local_dir(tempdir(), .local_envir = test_env)
    invisible(file.create(".here"))
})

# Create R script and unit-test --------------------------------------------
test_that("given name and subdomain, then add_command creates a new R script", {
    `%+%` <- base::paste0
    name <- "bilbo"
    subdomain <- "baggins"
    expect_silent(add_command(name, subdomain))

    path <- usethis::proj_path("R", subdomain %+% "-" %+% name, ext = "R")
    expect_file_exists(path)

    path <- usethis::proj_path("tests", "testthat", "test" %+% "-" %+% subdomain %+% "-" %+% name, ext = "R")
    expect_file_exists(path)
})
