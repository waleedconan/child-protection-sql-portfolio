# 🧒 Child Protection Donor Report – SQL & Power BI Portfolio

This project simulates a donor-facing child protection report using SQL for data analysis and Power BI for dashboard visualizations. It reflects realistic workflows used in humanitarian operations for monitoring referrals, service delivery, case tracking, and partner coverage across multiple states in Sudan.

---

## 📌 Project Objective
To provide a structured and insightful child protection indicator report reflecting the project’s current status. The project simulates real-world data analysis and reporting used in humanitarian operations.

---

## 📝 Summary
Despite the ongoing security situation in Sudan and significant funding cuts, child protection activities have continued in safer areas with limited coverage. This project simulates a donor-facing analysis of child protection services, tracking referrals, services provided, partner coverage, and key case management actions across multiple states.

---

## 🔍 Methodology
- The data is **fictional** and intended for demonstration purposes only.
- Simulates monthly reporting from child protection implementing partners using the ActivityInfo platform.
- Key indicators and service delivery data reflect common CP practices in the field.
- UNHCR field focal points are assumed to ensure data quality and consistency.
- Analysis conducted using **SQL** and **Power BI**.

---

## 🧠 Analysis & Observations
- 📉 **Referral bottlenecks** observed in certain partners with high pending referrals.
- 🗺️ **Partner service coverage** remains concentrated in key states; large gaps exist in remote areas.
- 🔁 Repeated **case actions** suggest delays in durable solutions.
- 📊 Differences in service types offered indicate **partner specialization**.
- 🔄 Use of window functions enables time-based tracking of case evolution.

---

## 📈 Recommendations
- 💡 Strengthen referral follow-up mechanisms.
- 📍 Expand partner services to underserved states (e.g., Blue Nile, Kassala).
- 🧑‍🤝‍🧑 Increase coordination for partners delivering similar services.
- ⏱️ Monitor and reduce action delays through trend analysis.
- 🔁 Introduce partner performance dashboards for real-time tracking.

---

## 📂 Folder Overview

| Folder        | Description                                                            |
|---------------|------------------------------------------------------------------------|
| [`/sql`](sql/README_sql.md)     | Contains basic and advanced SQL queries with explanations.          |
| [`/docs`](docs/README.md)       | ERD image and documentation (methodology, assumptions, etc).        |
| [`/visuals`](visuals)           | Power BI dashboard screenshots.                                     |

---

## 📍 States Covered
Initial examples focused on **Khartoum**, **Blue Nile**, and **Red Sea**, but the simulation now includes:

> **White Nile, South Kordofan, North Darfur, East Darfur, Kassala, Gedaref**, and more — reflecting a broader CP intervention scope.

---

## 📊 SQL Queries Summary

| Query Type             | Description                                                  |
|------------------------|--------------------------------------------------------------|
| Partner Services       | Partner delivery by state, location, and service type        |
| Referral Analysis      | Referral status by partner with pending/completed trends     |
| Case Tracking          | Action frequency, overdue follow-up                         |
| Service Breakdown      | Number of beneficiaries by service type                     |
| Window Functions       | Rank, LAG/LEAD for referral trends and partner performance   |
| KPIs                   | Total referrals, partner share, average pending duration     |

---

## ⚙️ Tools Used
- **SQL** for analysis and transformation
- **DAX** for dynamic KPIs in Power BI
- **Power BI** for dashboards and visuals
- **Excel** for data preparation

---

## 🖼️ Dashboard Previews

### 🔹 Page 1 – Program Coverage Summary
![Page 1](visuals/v1%20Child%20Protection%20Donor%20Report%201.png)

### 🔹 Page 2 – Case Management Tracking
![Page 2](visuals/v2%20Case%20Management%20Tracking.png)

### 🔹 Page 3 – Key KPIs
![Page 3](visuals/v3%20KPIs.png)

---

## 🗂️ Entity Relationship Diagram (ERD)

📘 [View as Markdown](docs/ERD.md)  
🖼️ ![ERD](docs/child_protection_erd.png)

---

## ⚠️ Disclaimer

- This project was developed independently for learning and portfolio demonstration purposes.
- All data is fictional and does not reflect real beneficiaries, organizations, or operations.
- No internal reports, confidential information, or proprietary formats were used.
- The project is not affiliated with or endorsed by UNHCR or any of its partners.
- Concepts used are based on publicly available humanitarian guidelines and field practices.

---

## 🔗 Repository
GitHub: [https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)