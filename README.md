# 💳 Card Transactions — Data Governance Project

A end-to-end **Data Governance** project built on a card transaction domain. The project covers domain mapping, metadata management, sensitivity classification, data quality rule definition, CDE scoring, and automated data remediation — all implemented in Oracle SQL.

---

## 📌 Project Overview

This project simulates a real-world DG initiative for a financial institution's card transaction domain. It demonstrates how to identify Critical Data Elements (CDEs), define and measure data quality dimensions, and automatically fix dirty data using stored procedures.

**Domain:** Card Transactions  
**Database:** Oracle SQL  
**Scope:** Customers → Cards → Transactions → Merchants

---

## 🗂️ Domain Map

The project is scoped around 4 core entities:

| Table | Description |
|---|---|
| `Customers` | Customer profile including loyalty segment |
| `Cards` | Card details linked to customers |
| `Transactions` | Payment transactions linked to cards and merchants |
| `Merchants` | Merchant information including MCC category |

> The domain map (draw.io diagram) visualizes in-scope vs out-of-scope elements and highlights CDEs.

---

## ⭐ Critical Data Elements (CDEs)

The following fields were identified as CDEs based on their business criticality:

| CDE | Table | DQ Dimensions Measured |
|---|---|---|
| `customer_id` | Customers | Completeness, Validity, Uniqueness |
| `card_number` | Cards | Completeness, Validity, Uniqueness |
| `card_status` | Cards | Completeness, Validity, Consistency |
| `txn_amount` | Transactions | Completeness, Validity, Accuracy |
| `txn_status` | Transactions | Completeness, Validity |
| `mrc_category` | Merchants | Completeness, Validity |

---

## 📐 Data Quality Dimensions

Each CDE is measured across relevant DQ dimensions:

- **Completeness** — Is the field populated?
- **Validity** — Does the value conform to the expected format/domain?
- **Uniqueness** — Are there duplicate values where uniqueness is expected?
- **Consistency** — Is the field logically consistent with related fields (e.g., card_status vs expiry_date)?
- **Accuracy** — Is the calculated value correct (e.g., txn_fee = txn_amount × fee_rate)?

---

## 📊 DQ Scoring Logic

A single SQL query computes scores for all CDEs using a `WITH` clause (CTE):

```sql
-- Completeness: non-null count / total count
-- Validity:     valid values / non-null count
-- Uniqueness:   distinct count / non-null count
-- Consistency:  logically consistent / non-null count
-- Accuracy:     txn_fee = ROUND(txn_amount * fee_rate, 2)

-- CDE Score = average of applicable dimensions
-- Overall Score = average of all CDE scores
```

The output is a summary table with per-CDE scores and an overall domain-level score.

---

## 🧹 Data Issues Found (Intentionally Introduced)

The dataset contains realistic dirty data to test the DQ rules:

**Customers (`loyalty_segment`):**
- Nulls (4 records)
- Non-standard values: `plat`, `g`, `silvr`, `brnz`, `gold*`, `silver#`, `bronze@`, `platinum!`, `p`, `s`, `b`, `' '` (whitespace)

**Cards (`card_number`):**
- 5 null card numbers
- Duplicate card numbers across different cards

**Cards (`card_status`):**
- Non-standard value: `unknown`

**Transactions (`txn_amount`):**
- Negative values
- Null amounts

---

## 🔧 Stored Procedure — `update_loyalty_segment`

An Oracle stored procedure that automatically recalculates and updates `loyalty_segment` for a given customer based on their transaction behavior:

| Segment | Criteria |
|---|---|
| **Platinum** | Spent > 10,000 AND transactions span ≥ 3 merchant categories |
| **Gold** | More than 10 transactions in the last 1 month |
| **Silver** | Spent > 2,000 AND transactions span 1–2 merchant categories |
| **Bronze** | All other cases |

```sql
CALL update_loyalty_segment(11);
```

---

## 📁 Project Files

```
card-transactions-data-governance/
│
├── DG_project.sql                        # DDL, sample data, DQ checks, CDE scoring, stored procedure
├── Card_Transactions_drawio.pdf          # Domain map (draw.io export)
└── Metadata_sensitivity_quality_rules.xlsx  # Metadata catalogue with sensitivity & DQ rules
```

---

## 🚀 How to Run

1. Use an **Oracle Database** (or Oracle Live SQL for quick testing)
2. Run `DG_project.sql` in order:
   - Create tables
   - Insert sample data
   - Execute DQ checks
   - Run the CDE scoring query
   - Create and call the stored procedure
3. Review the scoring output to see per-dimension and overall data quality scores

---

## 🛠️ Tech Stack

- **Oracle SQL** — DDL, DML, CTE, analytical functions, stored procedures
- **draw.io** — Domain mapping
- **Excel** — Metadata catalogue

---

## 👤 Author

Built as a personal Data Governance portfolio project to demonstrate practical DG skills in the financial / banking domain.
