# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
session <-
    initialize_session() %>%
    get_configurations() %>%
    instantiate_repository() %>%
    create_experiment()
# session configured ------------------------------------------------------


# sample data -------------------------------------------------------------
session %>%
    extract_data() %>%
    split_data()
# data sampled ------------------------------------------------------------


# train model -------------------------------------------------------------
session %>%
    initialize_model() %>%
    fit_model() %>%
    predict_model() %>%
    log_model() %>%
    finalize_model()
# model trained -----------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
session %>%
    collate_predictions() %>%
    calculate_metrics() %>%
    log_metrics()
# Model Evaluated ---------------------------------------------------------
