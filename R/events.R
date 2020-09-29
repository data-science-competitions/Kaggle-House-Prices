# Domain Events -----------------------------------------------------------
#' @title Domain Event Class
Event <- R6::R6Class(
    "Event", lock_objects = FALSE,
    public = list(
        #' @description Add key-value pair to event object
        #' @param key (`character`) Element name.
        #' @param value (`?`) Element value.
        set = function(key, value) {self[[key]] <- value},
        #' @description Initialize new event
        #' @param ... key-value pairs, e.g. first_name = "Bilbo".
        initialize = function(...) {
            args <- unlist(list(...))
            for(i in seq_len(length(args))){
				self$timestamp <- Sys.time()
                do.call(self$set, args = list(key = names(args[i]), value = unname(args[i])))
            }
        }
    )
)

# Data Pipeline Events ----------------------------------------------------
#' @title Fail to establish database connection
#' @param status_code (`integer`) HTTP status codes.
#' @references \href{https://en.wikipedia.org/wiki/List_of_HTTP_status_codes}{List of HTTP status codes}
FailedToEstablishConnection <- function(status_code = integer(0)) Event$new(status_code = status_code)
