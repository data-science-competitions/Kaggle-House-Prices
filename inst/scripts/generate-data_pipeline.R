pkgload::load_all(export_all = FALSE, helpers = FALSE)

# acquire data ------------------------------------------------------------
add_command("ingest_data", "dao")
add_command("prepare_data", "dao")
add_command("validate_data", "dao")
add_command("store_data", "dao")
# data acquired -----------------------------------------------------------
