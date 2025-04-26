select *
from Loan

--- 1. What is the age distribution of loan applicants?
with Credit as
(
SELECT age, case
				when age between 18 and 30 then 'Youth'
				when age between 31 and 60 then 'Adult'
				else 'Elderly'
			end as Age_Label
FROM Loan)

SELECT Age_Label, count(age) Age_Distribution
FROM Credit
GROUP BY Age_Label;

--- 2. What is the income distribution of loan applicants?
with Credit2 as
(
SELECT 
    AnnualIncome,
    CASE 
        WHEN AnnualIncome BETWEEN 15000 AND 60000 THEN 'Low Income'
        WHEN AnnualIncome BETWEEN 60001 AND 150000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS IncomeCategory
FROM 
    Loan)

SELECT IncomeCategory, count(AnnualIncome) Income_distr
FROM credit2
GROUP BY IncomeCategory;

--- Kpi on Average Income of Loan Applicant

SELECT AVG(AnnualIncome) as Average_Income_Applicant
FROM Loan


-- 3. What is the education level distribution of loan applicants?
SELECT educationlevel, count(*) edu_lvl_dist
FROM 
    Loan
GROUP BY EducationLevel
ORDER BY edu_lvl_dist desc;

-- 4. What is the marital status distribution of loan applicants?
SELECT MaritalStatus, count(*) Marital_dist
FROM 
    Loan
GROUP BY MaritalStatus;

/*
Creditworthiness Analysis

1. What is the distribution of credit scores among loan applicants?
*/

with credit3 as
(
SELECT CreditScore, case
						when CreditScore between 343 and 579 then 'Low credit score'
						when CreditScore between 580 and 679 then 'Fair credit score'
						else 'Good credit score'
					end as CreditScoreLabel
FROM Loan)

SELECT CreditScoreLabel, count(*) CreditScore_dist
FROM credit3
GROUP BY CreditScoreLabel;

-- 2. How does credit score relate to loan approval?
with credit4 as
(
SELECT CreditScore, LoanApproved, case
						when CreditScore between 343 and 579 then 'Low credit score'
						when CreditScore between 580 and 679 then 'Fair credit score'
						else 'Good credit score'
					end as CreditScoreLabel
FROM Loan)

SELECT 
    CreditScoreLabel,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
    credit4
GROUP BY 
    CreditScoreLabel
ORDER BY 
    CreditScoreLabel;

-- 3. What is the average credit utilization rate among loan applicants?

SELECT cast(avg([CreditCardUtilizationRate]) as  decimal(8,2)) AvgcreditCard
FROM Loan

--- What is the distribution of credit utilization rate among loan applicants?
WITH Credit5 AS
(
SELECT [CreditCardUtilizationRate], case
						when [CreditCardUtilizationRate] < 0.3 then 'Low credit utilization'
						when [CreditCardUtilizationRate] between 0.3 and 0.5 then 'Moderate credit utilization'
						else 'High credit utilization'
					end as CreditUtilizationRateLabel
FROM Loan)

SELECT CreditUtilizationRateLabel, count([CreditCardUtilizationRate]) AS Total_Credit_UtilizeRate
FROM credit5
GROUP BY CreditUtilizationRateLabel;

--- How does credit utilization rate relate to loan approval?

WITH credit6 AS
(
SELECT [CreditCardUtilizationRate], LoanApproved,
						case
						when [CreditCardUtilizationRate] < 0.3 then 'Low credit utilization'
						when [CreditCardUtilizationRate] between 0.3 and 0.5 then 'Moderate credit utilization'
						else 'High credit utilization'
					end as CreditUtilizationRateLabel
FROM Loan)


SELECT 
    CreditUtilizationRateLabel,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
    credit6
GROUP BY 
    CreditUtilizationRateLabel
ORDER BY 
    CreditUtilizationRateLabel;

--- Employment and Income Analysis

--- What is the employment status distribution of loan applicants?

select EmploymentStatus, count(*) Empolyement_Distribution
FROM 
    Loan
group by EmploymentStatus;

--- How does employment status relate to loan approval?
 SELECT 
    EmploymentStatus,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    Cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
    Loan
GROUP BY 
    EmploymentStatus
ORDER BY 
    EmploymentStatus;

--- What is the average income of loan applicants?

SELECT cast(avg(AnnualIncome) as decimal(8,2)) Income_distr
FROM Loan

--- How does income relate to loan approval?

with Credit7 as 
(
SELECT 
    AnnualIncome,LoanApproved,
    CASE 
        WHEN AnnualIncome BETWEEN 15000 AND 60000 THEN 'Low Income'
        WHEN AnnualIncome BETWEEN 60001 AND 150000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS IncomeCategory
FROM 
    Loan)

SELECT 
    IncomeCategory,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    Cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
    Credit7
GROUP BY 
    IncomeCategory
ORDER BY 
    IncomeCategory;

--- Loan Characteristics Analysis
---  What is the distribution of loan amounts among loan applicants?

with LoanCategory as 
(
SELECT 
    LoanAmount,
    CASE 
        WHEN LoanAmount BETWEEN 3674 AND 50000 THEN 'Small Loans'
        WHEN LoanAmount BETWEEN 50001 AND 120000 THEN 'Medium Loans'
        ELSE 'High Loans'
    END AS LoanAmountCategory
FROM 
    Loan)

SELECT 
   LoanAmountCategory, Count(*) AS Loan_Amount_Distribution
   From LoanCategory
   Group By LoanAmountCategory

--- What is the distribution of loan durations among loan applicants?



--- How does loan amount relate to loan approval?

with LoanCategory As 
(
SELECT 
    LoanAmount,LoanApproved,
    CASE 
        WHEN LoanAmount BETWEEN 3674 AND 50000 THEN 'Small Loans'
        WHEN LoanAmount BETWEEN 50001 AND 120000 THEN 'Medium Loans'
        ELSE 'High Loans'
    END AS LoanAmountCategory
FROM 
    Loan)

SELECT 
    LoanAmountCategory,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    Cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate

FROM LoanCategory
    
GROUP BY 
    LoanAmountCategory
ORDER BY 
    LoanAmountCategory;

--- How does loan duration relate to loan approval?
WITH LoanDuration_days AS
(
SELECT 
    LoanDuration, LoanApproved,
    CASE 
        WHEN LoanDuration BETWEEN 1 AND 30 THEN 'One Month'
        WHEN LoanDuration BETWEEN 31 AND 90 THEN 'Three Months'
        ELSE 'Six Months'
    END AS LoanDuration_days
FROM 
    Loan)
	
SELECT 
    LoanDuration_days,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    Cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate

FROM LoanDuration_days
    
GROUP BY 
    LoanDuration_days
ORDER BY 
    LoanDuration_days;

--- Payment History Analysis
--What is the distribution of payment history among loan applicants?

WITH Payment_History AS 
(
SELECT 
    PaymentHistory,
    CASE 
        WHEN PaymentHistory BETWEEN 8 AND 19 THEN 'Poor Payment History'
        WHEN PaymentHistory BETWEEN 20 AND 32 THEN 'Fair Payment History'
        ELSE 'Good Payment History'
    END AS Payment_History
FROM 
    Loan)
	
SELECT 
   Payment_History, Count(*) AS Number_Of_PaymentHistory
   From Payment_History
   Group By Payment_History

--- How does payment history relate to loan approval?

with Payment_HIstory as 
(
SELECT 
    LoanApproved,
   PaymentHistory,
    CASE 
        WHEN PaymentHistory BETWEEN 8 AND 19 THEN 'Poor Payment History'
        WHEN PaymentHistory BETWEEN 20 AND 32 THEN 'Fair Payment History'
        ELSE 'Good Payment History'
    END AS Payment_History
FROM 
    Loan)
    
	
SELECT 
    Payment_HIstory,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    Cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate

FROM Payment_HIstory
    
GROUP BY 
    Payment_HIstory
ORDER BY 
    Payment_HIstory;

----  What is the average monthly debt payment among loan applicants?

select cast(avg([MonthlyDebtPayments]) as decimal(8,2)) avg_MonthlyDebt_Payment
from Loan

--- How does monthly debt payment relate to loan approval?

with Monthly_Debt_Borrower as
(
select MonthlyDebtPayments, LoanApproved, case
						when MonthlyDebtPayments between 50 and 800 then 'Low Debt borrower'
						when MonthlyDebtPayments between 801 and 1800 then 'Medium Debt Borrower'
						else 'High Debt Borrower'
					end as Monthly_debt_Borrower
from Loan)

SELECT 
    Monthly_debt_Borrower,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
    Monthly_debt_Borrower
GROUP BY 
    Monthly_debt_Borrower
ORDER BY 
    Monthly_debt_Borrower;


--- Risk Assessment Analysis

--- What is the distribution of risk scores among loan applicants?

with Risk_Score as 
(
SELECT 
    RiskScore,
    CASE 
        WHEN RiskScore BETWEEN 28 AND 39 THEN 'Very Low Risk Score'
        WHEN RiskScore BETWEEN 40 AND 51 THEN 'Low Risk Score'
        WHEN RiskScore BETWEEN 52 AND 63 THEN 'Moderate Risk Score'
		WHEN RiskScore BETWEEN 64 AND 75 THEN 'High Risk Score'
		ELSE 'Very High Risk Score'
    END AS Risk_Score
FROM 
    Loan)
	
SELECT 
   Risk_Score, Count(*) AS Riskscore_Distribution
   From Risk_Score
   Group By Risk_Score;

 --- How does risk score relate to loan approval?

 with Risk_Score as 
(
SELECT 
    RiskScore, LoanApproved,
    CASE 
        WHEN RiskScore BETWEEN 28 AND 39 THEN 'Very Low Risk Score'
        WHEN RiskScore BETWEEN 40 AND 51 THEN 'Low Risk Score'
        WHEN RiskScore BETWEEN 52 AND 63 THEN 'Moderate Risk Score'
		WHEN RiskScore BETWEEN 64 AND 75 THEN 'High Risk Score'
		ELSE 'Very High Risk Score'
    END AS Risk_Score
FROM 
    Loan)

SELECT 
    Risk_Score,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
   Risk_Score
GROUP BY 
    Risk_Score
ORDER BY 
    Risk_Score;

--- What is the average debt-to-income ratio among loan applicants?

SELECT AVG(DebtToIncomeRatio) AS Debt_Income_Ratio
FROM Loan

---  How does debt-to-income ratio relate to loan approval?

 with debt_income_ratio as 
(
SELECT 
    DebtToIncomeRatio, LoanApproved,
    CASE 
        WHEN DebtToIncomeRatio BETWEEN 0.00 AND 0.20 THEN 'Low Risk'
        WHEN DebtToIncomeRatio BETWEEN 0.21 AND 0.40 THEN 'Moderate Risk'
        WHEN DebtToIncomeRatio BETWEEN 0.41 AND 0.60 THEN 'High Risk'
		ELSE 'Very High Risk'
    END AS debt_income_ratio
FROM 
    Loan)

SELECT 
    debt_income_ratio,
    COUNT(*) AS NumberOfLoans,
    SUM(CASE WHEN LoanApproved = 1 THEN 1 ELSE 0 END) AS ApprovedLoans,
    cast(AVG(CASE WHEN LoanApproved = 1 THEN 1.0 ELSE 0 END) as decimal(8,2)) AS ApprovalRate
FROM 
   debt_income_ratio
GROUP BY 
    debt_income_ratio
ORDER BY 
    debt_income_ratio;

--- Loan Approval Analysis

 --- What is the loan approval rate among loan applicants?
 
SELECT 
    LoanApproved,
    COUNT(*) AS TotalApplicants,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Loan) AS Percentage
FROM Loan
GROUP BY LoanApproved;

---  Average Loan Amount Approved ($)

SELECT 
    AVG(LoanAmount) AS Avg_LoanAmount_Approved
FROM Loan
WHERE LoanApproved = '1';


----  Employment Rate of Approved Applicants (%)
SELECT 
    (COUNT(CASE WHEN EmploymentStatus IN ('Employed', 'Self-Employed') AND LoanApproved = 1 THEN 1 END) * 100.0) / 
    COUNT(*) AS EmploymentRate_ApprovedApplicants
FROM Loan;

---- 
SELECT PaymentHistory
FROM Loan

SELECT 
    AVG(DebtToIncomeRatio) * 100 AS Avg_DTI_Ratio
FROM Loan;


SELECT 
    (COUNT(CASE WHEN LoanApproved = 1 THEN 1 END) * 100.0) / COUNT(*) AS LoanApprovalRate
FROM Loan;


Select *
From Loan
