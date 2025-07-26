-- 01. Partner Service Mapping
SELECT p.PartnerName, l.State, ps.Beneficiaries
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID
GROUP BY p.PartnerName, l.State, ps.Beneficiaries
ORDER BY p.PartnerName;

-- 02. Case Action Tracking
SELECT ActionType, COUNT(*) AS ActionCount
FROM CaseTrackingTable
GROUP BY ActionType
ORDER BY ActionType;

-- 03. Referral Status by Partner
SELECT p.PartnerName, ReferralStatus, COUNT(*) AS [# of Cases]
FROM Referrals AS r
LEFT JOIN Partners AS p ON p.PartnerID = r.ReferredToPartnerID
GROUP BY p.PartnerName, ReferralStatus
ORDER BY p.PartnerName;

-- 04. Services by Partner & Type
SELECT p.PartnerName, s.ServiceType, l.State, ps.Beneficiaries
FROM PartnerServices AS ps
LEFT JOIN Partners AS p ON p.PartnerID = ps.PartnerID
LEFT JOIN ServiceTypes AS s ON s.ServiceID = ps.ServiceID
LEFT JOIN Location AS l ON l.LocationID = ps.LocationID;