#  FDA Breakthrough Therapy Approval – SQL Analysis (2020–2024)

##  Project Overview
This project analyzes FDA Breakthrough Therapy approvals from 2020 to 2024 using MySQL.  
The dataset contains **144 approval records** across multiple pharmaceutical companies and therapy areas.

The objective of this project is to perform SQL-based analysis to identify trends, company dominance, and therapy distribution patterns.

---

##  Dataset Information
- Total Records: 144  
- Fields Used:
  - drug_name  
  - company  
  - approval_date  
  - therapy_area  

---

##  Tools Used
- MySQL Workbench  
- SQL  
- Microsoft Excel  

---

##  Key Analysis Performed

- Calculated total FDA breakthrough approvals  
- Conducted year-wise trend analysis using YEAR() function  
- Ranked companies based on approval count  
- Analyzed therapy area distribution  
- Filtered Oncology-specific approvals using WHERE clause  
- Identified high-performing companies using HAVING clause  

---

##  SQL Concepts Applied

- SELECT  
- COUNT()  
- GROUP BY  
- ORDER BY  
- WHERE  
- HAVING  
- YEAR()  

---

##  Sample Query

```sql
SELECT 
    company,
    COUNT(*) AS approvals
FROM fda_approvals
GROUP BY company
HAVING COUNT(*) > 3
ORDER BY approvals DESC;
```

---

##  Business Insights

- Identified dominant pharmaceutical companies in breakthrough approvals  
- Observed therapy area concentration trends  
- Evaluated year-over-year approval growth (2020–2024)  

---

##  Outcome

This project demonstrates practical SQL skills in data aggregation, filtering, and trend analysis aligned with Business Analyst responsibilities.
