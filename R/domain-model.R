# Machine Learning Task ---------------------------------------------------
#' @title Regression Task
#' @inheritParams mlr3::TaskRegr
#' @seealso \link[mlr3]{TaskRegr}
#' @family train_model subdomain
#' @export
MachineLearningTask <- function(id, backend, target, extra_args = list()){
    MachineLearningTask <- R6::R6Class(inherit = mlr3::TaskRegr)

    MachineLearningTask$set("public", "events", R6DS::RQueue$new())
    MachineLearningTask$set("public", "initialize", function(...){
        super$initialize(...)
        self$events$enqueue(events$MachineLearningTaskCreated())
        invisible(self)
    })

    MachineLearningTask$new(id, backend, target, extra_args = list())
}
