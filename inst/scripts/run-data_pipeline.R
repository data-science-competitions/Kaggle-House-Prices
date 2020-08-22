# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
session <- new.env()
session %>%
    get_configurations() %>%
    create_experiment()
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
session %>%
    ingest_data() %>%
    prepare_data() %>%
    validate_data() %>%
    store_data()
# data acquired -----------------------------------------------------------
