# Helpers -----------------------------------------------------------------
file.does_not.exist <- Negate(file.exists)

# Setup -------------------------------------------------------------------
source <- URLdecode("https://github.com/mockdb/db-misc/raw/master/house-prices-advanced-regression-techniques.zip")
target <- file.path("./data-raw", basename(source))
dir.create("./data", showWarnings = FALSE, recursive = TRUE)
if(file.does_not.exist(target)) download.file(source, target)

# Save Files --------------------------------------------------------------
names <- c("train", "test")
for(name in names){
    input <- file.path("data-raw", paste0(name, ".csv"))
    unzip(target, basename(input), exdir = dirname(input))
    data <- readr::read_csv(input)
    unlink(input)

    assign(paste0(name, "_set"), data)
    eval(parse(text = stringr::str_glue("usethis::use_data({dataset_name}, overwrite = TRUE)", dataset_name = paste0(name, "_set"))))
}
unlink(target)
