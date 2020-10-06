# <https://s-fleck.github.io/lgr/>
lgr <- lgr::lgr

# Subscribe Handlers ------------------------------------------------------
handlers <- R6DS::RDict$new()
handlers$add("FailedToEstablishConnection", "log_failure_notification")
handlers$add("ObjectCreated", "log_created_object")


# Define Handlers ---------------------------------------------------------
log_failure_notification <- function(event){
    msg <- stringr::str_glue("Failed to establish database connection. Server returned status code {code}", code = event$status_code)
    lgr$error(msg)
}

log_created_object <- function(event){
    msg <- stringr::str_glue("{class} object created on {timestamp}", class = event$class, timestamp = event$timestamp)
    lgr$info(msg)
}

