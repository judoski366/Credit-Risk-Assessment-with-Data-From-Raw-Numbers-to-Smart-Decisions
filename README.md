# Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions
Transforming borrower data into actionable insights to help financial institutions minimize default risk and make smarter lending choices
## Table Of Content
 - [Introduction](#Introduction)
 - [ASK](#ASK)


## Introduction
Assessing credit risk has always been a critical task for financial institutions, yet it remains a complex challenge. With the increasing availability of applicant data, there's a growing opportunity to move beyond traditional methods and adopt more intelligent, data-driven approaches. In this analysis, I followed the six stages of data analysis Ask, Prepare, Process, Analyze, Share, and Act  to explore a dataset containing various borrower attributes and build a credit risk assessment model designed to support informed lending decisions. From cleaning raw data to identifying patterns and predicting potential defaults, this project showcases how data analytics can unlock smarter, more confident decisions in the world of finance.

## 1. ASK 
### Project Objective
In the ask phase of the data analytics life cycle, we define the key business questions that will drive our analysis. These questions help ensure that the insights generated are aligned with stakeholder goals in this case, assessing the creditworthiness of loan applicants and improving the decision-making process.

📊 Demographic Analysis
- What is the age distribution of loan applicants?
- What is the income distribution of loan applicants?
- What is the education level distribution of loan applicants?
- What is the marital status distribution of loan applicants?

💳 Creditworthiness Analysis
- What is the distribution of credit scores among loan applicants?
- How does credit score relate to loan approval?
- What is the average credit utilization rate among loan applicants?
- How does credit utilization rate relate to loan approval?

💼 Employment and Income Analysis
- What is the employment status distribution of loan applicants?
- How does employment status relate to loan approval?
- What is the average income of loan applicants?
- How does income relate to loan approval?

💰 Loan Characteristics Analysis
- What is the distribution of loan amounts among loan applicants?
- What is the distribution of loan durations among loan applicants?
- How does loan amount relate to loan approval?
- How does loan duration relate to loan approval?

📅 Payment History Analysis
- What is the distribution of payment history among loan applicants?
- How does payment history relate to loan approval?
- What is the average monthly debt payment among loan applicants?
- How does monthly debt payment relate to loan approval?

⚠️ Risk Assessment Analysis
- What is the distribution of risk scores among loan applicants?
- How does risk score relate to loan approval?
- What is the average debt-to-income ratio among loan applicants?
- How does debt-to-income ratio relate to loan approval?

## 2. PREPARE

### 🧰 Prepare Phase — Data Collection & Methodology
In the Prepare phase of the data analytics life cycle, the foundation of the analysis is laid by understanding and organizing the dataset. This step ensures that the data aligns with the business goals and is ready for deep exploration in subsequent stages.

### 📦 Data Source

The dataset was obtained from Kaggle and is specifically designed for credit risk assessment analysis. It contains 20,000 rows and 36 key columns, simulating real-world loan application data across multiple applicant attributes.

### 📘 Data Dictionary Snapshot: 
Below is a summary of some of the key variables used in the analysis:

- Application Date (Date): When the loan was submitted
- Age (Integer): Applicant’s age
- Annual Income (Decimal): Total yearly income
- Credit Score(Integer): Score between 300–850
- Employment Status (Categorical): Employed, Unemployed, etc.
- Loan Amount (Decimal): Amount requested
- Loan Duration (Integer): In months (1–360)
- Marital Status (Categorical): Single, Married, etc.
- Monthly Debt Payments (Decimal): Total monthly debt payment
- Credit Card Utilization Rate (Decimal): Utilization from 0 to 1
- Debt-To-Income Ratio (Decimal): Debt vs. income
- Payment History (Categorical): Good or Bad
- Loan Approved (Categorical): Yes or No
- Risk Score (Integer): Custom scoring from 0 to 1000

## 3. Process
### 🔄 Data Transformation Process

To prepare the dataset for analysis, the following steps were undertaken:

- A dedicated database named CREDIT_RISK was created using Microsoft SQL Server to ensure structured and efficient data management.
- The original dataset, provided in CSV format, was imported into SQL Server for initial inspection and transformation.
During the initial review, the focus was placed on:

- Verifying data type accuracy for each column (e.g., dates, integers, decimals, and text).
- Assessing data cleanliness, including identifying missing values, duplicates, or outliers.
- Confirming column formats match expected definitions in the data dictionary.
- Once cleaned and validated, a SQL query was executed to extract relevant fields and insights. The query results were exported to Excel to support further analysis and data visualization.
- The dataset includes both categorical (qualitative) and numerical (quantitative) variables, incorporating a variety of data types such as strings, decimals, integers, and Booleans.

## 4. Analyze
### Data Exploration and Key Insights
This analysis aims to use applicant data such as income, employment status, credit history, and loan amount to build a robust credit risk model. Using Microsoft SQL Server, we explored and transformed the data by writing optimized SQL queries. This process helped clean the raw data, identify key risk indicators, and segment applicants by their likelihood of default. While no machine learning was used, rule-based logic and calculated risk factors were applied to create customer profiles that aid in credit decision-making. This approach highlights SQL’s effectiveness in generating actionable insights without the need for advanced modeling tools.

📊 Demographic Analysis
- What is the age distribution of loan applicants?
  ![Image Alt Text]()

  
