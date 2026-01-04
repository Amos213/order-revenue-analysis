SELECT h.DailyRate,h.Gender,h.EducationField,
c.`Annual Income` AS income,
c.`Customer Name` as name
FROM hranalytics h
LEFT JOIN car_sales.customers c
ON h.Gender=c.Gender