/*
------------------------------------------------------------------
  Project Name : Child Protection SQL Portfolio
  File Name    : child_protection_full_queries.sql
  Description  : This file includes full SQL query coverage:
                 - 4 core queries for basic child protection analysis
                 - 4 advanced queries using window functions & CTEs

  Author       : Waleed Sidahmed
  Created Date : July 2025
  Repository   : https://github.com/waleedconan/child-protection-sql-portfolio
  Note         : This project is for portfolio use with fictional data.
------------------------------------------------------------------

  Data Entry Rules (Simulated Constraints):
  - States: 'Khartoum', 'Blue Nile', 'Red Sea'
  - Beneficiaries: 'Refugees', 'IDPs', 'Host Community'
  - Referral Status: 'Pending', 'Completed', 'In Progress', 'Cancelled'
*/

-- 1. Partner Service Mapping
SELECT p.PartnerName, l.State, ps.Beneficiaries
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID
GROUP BY p.PartnerName, l.State, ps.Beneficiaries
ORDER BY p.PartnerName;

-- 2. Case Action Tracking
SELECT ActionType, COUNT(*) AS ActionCount
FROM CaseTrackingTable
GROUP BY ActionType
ORDER BY ActionType;

-- 3. Referral Status by Partner
SELECT p.PartnerName, ReferralStatus, COUNT(*) AS [# of Cases]
FROM Referrals AS r
LEFT JOIN Partners AS p ON p.PartnerID = r.ReferredToPartnerID
GROUP BY p.PartnerName, ReferralStatus
ORDER BY p.PartnerName;

-- 4. Services by Partner & Type
SELECT p.PartnerName, s.ServiceType, l.State, ps.Beneficiaries
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN ServiceTypes AS s ON s.ServiceID = ps.ServiceID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID;

-- 5. Partner Ranking with LAG
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

-- 6. First or Most Recent Service per Partner
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

-- 7. Monthly Referral Count using COUNT() OVER()
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

-- 8. Cumulative Referrals over Time
SELECT
    ReferralID,
    ReferralDate,
    ReferralStatus,
    SUM(1) OVER (
        ORDER BY ReferralDate
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeReferrals
FROM Referrals;