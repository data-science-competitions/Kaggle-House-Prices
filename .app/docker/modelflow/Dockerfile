# Modelflow --------------------------------------------------------------------
FROM rocker/tidyverse:4.0.0

# Setup ------------------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    dos2unix \
    libssl-dev \
    libxml2-dev \
    git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configure R ------------------------------------------------------------------
ARG R_REPOS=\'https://mran.microsoft.com/snapshot/2020-04-24\'
RUN echo "options(repos = ${R_REPOS})" >> .Rprofile
RUN R -q -e "if(!require(remotes)) install.packages('remotes')"
RUN R -q -e "remotes::install_cran(c('devtools', 'testthat', 'covr', 'roxygen2'))"

# Configure Python -------------------------------------------------------------
RUN R -q -e "remotes::install_cran('reticulate')"
RUN R -q -e "reticulate::install_miniconda(update = FALSE)"
RUN R -q -e "reticulate::conda_create(envname = 'modelflow-env', packages = 'python')"
RUN echo "RETICULATE_MINICONDA_PATH=/root/.local/share/r-miniconda" >> .Renviron
RUN echo "reticulate::use_condaenv(condaenv = 'modelflow-env', required = TRUE)" >> .Rprofile

# Metaflow ---------------------------------------------------------------------
ARG METAFLOW_VER='2.2.0'
RUN R -q -e "remotes::install_github('Netflix/metaflow', ref = ${METAFLOW_VER}, subdir = 'R')"
RUN R -q -e "reticulate::py_install(paste0('metaflow==', ${METAFLOW_VER}), envname = 'modelflow-env', pip = TRUE)"
#RUN R -q -e "metaflow::install(user = FALSE, upgrade = FALSE)"

# MLflow -----------------------------------------------------------------------
ARG MLFLOW_VER='1.10.0'
RUN R -q -e "remotes::install_version('mlflow', ${MLFLOW_VER})"
RUN R -q -e "mlflow::install_mlflow(python_version = '3.8.5')"

# Run --------------------------------------------------------------------------
ENV MLFLOW_HOME opt/mlflow
ENV MLFLOW_HOST 0.0.0.0
ENV MLFLOW_PORT 5050
ENV MLFLOW_FILE ${MLFLOW_HOME}/files
ENV MLFLOW_ARTIFACT ${MLFLOW_HOME}/artifacts

RUN mkdir -p ${MLFLOW_HOME}
COPY scripts/mlflow-server.sh ${MLFLOW_HOME}/mlflow-server.sh
RUN chmod +x ${MLFLOW_HOME}/mlflow-server.sh

WORKDIR ${MLFLOW_HOME}
ENTRYPOINT ["/mlflow-server.sh"]
