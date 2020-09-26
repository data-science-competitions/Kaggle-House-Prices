# data_pipeline commands --------------------------------------------------
add_command <- purrr::partial(usethis2::add_command, subdomain = "data_pipeline", testthat_exemption = TRUE)
add_command("ingest_data")
add_command("prepare_data")
add_command("validate_data")
add_command("store_data")

# train_model commands ----------------------------------------------------
add_command <- purrr::partial(usethis2::add_command, subdomain = "train_model", testthat_exemption = TRUE)
add_command("instantiate_ml_task")
add_command("instantiate_ml_learning_algorithm")
add_command("instantiate_ml_resampling_strategy")
add_command("instantiate_ml_workflow_container")
add_command("create_ml_workflow")





