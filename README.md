# World-Happiness-Analysis

A project using SQL and R to analyze the 2024 World Happiness Report.

---

## 📁 Files Overview

| File | Description |
|------|-------------|
| `WHR2024.csv` / `whr2024.db` | Dataset in CSV and SQLite formats |
| `initialization.r` | Data prep: split, normalize, etc. |
| `.bat` files | Run SQL scripts and print outputs in terminal |

---

## ▶️ Quick Start

### 📦 Initialize Database (SQLite)

Run the following in your terminal or Command Prompt:

```bat
sqlite3 whr2024.db ".read init_continents_table.sql"
sqlite3 whr2024.db ".read init_continent_column.sql"
sqlite3 whr2024.db ".read update_continent_id.sql"
```

### 📊 Execute SQL Queries (with output)

```bat
above_median_per_continent_run.bat
happiness_index_run.bat
```

> These scripts run `.sql` files and display results using `sqlite3`.

---

## 📌 Notes

- The `above_median_per_continent` view filters countries that rank in the **top 50%** of their continent in **all** six happiness indicators:
  - GDP, Social support, Healthy life expectancy, Freedom, Generosity, Corruption perception

- `happiness_index.sql` uses nested averages to assign each country a 4-level happiness label.

- `knn_predict.sql` uses Euclidean distance to find the closest 5 countries to a given input vector.

- `knn_predict.r` uses `tidymodels` and `kknn` to fit and tune a regression model.

---

## 🧠 Requirements

- SQLite
- R
- Optional: MySQL (if you want to test `knn_predict.sql`)

---
