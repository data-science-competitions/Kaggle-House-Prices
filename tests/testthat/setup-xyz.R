# Instantiate Fake Repository ---------------------------------------------
session <- new.env()
session$repo <- R6DS::RDict$new()
session$repo$add("historical_data", house.prices::train_set)
session$repo$add("new_data", house.prices::test_set)

