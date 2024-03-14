-- Q1: latest loan amount and customer credit score for all loans

--- Note: 
--- 1. use window function to find the latest loan from latest timestamp
--- 2. left join customer table to get credit score

SELECT
    latest_loans.loan_id,
    latest_loans.customer_id,
    latest_loans.loan_amount,
    c.credit_score
FROM (
    SELECT
        loan_id,
        customer_id,
        loan_amount,
        ROW_NUMBER() OVER(PARTITION BY loan_id ORDER BY timestamp DESC) as rn
    FROM
        loan_submission
) latest_loans
LEFT JOIN customer c ON latest_loans.customer_id = c.customer_id
WHERE latest_loans.rn = 1;

