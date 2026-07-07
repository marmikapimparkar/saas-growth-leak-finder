# 📊 SaaS Growth Leak Finder

> An end-to-end Data Analytics project that identifies revenue leaks across the SaaS customer journey using PostgreSQL, Excel, and Power BI.

---

## 📌 Project Overview

SaaS companies often lose revenue because users drop off at different stages of the customer lifecycle.

This project analyzes the complete customer journey—from signup to paid subscription—to identify:

- User drop-off points
- Churn behavior
- Revenue performance
- Customer acquisition effectiveness
- Product engagement

The goal is to provide actionable business insights that improve retention and maximize recurring revenue.

---

## 🎯 Business Problem

Revenue leakage occurs when users:

- Sign up but never activate
- Activate but don't start a trial
- Start a trial but never subscribe
- Subscribe but churn early

This project helps answer:

- Where is the biggest revenue leak?
- Which acquisition channel performs best?
- Which plans generate the highest revenue?
- What factors contribute to churn?

---

## 🛠 Tech Stack

- PostgreSQL
- Excel
- Power BI

---

## 📂 Dataset

The project uses a realistic SaaS dataset containing **50,000 users** across four related tables.

### Tables

| Table | Description |
|--------|-------------|
| Users | Customer information |
| Product Usage | Login activity and feature usage |
| Subscriptions | Trial, active, and churned subscriptions |
| Support Tickets | Customer support interactions |

---

## 🧹 Data Cleaning

Performed using PostgreSQL.

Tasks completed:

- Checked missing values
- Checked duplicate records
- Validated imported data
- Verified table relationships
- Ensured data consistency

---

## 📊 Exploratory Data Analysis

Explored:

- User distribution by country
- Device distribution
- Acquisition sources
- Subscription status
- Plan distribution

---

## 📈 Business Analysis

The following business questions were answered using SQL:

- Monthly Signups
- Activation Rate
- Trial → Paid Conversion Rate
- Churn Rate
- Revenue by Plan
- Best Acquisition Source
- Country with Highest Churn Rate
- Highest ARPU by Plan
- Average Days from Signup to Trial
- Top 10 Countries by MRR
- Average Login Count by Plan

---

## 📉 Excel Validation

Excel was used for quick validation using Pivot Tables.

Created:

- Users by Country
- Revenue by Plan
- Subscription Status Distribution
- Support Tickets by Priority

---

## 📊 Power BI Dashboard

The dashboard includes four pages.

### Executive Summary

- Total Users
- Activation Rate
- Trial Conversion Rate
- Churn Rate
- Monthly Recurring Revenue

### Funnel Analysis

- Signup
- Activated
- Trial
- Paid Users

### Revenue Analysis

- Revenue by Plan
- Revenue by Country
- Revenue by Acquisition Source
- Top Countries by MRR

### Churn Analysis

- Churn by Country
- Churn by Plan
- Average Login Count
- ARPU Analysis

---

## 💡 Key Insights

- Identified the largest customer drop-off in the SaaS funnel.
- Compared revenue performance across subscription plans.
- Evaluated acquisition channels based on generated revenue.
- Analyzed customer engagement and churn behavior.
- Measured activation and paid conversion rates.

---

## 📁 Project Structure

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
│   ├── 02_exploratory_analysis.sql
│   └── 03_business_analysis.sql
│
├── excel
│   └── excel_validation.xlsx
│
├── dashboard
│   └── SaaS_Growth_Leak_Finder.pbix
│
├── images
│
└── README.md
```

---

## 🚀 Skills Demonstrated

- SQL Joins
- Aggregations
- CASE Statements
- Date Functions
- Data Cleaning
- Exploratory Data Analysis
- Business Analytics
- Dashboard Design
- Data Visualization
- KPI Reporting

---

## 👩‍💻 Author

**Marmika Pimparkar**

Aspiring Data Analyst passionate about transforming data into actionable business insights.

- SQL
- PostgreSQL
- Excel
- Power BI
