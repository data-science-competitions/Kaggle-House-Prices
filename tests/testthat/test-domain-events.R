context('unit test for domain events')


# Event Parent Class ------------------------------------------------------
test_that("instantiating Event without the necessary arguments fails", {
    expect_error(Event$new())
})

test_that("instantiating Event with the necessary arguments succeeds", {
    expect_is(Event$new(event = "Christmas"), "Event")
})


# Events Repository -------------------------------------------------------
test_that("events objects exists", {
    expect_is(events, "environment")
    expect_gt(length(ls(events)), 0)
})

