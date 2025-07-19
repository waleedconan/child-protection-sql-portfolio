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
- This project was developed independently for learning and portfolio purposes.
- It uses entirely fictional data and does not reflect any real individuals, organizations, or operational information.
- No internal reports, confidential data, or proprietary formats were used.
- This work is not affiliated with or endorsed by UNHCR or its partners.
- The use of humanitarian concepts (e.g., referrals, services, protection indicators) is based on publicly known practices and general sector knowledge.

## 🔗 Repository
GitHub: [https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)
