Create Database TATA_Project;

-- Step 1: Select the database where our table is stored
USE TATA_Project;

-- Step 2: Show table columns and data types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'TATA_HR_Analytics_Dataset';

-- Step 3: View first 10 rows of the dataset
SELECT TOP 10 *
FROM TATA_HR_Analytics_Dataset;

-- Step 2: Count total employees
SELECT COUNT(EmployeeID) AS Total_Employees
FROM TATA_HR_Analytics_Dataset;

-- Step 3: Count employees who left the company
SELECT COUNT(EmployeeID) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
WHERE Attrition = 1;

-- Step 4: Calculate attrition percentage
SELECT 
    COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*) AS Attrition_Rate
FROM TATA_HR_Analytics_Dataset;

-- Step 5: Check which department has most attrition
SELECT Department,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY Department
ORDER BY Employees_Left DESC;

-- Step 6: Check salary distribution
SELECT Department,
       AVG(MonthlyIncome) AS Avg_Salary
FROM TATA_HR_Analytics_Dataset
GROUP BY Department
ORDER BY Avg_Salary;

-- Step 7: Check if overtime causes attrition
SELECT OverTime,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY OverTime;

-- Step 8: Attrition analysis by job role
SELECT JobRole,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY JobRole
ORDER BY Employees_Left DESC;

-- Step 9: Attrition analysis by gender
SELECT Gender,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY Gender;

-- Step 10: Attrition by education level
SELECT Education,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY Education
ORDER BY Employees_Left DESC;

-- Step 11: Average monthly income by job role
SELECT JobRole,
       AVG(MonthlyIncome) AS Avg_Monthly_Income
FROM TATA_HR_Analytics_Dataset
GROUP BY JobRole
ORDER BY Avg_Monthly_Income DESC;

-- Step 12: Top 10 highest paid employees
SELECT TOP 10 EmployeeID,
       JobRole,
       MonthlyIncome
FROM TATA_HR_Analytics_Dataset
ORDER BY MonthlyIncome DESC;

-- Step 13: Distribution of work-life balance
SELECT WorkLifeBalance,
       COUNT(*) AS Total_Employees
FROM TATA_HR_Analytics_Dataset
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

-- Step 14: Attrition vs overtime
SELECT OverTime,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY OverTime;