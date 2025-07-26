/*
---------------------------------------------------------------
  Project Name : Child Protection SQL Portfolio
  File Name    : child_protection_analysis.sql
  Description  : This file includes key SQL queries simulating
                 child protection case management data analysis.
                 It covers partner services, referrals, case tracking,
                 and includes advanced CTEs and window functions.

  Author       : Waleed Sidahmed
  Created Date : July 2025
  Repository   : https://github.com/waleedconan/child-protection-sql-portfolio
  Note         : This project is for portfolio use and uses simulated data.
---------------------------------------------------------------

  Data Entry Restrictions:
  - State names limited to examples: 'Khartoum', 'Blue Nile', 'Red Sea', etc.
  - Beneficiaries include: 'Refugees', 'IDPs', 'Host Community'
  - Referral status values: 'Pending', 'Completed', 'In Progress', 'Cancelled'
*/

-- 1. Partner Ranking with LAG
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

-- 2. First or Most Recent Service per Partner
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

-- 3. Monthly Referral Count using COUNT() OVER()
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

-- 4. Cumulative Referrals over Time
SELECT
    ReferralID,
    ReferralDate,
    ReferralStatus,
    SUM(1) OVER (
        ORDER BY ReferralDate
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeReferrals
FROM Referrals;