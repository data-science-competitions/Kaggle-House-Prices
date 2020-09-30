context('unit test for domain events')


test_that("Event class exists", {
  expect_is(Event$new(), "Event")
})

test_that("events objects exists", {
    expect_is(events, "environment")
    expect_gt(length(ls(events)), 0)
})

