# 📊 SaaS Growth Leak Finder

> **An end-to-end Data Analytics project focused on identifying revenue leakage across the SaaS customer lifecycle using PostgreSQL, Excel, and Power BI.**

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?style=for-the-badge&logo=microsoft-excel)


---

# 📖 Overview

Software-as-a-Service (SaaS) businesses rely on recurring revenue for sustainable growth. However, many organizations lose potential revenue due to customer drop-offs throughout the user journey.

This project analyzes the complete SaaS customer lifecycle—from user signup to paid subscription—to uncover revenue leaks, customer churn, acquisition performance, and product engagement.

The objective is to transform raw operational data into actionable business insights that support better strategic decision-making.

---

# 🎯 Business Problem

A SaaS company observed that despite acquiring thousands of new users every month, its Monthly Recurring Revenue (MRR) was growing slower than expected.

The management wanted to understand:

- Why users were dropping off before becoming paying customers.
- Which marketing channels attracted the highest-value customers.
- Which subscription plans generated the most revenue.
- What factors contributed to customer churn.
- How product engagement influenced subscription retention.

This project answers those business questions through structured SQL analysis and business intelligence techniques.

---

# 🎯 Project Objectives

✔ Identify the biggest revenue leak in the customer journey

✔ Measure customer activation and trial conversion rates

✔ Analyze subscription performance

✔ Evaluate acquisition channel effectiveness

✔ Understand churn behavior

✔ Measure customer engagement using product usage

✔ Generate actionable insights for business growth

---

# 🛠 Tech Stack

| Tool | Purpose |
|-------|----------|
| PostgreSQL | Data Storage & SQL Analysis |
| Excel | Data Validation & Pivot Analysis |
| Power BI | Interactive Dashboard & Visualization |

---

# 📂 Dataset

A realistic SaaS dataset containing **50,000 customer records** distributed across four relational tables.

| Table | Description |
|---------|-------------|
| **Users** | Customer profile and acquisition information |
| **Product Usage** | Login activity and feature usage metrics |
| **Subscriptions** | Trial, Active, Cancelled and Churned subscriptions |
| **Support Tickets** | Customer support interactions |

---

# 🗂 Database Schema

```
Users
   │
   ├────────────┐
   │            │
Product Usage   Subscriptions
   │
   │
Support Tickets
```

All tables are connected using the **User ID** as the primary relationship.

---

# 🧹 Data Cleaning

Data quality checks were performed using PostgreSQL.

### Cleaning Process

- Verified imported CSV files
- Checked NULL values
- Removed duplicate records
- Validated foreign key relationships
- Verified date formats
- Checked subscription consistency
- Ensured data integrity across tables

---

# 🔍 Exploratory Data Analysis

The initial analysis focused on understanding customer distribution and business performance.

### User Analysis

- Users by Country
- Users by Device
- Users by Acquisition Source
- Signup Trend
- Subscription Status Distribution

### Product Usage Analysis

- Login Distribution
- Feature Usage
- Active vs Inactive Users

### Subscription Analysis

- Plan Distribution
- Monthly Revenue
- Active Users
- Churned Users

---

# 📈 Business Analysis

Business questions answered through SQL:

### Customer Growth

- Monthly Signups
- User Activation Rate
- Trial Conversion Rate
- Paid Subscription Rate

### Revenue Analysis

- Monthly Recurring Revenue (MRR)
- Revenue by Plan
- Revenue by Country
- Revenue by Acquisition Source
- Average Revenue Per User (ARPU)

### Customer Retention

- Churn Rate
- Churn by Country
- Churn by Subscription Plan
- Average Days from Signup to Trial

### Product Engagement

- Average Login Count
- Feature Usage
- Login Count by Subscription Plan

---

# 📊 Excel Validation

Before building the dashboard, SQL results were validated using Excel Pivot Tables.

Validation included:

- Revenue by Plan
- Users by Country
- Subscription Status
- Support Tickets by Priority
- Acquisition Source Distribution

---

# 💡 Key Business Insights

The analysis helps stakeholders identify:

- Largest customer drop-off stage
- Highest-performing acquisition channels
- Most profitable subscription plans
- Customer churn patterns
- Revenue leakage points
- User engagement trends
- Opportunities to improve customer retention

---

# 📁 Project Structure

```
saas-growth-leak-finder
│
├── data
│   ├── users.csv
│   ├── product_usage.csv
│   ├── subscriptions.csv
│   └── support_tickets.csv
│
├── sql
│   ├── 01_create_tables.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_exploratory_analysis.sql
│   └── 04_business_analysis.sql
│
├── excel
│   └── excel_validation.xlsx
│
├── dashboard
│   └── SaaS_Growth_Leak_Finder.pbix
│
├── images
│
├── LICENSE
│
└── README.md
```

---

# 🚀 Skills Demonstrated

### SQL

- Joins
- Common Table Expressions (CTEs)
- Aggregate Functions
- CASE Statements
- Window Functions
- Date Functions
- Subqueries
- Data Cleaning
- Business Metrics

### Data Analysis

- Exploratory Data Analysis (EDA)
- Customer Funnel Analysis
- Revenue Analysis
- Churn Analysis
- Customer Segmentation
- KPI Development

### Business Intelligence

- KPI Reporting
- Dashboard Design
- Business Storytelling
- Data Visualization
- Executive Reporting

---

# 📚 Learning Outcomes

Through this project, I strengthened my ability to:

- Design relational databases
- Write business-focused SQL queries
- Clean and validate datasets
- Analyze customer behavior
- Measure SaaS performance metrics
- Translate data into business recommendations

---


# 👩‍💻 Author

## **Marmika Pimparkar**

**Aspiring Data Analyst** passionate about solving business problems through data.

### Skills

- PostgreSQL
- SQL
- Excel
- Power BI
- Data Analytics
- Business Intelligence

---

## ⭐ If you found this project useful

If you like this project, consider giving it a **⭐ Star** on GitHub.

It motivates me to continue building real-world Data Analytics projects.
