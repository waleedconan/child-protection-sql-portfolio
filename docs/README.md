# 🧠 Child Protection – SQL Portfolio Project

This project simulates a real-world child protection case management system using structured SQL queries, Power BI dashboards, and ERD documentation. It showcases how data analysis can support humanitarian programming, improve service delivery, and identify critical gaps in response.

---

## 📁 Folder Overview

| Folder     | Description                                                                 |
|------------|-----------------------------------------------------------------------------|
| [/sql](sql)      | Contains basic and advanced SQL queries with structured explanations.   |
| [/docs](docs)     | Entity Relationship Diagram (ERD), methodology, and documentation.     |
| [/visuals](visuals)  | Power BI dashboard screenshots and other report visuals.              |

---

## 🌍 Updated Geographic Coverage

While initial examples focused on **Khartoum**, **Blue Nile**, and **Red Sea**, the latest simulation expands to include data from:

> **White Nile**, **Kassala**, **Gedaref**, **East Darfur**, **North Darfur**, **South Kordofan**, and others for more realistic multi-state reporting.

---

## 📊 Dashboard Previews

### 🔷 Page 1 – Program Coverage Summary  
![Page 1](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v1%20Child%20Protection%20Donor%20Report%201.png?raw=true)

### 🔷 Page 2 – Case Management Tracking  
![Page 2](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v2%20Case%20Management%20Tracking.png?raw=true)

### 🔷 Page 3 – Key KPIs  
![Page 3](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/visuals/v3%20KPIs.png?raw=true)

---

## 🧮 SQL Analysis Overview

This project contains **6 SQL queries** divided into **basic** and **advanced** levels. They simulate common data analysis tasks in humanitarian protection programs.

| # | Query Name                         | Description                                                        | SQL Concepts                      |
|---|-----------------------------------|--------------------------------------------------------------------|-----------------------------------|
| 1 | Partner Service Mapping           | Total services by partner and state                                | `JOIN`, `GROUP BY`                |
| 2 | Case Action Tracking              | Frequency of case actions (e.g., referral, home visit)             | `COUNT()`, `GROUP BY`             |
| 3 | Referral Status by Partner        | Breakdown of referral outcomes                                     | `JOIN`, `GROUP BY`                |
| 4 | Services by Partner & Type        | What services each partner provides where                          | Multi-table `JOIN`                |
| 5 | Partner Ranking by Service Count | Rank partners by service count, compare with previous rank         | `CTE`, `RANK()`, `LAG()`          |
| 6 | Overdue Referrals (>5 days)      | Count referrals still pending using time functions (Power BI DAX)  | `DATEDIFF`, `CALCULATE` (DAX) ✅ |

📂 Access full query code:  
- [`01_basic_queries.sql`](sql/01_basic_queries.sql)  
- [`02_advanced_queries.sql`](sql/02_advanced_queries.sql)  
- [`README_sql.md`](sql/README_sql.md)

---

## 🗺️ Entit
