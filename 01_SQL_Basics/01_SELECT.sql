-- SQL Learning Portfolio
-- Topic 1: SELECT
-- Dataset: Loan & Credit Risk

-- 1. Create the loan_applications table

CREATE TABLE loan_applications
(
loan_id int8 PRIMARY KEY,
customer_id INT,
application_date DATE,
loan_purpose VARCHAR(50),
loan_amount DECIMAL(12,2),
interest_rate DECIMAL(5,2),
loan_term_months INT,
application_status VARCHAR(30),
monthly_installment DECIMAL(12,2),
default_flag INT
);


-- 2. Display basic information about loan applications


SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose,
    application_status
FROM loan_applications;
