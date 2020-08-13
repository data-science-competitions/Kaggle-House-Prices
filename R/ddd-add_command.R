#' @title Add Command
#' @param name (`character`) Command name.
#' @param module (`character`) Command module.
#' @family DDD
#' @export
add_command <- function(name, module){
    is.not.null <- Negate(is.null)
    `%||%` <- function(a,b) if(is.null(a)) b else a
    dir.create <- function(path) base::dir.create(path, recursive = TRUE, showWarnings = FALSE)

    glue <- stringr::str_glue
    slug <- paste0("fct_", name)
    slug <- if(is.not.null(module)) paste0("mod_", module, "_", slug)

    # Write Function ----------------------------------------------------------
    dir.create(usethis::proj_path("R"))
    writeLines(
        glue("
        #' @title What the Function Does
        #' @description `{fct_name}` is an amazing function
        #' @param self (`environment`) A shared environment.
        #' @return self
        #' @family {module}
        #' @export
        {fct_name} <- function(self) {{
            # Assertions ...
            stopifnot(is.environment(self))

            # Code ...
            self$month <- '{month}'

            # Return
            invisible(self)
        }}", fct_name = name, module = module %||% "", month = sample(month.abb, 1)),
        usethis::proj_path("R", slug, ext = "R")
    )

    # Write Test --------------------------------------------------------------
    dir.create(usethis::proj_path("tests", "testthat"))
    writeLines(
        glue("
        context('unit test for {fct_name}')

        # Setup -------------------------------------------------------------------
        testthat::setup({{
            assign('test_env', testthat::test_env(), envir = parent.frame())
            test_env$self <- new.env()
        }})

        # General -----------------------------------------------------------------
        test_that('{fct_name} works', {{
            expect_silent({fct_name}(test_env$self))
        }})
        ", fct_name = name),
        usethis::proj_path("tests", "testthat", paste0("test-", name), ext = "R")
    )

    invisible()
}
