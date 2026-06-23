# P1 — Data Cleaning & Preparation

## Project Overview
This phase covers the cleaning and preparation of an e-commerce orders dataset provided as part of the Decode Labs Data Analytics Internship. The goal was to ensure the dataset was accurate, consistent, and analysis-ready before any exploratory or SQL analysis was performed.

---

## Dataset Information
| Property | Detail |
|---|---|
| File Name | Dataset_for_Data_Analytics.xlsx |
| Total Records | 1,200 rows |
| Total Columns | 14 |
| Date Range | January 2023 – June 2025 |
| Domain | E-Commerce Orders |

### Columns in Dataset
`OrderID`, `Date`, `Product`, `Quantity`, `UnitPrice`, `TotalPrice`, `ShippingAddress`, `PaymentMethod`, `OrderStatus`, `TrackingNumber`, `ItemsInCart`, `CouponCode`, `ReferralSource`, `PriceVerified`

---

## Cleaning Process

The following steps were carried out in sequence:

### Step 1 — Integrity Audit
A full audit was conducted across all 14 columns to identify:
- Missing or null values
- Duplicate records
- Whitespace or casing inconsistencies
- Data type issues
- Logical integrity between related columns

**Result:** No duplicate rows or OrderIDs were found. No whitespace issues were detected in string columns. One column had significant null values (CouponCode).

### Step 2 — Strategic Imputation
Missing values were handled based on the nature of each column rather than applying a blanket fill method.

### Step 3 — Standardisation
Date formatting was standardised to remove redundant time components.

### Step 4 — Text Integrity Validation
Normalizing text orientation. 

---

## Change Log Summary

| Change ID | Column Affected | Issue | Method | Impact | Status |
|---|---|---|---|---|---|
| CR001 | CouponCode | 309 blank values — customers with no coupon had empty cells | Filled with "No Coupon" | 309 records updated | Resolved |
| CR002 | Date | Datetime stored with redundant time component (00:00:00) | Stripped time, retained date only | 1,200 records standardised | Resolved |
| CR003 | TotalPrice / PriceVerified (new) | No integrity check between Quantity × UnitPrice and TotalPrice | Added PriceVerified boolean column | 0 mismatches — all records passed | Resolved |

> Full change log with detailed notes is available in `Change_Log_Report.pdf`

---

## Key Findings from Audit
- The dataset had **no duplicate records** — data collection was clean
- **309 records (25.75%)** had no coupon code — this is legitimate missing data, not an error
- **All 1,200 TotalPrice values** were verified as mathematically accurate (Quantity × UnitPrice)
- No formatting or casing inconsistencies were found across categorical columns

---

## Deliverables
| File | Description |
|---|---|
| `Cleaned_Dataset.xlsx` | Cleaned dataset with Change Log sheet included |
| `Change_Log_Report.pdf` | Formatted PDF documenting all changes made |
| `README.md` | This file |

---

## Tools Used
- Python (pandas, openpyxl) — for automated cleaning and validation
- Microsoft Excel — for manual review and verification

---

## Analyst
**Ononuju Fortune Chijioke**
Decode Labs Data Analytics Internship — 2025/2026
