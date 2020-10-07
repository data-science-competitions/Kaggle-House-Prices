# Experiment --------------------------------------------------------------
# <https://www.mlflow.org/docs/latest/R-api.html>
add_entity(
    "Experiment", domain = "train_model",
    commands = c("create_experiment", "log_metric",  "log_model", "log_param"),
    queries  = c("get_experiment",     "get_metric", "load_model")
)

