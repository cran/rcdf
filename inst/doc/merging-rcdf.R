## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# data <- read_rcdf(
#   path = c(
#     "path/to/file/01.rcdf",
#     "path/to/file/02.rcdf",
#     "path/to/file/03.rcdf"
#   ),
#   decryption_key = c(
#     "keys/01-private-key.pem",
#     "keys/02-private-key.pem",
#     "keys/03-private-key.pem"
#   ),
#   password = c(
#     "password01",
#     "password02",
#     "password03"
#   )
# )

## ----eval=FALSE---------------------------------------------------------------
# merge_rcdf(
#   rcdf_files = c(
#     "path/to/file/01.rcdf",
#     "path/to/file/02.rcdf",
#     "path/to/file/03.rcdf"
#   ),
#   decryption_key = c(
#     "keys/01-private-key.pem",
#     "keys/02-private-key.pem",
#     "keys/03-private-key.pem"
#   ),
#   password = c(
#     "password01",
#     "password02",
#     "password03"
#   ),
#   merged_file_path = "path/to/merged.rcdf"
# )

