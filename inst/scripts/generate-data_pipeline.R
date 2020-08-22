pkgload::load_all(export_all = FALSE, helpers = FALSE)

# acquire data ------------------------------------------------------------
add_command("ingest_data", "dao", covr_exemption = TRUE)
add_command("prepare_data", "dao", covr_exemption = TRUE)
add_command("validate_data", "dao", covr_exemption = TRUE)
add_command("store_data", "dao", covr_exemption = TRUE)
# data acquired -----------------------------------------------------------
