# 📊 Sales Analytics Dashboard

> End-to-end Business Intelligence project — from raw Excel data to an interactive Power BI dashboard — built using MySQL, SQL, Power Query, DAX, and Power BI.

---

## 🔍 Project Overview

This project demonstrates a complete data analytics pipeline: raw sales data was cleaned, structured in a relational database, and visualized in an interactive dashboard that enables business stakeholders to analyze performance across countries, products, channels, and time.

**Key business metrics delivered:**
- Total Sales: **$205.99M** | Total Profit: **$190.69M**
- Total Orders: **11K** | Total Quantity: **90,191**

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Microsoft Excel | Raw data storage & pre-processing |
| MySQL Workbench | Database creation & management |
| SQL | Table design, relationships, querying |
| Power BI Desktop | Data modeling, DAX, dashboard |
| Power Query | Data transformation & cleaning |
| DAX | Custom business measures |

---

## 🏗️ Project Architecture

```
Excel Files → MySQL Database → Power BI (via MySQL Connector) → Dashboard
```

**Star Schema Design:**
- **Fact Table:** SalesOrders
- **Dimension Tables:** Customers, Products, Regions, ProductBudgets

---

## 📋 Step-by-Step Workflow

1. **Dataset Preparation** — Split multi-sheet Excel workbook into individual files per table
2. **Database Setup** — Created `SalesAnalyticsDB` in MySQL Workbench with 5 tables
3. **Schema Design** — Defined Primary Keys on dimension tables; Foreign Keys on SalesOrders
4. **Data Import** — Imported Excel data into MySQL; resolved data type and format errors
5. **Power BI Connection** — Connected Power BI Desktop directly to MySQL via native connector
6. **Power Query Transformations** — Verified data types, removed unnecessary columns
7. **Data Modeling** — Built Star Schema with table relationships in Power BI Model View
8. **DAX Measures** — Created: `Total Sales`, `Total Orders`, `Total Quantity`, `Total Cost`, `Profit`, `Total Budget`, `Sales vs Budget`
9. **Dashboard Visuals** — Built KPI cards, bar charts, pie chart, line chart, and comparison visuals
10. **Interactivity** — Added slicers for Country, Product, Channel, and Year

---

## 📊 Dashboard Preview

![Sales Performance Dashboard]

**Dashboard Features:**
- 📌 KPI Cards — Sales, Orders, Profit, Quantity at a glance
- 🌍 Sales by Country (horizontal bar chart)
- 🏆 Top 10 Products by Revenue
- 🥧 Sales by Channel (Wholesale / Distributor / Export)
- 📈 Monthly Sales Trend (line chart)
- 📦 Sales vs Budget by Product (comparison chart)
- 🔽 Dynamic Filters — Country, Product, Channel, Year

---

## 💡 Key Insights

- **Wholesale dominates** at 54% of total channel revenue ($111.37M)
- **Germany and Ukraine** are the top-performing countries by sales
- Sales peak around **July–August** and dip in **Q4**
- Several products **underperform vs their 2017 budget targets**

---

## 📁 Repository Structure

```
├── sales_analytics_db.sql       # Full database schema with sample query
├── dashboard_image.png          # Dashboard screenshot
├── project_report.docx          # Step-by-step project documentation
└── README.md
```

---

## 👤 Author

**Ravi Prakash Chaudhary**  
🔗 [https://www.linkedin.com/feed/] | 💼 [https://github.com/ravichaudhary-code/SALES-ANALYSIS-WITH-EXCEL-SQL-POWERBI/new/main?filename=README.md]

---

## 🏷️ Tags

`Power BI` `SQL` `MySQL` `DAX` `Data Analytics` `Business Intelligence` `Star Schema` `Dashboard` `Excel` `Data Visualization`
