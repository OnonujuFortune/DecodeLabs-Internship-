# P3 — SQL Data Analysis

## Project Overview
This phase covers the SQL-based analysis of the e-commerce orders dataset using MySQL. The goal was to replicate and validate the findings from the EDA phase (P2) using structured queries, and to extract additional business insights through relational data analysis.

---

## Dataset Information
| Property | Detail |
|---|---|
| Database | ecommerce_db |
| Table | orders |
| Total Records | 1,200 rows |
| Date Range | January 2023 – June 2025 |
| Tool | MySQL Workbench 8.0 |

---

## Database Schema

```sql
CREATE TABLE orders (
    OrderID         VARCHAR(20),
    Date            DATE,
    Product         VARCHAR(50),
    Quantity        INT,
    UnitPrice       DECIMAL(10,2),
    TotalPrice      DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod   VARCHAR(50),
    OrderStatus     VARCHAR(50),
    TrackingNumber  VARCHAR(20),
    ItemsInCart     INT,
    CouponCode      VARCHAR(20),
    ReferralSource  VARCHAR(50),
    PriceVerified   BOOLEAN
);
```

---

## Queries & Findings

### Query 1 — Overall Business Performance
**Purpose:** Establish top-level KPIs as a baseline for all further analysis.

**Finding:** 1,200 total orders generated $1,264,748.96 in revenue with an AOV of $1,053.96.

---

### Query 2 — Revenue by Product
**Purpose:** Identify which products drive the most revenue and order volume.

**Finding:** Chair and Printer lead in total revenue. Phone has the lowest AOV and overall revenue. Revenue distribution is relatively even across all 7 products.

---

### Query 3 — Order Status Distribution
**Purpose:** Understand the breakdown of order outcomes and identify fulfilment issues.

**Finding:** Only 19.2% of orders are Delivered. Cancelled (20.8%) and Returned (20.6%) together account for 41.4% of all orders — the most critical finding in the dataset.

---

### Query 4 — Return Rate by Product
**Purpose:** Identify which products have disproportionately high return rates.

**Finding:** Tablet has the highest return rate at 24% (1 in 4 orders returned). Chair has the lowest at 15.7%.

---

### Query 5 — Revenue by Referral Source
**Purpose:** Determine which acquisition channels drive the most revenue and highest-value customers.

**Finding:** Instagram leads in both order volume and total revenue. Facebook attracts fewer orders but has the highest AOV — indicating a higher-quality customer segment.

---

### Query 6 — Coupon Code Effectiveness
**Purpose:** Assess whether coupon usage meaningfully increases basket size or revenue.

**Finding:** FREESHIP has the highest AOV among coupon users. Customers with no coupon spend more on average than WINTER15 users. The AOV gap across all coupon groups is less than $35 — coupons have minimal impact on basket size.

---

### Query 7 — Payment Method Performance
**Purpose:** Understand payment preferences and their relationship to order value.

**Finding:** Credit Card users have the highest AOV ($1,127). Debit Card users have the lowest. Online payments have the most orders but mid-range AOV.

---

### Query 8 — Monthly Revenue Trend
**Purpose:** Identify seasonal patterns and revenue trends across the 2023–2025 period.

**Finding:** Revenue shows month-to-month variability with a notable spike in mid-2024. No consistent upward growth trend is visible — revenue remains relatively flat across the period.

---

## Summary of Key SQL Findings

| # | Finding | Business Implication |
|---|---|---|
| 1 | Only 19.2% of orders are delivered | Fulfilment process needs urgent review |
| 2 | 41.4% of orders are cancelled or returned | Significant revenue leakage |
| 3 | Tablet has 24% return rate | Product quality or expectation mismatch |
| 4 | Instagram drives most revenue | Prioritise Instagram marketing spend |
| 5 | Facebook has highest AOV | High-value customer segment worth nurturing |
| 6 | Coupons have minimal AOV impact | Coupon strategy needs rethinking |
| 7 | Credit Card users spend most | Premium segment worth targeting |
| 8 | Revenue trend is flat 2023–2025 | Growth strategy required |

---

## Deliverables
| File | Description |
|---|---|
| `analysis.sql` | All 8 SQL queries with inline comments |
| `screenshots/` | Query result screenshots from MySQL Workbench |
| `README.md` | This file |

---

## How to Run
1. Open MySQL Workbench and connect to your local server
2. Create the database: `CREATE DATABASE ecommerce_db;`
3. Import `Cleaned_Dataset.csv` into a table named `orders`
4. Open `analysis.sql` and run queries sequentially

---

## Tools Used
- MySQL Workbench 8.0
- MySQL 8.0

---

## Analyst
**Ononuju Fortune Chijioke**
Decode Labs Data Analytics Internship — 2025/2026
