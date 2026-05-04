USE FDA
-- Total approvals
SELECT COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis];

-- Year wise approval
SELECT Approval_Year,COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis]
GROUP BY Approval_Year
ORDER BY Approval_Year DESC;

-- Therapy area distribution
SELECT Therapy_area, COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis]
GROUP BY Therapy_area
ORDER BY COUNT(*) DESC;

-- Company dominance
SELECT Company, COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis]
GROUP BY Company
ORDER BY COUNT(*) DESC; 

-- Company vs Therapy area
SELECT Company, Therapy_area,COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis]
GROUP BY Company, Therapy_area
ORDER BY Therapy_area,COUNT(*) DESC;

-- Ranking companies
SELECT Company,COUNT(*) AS [Total Breaktrough therapy approvals],RANK() OVER (ORDER BY COUNT(*) DESC) AS rnk
FROM [Breakthrough therapy analysis]
GROUP BY Company;

-- Number of approvals for each company in each year
SELECT Company, Approval_Year, COUNT(*) AS [Total Breaktrough therapy approvals]
FROM [Breakthrough therapy analysis]
GROUP BY Company, Approval_Year
ORDER BY Approval_year,COUNT(*) DESC; 


