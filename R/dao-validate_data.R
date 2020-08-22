#' @title What the Function Does
#' @description `validate_data` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family dao subdomain
#' @export
validate_data <- function(session) { # nocov start
    stopifnot(is.environment(session))
    stopifnot(is.not.null(session$con))

    # Setup -------------------------------------------------------------------
    # Policy
    al <- pointblank::action_levels(stop_at = 1)
    # Agents
    agent.train_set <-
        dplyr::tbl(session$con, "train_set") %>%
        pointblank::create_agent(name = "train_set", actions = al)

    # Operations --------------------------------------------------------------
    salient_columns <- c("Id", "Neighborhood", "YrSold")
    agent.train_set <- pointblank::col_exists(agent.train_set, columns = salient_columns)

    # Activate ----------------------------------------------------------------
    agent.train_set <- pointblank::interrogate(agent.train_set)

    # Return
    invisible(session)
} # nocov end
