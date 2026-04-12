# 📊 Telecom Customer Conversion Analysis (SQL Project)

## 🚀 Project Overview
This project analyses over **50,000 telecom customer records** to identify key factors influencing customer conversion during marketing campaigns. Using PostgreSQL, raw CSV data is transformed into actionable business insights through structured SQL queries, segmentation, and reusable analytical views.

---

## 🎯 Business Objective
To improve call-centre efficiency by identifying:
- High-conversion customer segments  
- Key demographic and behavioural drivers  
- Optimal targeting strategies for marketing campaigns  

---

## 🛠️ Tech Stack
- PostgreSQL (pgAdmin 4)
- SQL (Advanced queries, CTEs, Window Functions)
- CSV data ingestion

---

## 📂 Project Structure
```
telecom-customer-sql-analysis/
│
├── dataset/
│   └── wallace_communications_data.csv
│
├── sql/
│   ├── 01_table_creation.sql
│   ├── 02_data_import.sql
│   ├── 03_data_validation.sql
│   ├── 04_exploratory_analysis.sql
│   ├── 05_business_questions.sql
│   ├── 06_advanced_analysis.sql
│   └── 07_views.sql
│
├── views/
│   ├── age_segmentation.png
│   ├── campaign_intensity.png
│   ├── contact_method_distribution.png
│   ├── conversion_by_balance.png
│   ├── conversion_by_job.png
│   ├── overall_kpi.png
│   └── previous_campaign_outcome.png
│
└── README.md
```
---

## 🔄 Data Workflow

1. Table Creation – Designed schema for telecom customer dataset  
2. Data Import – Loaded CSV using PostgreSQL COPY command  
3. Data Validation – Checked nulls, distributions, and data quality  
4. Exploratory Analysis – Analysed customer demographics and patterns  
5. Business Analysis – Identified key conversion drivers  
6. Advanced Analysis – Built segmentation models and rankings  
7. Views – Created reusable SQL views for reporting  

---

## 📊 Key Analysis Performed

### ✔ Conversion Rate Analysis
- Overall campaign performance  
- Conversion by job, education, marital status  

### ✔ Customer Segmentation
- Age bands  
- Balance bands  
- Campaign interaction behaviour  

### ✔ Advanced SQL Techniques
- CASE statements for segmentation  
- Window functions (RANK)  
- Common Table Expressions (CTEs)  
- Aggregations and conditional logic  

---

## 📈 Key Insights (Data-Driven)

- Customers aged **60+ achieved the highest conversion rate (47.8%)**, significantly outperforming all other age groups  
- **Students (42.87%) and retired individuals (35.02%)** are the top-performing job segments  
- Customers with a **previous successful campaign outcome convert at 76.56%**, making them the highest-value target group  
- Conversion rates **decline as contact attempts increase**, indicating diminishing returns after the first interaction  
- Customers with **medium account balances (26.32%) outperform low and negative balance groups**, suggesting financial stability drives engagement  
- The majority of customers were contacted via **cellular channels**, making it the dominant communication method  

---

## 🧠 Key SQL Features Demonstrated

- Data modelling and schema design  
- Data ingestion using COPY  
- Data validation and quality checks  
- Aggregation and grouping  
- Advanced segmentation logic using CASE  
- Window functions and ranking  
- Creation of reusable analytical views  

---

## 📌 Views Created

- `vw_conversion_by_job`
- `vw_conversion_by_previous_outcome`
- `vw_high_value_segments`

These views enable fast and reusable access to business insights without rewriting complex queries.

---

## 📊 Future Improvements

- Integration with Power BI / Tableau dashboards  
- Predictive modelling using Python (customer conversion prediction)  
- Deployment using cloud platforms (Azure / AWS RDS)  

---

## 💼 Why This Project Matters

This project demonstrates real-world data analysis skills required for:
- Data Analyst roles  
- Business Intelligence roles  
- SQL Developer positions  

It showcases the ability to transform raw data into meaningful business insights and support data-driven decision-making.

---

## 📬 Author

**Muhammad Imran**  
