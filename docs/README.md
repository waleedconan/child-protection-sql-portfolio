# 🛡️ Child Protection – SQL & Power BI Portfolio Project

## 🎯 Project Objective

To provide a donor-focused report showcasing the coverage, trends, and gaps in child protection services. Despite the conflict in Sudan, protection activities continued in accessible states, reflecting a real-world humanitarian data context.

---

## 📝 Summary

Despite the ongoing conflict and financial constraints in Sudan, child protection activities were maintained in accessible areas. This simulated report demonstrates how SQL and Power BI can be used to track referrals, services, and partner performance in humanitarian contexts. The project mimics monthly reporting workflows and offers clear insights for donors and coordination actors. Visuals reflect simulated coverage across multiple states, service types, and vulnerable groups.

---

## 🛠️ Methodology

- **Data Simulation:** All data is fictional and generated to mimic real-world protection case management scenarios.
- **Data Sources:** Monthly partner submissions using simulated ActivityInfo-based indicators.
- **Tools:**
  - **SQL** – For querying protection case data, referrals, and service trends.
  - **Power BI** – For dashboard creation and visual storytelling.
  - **Excel** – For data preparation and structure simulation.
- **Data Cleaning and Shaping:** Power Query used within Power BI to clean and prepare data.
- **Calculation Logic:** DAX measures implemented for dynamic KPIs such as referral aging and overdue case counts.

---

## 🗺️ Entity Relationship Diagram (ERD)

📎 [View ERD as Markdown](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/docs/ERD.md)  
![ERD](https://raw.githubusercontent.com/waleedconan/child-protection-sql-portfolio/main/docs/child_protection_erd.png)

---

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

---

## 🧮 SQL Analysis Overview

- **Basic Queries (`01_basic_queries.sql`):**  
  - Referral counts by status and partner  
  - Service distribution by location  
  - Partner-wise beneficiary reach  

- **Advanced Queries (`02_advanced_queries.sql`):**  
  - Use of window functions like `DENSE_RANK()`, `LAG()` for partner ranking and performance changes  
  - `NTILE()` for segmenting partners by performance tiers  
  - Rolling counts of referrals using `COUNT() OVER()`  
  - Aging referrals tracked with `DATEDIFF()` and conditional filters  

📄 Detailed explanations and inline comments available in [README_sql.md](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/sql/README_sql.md)

---

## 📌 Key Findings & Recommendations

| Observation | Recommendation |
|-------------|----------------|
| 🔴 High pending referrals in Blue Nile | Prioritize support and follow-up with partners in that state |
| 🟠 Partner C shows consistent underperformance | Targeted capacity building or reallocation of cases |
| 🟡 12% of referrals are pending >5 days | Introduce response time SLAs and automated alert systems |
| 🔵 Some states have low service diversity (e.g., Red Sea) | Broaden partner presence or cross-train existing partners |

---

## 📂 Folder Overview

| Folder | Description |
|--------|-------------|
| [`/sql`](sql/) | Contains basic and advanced SQL queries with detailed comments |
| [`/docs`](docs/) | ERD diagrams, methodology documents, and general project documentation |
| [`/visuals`](visuals/) | High-quality Power BI dashboard screenshots |

---

## 🚀 How to Use

1. **Explore SQL Queries:**  
   Navigate to the `/sql` folder to review and run the SQL scripts against your database or simulated datasets. Inline comments explain complex logic.

2. **View Dashboards:**  
   Use the Power BI desktop file (if provided) or review dashboard screenshots in `/visuals` to see key performance indicators and trends.

3. **Understand Data Model:**  
   Review the ERD in `/docs` to comprehend the database design and relationships.

4. **Reproduce Analysis:**  
   Prepare your data following simulated constraints, load into Power BI, apply Power Query transformations, and use the DAX measures provided for KPIs.

---

## ⚠️ Disclaimer

- This portfolio was created **independently** for educational purposes.  
- All data is **fictional** and does not reflect any real individuals, organizations, or operational information.  
- The data structure and indicators reflect common humanitarian reporting practices but are **not affiliated** with any agency.  
- Use of terms like “cases,” “referrals,” or “partners” is for demonstration purposes only.

---

## 🔗 Repository

GitHub: [https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)
