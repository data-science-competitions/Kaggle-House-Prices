pkgload::load_all(export_all = FALSE, helpers = FALSE)
add_function <- purrr::partial(golem::add_fct, open = FALSE)


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

