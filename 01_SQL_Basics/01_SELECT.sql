-- SQL Learning Portfolio
-- Topic 1: SELECT
-- Dataset: Loan & Credit Risk

-- 1. Create the loan_applications table

CREATE TABLE loan_applications (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    application_date DATE,
    loan_amount DECIMAL(12,2),
    loan_term_months INT,
    interest_rate DECIMAL(5,2),
    loan_purpose VARCHAR(50),
    loan_status VARCHAR(30),
    employment_status VARCHAR(30),
    annual_income DECIMAL(12,2),
    credit_score INT,
    default_flag INT
);


-- 2. Display basic information about loan applications


SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose,
    loan_status
FROM loan_applications;
