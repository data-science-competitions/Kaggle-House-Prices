# acquire data ------------------------------------------------------------
session %>%
    ingest_data() %>%
    prepare_data() %>%
    validate_data() %>%
    store_data()
# data acquired -----------------------------------------------------------
