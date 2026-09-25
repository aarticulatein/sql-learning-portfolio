-- SQL Learning Portfolio
-- Topic: CASE WHEN
-- Dataset: Loan & Credit Risk



-- 1. How can customers be classified into credit-risk categories based on their credit score?

SELECT
    loan_id,
    customer_id,
    credit_score,
    CASE
        WHEN credit_score >= 750 THEN 'Low Risk'
        WHEN credit_score >= 650 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category
FROM loan_applications;



--  2. How can loan applications be classified by loan amount?

SELECT
    loan_id,
    loan_amount,
    CASE
        WHEN loan_amount < 10000 THEN 'Small Loan'
        WHEN loan_amount < 30000 THEN 'Medium Loan'
        ELSE 'Large Loan'
    END AS loan_size
FROM loan_applications;



-- 3. How can loan applications be classified based on annual income?

SELECT
    loan_id,
    annual_income,
    CASE
        WHEN annual_income < 30000 THEN 'Low Income'
        WHEN annual_income < 60000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_category
FROM loan_applications;
