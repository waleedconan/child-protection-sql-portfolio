# Child Protection – SQL & Power BI Portfolio Project

## 📚 Table of Contents

- [🎯 Project Objective](#project-objective)
- [📝 Executive Summary](#executive-summary)
- [🛠️ Methodology](#methodology)
- [🗺️ Entity Relationship Diagram (ERD)](#entity-relationship-diagram-erd)
- [📊 Dashboard Interpretation](#dashboard-interpretation)
  - [🔹 Program Coverage Summary](#program-coverage-summary)
  - [🔹 Case Management Tracking](#case-management-tracking)
  - [🔹 Key Performance Indicators](#key-performance-indicators)
- [🧮 SQL Analysis Overview](#sql-analysis-overview)
- [📌 Key Findings & Recommendations](#key-findings--recommendations)
- [📂 Folder Overview](#folder-overview)
- [🚀 How to Use](#how-to-use)
- [⚠️ Disclaimer](#disclaimer)
- [🔗 Repository](#repository)

---

## Project Objective

To provide a donor-focused report showcasing the **coverage**, **trends**, and **gaps** in child protection services.  
Despite the conflict in Sudan, protection activities continued in accessible states, reflecting a real-world humanitarian data context.

---

## Executive Summary

This project simulates a real-world donor report to demonstrate how **SQL** and **Power BI** can be used to track child protection services, referrals, and partner performance in a humanitarian setting.

Developed in response to operational challenges in Sudan, the project models monthly reporting workflows and visualizes service coverage across states, sectors, and vulnerable groups. I led the full data pipeline—from relational database modeling and SQL querying to Power BI dashboard design—showing how data can inform decision-making for donors and coordination actors even in crisis contexts.

---

## Methodology

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

## Entity Relationship Diagram (ERD)

📎 [View ERD as Markdown](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/docs/ERD.md)  
![ERD](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/docs/child_protection_erd.png)

---

## Dashboard Interpretation

### Program Coverage Summary  
🧭 This view gives a high-level overview of how child protection cases are progressing. Most cases are currently in the assessment phase, with fewer reaching follow-up or closure.
The breakdown by sex and case status highlights a concerning number of open cases among boys, suggesting possible delays in follow-up or case resolution.

![Program Coverage](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v1%20Child%20Protection%20Donor%20Report%201.png)

---

### Case Management Tracking  
📌 This section shows the status of cases managed by each partner, with most cases marked as in progress or pending.
The table highlights partner presence by state, helping to identify geographic gaps in service delivery.
The final chart outlines specific needs, with a large number of children identified as street children, making it the most frequently reported vulnerability.

![Case Management Tracking](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v2%20Case%20Management%20Tracking.png)

---

### Key Performance Indicators  
📈 Summarizes delivery performance.  
Flags:  
- **23%** of referrals are pending  
- **12%** pending for over 5 days — indicating delayed partner action

![KPIs](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v3%20KPIs.png)

---

## SQL Analysis Overview

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

## Key Findings & Recommendations

| Observation                                 | Recommendation                                              |
|---------------------------------------------|--------------------------------------------------------------|
| 🔴 High pending referrals in Blue Nile      | Prioritize follow-up and support to partners in that state   |
| 🟠 Partners shows consistent underperformance | Provide capacity-building or reassign caseloads              |
| 🟡 12% of referrals pending >5 days         | Establish response time SLAs and trigger alerts              |
| 🔵 Low service diversity in some states     | Broaden partner presence or provide cross-sector training    |

---

## Folder Overview

| Folder       | Description                                                        |
|--------------|--------------------------------------------------------------------|
| `/sql`       | Basic and advanced SQL queries with detailed inline documentation  |
| `/docs`      | ERD diagrams, methodology write-ups, and reference documentation    |
| `/visuals`   | Screenshots from Power BI dashboards for report visuals             |

---

## How to Use

1. **Explore SQL Queries**  
   Go to the [sql folder](https://github.com/waleedconan/child-protection-sql-portfolio/tree/main/sql) to review and test the scripts.  
   Inline comments guide logic and calculations.

2. **View Dashboards**  
   Use the `.pbix` file (if provided) or browse screenshots in the [visuals folder](https://github.com/waleedconan/child-protection-sql-portfolio/tree/main/visuals).

3. **Understand Data Relationships**  
   See the ERD in the [docs folder](https://github.com/waleedconan/child-protection-sql-portfolio/tree/main/docs) to understand database design.

4. **Reproduce in Power BI**  
   Load the simulated dataset, apply Power Query transformations, and implement DAX measures for KPIs.

---

## Disclaimer

- This project was developed **independently** for educational and portfolio purposes.  
- All data is **fictional** and does **not represent** real individuals, organizations, or operations.  
- No internal reports or confidential formats were used.  
- The project is **not affiliated** with UNHCR or any partner agency.  
- Terminology (e.g., “cases,” “referrals”) reflects general humanitarian practices only.

---

## Repository

[https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)
