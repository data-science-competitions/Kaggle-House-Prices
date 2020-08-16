pkgload::load_all(export_all = FALSE, helpers = FALSE)

# configure session -------------------------------------------------------
add_command("get_configurations", "ns")
add_command("create_experiment", "ns")
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
add_command("ingest_data", "dao")
add_command("prepare_data", "dao")
add_command("store_data", "dao")
# data acquired -----------------------------------------------------------


# sample data -------------------------------------------------------------
add_command("extract_data", "smp")
add_command("split_data", "smp")
# data sampled ------------------------------------------------------------


# fit model ---------------------------------------------------------------
add_command("compose_formula", "mdl")
add_command("log_params", "mdl")
add_command("train_model", "mdl")
add_command("save_model", "mdl")
# model fitted ------------------------------------------------------------


# Evaluate Model ----------------------------------------------------------
add_command("predict_test_set", "eval")
add_command("collate_predictions", "eval")
add_command("calculate_metrics", "eval")
add_command("log_metrics", "eval")
# Model Evaluated ---------------------------------------------------------

