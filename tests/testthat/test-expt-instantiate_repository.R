# context('unit test for instantiate_repository')
#
# # Setup -------------------------------------------------------------------
# testthat::setup({
#     assign('test_env', testthat::test_env(), envir = parent.frame())
#     session <- initialize_session()
#     # dbplyr::tbl_memdb(mtcars, name = "train_set")
#     # session$add("conn", dbplyr::src_memdb())
#     test_env$session <- session
# })
#
# # General -----------------------------------------------------------------
# test_that('instantiate_repository works', {
#     attach(test_env)
#     expect_silent(instantiate_repository(session))
#
# })
