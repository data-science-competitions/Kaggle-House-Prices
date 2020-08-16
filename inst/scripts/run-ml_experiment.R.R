# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
session <- new.env()
session %>%
    get_configurations() %>%
    create_experiment()
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
session %>%
    ingest_data() %>%
    prepare_data() %>%
    store_data()
# data acquired -----------------------------------------------------------


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
    predict_test_set() %>%
    collate_predictions() %>%
    calculate_metrics() %>%
    log_metrics()
# Model Evaluated ---------------------------------------------------------
