# Setup -------------------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = TRUE)
session <- initialize_session()


# Establish Database Connection -------------------------------------------
Sys.setenv(TESTTHAT = "true")
# session %>% run_data_pipeline()
Sys.unsetenv("TESTTHAT")


# Train ML Model ----------------------------------------------------------
session %>%
    instantiate_ml_task() %>%
    instantiate_ml_learnering_algorithm() %>%
    instantiate_ml_resampling_strategy()

