# configure session -------------------------------------------------------
pkgload::load_all(export_all = FALSE, helpers = FALSE)
session <- initialize_session()
session %>% get_configurations()
# session configured ------------------------------------------------------


# acquire data ------------------------------------------------------------
session %>%
    ingest_data() %>%
    prepare_data() %>%
    validate_data() %>%
    store_data()
# data acquired -----------------------------------------------------------
