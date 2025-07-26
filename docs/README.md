# 🛡️ Child Protection – SQL & Power BI Portfolio Project

## 🎯 Project Objective

To provide a donor-focused report showcasing the coverage, trends, and gaps in child protection services. Despite the conflict in Sudan, protection activities continued in accessible states, reflecting a real-world humanitarian data context.

## 📝 Summary

Despite the ongoing conflict and financial constraints in Sudan, child protection activities were maintained in accessible areas. This simulated report demonstrates how SQL and Power BI can be used to track referrals, services, and partner performance in humanitarian contexts. The project mimics monthly reporting workflows and offers clear insights for donors and coordination actors. Visuals reflect simulated coverage across multiple states, service types, and vulnerable groups.

## 🛠️ Methodology

- **Data Simulation**: All data is fictional and generated to mimic real-world protection case management scenarios.
- **Data Sources**: Monthly partner submissions using simulated ActivityInfo-based indicators.
- **Tools**:
  - **SQL** – For querying protection case data, referrals, and service trends.
  - **Power BI** – For dashboard creation and visual storytelling.
  - **Excel** – For data preparation and structure simulation.

## 🗺️ Entity Relationship Diagram (ERD)

📎 [View as Markdown](docs/ERD.md)  
![ERD](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/docs/child_protection_erd.png)

## 📊 Dashboard Interpretation

### 🔹 Program Coverage Summary  
🧭 Shows variation in service delivery across partners and states. Highlights gaps in Red Sea and Blue Nile, with Partner C underperforming.  
![Program Coverage](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v1%20Child%20Protection%20Donor%20Report%201.png)

---

### 🔹 Case Management Tracking  
📌 Tracks referrals by status, specific needs cases, and partner action breakdowns. Blue Nile shows high pending referrals and low service type diversity.  
![Case Management Tracking](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v2%20Case%20Management%20Tracking.png)

---

### 🔹 Key Performance Indicators  
📈 Summarizes delivery metrics. Flags 23% of referrals pending and 12% pending over 5 days — indicating action gaps.  
![KPIs](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/visuals/v3%20KPIs.png)

## 🧮 SQL Analysis Overview

- `01_basic_queries.sql`:
  - Referral counts by status and partner
  - Service distribution by location
  - Partner-wise beneficiary reach

- `02_advanced_queries.sql`:
  - DENSE_RANK and LAG to compare partner rankings
  - NTILE for partner segmentation by performance
  - Rolling counts of referrals using `COUNT() OVER`
  - Aging referrals using `DATEDIFF` and conditional filtering

📄 Detailed explanations are in [`/sql/README_sql.md`](sql/README_sql.md)

## 📌 Key Findings & Recommendations

| Observation | Recommendation |
|-------------|----------------|
| 🔴 High pending referrals in Blue Nile | Prioritize support and follow-up with partners in that state |
| 🟠 Partner C shows consistent underperformance | Targeted capacity building or reallocation of cases |
| 🟡 12% of referrals are pending >5 days | Introduce response time SLAs and auto-alerts |
| 🔵 Some states have low service diversity (e.g., Red Sea) | Broaden partner presence or cross-train existing partners |

## 📂 Folder Overview

| Folder | Description |
|--------|-------------|
| [`/sql`](sql/) | Contains basic and advanced SQL queries with structured explanations |
| [`/docs`](docs/) | ERD, methodology, and general documentation |
| [`/visuals`](visuals/) | Power BI dashboard screenshots |

## ⚠️ Disclaimer

- This portfolio was created **independently** for educational purposes.
- All data is **fictional** and does not reflect any real individuals or organizations.
- The structure mimics common child protection and humanitarian data formats but is **not affiliated** with any agency.
- Use of terminology such as “cases,” “referrals,” or “partners” is for demonstration only.

🔗 [Visit the GitHub Repository](https://github.com/waleedconan/child-protection-sql-portfolio)