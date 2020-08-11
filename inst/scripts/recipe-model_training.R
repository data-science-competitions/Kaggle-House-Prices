# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
self <- new.env()
self %>% create_experiment()
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


# fit model ---------------------------------------------------------------
self %>%
    compose_formula() %>%
    log_params() %>%
    train_model() %>%
    save_model()
# model fitted ------------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
self %>%
    predict_test_set() %>%
    collate_predictions() %>%
    calculate_metrics() %>%
    log_metrics()
# Model Evaluated ---------------------------------------------------------

