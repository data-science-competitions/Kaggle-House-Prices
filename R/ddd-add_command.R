#' @title Add Command
#' @param name (`character`) Command name.
#' @param subdomain (`character`) Command subdomain name.
#' @family DDD
#' @export
add_command <- function(name, subdomain){

    .add_command_script(name, subdomain)
    .add_command_test(name, subdomain)

    invisible()
}

# Low-lever Functions -----------------------------------------------------
#' @noRd
.add_command_script <- function(name, subdomain){
    `%||%` <- function(a,b) if(is.null(a)) b else a
    slug <- .add_command_slug(name, subdomain)
    dir.create(usethis::proj_path("R"), recursive = TRUE, showWarnings = FALSE)
    writeLines(
        stringr::str_glue("
        #' @title What the Function Does
        #' @description `{fct_name}` is an amazing function
        #' @param session (`environment`) A shared environment.
        #' @return session
        #' @family {subdomain} subdomain
        #' @export
        {fct_name} <- function(session) {{
            # Assertions ...
            stopifnot(is.environment(session))

            # Code ...
            session$month <- '{month}'

            # Return
            invisible(session)
        }}", fct_name = name, subdomain = subdomain %||% "", month = sample(month.abb, 1)),
        usethis::proj_path("R", slug, ext = "R")
    )
    invisible()
}
.add_command_test <- function(name, subdomain){
    dir.create(usethis::proj_path("tests", "testthat"), recursive = TRUE, showWarnings = FALSE)
    slug <- .add_command_slug(name, subdomain)
    writeLines(
        stringr::str_glue("
        context('unit test for {fct_name}')

        # Setup -------------------------------------------------------------------
        testthat::setup({{
            assign('test_env', testthat::test_env(), envir = parent.frame())
            test_env$session <- new.env()
        }})

        # General -----------------------------------------------------------------
        test_that('{fct_name} works', {{
            expect_silent({fct_name}(test_env$session))
        }})
        ", fct_name = name),
        usethis::proj_path("tests", "testthat", paste0("test-", slug), ext = "R")
    )
    invisible()
}

.add_command_slug <- function(name, subdomain){
    is.not.null <- Negate(is.null)
    `%+%` <- base::paste0

    slug <- name
    slug <- if(is.not.null(subdomain)) subdomain %+% "-" %+% slug
    return(slug)
}
