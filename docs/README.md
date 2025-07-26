# 🧠 Child Protection – SQL & Power BI Portfolio Project

This portfolio project simulates a real-world child protection case management system. It showcases how data analysis and visualization can support humanitarian programming, improve service delivery, and identify protection gaps across multiple states.

---

## 📁 Folder Overview

| Folder     | Description                                                                 |
|------------|-----------------------------------------------------------------------------|
| [/sql](sql)      | Contains basic and advanced SQL queries with structured explanations.   |
| [/docs](docs)     | Entity Relationship Diagram (ERD), methodology, and documentation.     |
| [/visuals](visuals)  | Power BI dashboard screenshots and report visuals.                   |

---

## 🌍 Geographic Coverage

The dataset simulates data from multiple states in Sudan including:

**Khartoum, Blue Nile, Red Sea, White Nile, Kassala, Gedaref, East Darfur, North Darfur, South Kordofan, West Kordofan**

---

## 📊 Dashboard Previews

### 🔷 Page 1 – Program Coverage Summary  
![Page 1](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v1%20Child%20Protection%20Donor%20Report%201.png?raw=true)

### 🔷 Page 2 – Case Management Tracking  
![Page 2](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v2%20Case%20Management%20Tracking.png?raw=true)

### 🔷 Page 3 – Key KPIs  
![Page 3](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v3%20KPIs.png?raw=true)

---

## 📘 Entity Relationship Diagram (ERD)

- [📄 View ERD Markdown](docs/ERD.md)  
- ![ERD](docs/child_protection_erd.png)

---

## 🧮 SQL & DAX Analysis Overview

This project includes **6 key queries** that simulate real child protection reporting challenges.

| # | Query Name                         | Description                                                        | Concepts Used                      |
|---|-----------------------------------|--------------------------------------------------------------------|------------------------------------|
| 1 | Partner Service Mapping           | Total services by partner and state                                | `JOIN`, `GROUP BY`                 |
| 2 | Case Action Tracking              | Frequency of case actions (e.g., referral, home visit)             | `COUNT()`, `GROUP BY`              |
| 3 | Referral Status by Partner        | Breakdown of referral outcomes                                     | `JOIN`, `GROUP BY`                 |
| 4 | Services by Partner & Type        | What services each partner provides where                          | Multi-table `JOIN`                 |
| 5 | Partner Ranking by Service Count | Rank partners by count, compare to previous rank                   | `CTE`, `RANK()`, `LAG()`           |
| 6 | Overdue Referrals KPI             | Referrals pending > 5 days                                         | `DATEDIFF`, `CALCULATE()` in DAX ✅ |

---

## 🔍 Key Findings

- **Service Distribution is Uneven**: Major states dominate the service count while remote states (e.g., East Darfur) receive minimal support.
- **Delayed Referrals**: Many referrals remain unresolved for 5+ days, indicating weak follow-up mechanisms or partner capacity gaps.
- **Case Actions vs. Referrals**: Large gap between recorded case actions and follow-ups suggests underreporting or data entry issues.
- **Partner Disparities**: Some partners show high service volume but low referral completions, raising efficiency concerns.

---

## 💡 Recommendations

- Set up automated follow-up alerts for overdue referrals in field offices.
- Improve partner reporting frequency and data entry training.
- Use dynamic Power BI dashboards to track monthly partner coverage trends.
- Address service disparities by allocating mobile teams to under-served states.
- Establish routine data quality checks by CP focal points.

---

## 🔧 Methodology

- **Simulated Data**: Created to reflect common CP case management patterns, services, and referral pathways.
- **Data Entry**: Partners report monthly via ActivityInfo using a standard CP indicator framework.
- **Tools Used**:  
  - `SQL`: Analysis and data modeling  
  - `Power BI`: Visualization and KPI tracking  
  - `Excel`: Cleaning, pre-aggregation  
  - `Markdown`: Documentation

---

## ⚠️ Disclaimer

- This project was created independently for learning and portfolio demonstration.
- All data is fictional and does not represent real beneficiaries or operations.
- This work is not affiliated with or endorsed by UNHCR or any humanitarian agency.
- Protection terms reflect general knowledge and public humanitarian guidance.

---

## 🙋 About Me

**Waleed Sidahmed**  
Humanitarian professional transitioning into data analysis.  
Background in child protection, GBV, and coordination across Sudan.  
Skills: SQL, Power BI, Excel, KoBoToolbox, Python  
📫 [LinkedIn](https://www.linkedin.com/in/waleedsidahmed) | [GitHub](https://github.com/waleedconan)