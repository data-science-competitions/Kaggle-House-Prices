pkgload::load_all(export_all = FALSE, helpers = FALSE)

# configure experiment ----------------------------------------------------
add_command("initialize_session", "expt")
add_command("get_configurations", "expt")
add_command("instantiate_repository", "expt")
add_command("create_experiment", "expt")
# experiment configured ---------------------------------------------------


# sample data -------------------------------------------------------------
add_command("extract_data", "smp")
add_command("split_data", "smp")
# data sampled ------------------------------------------------------------


# train Model -------------------------------------------------------------
add_command("initialize_model", "mdl")
add_command("fit_model", "mdl")
add_command("predict_model", "mdl")
add_command("log_model", "mdl")
add_command("finalize_model", "mdl")
# model trained -----------------------------------------------------------


# evaluate Model ----------------------------------------------------------
add_command("collate_predictions", "eval")
add_command("calculate_metrics", "eval")
add_command("log_metrics", "eval")
# model Evaluated ---------------------------------------------------------

