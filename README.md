# E-Commerce Sales Analysis

**Author:** Matthew Muzofa

---

## 📌 Project Overview

This is an end-to-end data analysis project built to simulate the full pipeline a data analyst would follow in a real business environment. A raw e-commerce dataset was cleaned and transformed using R, stored in SQL Server, and visualised in Power BI to uncover insights around revenue trends, customer behaviour and product performance.

---

## 🗃️ Dataset

- **Source:** [Kaggle — E-Commerce Data](https://www.kaggle.com/datasets/carrie1/ecommerce-data)
- **Original Rows:** 541,909 records
- **Cleaned Rows:** 397,884 records
- **Data includes:** Invoices, products, quantities, prices, customers and countries
- **Note:** The dataset is not included in this repository due to its size. Please download it directly from Kaggle using the link above.

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| R (Tidyverse) | Data cleaning and transformation |
| RStudio | R development environment |
| Microsoft SQL Server (SSMS) | Data storage and table creation |
| Power BI Desktop | Data visualisation and dashboard |
| Kaggle | Dataset source |

---

## 🔄 Project Pipeline

```
Raw CSV (Kaggle)
      ↓
R & Tidyverse (Clean & Transform)
      ↓
SQL Server via odbc (Store)
      ↓
Power BI (Visualise)
```

---

## 🧹 Data Cleaning Steps (R)

- Removed all rows with missing values
- Removed cancelled orders with negative quantities
- Removed invalid transactions with zero or negative prices
- Converted `InvoiceDate` from text to proper datetime format
- Converted `CustomerID` from numeric to text
- Created a new `TotalPrice` column by multiplying `Quantity` by `UnitPrice`
- Standardised all column names to lowercase

---

## 📊 Dashboard Visuals (Power BI)

| # | Visual | Description |
|---|--------|-------------|
| 1 | Total Revenue Over Time | Line chart showing monthly revenue trends |
| 2 | Top 10 Countries by Revenue | Bar chart of highest spending countries |
| 3 | Top 10 Best Selling Products | Bar chart of products by total revenue |
| 4 | Top 10 Customers by Revenue | Bar chart of highest spending customers |
| 5 | Revenue by Day of the Week | Bar chart showing which days generate the most sales |

---

## 📁 File Structure

```
ecommerce-sales-analysis/
│
├── ecommerce_cleaning.R                # R script for data cleaning and SQL loading
├── ecommerce_create_table.sql          # SQL Server table creation script
└── ecommerce_sales_analysis.pdf        # Final Power BI dashboard export
```

---

## 🚀 How to Reproduce

1. Download the dataset from Kaggle (link above) and save it as `e-commerce_data.csv`
2. Open `ecommerce_cleaning.R` in RStudio and run all lines
3. Create a database called `ecommerce` in SSMS and run `ecommerce_create_table.sql`
4. The R script will automatically load the cleaned data into SQL Server
5. Open Power BI Desktop and connect to your `ecommerce` SQL Server database
6. Recreate the visuals using the `online_retail` table

---

## 💡 Key Insights

- The majority of revenue comes from the **United Kingdom** which dominates all other countries
- Revenue peaked in **November 2011** suggesting strong seasonal demand around the holiday period
- The highest revenue days are midweek, with **Thursday** generating the most sales
- A small group of top customers account for a disproportionately large share of total revenue

---

*This project is part of my data analyst portfolio. Feel free to explore the files and reach out if you have any feedback.*
