# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
self <- new.env()
self %>%
    get_configurations() %>%
    create_experiment()
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
self %>%
    ingest_data() %>%
    prepare_data() %>%
    store_data()
# data acquired -----------------------------------------------------------


# sample data -------------------------------------------------------------
self %>%
    extract_data() %>%
    split_data()
# data sampled ------------------------------------------------------------


# train model -------------------------------------------------------------
self %>%
    initialize_model() %>%
    fit_model() %>%
    predict_model() %>%
    log_model() %>%
    finalize_model()
# model trained -----------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
self %>%
    predict_test_set() %>%
    collate_predictions() %>%
    calculate_metrics() %>%
    log_metrics()
# Model Evaluated ---------------------------------------------------------
