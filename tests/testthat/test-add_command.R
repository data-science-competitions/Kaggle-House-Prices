context("unit test for add_command")

# Setup -------------------------------------------------------------------
testthat::setup({
    assign("test_env", testthat::test_env(), envir = parent.frame())
    withr::local_dir(tempdir(), .local_envir = test_env)
    file.create(".here")
})

# Create R script ---------------------------------------------------------
test_that("add_command creates new R script", {
    name <- "bilbo"
    module <- "baggins"
    path <- usethis::proj_path("R", paste("mod", module, "fct", name, sep = "_"), ext = "R")
    expect_silent(add_command(name, module))
})
