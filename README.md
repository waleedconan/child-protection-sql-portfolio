# Child Protection Donor Report – SQL Portfolio Project

## 📌 Project Objective  
To provide a structured and insightful child protection indicator report reflecting the project’s current status. The project simulates real-world data analysis and reporting used in humanitarian operations.

## 📝 Summary  
Despite the ongoing security situation in Sudan and significant funding cuts, child protection activities have continued in safer areas with limited coverage. This project simulates a donor-facing analysis of child protection services, tracking referrals, services provided, partner coverage, and key case management actions across multiple states.

## 🔍 Methodology  
- Data is **fictional** and intended for demonstration purposes.  
- It simulates monthly reporting from agency child protection implementing partners using the **ActivityInfo** platform.  
- Key indicators and service delivery data were created in line with common CP reporting practices.  
- Agency field focal points are responsible for ensuring data quality and consistency during the data collection process.  
- Analysis is conducted using **SQL** and visualized using **Power BI**.

## 💻 Queries & Analysis (SQL + DAX)

This project includes 8 queries written in **SQL** and **DAX**, simulating real-life analysis and reporting in child protection programming:

| # | Query Name | Description | SQL/DAX Concepts | Insight Generated |
|--:|------------|-------------|------------------|-------------------|
| 1 | Partner Service Mapping | Total services delivered by partner and state | `JOIN`, `GROUP BY` | Understand geographic coverage and partner load |
| 2 | Case Action Tracking | Frequency of key case actions (e.g., home visits, follow-ups) | `GROUP BY`, `COUNT()` | Identify case management trends or gaps |
| 3 | Referral Status by Partner | Case outcomes by referral status | `JOIN`, `GROUP BY` | Assess performance and case resolution rates |
| 4 | Services by Partner & Type | Breakdown by service type and location | Multi-table `JOIN` | Map sectoral coverage across partners |
| 5 | Partner Ranking | Compare service volume with historical rank | `CTE`, `RANK()`, `LAG()` | Highlight most/least active partners over time |
| 6 | First/Most Recent Service | Retrieve timing of partner actions | `ROW_NUMBER()` | Monitor responsiveness of service providers |
| 7 | Monthly Referral Volume | Dynamic monthly counts by partner | `COUNT() OVER()` | Analyze seasonality or surge response |
| 8 | Overdue Referrals > 5 Days | Count cases pending for >5 days | **Power BI DAX**: `DATEDIFF`, `CALCULATE` | Flag delays in case response requiring escalation |

---

### 🔽 Featured Query Breakdown (Advanced SQL)

#### 🔹 5. Partner Ranking by Service Count
```sql
WITH counts AS (
    SELECT ps.PartnerID, p.PartnerName, COUNT(*) AS servicecount
    FROM PartnerServices ps
    LEFT JOIN Partners p ON p.PartnerID = ps.PartnerID
    GROUP BY ps.PartnerID, p.PartnerName
),
ranking AS (
    SELECT PartnerID, PartnerName, servicecount,
           RANK() OVER (ORDER BY servicecount DESC) AS prerank
    FROM counts
)
SELECT PartnerName, servicecount, prerank,
       LAG(prerank, 1, 0) OVER (ORDER BY PartnerID) AS previous_prerank
FROM ranking;
```
📌 **Use case**: Identify which partners improved or dropped in performance based on service count trends.

---

#### 🔹 8. DAX – Overdue Referrals (> 5 Days)
```dax
OverdueReferrals =
CALCULATE(
    COUNTROWS(Referrals),
    Referrals[ReferralStatus] = "Pending",
    DATEDIFF(Referrals[ReferralDate], TODAY(), DAY) > 5
)
```
📌 **Use case**: Visualized in a KPI card to flag partners with unresolved or aging cases.

---

## 📊 Dashboard Preview

### 🔹 Program Coverage Summary  
![Program Coverage](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v1%20Child%20Protection%20Donor%20Report%201.png)

### 🔹 Case Management Tracking  
![Case Management Tracking](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v2%20Case%20Management%20Tracking.png)

### 🔹 Key Performance Indicators  
![KPIs](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v3%20KPIs.png)

## ⚙️ Data Entry Rules (Simulated Constraints)
- **Beneficiaries:** Refugees, IDPs, Host Community  
- **Date Format:** `YYYY-MM-DD`  
- **Referral Status:** 'Pending', 'Completed', 'In Progress', 'Cancelled'  
- **Partner & Service Names:** Simulated for demonstration only

## 📘 View the [Entity Relationship Diagram](child_protection_erd.md)

## ⚠️ Disclaimer
- This project was developed independently for learning and portfolio purposes.  
- It uses entirely fictional data and does not reflect any real individuals, organizations, or operational information.  
- No internal reports, confidential data, or proprietary formats were used.  
- This work is not affiliated with or endorsed by any agency or its partners.  
- The use of humanitarian concepts (e.g., referrals, services, protection indicators) is based on publicly known practices and general sector knowledge.

## 🔗 Repository  
GitHub: [https://github.com/waleedconan/child-protection-sql-portfolio](https://github.com/waleedconan/child-protection-sql-portfolio)


## 🧠 Key Findings & Recommendations

### 🔍 Findings

- **Partner Activity Gaps:**  
  Partner service delivery varies significantly by state. Some partners are only active in one location or provide limited services despite high caseloads.

- **Referral Completion Rates:**  
  A noticeable number of referrals remain in **"Pending"** or **"In Progress"** status, especially for IDPs in Blue Nile. This highlights delayed case resolution.

- **Overdue Cases:**  
  The KPI analysis revealed a cluster of cases pending for over 5 days. This signals either a capacity issue or a broken referral feedback loop.

- **Service Gaps by Sector:**  
  Certain services (e.g., Family Tracing and Reunification, PSS) are underrepresented, especially in hard-to-reach areas.

- **Low Female Participation:**  
  Disaggregated visuals show that girls and women access fewer services than boys in multiple locations, especially in IDP settings.

---

### ✅ Recommendations

- **Strengthen Referral Follow-Up:**  
  Deploy mobile teams or community-based volunteers to follow up on pending referrals, especially those exceeding 5 days.

- **Prioritize Underserved Areas:**  
  Allocate surge support to Blue Nile and Red Sea states where referrals are delayed and partner presence is limited.

- **Expand Partner Coverage:**  
  Revisit partnership agreements to ensure a wider spread of services and avoid overreliance on a few key actors.

- **Address Gender Disparities:**  
  Conduct targeted outreach to increase awareness and service accessibility for women and girls, particularly in IDP settings.

- **Monitor Over Time:**  
  Maintain monthly dashboards and case tracking to detect trends early and adjust programming dynamically.
