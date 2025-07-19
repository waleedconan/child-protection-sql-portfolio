# Child Protection Donor Report – SQL Portfolio Project

## 📌 Project Objective
To provide a structured and insightful child protection indicator report reflecting the project’s current status. The project simulates real-world data analysis and reporting used in humanitarian operations.

## 📝 Summary
Despite the ongoing security situation in Sudan and significant funding cuts, child protection activities have continued in safer areas with limited coverage. This project simulates a donor-facing analysis of child protection services, tracking referrals, services provided, partner coverage, and key case management actions across multiple states.

## 🔍 Methodology
- Data is **fictional** and intended for demonstration purposes.
- It simulates monthly reporting from UNHCR child protection implementing partners using the ActivityInfo platform.
- Key indicators and service delivery data were created in line with common CP reporting practices.
- UNHCR field focal points are assumed to ensure data quality and consistency.
- Analysis is conducted using **SQL** and will later be visualized using **Power BI**.

## 📊 SQL Coverage
This project includes 5 SQL queries that cover:
- Partner service delivery
- Action tracking
- Referral case analysis
- Service type breakdowns
- Advanced window functions and CTEs

## ⚙️ Data Entry Rules (Simulated Constraints)
- **States:** Kassala, Gedaref, Red Sea, Khartoum, South Kordofan  
- **Beneficiaries:** Integer values between 1 and 1000  
- **Date Format:** `YYYY-MM-DD`  
- **Referral Status:** 'Pending', 'Completed', 'In Progress', 'Cancelled'  
- **Partner & Service Names:** Simulated for demonstration only

## 📘 View the [Entity Relationship Diagram](child_protection_erd.md)

## ⚠️ Disclaimer
All data used is fictional and intended solely for portfolio demonstration. No real beneficiary or organizational data is included.

## 🔗 Repository
GitHub: [https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)
