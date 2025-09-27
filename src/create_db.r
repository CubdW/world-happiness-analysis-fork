CSV_Data <- read.csv("WHR2024.csv") 
DB_Data <- dbConnect(RSQLite::SQLite(), "whr2024.db")
dbWriteTable(DB_Data, "whr_raw", CSV_Data, overwrite = TRUE)