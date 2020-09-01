# Setup -------------------------------------------------------------------
Sys.getenv("MLFLOW_CONDA_HOME")
Sys.getenv("MLFLOW_PYTHON_BIN")
mlflow::install_mlflow(python_version = '3.7')

# Run ---------------------------------------------------------------------
library(mlflow)
invisible(mlflow_client(tracking_uri = NULL))
