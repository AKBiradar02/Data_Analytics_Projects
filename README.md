# 🛍️ Retail Sales Data Analytics Project (2023)

### 🚀 Complete Data Analytics Workflow using Python • SQL • Power BI

**Author:** Abhay Biradar | Data Analyst  
**Tech Stack:** Python | MySQL | Power BI  
**Dataset:** Retail Sales Dataset (Kaggle)

---

## 📖 Project Overview

This project demonstrates a **complete data analytics pipeline**, from raw data preprocessing to SQL-based analysis and Power BI visualization.  
The goal is to analyze **retail sales patterns**, identify **top-performing product categories**, and explore **customer behavior by demographics**.

---

## 🧩 Workflow Overview

| Stage | Tool | Description |
|--------|------|-------------|
| **1. Data Cleaning** | Python (Pandas) | Handled missing values, converted dates, added `Month`, `Year`, and `Age Group` columns |
| **2. Data Analysis** | MySQL | Performed revenue aggregation, category and gender-based analysis |
| **3. Visualization** | Power BI | Created an interactive dashboard for insights |
| **4. Business Insights** | Power BI / Python | Derived key findings and trends |

---

## 🧮 Dataset Information

**File:** `retail_sales_dataset.csv`  
**Rows:** 1000  
**Columns:** 9  
**Key Columns:**
- `Transaction ID`
- `Date`
- `Customer ID`
- `Gender`
- `Age`
- `Product Category`
- `Quantity`
- `Price per Unit`
- `Total Amount`

**Cleaned Output:** `retail_sales_cleaned.csv` (with added columns → `Month`, `Year`, `Age Group`)

---

## 📊 Power BI Dashboard Overview

**File:** `powerbi dashboard/Retail_Sales_Performance_Dashboard.pbix`  
**Template:** `Retail_Sales_Performance_Dashboard.pbit`

### 🔹 Dashboard Features:
- KPI Cards → Total Revenue, Transactions, Avg Order Value  
- Line Chart → Monthly Sales Trend  
- Bar Chart → Product Category Sales  
- Donut Chart → Gender-Wise Spending  
- Pie Chart → Age Group Revenue Distribution  
- Interactive Filters → Year & Category  

![Dashboard Preview](powerbi%20dashboard/dashboard_preview.png)

---

## 🐍 Python Notebooks

Located inside the **`notebooks/`** directory.

| Notebook | Description |
|-----------|--------------|
| `analysis.ipynb` | Basic data exploration, summary stats |
| `visualization.ipynb` | Matplotlib & Seaborn visuals for trends |
| `deep_visuals.ipynb` | Advanced analysis (gender, category, age) |
| `README.md` | Notes and summaries inside the notebooks folder |

**Example Analysis Steps:**
- Load raw CSV → clean → transform  
- Generate Month & Age groups  
- Save cleaned file for SQL + Power BI  

---

## 🧾 SQL Analysis

Stored inside the **`sql_queries/`** folder, with outputs in `sql_results/`.

| SQL File | Purpose |
|-----------|----------|
| `01_create_table.sql` | Create table structure for MySQL |
| `02_total_sales_summary.sql` | Compute total & average sales |
| `04_sales_by_month.sql` | Analyze revenue month-wise |
| `06_gender_wise_sales.sql` | Compare sales by gender |
| `08_top_customers.sql` | Identify top 10 customers |

---

## 🧠 Key Insights

- 💰 **Total Revenue:** ₹456K  
- 👕 **Top Categories:** Electronics and Clothing lead in sales  
- 👩‍🦰 **Gender Trends:** Female customers slightly outspend males  
- 👨‍🦳 **Age Group:** Adults (36–50) contribute the highest revenue share  
- 📅 **Seasonality:** Highest sales in festive months (Oct–Dec)

---

## 📂 Final Folder Structure

retail_sales_dataset/
│
├── data/
│ ├── retail_sales_dataset.csv
│ ├── retail_sales_cleaned.csv
│
├── notebooks/
│ ├── analysis.ipynb
│ ├── deep_visuals.ipynb
│ ├── visualization.ipynb
│ ├── visuals/
│ ├── README.md
│
├── powerbi dashboard/
│ ├── Retail_Sales_Performance_Dashboard.pbix
│ ├── Retail_Sales_Performance_Dashboard.pbit
│
├── sql_queries/
│ ├── *.sql (all analysis queries)
│
├── sql_results/
│ ├── *.csv (outputs from queries)
│
└── README.md
