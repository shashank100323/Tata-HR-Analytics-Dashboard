# TATA HR Analytics Dashboard | Employee Attrition Analysis

## Project Overview

This project focuses on analyzing employee attrition trends using HR data to identify the key factors influencing workforce turnover. The primary objective is to help organizations improve employee retention through data-driven HR decision-making.

The analysis was conducted using **SQL Server** for data exploration and **Power BI** for interactive dashboard visualization. The project demonstrates practical skills in:

- HR Analytics  
- Business Intelligence  
- SQL-based Data Analysis  
- Dashboard Development  
- Data-Driven Decision Making  

This project also highlights the application of analytical thinking in solving real-world business and human resource challenges.

---

# Tools & Technologies Used

| Tool / Technology | Purpose |
|-------------------|---------|
| SQL Server | Data querying and workforce analysis |
| Power BI | Interactive dashboard creation & visualization |
| Microsoft Excel | Dataset source and preprocessing |
| GitHub | Project hosting and portfolio showcase |

---

# Dataset Description

The dataset contains HR-related employee information used to analyze workforce trends and attrition patterns across multiple business dimensions.

## Key Attributes Included

- Employee ID  
- Age  
- Gender  
- Department  
- Job Role  
- Education Level  
- Monthly Income  
- Work-Life Balance  
- Job Satisfaction  
- Performance Rating  
- Promotion History  
- Attrition Status  
- City  
- Distance from Home  
- Years at Company  

The dataset enables HR professionals and analysts to identify behavioral and organizational patterns associated with employee turnover.

---

# SQL Data Analysis

SQL Server was utilized to clean, explore, and analyze the HR dataset before designing the Power BI dashboard.

The analysis focused on identifying employee attrition trends, departmental performance, salary distribution, and workforce behavior patterns.

## Key HR Analysis Performed

- Total employee count analysis  
- Attrition count and attrition rate calculation  
- Department-wise attrition analysis  
- Job role-based attrition trends  
- Average salary analysis by department  
- Overtime impact on employee attrition  
- Gender-based workforce distribution  
- Salary comparison across job roles  

---

## Sample SQL Query

```sql
SELECT Department,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left
FROM TATA_HR_Analytics_Dataset
GROUP BY Department
ORDER BY Employees_Left DESC;
```

This query identifies departments with the highest employee attrition and supports HR teams in targeting retention strategies effectively.

---

# Power BI Dashboard

An interactive HR Analytics Dashboard was developed using Power BI to provide meaningful insights into employee attrition and workforce distribution.

The dashboard enables HR managers and decision-makers to monitor key HR metrics and identify critical workforce challenges in real time.

## Dashboard Features

- KPI cards for major HR metrics  
- Attrition trend visualization  
- Department-wise attrition analysis  
- Promotion vs Attrition comparison  
- Employee distribution analysis  
- Interactive filters for detailed exploration  

---

## Key KPIs Displayed

- Total Employees  
- Attrition Count  
- Attrition Rate  
- Average Salary  

---

## Interactive Filters Available

Users can dynamically analyze data based on:

- Department  
- Gender  
- Education Level  
- City  

These filters help stakeholders perform deeper workforce analysis and derive actionable business insights.

---

# SQL Analysis Insights

The SQL-based analysis revealed several important organizational and workforce trends.

## Major Insights

- The organization has approximately **10,000 employees** in total.  
- The overall employee attrition rate is approximately **21.89%**.  
- Departments such as **Operations** and **Customer Support** exhibit higher attrition levels compared to other departments.  
- Employee turnover differs significantly across various job roles.  
- Salary distribution varies across departments and organizational hierarchies.  
- Overtime and limited promotion opportunities appear to contribute significantly to employee attrition.  

These insights provide valuable support for strategic HR planning and employee retention initiatives.

---

# Power BI Dashboard Insights

The Power BI dashboard provides a visual and interactive representation of workforce analytics and attrition behavior.

## Key Dashboard Findings

- The company’s attrition rate of **21.89%** indicates a moderate employee turnover challenge.  
- **Operations** and **Customer Support** departments demonstrate the highest attrition rates.  
- Employees with fewer promotion opportunities are more likely to leave the organization.  
- Workforce distribution analysis helps HR teams understand departmental staffing patterns.  
- The average employee salary is approximately **112K**, offering insights into compensation structure.  
- Interactive filtering capabilities support deeper analysis across demographics and organizational dimensions.  

The dashboard enables HR leaders to make informed decisions regarding workforce management, retention strategies, and employee engagement programs.

---

# Project Structure

```plaintext
TATA-HR-Analytics-Project
│
├── TATA_HR_Analytics_Dataset.xlsx     # HR dataset used for analysis
├── HR_Analytics_SQL_Queries.sql       # SQL queries used for data analysis
├── HR_Analytics_Dashboard.pbix        # Power BI dashboard file
├── dashboard.png                      # Dashboard preview image
└── README.md                          # Project documentation
```

---

# Business Impact of the Project

This project helps organizations:

- Identify high-risk attrition areas  
- Improve employee retention strategies  
- Understand workforce behavior patterns  
- Support HR decision-making with data insights  
- Enhance organizational performance through analytics  

The project reflects how HR Analytics and Business Intelligence tools can be leveraged to solve practical organizational problems effectively.

---

# Author

## Shashank Saxena  
**MBA (Data Science & Artificial Intelligence)**  
Chandigarh University  

### Professional Profiles

- GitHub:  
  https://github.com/shashank100323

- LinkedIn:  
  https://www.linkedin.com/in/shashank-saxena-57b311295