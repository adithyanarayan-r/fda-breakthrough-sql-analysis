CREATE DATABASE  FDA ;
USE  FDA;
CREATE TABLE fda_approvals (
    id INT PRIMARY KEY AUTO_INCREMENT,
    drug_name VARCHAR(150),
    company VARCHAR(150),
    approval_date DATE,
    therapy_area VARCHAR(150)
);
SELECT * FROM fda_approvals;
SELECT COUNT(*) AS total_approvals
FROM fda_approvals;
SELECT 
YEAR(approval_date) AS approval_year,
COUNT(*) AS total
FROM fda_approvals
GROUP BY YEAR(approval_date)
ORDER BY approval_year;
SELECT company, COUNT(*) AS total_approvals
FROM fda_approvals
GROUP BY company
ORDER BY total_approvals DESC;
SELECT *
FROM fda_approvals
WHERE therapy_area = 'Oncology';
SELECT 
company,
COUNT(*) AS approvals
FROM fda_approvals
GROUP BY company
HAVING COUNT(*) > 3
ORDER BY approvals DESC;



