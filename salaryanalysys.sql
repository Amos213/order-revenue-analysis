WITH rol1 AS (
SELECT ï»¿EmpID, Gender,MaritalStatus,JobRole,JobInvolvement
,salarySlab,MonthlyIncome,MonthlyRate FROM hr_analytics.hranalytics),

rol2 as  (SELECT count(jobinvolvement) AS jobinvolve, 
jobrole ,sum(MonthlyIncome) AS monthlysalary 
-- ntile(4) over(partition by jobinvolvement order by monthlyIncome desc) as parts-- 
FROM rol1
GROUP BY jobrole 
order by monthlysalary desc)
	SELECT*
FROM rol2
-- order by monthlyIncome desc

