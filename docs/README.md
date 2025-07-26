# Child Protection Donor Report – SQL & Power BI Portfolio Project

## 📌 Project Objective  
This project simulates a real-world donor-facing report on child protection activities in Sudan. Using fictional data modeled on humanitarian case management practices, the aim is to demonstrate how SQL and Power BI can be used to extract key insights, track partner performance, and inform strategic decisions.

## 📝 Context  
Due to ongoing conflict and funding cuts, many child protection activities across Sudan are limited or suspended. However, some operations continue in safer areas. This project reflects what a monitoring report might look like under these constraints, focusing on referrals, services, and partner engagement across IDP and refugee populations.

## 🔍 Methodology  
- The data is entirely **simulated** and reflects common humanitarian data collection practices.  
- It is based on monthly reporting from implementing partners via tools like **ActivityInfo**.  
- Key indicators include case actions, service types, referral status, and partner coverage.  
- All analysis was done using **SQL** for querying and **Power BI** for interactive dashboards.  
- The project also includes **DAX measures** to enhance monitoring, such as overdue case detection.

## 💻 Queries & Insights (SQL + DAX)

| # | Query Name | Purpose | Tools Used | What It Tells Us |
|--:|------------|---------|------------|------------------|
| 1 | Partner Service Mapping | Who delivered what services and where | `JOIN`, `GROUP BY` | Understand partner reach by state |
| 2 | Case Action Tracking | How cases are managed | `GROUP BY`, `COUNT()` | Identify strengths or gaps in response |
| 3 | Referral Status by Partner | Case closure trends | `JOIN`, `GROUP BY` | Spot delays or partner underperformance |
| 4 | Services by Type | Service variety across locations | Multi-table `JOIN` | See which services are available and where |
| 5 | Partner Ranking | Compare service volumes | `CTE`, `RANK()`, `LAG()` | Rank partners and track performance changes |
| 6 | Recent Services | When each partner last acted | `ROW_NUMBER()` | Detect inactive partners |
| 7 | Monthly Referral Volume | Activity over time | `COUNT() OVER()` | Detect spikes or seasonal changes |
| 8 | Overdue Referrals | Flag cases pending too long | **DAX**: `CALCULATE`, `DATEDIFF` | Monitor for escalation-worthy delays |

---

### 🔽 Example Query: Partner Ranking (SQL)
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
🔎 **Purpose**: Detect which partners are improving or slipping in their performance compared to the last cycle.

---

### 🔹 DAX Example: Overdue Referrals (> 5 Days)
```dax
OverdueReferrals =
CALCULATE(
    COUNTROWS(Referrals),
    Referrals[ReferralStatus] = "Pending",
    DATEDIFF(Referrals[ReferralDate], TODAY(), DAY) > 5
)
```
🔎 **Purpose**: Visualized in a KPI card to flag partners with unresolved or aging cases.

---

## 🖼️ Dashboard Snapshots & Interpretation

### 🔹 Program Coverage Summary  
![Coverage](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v1%20Child%20Protection%20Donor%20Report%201.png)  
🔎 *This dashboard shows partner and state-level service delivery. Red Sea and Blue Nile have visibly lower coverage, and Partner C lags across multiple indicators.*

### 🔹 Case Management Tracking  
![Tracking](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v2%20Case%20Management%20Tracking.png)  
🔎 *Referral statuses and partner actions are broken down here. Blue Nile again shows high pending cases and limited service types.*

### 🔹 Key Performance Indicators  
![KPIs](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v3%20KPIs.png)  
🔎 *Summarizes the state of response. 23% of referrals remain unresolved, and 12% are pending for more than 5 days, suggesting bottlenecks in the referral system.*

---

## 🧠 Key Findings & Recommendations

### 🔍 Findings

- **Uneven Partner Activity:** Coverage is concentrated among a few partners in select states.
- **Referral Bottlenecks:** Many cases remain unresolved, particularly in Blue Nile.
- **Service Gaps:** Certain sectors, like PSS and FTR, are underrepresented.
- **Gender Disparity:** Female access to services is lower, especially in IDP settings.
- **Overdue Cases:** 5+ day delays were common in multiple locations.

---

### ✅ Recommendations

- **Prioritize Blue Nile:** It shows high referral backlogs and low partner diversity.
- **Deploy Mobile Teams:** To follow up on overdue cases more efficiently.
- **Expand Partner Base:** Especially for underserved sectors like psychosocial support.
- **Focus on Gender Equity:** Conduct outreach for women and girls in low-access areas.
- **Track Monthly Trends:** Maintain the dashboard for real-time adjustments.

---

## ⚙️ Data Constraints
- **States used:** Khartoum, Blue Nile, Red Sea  
- **Referral statuses:** Pending, Completed, In Progress, Cancelled  
- **Beneficiaries:** Refugees, IDPs, Host Communities  
- **Tools used:** SQL, Power BI, DAX (fictional setup)

---

## 📘 Entity Relationship Diagram  
[View ERD](child_protection_erd.md)

---

## ⚠️ Disclaimer
This project was developed independently using fully fictional data. It is not affiliated with any real organization or individual, and no internal or proprietary data was used. The purpose is purely educational and illustrative.

---

## 🔗 Repository  
[GitHub Project](https://github.com/waleedconan/child-protection-sql-portfolio)
