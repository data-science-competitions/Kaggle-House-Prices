# Subscribe Handlers ------------------------------------------------------
handlers <- R6DS::RDict$new()
handlers$add("FailedToEstablishConnection", "log_failure_notification")
handlers$add("ObjectCreated", "log_created_object")


# Define Handlers ---------------------------------------------------------
log_failure_notification <- function(event){
    msg <- stringr::str_glue("Failed to establish database connection. Server returned status code {code}", code = event$status_code)
    logger::log_error(msg)
}

log_created_object <- function(event){
    msg <- stringr::str_glue("{class} object created", class = event$class)
    logger::log_info(msg)
}

