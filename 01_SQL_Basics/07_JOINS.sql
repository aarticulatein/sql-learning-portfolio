-- SQL Learning Portfolio
-- Topic: JOINS
-- Dataset: Loan & Credit Risk

-- 1. INNER JOIN

-- Which customers have applied for loans?
-- INNER JOIN returns only customers with matching loan applications.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amount,
    l.loan_purpose
FROM customers AS c
INNER JOIN loan_applications AS l
    ON c.customer_id = l.customer_id;


-- 2. LEFT JOIN

-- How can we display all customers, including those who have not applied for a loan?
-- LEFT JOIN returns all records from the left table and matching records from the right table.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amount
FROM customers AS c
LEFT JOIN loan_applications AS l
    ON c.customer_id = l.customer_id;


-- 3. RIGHT JOIN

-- How can we display all loan applications, including applications with no matching customer record?
-- RIGHT JOIN returns all records from the right table and matching records from the left table.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amount,
    l.loan_purpose
FROM customers AS c
RIGHT JOIN loan_applications AS l
    ON c.customer_id = l.customer_id;


-- 4. FULL OUTER JOIN

-- How can we display all customers and all loan applications, including records without a match?
-- FULL OUTER JOIN returns all records from both tables, matching them where a relationship exists.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amount,
    l.loan_purpose
FROM customers AS c
FULL OUTER JOIN loan_applications AS l
    ON c.customer_id = l.customer_id;


-- 5. Which loans were taken by customers with an annual income above €60,000?

SELECT
    l.loan_id,
    l.customer_id,
    l.loan_amount,
    l.loan_purpose,
    c.annual_income
FROM loan_applications AS l
INNER JOIN customers AS c
    ON l.customer_id = c.customer_id
WHERE c.annual_income > 60000;
