-- Query 1: List of partners, their locations, and number of beneficiaries
SELECT 
    p.PartnerName, 
    l.State, 
    ps.Beneficiaries 
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID
GROUP BY p.PartnerName, l.State, ps.Beneficiaries
ORDER BY p.PartnerName;

-- Query 2: Count of actions performed in case tracking
SELECT 
    ActionType, 
    COUNT(*) AS ActionCount
FROM CaseTrackingTable AS ct
GROUP BY ActionType
ORDER BY ActionType;

-- Query 3: Number of cases by referral status and partner
SELECT 
    p.PartnerName, 
    r.ReferralStatus, 
    COUNT(*) AS NumberOfCases
FROM Referrals AS r
LEFT JOIN Partners AS p ON p.PartnerID = r.ReferredToPartnerID
GROUP BY r.ReferralStatus, p.PartnerName
ORDER BY p.PartnerName;

-- Query 4: Detailed partner service info including service type and location
SELECT 
    p.PartnerName, 
    s.ServiceType, 
    l.State, 
    ps.Beneficiaries 
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN ServiceTypes AS s ON s.ServiceID = ps.ServiceID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID;

-- Query 5: Latest action date and total actions per case using CTE and window functions
WITH ActionSummary AS (
    SELECT 
        CaseID,
        ActionDate,
        ROW_NUMBER() OVER (PARTITION BY CaseID ORDER BY ActionDate DESC) AS rn,
        COUNT(*) OVER (PARTITION BY CaseID) AS TotalActions
    FROM CaseTrackingTable
)
SELECT 
    CaseID,
    ActionDate AS LatestActionDate,
    TotalActions
FROM ActionSummary
WHERE rn = 1;
