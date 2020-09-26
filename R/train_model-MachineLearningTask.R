#' @export
MachineLearningTask <- function(id, backend, target, extra_args = list()){
    mlr3::TaskRegr$new(id, backend, target, extra_args = list())
}
