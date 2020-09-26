# train_model entities ----------------------------------------------------
add_entity <- purrr::partial(usethis2::add_command, subdomain = "train_model", testthat_exemption = FALSE)
add_entity("MachineLearningTask")
add_entity("LearningAlgorithm")
add_entity("ResamplingStrategy")





