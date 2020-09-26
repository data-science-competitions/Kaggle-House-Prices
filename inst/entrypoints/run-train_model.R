# Setup -------------------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = TRUE)
session <- initialize_session()


# Establish Database Connection -------------------------------------------
Sys.setenv(TESTTHAT = "true")
session %>% run_data_pipeline()
Sys.unsetenv("TESTTHAT")


# Train ML Model ----------------------------------------------------------


