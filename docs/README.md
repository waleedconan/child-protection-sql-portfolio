# 🛡️ Child Protection – SQL & Power BI Portfolio Project

## 📚 Table of Contents

- [🎯 Project Objective](#-project-objective)
- [📝 Executive Summary](#-executive-summary)
- [Methodology](#methodology)
- [🗺️ Entity Relationship Diagram (ERD)](#-entity-relationship-diagram-erd)
- [📊 Dashboard Interpretation](#-dashboard-interpretation)
  - [🔹 Program Coverage Summary](#-program-coverage-summary)
  - [🔹 Case Management Tracking](#-case-management-tracking)
  - [🔹 Key Performance Indicators](#-key-performance-indicators)
- [🧮 SQL Analysis Overview](#-sql-analysis-overview)
- [📌 Key Findings & Recommendations](#-key-findings--recommendations)
- [📂 Folder Overview](#-folder-overview)
- [🚀 How to Use](#-how-to-use)
- [⚠️ Disclaimer](#-disclaimer)
- [🔗 Repository](#-repository)

---

## 🎯 Project Objective

To provide a donor-focused report showcasing the **coverage**, **trends**, and **gaps** in child protection services.  
Despite the conflict in Sudan, protection activities continued in accessible states, reflecting a real-world humanitarian data context.

---

## 📝 Executive Summary

This project simulates a real-world donor report to demonstrate how **SQL** and **Power BI** can be used to track child protection services, referrals, and partner performance in a humanitarian setting.

Developed in response to operational challenges in Sudan, the project models monthly reporting workflows and visualizes service coverage across states, sectors, and vulnerable groups. I led the full data pipeline—from relational database modeling and SQL querying to Power BI dashboard design—showing how data can inform decision-making for donors and coordination actors even in crisis contexts.

---

## 🛠️ Methodology

- **Data Simulation:**  
  Fictional data generated to reflect real-world protection case management scenarios.

- **Data Sources:**  
  Simulated partner submissions, based on ActivityInfo-style indicators.

- **Tools Used:**
  - **SQL** – For querying protection case data, referrals, and service trends.  
  - **Power BI** – For dashboard creation and visual storytelling.  
  - **Excel** – For data preparation and structure simulation.

- **Data Cleaning & Shaping:**  
  Power Query was used within Power BI to clean and transform the dataset.

- **Calculation Logic:**  
  DAX measures were created for dynamic KPIs like referral aging and overdue case tracking.

---

## 🗺️ Entity Relationship Diagram (ERD)

📎 [View ERD as Markdown](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/docs/ERD.md)  
![ERD](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/docs/child_protection_erd.png)

---

## 📊 Dashboard Interpretation

### 🔹 Program Coverage Summary  
🧭 Shows variation in service delivery across partners and states.  
Highlights gaps in **Red Sea** and **Blue Nile**, with **Partner C** underperforming.

![Program Coverage](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v1%20Child%20Protection%20Donor%20Report%201.png)

---

### 🔹 Case Management Tracking  
📌 Tracks referrals by status, specific needs cases, and partner response breakdowns.  
**Blue Nile** shows high pending referrals and low diversity in service types.

![Case Management Tracking](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v2%20Case%20Management%20Tracking.png)

---

### 🔹 Key Performance Indicators  
📈 Summarizes delivery performance.  
Flags:  
- **23%** of referrals are pending  
- **12%** pending for over 5 days — indicating delayed partner action

![KPIs](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v3%20KPIs.png)

---

## 🧮 SQL Analysis Overview

- **Basic Queries (`01_basic_queries.sql`):**
  - Referral counts by status and partner  
  - Service distribution by location  
  - Partner-wise beneficiary reach

- **Advanced Queries (`02_advanced_queries.sql`):**
  - Window functions: `DENSE_RANK()`, `LAG()`, `NTILE()`  
  - Rolling referral counts: `COUNT() OVER()`  
  - Referral aging using `DATEDIFF()` and conditions

📄 See full explanations in [README_sql.md](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/sql/README_sql.md)

---

## 📌 Key Findings & Recommendations

| Observation                                 | Recommendation                                              |
|---------------------------------------------|--------------------------------------------------------------|
| 🔴 High pending referrals
