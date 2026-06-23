# E-Commerce Orders — Data Analytics Project

![Project Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Tool](https://img.shields.io/badge/Tools-Excel%20%7C%20MySQL%20%7C%20Python-blue)
![Internship](https://img.shields.io/badge/Internship-Decode%20Labs-orange)

## Overview
This repository contains a full end-to-end data analytics project completed as part of the **Decode Labs Data Analytics Internship (2025/2026)**. The project covers three phases — data cleaning, exploratory data analysis, and SQL-based analysis — all performed on a real-world e-commerce orders dataset containing 1,200 records spanning January 2023 to June 2025.

---

## Business Problem
> *What is driving revenue in this e-commerce business — and where is it being lost?*

This central question guided the entire analysis across all three phases, with findings covering product performance, customer acquisition, order fulfilment, coupon effectiveness, and payment behaviour.

---

## Project Structure

```
Ecommerce-Analysis/
├── P1-Data-Cleaning/
│   ├── Cleaned_Dataset.xlsx
│   ├── Change_Log_Report.pdf
│   └── README.md
│
├── P2-EDA/
│   ├── Ecommerce_Dashboard.xlsx
│   └── README.md
│
└── P3-SQL-Analysis/
    ├── analysis.sql
    ├──p1_cleaned_data.csv
    └── README.md
```

---

## The Three Phases

### Phase 1 — Data Cleaning & Preparation
**Folder:** `P1-Data-Cleaning/`

A full audit of the raw dataset was conducted to identify and resolve data quality issues before analysis. This included handling missing values, standardising date formats, and validating price integrity across all 1,200 records. All changes were documented in a structured change log.

**Key outputs:** Cleaned dataset, PDF change log report

---

### Phase 2 — Exploratory Data Analysis (EDA)
**Folder:** `P2-EDA/`

Pivot tables and an interactive Excel dashboard were built to explore patterns across revenue, customer acquisition channels, order fulfilment, coupon usage, and payment behaviour. Five charts and six KPI cards present the findings visually.

**Key outputs:** Excel dashboard with pivot tables and charts

**Headline finding:** Only 19.2% of orders are successfully delivered — with 41.4% of all orders either cancelled or returned, fulfilment is the most critical business problem in the dataset.

---

### Phase 3 — SQL Data Analysis
**Folder:** `P3-SQL-Analysis/`

Eight structured SQL queries were written in MySQL to validate and extend the EDA findings. Each query targets a specific business question and includes inline comments documenting the purpose and key finding.

**Key outputs:** Annotated SQL file covering revenue, fulfilment, acquisition, coupons, and trends

---

## Dataset Summary

| Property | Detail |
|---|---|
| Records | 1,200 orders |
| Columns | 14 |
| Date Range | January 2023 – June 2025 |
| Products | Chair, Desk, Laptop, Monitor, Phone, Printer, Tablet |
| Channels | Instagram, Facebook, Google, Email, Referral |

---

## Key Findings Across All Phases

| # | Finding |
|---|---|
| 1 | Only **19.2%** of orders are successfully delivered |
| 2 | **41.4%** of orders are cancelled or returned — major revenue leakage |
| 3 | **Tablet** has the highest return rate at 24% |
| 4 | **Instagram** is the top channel by revenue and order volume |
| 5 | **Facebook** attracts fewer orders but the highest AOV (₦1,098) |
| 6 | **FREESHIP** is the most effective coupon by AOV |
| 7 | Coupons have minimal impact on basket size — AOV gap across groups < ₦35 |
| 8 | **Credit Card** users have the highest AOV at ₦1,127 |

---

## Tools Used

| Tool | Purpose |
|---|---|
| Python (pandas, openpyxl) | Data cleaning and validation |
| Microsoft Excel | Pivot tables, EDA, dashboard |
| MySQL Workbench 8.0 | SQL analysis |
| Git & GitHub | Version control and project submission |

---

## Analyst
**Ononuju Fortune Chijioke**
B.Eng Mechanical Engineering — University of Nigeria, Nsukka (2025)
Data Analytics Intern — Decode Labs (2025/2026)

---

## Contact
- GitHub: github.com/OnonujuFortune
- LinkedIn: https://www.linkedin.com/in/fortune-ononuju-3446302a5?
