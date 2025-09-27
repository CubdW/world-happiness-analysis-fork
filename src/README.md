
## 📁 Files Overview

| File | Description |
|------|-------------|
| `init_continents_table.sql` | Creates `continents` table |
| `init_continent_column.sql` | Adds `continent_id` column to raw data |
| `update_continent_id.sql` | Populates `continent_id` for each country |
| `above_median_per_continent.sql` | View of countries ranking top 50% in all six happiness factors per continent |
| `happiness_index.sql` | Categorizes countries as `Very Happy`, `Happy`, `Sad`, `Very Sad` based on ladder score |
| `knn_predict.sql` | A MySQL-style stored procedure that simulates KNN using Euclidean distance |
| `knn_predict.r` | Predicts happiness score using KNN regression with tuning and v-fold CV |
| `make_continent_table.bat` | Is used during the init process to modify the whr2024.db table |