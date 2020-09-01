#' @title What the Function Does
#' @description `instantiate_repository` is an amazing function
#' @param session (`environment`) A shared environment.
#' @return session
#' @family expt subdomain
#' @export
instantiate_repository <- function(session) {
    # Assertions ...
    stopifnot(is.environment(session))

    repo <- .FakeReposetory(session)

    # Return
    session$add("repo", repo)
    invisible(session)
}


# FakeReposetory (in-memory) ----------------------------------------------
.FakeReposetory <- function(session){

}

# SQLReposetory -----------------------------------------------------------
.SQLReposetory <- function(session){
    stopifnot(session$has("conn"))

    # Establish DB connection
    session %>%
        ingest_data() %>%
        prepare_data() %>%
        validate_data() %>%
        store_data()

    invisible(session)
}

