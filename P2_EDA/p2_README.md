# P2 — Exploratory Data Analysis (EDA)

## Project Overview
This phase covers the Exploratory Data Analysis of the cleaned e-commerce orders dataset. The goal was to identify patterns, trends, and business insights across revenue, customer acquisition, order fulfilment, coupon usage, and payment behaviour using pivot tables and an interactive Excel dashboard.

---

## Dataset Information
| Property | Detail |
|---|---|
| Source | Cleaned dataset from P1 |
| Total Records | 1,200 rows |
| Date Range | January 2023 – June 2025 |
| Domain | E-Commerce Orders |

---

## Business Questions Explored

1. Which products generate the most revenue?
2. Which customer acquisition channel performs best?
3. Do coupons meaningfully increase order value?
4. What is the order fulfilment rate — and where are orders being lost?
5. Which products have the highest return rates?
6. Does payment method correlate with order value?

---

## Key Findings

### Revenue & Sales Performance
- Total revenue across the period: **$1,264,761.96**
- Average Order Value (AOV): **$1,053.97**
- **Chair** and **Printer** are the top revenue-generating products
- **Phone** has the lowest AOV ($972) and lowest overall revenue
- **Laptop** commands the highest AOV at $1,110 despite not being the top revenue product
- Revenue is relatively evenly distributed across all 7 products (12%–15.5% each) — no single product dominates

### Customer Acquisition
- **Instagram** is the #1 channel by both order volume (259 orders) and total revenue ($275,000+)
- **Facebook** attracts fewer orders but has the highest AOV ($1,098) — fewer but bigger spenders
- **Referral** is the weakest channel across all metrics
- Channel performance is relatively balanced — no single channel is dramatically underperforming

### Coupon & Discount Effectiveness
- **FREESHIP** drives the most revenue and highest AOV among coupon users ($1,070)
- Customers with **no coupon** spend more on average (₦1,043) than WINTER15 users ($1,035)
- **WINTER15** is the weakest performing coupon — lowest AOV and lowest revenue share
- AOV difference across all coupon groups is less than $35 — coupons are not significantly inflating basket size

### Order Fulfilment — Headline Finding
- Only **19.2% of orders are successfully Delivered**
- **Cancelled (20.8%) + Returned (20.6%) = 41.4%** of all orders are lost
- Cart size is almost identical across all order statuses — large carts are not causing cancellations
- This is the most critical business problem identified in the dataset

### Return Rate by Product
- **Tablet** has the highest return rate at **24%** — nearly 1 in 4 tablet orders is returned
- **Chair** has the lowest return rate at **15.7%**
- Return rates are elevated across all products, consistent with the overall fulfilment problem

### Payment Behaviour
- **Credit Card** generates the highest AOV ($1,127) — premium buyers prefer it
- **Debit Card** has the lowest AOV ($1,001) and lowest total revenue
- **Online payments** have the most orders (258) but a mid-range AOV
- Revenue is spread across payment methods — no single method dominates

---

## Dashboard Structure

The Excel dashboard (`Ecommerce_Dashboard.xlsx`) contains:

### KPI Cards (top of dashboard)
| KPI | Value |
|---|---|
| Total Revenue | $1.26M |
| Total Orders | 1,200 |
| Average Order Value | $1,053.97 |
| Delivery Rate | 19.2% |
| Cancellation Rate | 20.8% |
| Highest Return Rate Product | Tablet (24%) |

### Charts
| Chart | Type | Insight |
|---|---|---|
| Revenue by Product | Horizontal Bar | Chair and Printer lead |
| Order Status Distribution | Pie Chart | Only 19.2% delivered |
| Revenue by Referral Source | Horizontal Bar | Instagram leads |
| Return Rate by Product | Horizontal Bar | Tablet highest at 24% |
| Coupon AOV Comparison | Column Chart | FREESHIP performs best |

---

## Pivot Tables Used
Five pivot tables were built to power the dashboard:
- `Pivot_Revenue` — Product × Total Revenue
- `Pivot_Status` — OrderStatus × Count of OrderID
- `Pivot_Referral` — ReferralSource × Revenue & AOV
- `Pivot_Returns` — Product × Return Rate %
- `Pivot_Coupon` — CouponCode × AOV

---

## Central Insight
> *Only 1 in 5 orders is successfully delivered. With 41% of orders either cancelled or returned, fulfilment is the most critical business problem in this dataset — and the primary area requiring operational attention.*

---

## Deliverables
| File | Description |
|---|---|
| `Ecommerce_Dashboard.xlsx` | Excel dashboard with pivot tables and 5 charts |
| `README.md` | This file |

---

## Tools Used
- Microsoft Excel — Pivot Tables, PivotCharts, Dashboard design
- Python (pandas) — Supporting analysis and aggregation validation

---

## Analyst
**Ononuju Fortune Chijioke**
Decode Labs Data Analytics Internship — 2025/2026
