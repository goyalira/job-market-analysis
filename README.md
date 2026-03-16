## Job Market Analysis Dashboard

This project focuses on analyzing job market data to understand hiring trends, salary patterns, and company insights.  
The analysis was performed using data cleaning using power query in excel, SQL in PostgreSQL, and the results were visualized through an interactive Power BI dashboard.

The goal of this project was to practice working with real-world datasets, perform structured data analysis, and present insights in a clear and visual manner.



## Tools & Technologies

- PostgreSQL
- SQL
- Power BI
- Power Query
- Excel



## Dataset Overview

The dataset contains information about job postings including:

- Job title
- Company name
- City/location
- Experience required
- Department
- Company ratings
- Salary range (Min LPA / Max LPA)
- Skills required

Some preprocessing was required because the dataset contained missing values and inconsistencies in a few columns.



## Data Cleaning

Data cleaning was performed using Power Query before loading the data into PostgreSQL.

Steps included:
- Handling missing values in salary and rating columns
- Removing incorrect values from location fields
- Checking and correcting data types
- Exporting the cleaned dataset as CSV for SQL analysis



## SQL Analysis

The cleaned dataset was imported into PostgreSQL where multiple queries were written to analyze the data.

Key analyses included:

- Average salary by city
- Top companies offering highest salaries
- Department-wise job distribution
- Salary trends based on experience level
- Cities with the highest number of job postings
- Average company ratings
- Salary range differences across companies

SQL views were created to organize the analysis and make it easier to connect with Power BI.



## Power BI Dashboard

The SQL views were connected to Power BI to create an interactive dashboard.

The dashboard includes:

- KPI cards for total jobs, average salary, and highest salary
- Top hiring cities
- Department-wise job distribution
- Company salary comparison
- Salary trends by experience

Slicers were added for:
- City
- Department
- Experience level

These filters allow users to explore the job market data interactively.



## Key Insights

Some observations from the analysis:

- Certain cities dominate job postings compared to others
- A few companies offer significantly higher salary ranges
- Salary tends to increase consistently with experience
- Some departments have much higher hiring demand




