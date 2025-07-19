# Child Protection SQL Portfolio

This project simulates real-world SQL use in a humanitarian context — specifically child protection case management. It includes structured queries built from a relational data model involving cases, referrals, services, and partners.

## 📘 Project Context
The simulated dataset mirrors the type of data typically used by UNHCR and child protection actors. It was designed to reflect reporting needs for donor updates, including trends, coverage, and partner performance.

## 🛠️ Tools Used
- PostgreSQL
- Power BI (for visualization, not included here)
- Structured Query Language (SQL)
- ActivityInfo-style indicators

## 📂 Query List

| File | Purpose |
|------|---------|
| `total_cases_by_state.sql` | Count child protection cases by partner and state |
| `referrals_by_service.sql` | Total referrals grouped by service type |
| `top_partners_by_region.sql` | Top 3 partners per state by referral count (uses CTE + window function) |
| `referral_trends_by_month.sql` | Monthly referral trends |
| `latest_referral_per_case.sql` | Most recent referral per case using `ROW_NUMBER()` and CTE |

## 📈 What's Next
This repository is part of a larger portfolio involving:
- Power BI dashboards
- Data cleaning in Power Query
- Realistic humanitarian data scenarios

> **Disclaimer:** All data is fictional and created for demonstration purposes only.

---

Let me know when you're done uploading — I can review your README and help you refine it for recruiters.

Would you like me to generate a polished `README.md` file now for upload?
