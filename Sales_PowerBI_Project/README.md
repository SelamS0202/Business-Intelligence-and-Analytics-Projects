#  Sales Analytics Dashboard – Power BI Portfolio Project

An end-to-end data analytics project showcasing ETL with Python, SQL Server view design, and Power BI dashboard development using a sample retail sales dataset.

---

## Tools

- **Python** (SQLAlchemy + pyodbc) for ETL
- **SQL Server** with a custom **SQL View**
- **Power BI** (Import mode for demo version)
- **DAX** for custom measures (e.g., MoM% Growth, YoY%Growth)
---

## Project Overview

- Extracted and cleaned data using Python
- Created a SQL view (`VW_Sales_Dashboard`) for efficient reporting
- Built a Power BI dashboard with key sales metrics, product performance, and market and customer analysis

> 📂 View the SQL script: [`/SQL/VW_Sales_Dashboard.sql`](sql/vw_sales_dashboard.sql)

> 🖼️ Dashboard Preview:
>![Dashboard Overview] (screenshots/Sales_Dashboard.png)

---

## Dataset 

This project uses the **Sample Sales Data** available on **Kaggle**, originally created for retail analytics training:

> 📎 [Kaggle Dataset Link](https://www.kaggle.com/datasets/gusgsegura/sales-sample-data)  
> Authored by **María Carina Roldán**, modified by **Gus Segura (2014)**  
> Licensed under [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/)

---

## Folder Structure

/Sales_PowerBI_Project/

├── Data/ # Dataset
├── ETL/ETL_Python_Scripts/ # Python Scripts
├── SQL/ # SQL view for Power BI
├── Screenshots/ # Dashboard images
├── README.md # Project overview
|── Logical_Data_Model.png # Star Schema Model


