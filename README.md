# Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions
Transforming borrower data into actionable insights to help financial institutions minimize default risk and make smarter lending choices
## Table Of Content
 - [Introduction](#Introduction)
 - [ASK](#ASK)
 - [PREPARE](#PREPARE)
 - [PROCESS](#PROCESS)
 - [ANALYZE](#ANALYZE)
 - [SHARE](#SHARE)
 - [ACT](#ACT)


## Introduction
Assessing credit risk has always been a critical task for financial institutions, yet it remains a complex challenge. With the increasing availability of applicant data, there's a growing opportunity to move beyond traditional methods and adopt more intelligent, data-driven approaches. In this analysis, I followed the six stages of data analysis Ask, Prepare, Process, Analyze, Share, and Act  to explore a dataset containing various borrower attributes and build a credit risk assessment model designed to support informed lending decisions. From cleaning raw data to identifying patterns and predicting potential defaults, this project showcases how data analytics can unlock smarter, more confident decisions in the world of finance.

## ASK 
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

## PREPARE

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

## PROCESS
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

## ANALYZE
### Data Exploration and Key Insights
This analysis aims to use applicant data such as income, employment status, credit history, and loan amount to build a robust credit risk model. Using Microsoft SQL Server, we explored and transformed the data by writing optimized SQL queries. This process helped clean the raw data, identify key risk indicators, and segment applicants by their likelihood of default. While no machine learning was used, rule-based logic and calculated risk factors were applied to create customer profiles that aid in credit decision-making. This approach highlights SQL’s effectiveness in generating actionable insights without the need for advanced modeling tools.

### 📊 Demographic Analysis

- What is the age distribution of loan applicants?

  ![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Age.PNG)

#### Analysis: 
  The majority of loan applicants are Adults, making up the largest group with 14,695 applicants. This is followed by Youths, who account for 4,501 applicants. Elderly 
  applicants are the least represented, with just 804.

#### 💡 Key Insight:
  Most loans are applied for by adults, indicating that the primary demand for credit comes from individuals likely in their working and financially active years.


  - What is the income distribution of loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Income.PNG)

#### Analysis: 
Most loan applicants fall under the Low-Income category, with 12,681 applications. The medium-income group follows, accounting for 6,584 applicants. Meanwhile, only 735 applications came from individuals in the High-Income category.

#### 💡 Key Insight:
The majority of people seeking loans are from lower-income brackets. This suggests that lower-income individuals may rely more on loans to meet financial needs or bridge income gaps.


- What is the education level distribution of loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Education.PNG)

#### Analysis: 
The largest group of loan applicants hold a Bachelor’s degree (6,054), closely followed by those with a High School education (5,908). Associate degree holders make up 4,034 applicants. Fewer applicants hold Master’s degrees (3,050), and only 954 have a Doctorate.

#### 💡 Key Insight:
Most loan applicants have mid-level education (Bachelor’s or High School), suggesting that individuals in this group may be at a life or career stage where financial support is more frequently needed.


- What is the marital status distribution of loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Marital%20Status.PNG)

#### Analysis: 
Most loan applicants are Married, with 10,041 applications. Single individuals follow with 6,078 applicants, while Divorced and Widowed applicants account for 2,882 and 999 respectively.

#### 💡 Key Insight:
The majority of loan applicants are married, which may indicate higher financial responsibilities such as family upkeep, housing, or joint investments. This group might be more inclined to seek financial support through loans to manage these obligations.


### 💳 Creditworthiness Analysis

- What is the distribution of credit scores among loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Credit%20score.PNG)

#### Analysis: 
Most loan applicants have a Low Credit Score, with 10,201 applications. This is followed closely by 9,742 applicants with a Fair Credit Score. Only 57 applicants fall into the Good Credit Score category.

#### 💡 Key Insight:
A large majority of loan seekers have poor or average credit scores, indicating higher credit risk. This could suggest that individuals with stronger credit profiles may have access to alternative financing or may be more cautious about taking loans.

- How does credit score relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Credit%20Score%20per.PNG)

#### Analysis: 
The chart indicates that among the loans that were approved, 60% were granted to applicants with a Good credit score. Applicants with a Fair credit score constituted 29% of the approvals, while those with a Low credit score made up the remaining 19%.

#### 💡 Key Insight: There is a clear positive relationship between credit score and loan approval. Applicants with higher credit scores (Good) represent the vast majority of approved loans, strongly suggesting that a better credit history significantly increases the chances of getting a loan approved.

- What is the average credit utilization rate among loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Avg%20creditcard.PNG)

#### Analysis: The majority of loan applicants (11,324) have Low credit utilization, indicating they use a small portion of their available credit. Moderate credit utilization follows with 6,586 applicants. Only 2,090 applicants fall into the High credit utilization category.

#### 💡 Key Insight:
Most applicants maintain low credit usage, which may reflect good credit management habits. This is often viewed positively by lenders, as it suggests lower financial stress and reduced risk of overborrowing.

- How does credit utilization rate relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Credit%20Score%20%25.PNG)


#### Analysis: 
Low credit utilization applicants had the highest loan approval rate at 0.24. Moderate and High credit utilization applicants both had slightly lower approval rates of 0.23

#### 💡 Key Insight:
Applicants with low credit utilization are slightly more likely to be approved for loans. This suggests that lenders may view lower credit usage as a sign of responsible borrowing and better financial stability, even if the difference is small.

### 💼 Employment and Income Analysis

- What is the employment status distribution of loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Employment%20S.PNG)

#### Analysis: 
The vast majority of applicants are Employed (17,036). Self-employed individuals make up 1,573 applicants. The smallest group is the Unemployed, with 1,391 applicants.

#### 💡 Key Insight:
Most loan applicants are actively employed, which could indicate a higher likelihood of income stability a key factor lenders consider during the loan approval process.

- How does employment status relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Empolyment%20S%20Dis.PNG)

#### Analysis: 
Self-employed applicants had the highest approval rate at 0.28 (40% of all approved loans). Employed applicants followed with an approval rate of 0.24 (34% of approved loans). Unemployed applicants had the lowest approval rate at 0.18 (26% of approved loans).

#### 💡 Key Insight:
Although fewer in number, self-employed applicants had the best chance of loan approval, possibly due to stronger financial profiles or business income. Unemployed individuals were least likely to be approved, which aligns with expected risk assessments by lenders.


- What is the average income of loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Avg%20Annual%20Income.PNG)

### Analysis:
The data shows that the average income of loan applicants is approximately $59,161.

### 💡 Key Insight:
Most applicants have an income around $59,161, suggesting a middle-income customer base. This income level can influence the types of loan products offered, as well as risk assessments during loan approvals.


- How does income relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Income%20Relate.PNG)


#### Analysis: 
High-Income applicants had the highest approval rate at 0.95, with 697 loans approved. Low-Income applicants saw 3,234 loans approved, with a moderate approval rate of 0.49. Medium-income applicants had 849 loans approved but with a very low approval rate of 0.07, despite having more applicants.

####💡 Key Insight: 
Although medium-income earners made up a large share of applicants, their loan approval rate was surprisingly low. This may be due to
- Higher debt-to-income ratios or financial responsibilities,
- Requesting larger loan amounts without matching credit strength,
- Or being squeezed out by loan policies favoring either high or low-income applicants.
- Lenders might see them as a riskier middle group — not poor enough for micro-loans, and not wealthy enough to guarantee repayment — resulting in lower approval chances.

## 💰 Loan Characteristics Analysis

- What is the distribution of loan amounts among loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Income%20Cat%20Approve.PNG)

#### Analysis:
Small Loan Amounts 18,959 applicants. Medium Loan Amounts: 1,031 applicants. High Loan Amounts: 10 applicants

#### 💡 Key Insight:
Most applicants are requesting small loan amounts, likely because they’re easier to qualify for and quicker to repay. Only a very small number applied for high loan amounts, possibly due to stricter requirements or fewer people needing large sums.


- How does loan amount relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Loan%20Approve%20R.PNG)

#### Analysis: 
Loan approval rates drop as the loan amount increases. Small loan amounts have the highest approval rate at 0.25, followed by medium loan amounts at 0.03. High loan amounts had a 0% approval rate.

#### 💡 Key Insight:
Applicants requesting smaller loan amounts are more likely to get approved, likely due to lower risk for lenders. As the loan amount increases, approval becomes less likely especially for high loan amounts, where the risk may outweigh the applicant’s creditworthiness or financial profile.


- How does loan duration relate to loan approval?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Duration%20Of%20Loan.PNG)

#### Analysis:
Loan approvals are most common for 3-month durations with 3,733 approvals, followed by 1-month durations with 780 approvals. 6-month duration loans had the lowest approvals at 267

#### 💡 Key Insight: Loan approvals are most common for 3-month durations, making them the most favored by lenders — likely due to their balanced risk and repayment period.
Short-term (1-month) loans are also commonly approved, while 6-month loans have the lowest approval count, suggesting that longer durations may be seen as higher risk.

## 📅 Payment History Analysis

- What is the distribution of payment history among loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Payment%20Dis.PNG)

#### Analysis: 
The majority of loan applicants (15,339) have a Fair payment history, indicating a mix of timely and late payments. Poor payment history is the next most common, with 3,679 applicants, reflecting a pattern of frequent missed or late payments. Only 982 applicants have a Good payment history, suggesting a smaller portion of borrowers have consistently met their repayment obligations.

#### 💡 Key Insight:
Most applicants fall into the Fair or Poor categories, which may indicate broader challenges in credit discipline. The low number of applicants with good payment records highlights a potential risk factor for lenders and emphasizes the importance of promoting better repayment habits.


- How does payment history relate to loan approval?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Pament%20History.PNG)

#### Analysis:
Applicants with a Good Payment History had the highest loan approval rate at 0.27, and they make up 37% of the total applicants. Those with a Fair Payment History had a slightly lower approval rate of 0.24, representing 33% of applicants. Poor Payment History applicants, who make up 30%, had the lowest approval rate at 0.22.

#### 💡 Key Insight:
There’s a clear positive relationship between strong payment history and loan approval. Lenders tend to favor applicants with reliable repayment behavior, while those with poor histories face reduced chances, highlighting the importance of financial discipline in credit evaluations.


- What is the average monthly debt payment among loan applicants?

![Image Alt Text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Avg%20Debt%20payment.PNG)


### Analysis:
The data reveals that the average monthly debt payment among loan applicants is approximately $454.

### 💡 Key Insight:
An average debt payment of $454 suggests that most applicants carry a moderate monthly financial obligation, which lenders can consider when assessing repayment capacity and loan affordability.

- How does monthly debt payment relate to loan approval?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Month%20DBT.PNG)


### Analysis: The chart shows that 45% of approved loans were granted to Low Debt Borrowers (monthly debt ratio of 0.25). Medium Debt Borrowers (ratio of 0.17) accounted for 31% of approvals, while High Debt Borrowers (ratio of 0.13) made up 24% of the approved loans.

### 💡 Key Insight: Loan approval likelihood decreases as monthly debt levels increase. Applicants with lower monthly debt obligations are significantly more likely to be approved, highlighting that lenders favor borrowers who demonstrate better debt management.


## ⚠️ Risk Assessment Analysis

- What is the distribution of risk scores among loan applicants?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Risk%20score%20app.PNG)


### Analysis: The chart shows that the majority of loan applicants have a Moderate Risk Score (9,345 applicants), followed by those with a Low Risk Score (7,594 applicants). Applicants with a Very Low Risk Score total 1,797, while those with a High Risk Score and Very High Risk Score are significantly fewer, at 809 and 455 respectively.

### 💡 Key Insight: Most loan applicants fall into the moderate-to-low risk categories, suggesting that the applicant pool generally maintains a manageable level of financial risk, which is favorable for loan approvals.

- How does risk score relate to loan approval?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Risk%20Score%20Dis.PNG)


### Analysis: The chart shows that 44% of approved loans were given to applicants with a Very Low Risk Score, followed closely by 42% to those with a Moderate Risk Score. Applicants with a Low Risk Score made up 14% of the approved loans. Meanwhile, applicants with a High Risk Score and Very High Risk Score contributed minimally to loan approvals.

### 💡 Key Insight: There is a strong negative relationship between risk score and loan approval. Applicants with lower risk scores (Very Low and Moderate) are significantly more likely to have their loans approved, highlighting that maintaining a low financial risk profile greatly enhances approval chances.


- What is the average debt-to-income ratio among loan applicants?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/avg%20DTI.PNG)

### Analysis: The average debt-to-income (DTI) ratio among loan applicants is 29%, indicating that, on average, nearly a third of applicants’ income goes toward monthly debt payments.

### 💡 Key Insight:
A 29% DTI suggests a moderate debt burden among applicants. While generally considered acceptable by many lenders, reducing this ratio could further improve applicants’ chances of loan approval and financial stability.


- How does debt-to-income ratio relate to loan approval?

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/DTI.PNG)

### Analysis:
The chart shows that the Debt to Income Approval Rate is fairly consistent across Low Risk, Moderate Risk, and Very High Risk categories (each around 0.24), while High Risk applicants have a slightly lower approval rate (0.23). This suggests that debt-to-income alone does not create a strong difference in approval rates across risk levels, except for a slight dip among High Risk applicants.

### 💡 Key Insight:
There is a slight negative relationship between higher risk scores and loan approval, but overall, the approval rates remain relatively stable across risk categories. While High Risk applicants experience marginally lower approval rates, applicants classified as Low Risk, Moderate Risk, and even Very High Risk maintain similar chances. This indicates that lenders may weigh other factors beyond just debt-to-income risk when approving loans.



## SHARE

### Business Impact: 
Using SQL-driven insights to assess credit risk provides institutions with an immediate and scalable solution. By analyzing applicant data at scale and surfacing key risk signals directly from the database, decision-makers can more confidently approve or deny credit requests with clarity and consistency.

This project equips financial institutions with a practical framework for identifying high-risk applicants early, minimizing potential defaults, and improving overall portfolio quality.

In this Share phase, query results were exported to Excel, where insights were visualized using bar charts and funnel chart to highlight applicant demography, loan and income Break down category, pie and doughnut charts to show Distribution and rate(such as loan purposes or approval outcomes), and These visuals helped stakeholders quickly grasp key patterns and make informed decisions backed by data.

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Credit%20Excel%20dashboard.png)

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Empolyment%20Exc%20Dash.png)

![image alt text](https://github.com/judoski366/Credit-Risk-Assessment-with-Data-From-Raw-Numbers-to-Smart-Decisions/blob/main/Payment%20Excel%20Dash.png)



## ACT
### Key Actionable Recommendations

Based on the comprehensive analysis, key insights, and the three uploaded dashboards Demographics & Credit Worthiness, Employment, Income & Loan Characteristics, and Payment History & Risk Score. The following are clear, actionable recommendations. These are directly drawn from the visual insights and are intended to guide stakeholders in making informed, data-driven decisions for improved loan management and customer targeting.

- 1. Age Distribution of Loan Applicants
This age group often includes individuals starting families, buying homes, or advancing careers. Create tailored loan products like home improvement, education, or business startup loans. Pair these with user-friendly apps or chatbots to attract digital-savvy borrowers.

- 2. Income Distribution of Loan Applicants
Low-income borrowers face higher risks but still represent a large market. Consider micro-loans with low-interest rates, possibly backed by community groups, employers, or NGOs. Build credit score improvements into these loans as incentives.

- 3. Education Level Distribution
This shows applicants are likely to understand financial terms. Offer educational resources on borrowing and targeted financial literacy campaigns through partnerships with schools or local communities to build stronger borrower profiles.

- 4. Credit Utilization Distribution
Low utilization indicates responsible credit behavior. Consider rewarding these applicants with faster approvals, higher limits, or lower interest rates, reinforcing good habits and building long-term loyalty.

- 5. Credit Utilization vs. Loan Approval
Since low utilization correlates with better financial discipline, embed this metric deeply into your risk model. Flag high-utilization applicants for manual review or offer them smaller initial loans with the option to scale up.

- 6. Employment Status Distribution
Traditional credit scoring may penalize self-employed individuals due to irregular income. Incorporate alternative data (like mobile wallet usage, bank transactions, or utility bills) to validate financial stability for this segment.

- 7. Employment Status vs. Loan Approval
Self-employed applicants could be more entrepreneurial or financially active. Offer custom products like business micro-loans or tax season financing tailored to self-employed needs.

- 8. Income vs. Loan Approval
Medium-income earners may carry more debt or lack strong credit histories. Investigate this segment further use behavioral credit scoring or soft-pull credit evaluations to avoid missing quality borrowers due to rigid criteria.

- 9. Loan Amount Distribution
There’s a strong market for quick-access microloans. Build a digital lending platform with automated credit checks, making it easy to apply for small loans and get instant disbursement.

- 10. Loan Amount vs. Loan Approval
Large loans come with higher risk. Consider tiered lending where borrowers graduate to higher limits after repaying smaller loans successfully — this builds trust while minimizing risk.

- 11. Loan Duration vs. Loan Approval
This duration balances repayment flexibility and risk. Standardize 3-month terms as the default loan product, and offer extended terms only to borrowers who show solid repayment behavior over time.

- 12. Payment History Distribution
Instead of rejecting these applicants outright, create a “credit repair” product that encourages consistent, small repayments to rebuild trust. Use gamification (badges, progress bars) to motivate on-time payments.

- 13. Payment History vs. Loan Approval
Introduce a loyalty program for good payers — this could include better interest rates, larger loan amounts, or even cashback incentives. For those with poor history, allow co-signers or require smaller initial loans.

## Conclusion
This analysis provides a data-driven foundation to improve credit decisioning strategies. By aligning policies with borrower profiles, lenders can minimize risk while expanding access to responsible applicants.

Thank you for taking the time to read my analysis! I truly appreciate your interest and support. If you’d like to stay connected and explore more insights or collaborate, feel free to connect with me on my Linkedin , X. Your engagement means a lot, and I look forward to sharing more valuable content with you






  
