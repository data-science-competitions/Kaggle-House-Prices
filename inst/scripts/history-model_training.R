pkgload::load_all(export_all = FALSE, helpers = FALSE)
add_function <- function(name, module = NULL){
    is.not.null <- Negate(is.null)
    glue <- stringr::str_glue
    slug <- paste0("fct_", name)
    slug <- if(is.not.null(module)) paste0("mod_", module, "_", slug)

    # Write Function ----------------------------------------------------------
    writeLines(
        glue("
        #' @title What the Function Does
        #' @description `{fct_name}` is an amazing function
        #' @param self (`environment`) A shared environment.
        #' @return self
        #' @export
        {fct_name} <- function(self) {{
            # Assertions ...
            stopifnot(is.environment(self))

            # Code ...
            self$month <- '{month}'

            # Return
            invisible(self)
        }}", fct_name = name, month = sample(month.abb, 1)),
        usethis::proj_path("R", slug, ext = "R")
    )

    # Write Test --------------------------------------------------------------
    dir.create(usethis::proj_path("tests", "testthat"), recursive = TRUE, showWarnings = FALSE)
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


# configure session -------------------------------------------------------
# add_function("load_package", "ns")
add_function("create_experiment", "ns")
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
add_function("ingest_data", "dao")
add_function("prepare_data", "dao")
add_function("store_data", "dao")
# data acquired -----------------------------------------------------------


# sample data -------------------------------------------------------------
add_function("extract_data", "smp")
add_function("split_data", "smp")
# data sampled ------------------------------------------------------------


# fit model ---------------------------------------------------------------
add_function("compose_formula", "mdl")
add_function("log_params", "mdl")
add_function("train_model", "mdl")
add_function("save_model", "mdl")
# model fitted ------------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
add_function("predict_test_set", "eval")
add_function("collate_predictions", "eval")
add_function("calculate_metrics", "eval")
add_function("log_metrics", "eval")
# Model Evaluated ---------------------------------------------------------

