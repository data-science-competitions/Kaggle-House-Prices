# Train ML Model ----------------------------------------------------------
add_command <- purrr::partial(usethis2::add_command, subdomain = "train_model", testthat_exemption = TRUE)
add_command("instantiate_ml_task")
add_command("instantiate_ml_learnering_algorithm")
add_command("instantiate_ml_resampling_strategy")





