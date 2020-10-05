# Machine Learning Task ---------------------------------------------------
#' @title Regression Task
#' @inheritParams mlr3::TaskRegr
#' @seealso \link[mlr3]{TaskRegr}
#' @family train_model subdomain
#' @export
MachineLearningTask <- function(id, backend, target, extra_args = list()){
    mlr3::TaskRegr$new(id, backend, target, extra_args = list())
}
