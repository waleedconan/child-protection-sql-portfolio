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

## 💻 SQL Queries Included

This project includes **6 SQL queries** that simulate real-world tasks in humanitarian child protection programming:

| # | Query Name | Description | Key SQL Features |
|--:|------------|-------------|------------------|
| 1 | **Partner Service Mapping** | Total services delivered by partner and state | `JOIN`, `GROUP BY` |
| 2 | **Case Action Tracking** | Frequency of key case actions (e.g., referral, home visit) | `COUNT()`, `GROUP BY` |
| 3 | **Referral Status by Partner** | Status breakdown of referred cases by partner | `JOIN`, `GROUP BY` |
| 4 | **Services by Partner & Type** | What services each partner provided and where | Multi-table `JOIN` |
| 5 | **Partner Ranking by Service Count** | Rank partners by # of services and compare with previous rank | `CTE`, `RANK()`, `LAG()` ✅ |
| 6 | **Overdue Referrals (>5 days)** *(DAX)* | Count referrals still pending after 5 days | Power BI DAX: `DATEDIFF`, `CALCULATE` ✅ |

## 🧠 Advanced SQL Queries (Window Functions & CTEs)

### 1. **Partner Ranking with LAG**
```sql
WITH counts AS (
    SELECT
        ps.PartnerID,
        p.PartnerName,
        COUNT(*) AS servicecount
    FROM PartnerServices AS ps
    LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
    GROUP BY ps.PartnerID, p.PartnerName
),
ranking AS (
    SELECT
        PartnerID,
        PartnerName,
        servicecount,
        RANK() OVER (ORDER BY servicecount DESC) AS prerank
    FROM counts
)
SELECT
    PartnerName,
    servicecount,
    prerank,
    LAG(prerank, 1, 0) OVER (ORDER BY PartnerID) AS previous_prerank
FROM ranking;
```

### 2. **First or Most Recent Service per Partner**
```sql
SELECT
    ps.PartnerID,
    p.PartnerName,
    s.ServiceType,
    ps.ServiceDate,
    ROW_NUMBER() OVER (
        PARTITION BY ps.PartnerID
        ORDER BY ps.ServiceDate DESC
    ) AS service_rank
FROM PartnerServices ps
LEFT JOIN Partners p ON p.PartnerID = ps.PartnerID
LEFT JOIN ServiceTypes s ON s.ServiceID = ps.ServiceID;
```

### 3. **Monthly Referral Count using COUNT() OVER()**
```sql
SELECT
    r.ReferralID,
    r.ReferredToPartnerID,
    p.PartnerName,
    MONTH(r.ReferralDate) AS ReferralMonth,
    COUNT(*) OVER (
        PARTITION BY p.PartnerName, MONTH(r.ReferralDate)
    ) AS MonthlyReferralCount
FROM Referrals r
LEFT JOIN Partners p ON p.PartnerID = r.ReferredToPartnerID;
```

### 4. **Cumulative Referrals over Time**
```sql
SELECT
    ReferralID,
    ReferralDate,
    ReferralStatus,
    SUM(1) OVER (
        ORDER BY ReferralDate
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeReferrals
FROM Referrals;
```

## 📊 Dashboard Preview

### 🔹 Program Coverage Summary  
![Program Coverage](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v1%20Child%20Protection%20Donor%20Report%201.png)

### 🔹 Case Management Tracking  
![Case Management Tracking](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v2%20Case%20Management%20Tracking.png)

### 🔹 Key Performance Indicators  
![KPIs](https://github.com/waleedconan/child-protection-sql-portfolio/blob/main/v3%20KPIs.png)

## ⚙️ Data Entry Rules (Simulated Constraints)
- **States:** Khartoum, Blue Nile, Red Sea  
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