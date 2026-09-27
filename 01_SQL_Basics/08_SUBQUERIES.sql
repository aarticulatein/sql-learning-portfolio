-- SQL Learning Portfolio
-- Topic: SUBQUERIES
-- Dataset: Loan & Credit Risk

-- 1. Subquery with AVG()
-- Which loans have a loan amount greater than the average loan amount?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
WHERE loan_amount > (
    SELECT AVG(loan_amount)
    FROM loan_applications
);



-- 2. Subquery with MAX()
-- Which loan application has the highest loan amount?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
WHERE loan_amount = (
    SELECT MAX(loan_amount)
    FROM loan_applications
);


-- 3. Subquery with MIN()
-- Which loan application has the lowest loan amount?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
WHERE loan_amount = (
    SELECT MIN(loan_amount)
    FROM loan_applications
);



-- 4. Subquery with IN
-- Which customers have at least one loan application?

SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM loan_applications
);


-- 5. Subquery with GROUP BY and HAVING
-- Which loan purposes have an average loan amount greater than the overall average loan amount?

SELECT
    loan_purpose,
    ROUND(AVG(loan_amount), 2) AS average_loan_amount
FROM loan_applications
GROUP BY loan_purpose
HAVING AVG(loan_amount) > (
    SELECT AVG(loan_amount)
    FROM loan_applications
);


-- 6. Subquery with multiple conditions
-- Which loans are above the average loan amount and have a credit score above the average credit score?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    credit_score
FROM loan_applications
WHERE loan_amount > (
    SELECT AVG(loan_amount)
    FROM loan_applications
)
AND credit_score > (
    SELECT AVG(credit_score)
    FROM loan_applications
);
