add_fct <- purrr::partial(golem::add_fct, open = FALSE)


# configure session -------------------------------------------------------
add_fct("load_package", "ns")
add_fct("create_experiment", "ns")
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
add_fct("ingest_data", "dao")
add_fct("prepare_data", "dao")
add_fct("store_data", "dao")
# data acquired -----------------------------------------------------------


# sample data -------------------------------------------------------------
add_fct("extract_data", "smp")
add_fct("split_data", "smp")
# data sampled ------------------------------------------------------------


# fit model ---------------------------------------------------------------
add_fct("compose_formula", "mdl")
add_fct("log_params", "mdl")
add_fct("train_model", "mdl")
add_fct("save_model", "mdl")
# model fitted ------------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
add_fct("predict_test_set", "eval")
add_fct("collate_predictions", "eval")
add_fct("calculate_metrics", "eval")
add_fct("log_metrics", "eval")
# Model Evaluated ---------------------------------------------------------

