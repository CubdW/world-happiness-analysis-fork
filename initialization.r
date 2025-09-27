source("src/install_dependencies.r")
.libPaths("r_libs")
library(DBI)
library(RSQLite)
library(tidyverse)
library(tidymodels)
library(tidyclust)
source("src/create_db.r")

conn <- dbConnect(RSQLite::SQLite(), dbname = "whr2024.db")

dbListTables(conn)

whr_raw <- dbReadTable(conn, "whr_raw")


whr <- whr_raw |>
  mutate(across(Ladder.score:Explained.by..Perceptions.of.corruption, as.double)) |>
  drop_na(Ladder.score:Explained.by..Perceptions.of.corruption)

whr

system(command = "src\\make_continent_table.bat", invisible = TRUE)