## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(rcdf)

## ----eval=FALSE---------------------------------------------------------------
# sample_dir  <- system.file("extdata", package = "rcdf")
# sample_rcdf <- file.path(sample_dir, "mtcars.rcdf")
# sample_key  <- file.path(sample_dir, "sample-private-key.pem")

## ----eval=FALSE---------------------------------------------------------------
# pub_key <- generate_rsa_keys(
#   path     = "~/my-keys",         # folder where both files are saved
#   password = "a-strong-password"  # optional, but protects the private key
# )
# # pub_key holds the path to the public key — you will pass it to write_rcdf()

## ----eval=FALSE---------------------------------------------------------------
# # Create a container for your tables
# my_data <- rcdf_list()
# 
# # Add any data frames you want to store together
# my_data$households <- data.frame(id = 1:100, region = sample(c("North", "South"), 100, TRUE))
# my_data$survey     <- data.frame(id = 1:100, score  = rnorm(100))
# 
# # Save everything as a single encrypted file
# write_rcdf(
#   data    = my_data,
#   path    = "~/data/survey-2024.rcdf",
#   pub_key = pub_key              # path returned by generate_rsa_keys()
# )

## ----eval=FALSE---------------------------------------------------------------
# survey_data <- read_rcdf(
#   path           = "~/data/survey-2024.rcdf",
#   decryption_key = "~/my-keys/private-key.pem",
#   password       = "a-strong-password"   # only needed if you set one
# )
# 
# # Each table comes back as a data frame inside the list
# head(survey_data$households)
# head(survey_data$survey)

## ----eval=FALSE---------------------------------------------------------------
# sample_data <- read_rcdf(
#   path           = sample_rcdf,
#   decryption_key = file.path(sample_dir, "sample-private-key-pw.pem"),
#   password       = "1234"
# )
# 
# head(sample_data$mtcars)

## ----eval=FALSE---------------------------------------------------------------
# all_data <- read_rcdf(
#   path           = "~/data/monthly-exports/",
#   decryption_key = "~/my-keys/private-key.pem",
#   password       = "a-strong-password",
#   recursive      = FALSE   # set TRUE to also search sub-folders
# )

## ----eval=FALSE---------------------------------------------------------------
# write_rcdf_as(
#   data    = survey_data,
#   path    = "~/exports/survey-2024",
#   formats = c("csv", "xlsx")   # create both at once
# )
# # Result:
# #   ~/exports/survey-2024/CSV/households.csv
# #   ~/exports/survey-2024/CSV/survey.csv
# #   ~/exports/survey-2024/Excel/households.xlsx
# #   ~/exports/survey-2024/Excel/survey.xlsx

## ----eval=FALSE---------------------------------------------------------------
# meta <- get_attrs(sample_rcdf)
# meta$created_at   # when the file was created
# meta$version      # package version used to create it
# meta$checksum     # per-table checksums for integrity verification

