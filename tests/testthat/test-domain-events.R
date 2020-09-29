test_that("FailedToEstablishConnection works", {
  expect_is(FailedToEstablishConnection(403), "Event")
})
