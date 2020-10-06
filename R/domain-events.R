# Domain Events -----------------------------------------------------------
#' @title Domain Event Class
#' @description Event parent class that can store common attributes.
#' @export
Event <- R6::R6Class(
    "Event", lock_objects = FALSE,
    public = list(
        #' @description Add key-value pair to event object
        #' @param key (`character`) Element name.
        #' @param value (`?`) Element value.
        set = function(key, value) {self[[key]] <- value},
        #' @description Initialize new event
        #' @param event (`character`) Event name
        #' @param ... key-value pairs, e.g. first_name = "Bilbo".
        initialize = function(event, ...) {
            stopifnot(isFALSE(missing(event)))

            self$event <- event
            self$timestamp <- Sys.time()

            args <- unlist(list(...))
            for(i in seq_len(length(args))){
                do.call(self$set, args = list(key = names(args[i]), value = unname(args[i])))
            }
        }
    )
)

# Domain Events Depository ------------------------------------------------
#' @title Domain Events Depository
#' @noRd
#' @export
events <- new.env()

events$MachineLearningTaskCreated <- function()
    Event$new(event = "MachineLearningTaskCreated")

events$FailedToEstablishConnection <- function(status_code = integer(0))
    Event$new(event = "FailedToEstablishConnection", status_code = status_code)

events$ObjectCreated <- function(class = char(0))
    Event$new(event = "ObjectCreated", class = class)


