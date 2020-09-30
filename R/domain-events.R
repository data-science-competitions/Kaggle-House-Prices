#' @title Domain Events Depository
#' @noRd
#' @export
events <- new.env()


# Data Pipeline Events ----------------------------------------------------
events$FailedToEstablishConnection <- function(status_code = integer(0))
    Event$new(event = "FailedToEstablishConnection", status_code = status_code)


# Train Model Events ------------------------------------------------------
events$ObjectCreated <- function(class = char(0))
    Event$new(event = "ObjectCreated", class = class)


