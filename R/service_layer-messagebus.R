# Define Handlers ---------------------------------------------------------
log_failure_notification <- function(event){
    msg <- stringr::str_glue("Failed to establish database connection. Server returned status code {code}", code = event$status_code)
    logger::log_error(msg)
}

# Subscribe Handlers ------------------------------------------------------
handlers <- R6DS::RDict$new()
handlers$add("FailedToEstablishConnection", "log_failure_notification")
