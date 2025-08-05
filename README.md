# 🍕 Pizza Sales SQL Analysis

<p align="center">
  <img src="https://github.com/Kalyanikhapale/Pizza-Sales-Analysis/blob/main/PIZZA%20BANNER.png" alt="Pizza Banner" width="400"/>
</p>


This project explores pizza sales data using **SQL in MySQL Workbench**. It includes data cleaning, table creation, and business insights through SQL queries — all done using native MySQL tools without external visualization tools like Power BI or Tableau.

---

## 📦 Dataset Overview

The project uses 4 CSV files:

| File Name         | Description                            |
|------------------|----------------------------------------|
| `pizza_types.csv` | Pizza categories, names, and ingredients |
| `pizzas.csv`      | Pizza sizes and prices                 |
| `orders.csv`      | Orders with date and time              |
| `order_details.csv` | Pizza IDs and quantities in each order |

---

## 🛠️ Tools Used

- **MySQL Workbench** (Table Import Wizard for data import)
- **MySQL 8.0+**
- **Excel / Notepad++** (for CSV cleaning where needed)

---

## 🗂️ Database Schema

```
pizza_types --(1:N)--> pizzas --(1:N)--> order_details <--(N:1)-- orders
````



## 🔍 SQL Analysis (Key Queries)

### 📊 Basic

* Total number of orders
* Total revenue
* Highest priced pizza
* Most common pizza size
* Top 5 most ordered pizza types

### 📊 Intermediate

* Total quantity by pizza category
* Orders by hour of the day
* Pizza count per category
* Avg pizzas per day
* Top 3 pizzas by revenue

### 📊 Advanced

* % revenue by pizza type
* Cumulative revenue over time
* Top 3 pizzas by revenue per category

---

## 📁 Project Structure


/pizza-sales-sql-analysis
│
├── README.md
├── data/
│   ├── pizza_types.csv
│   ├── pizzas.csv
│   ├── orders.csv
│   └── order_details.csv
├── schema/
│   └── Data import.sql
├── queries/
│   └── Basic, Intermediate, Advanced Analysis.sql



---

## ✅ How to Run

1. Open MySQL Workbench
2. Create a schema: `CREATE DATABASE Pizza_Hut;`
3. Run the SQL script in `Data import.sql`
4. Use Table Data Import Wizard to import all CSVs
5. Run the analysis queries in `Analysis.sql`

---

## 👩‍💻 Author

**Kalyani Khapale**
[Data Analysis Using SQL]


