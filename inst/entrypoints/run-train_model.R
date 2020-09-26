# Setup -------------------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = TRUE)
session <- initialize_session()


# Establish Database Connection -------------------------------------------
withr::with_envvar(c("TESTTHAT" = "true"), establish_database_connection(session))


# Train ML Model ----------------------------------------------------------
session %>%
    instantiate_ml_task() %>%
    instantiate_ml_learnering_algorithm() %>%
    instantiate_ml_resampling_strategy()

