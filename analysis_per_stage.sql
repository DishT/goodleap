SELECT
    STRFTIME('%Y-%m', SUBSTR(timestamp, 1, 19)) AS year_month,
    stage,
    SUM(loan_amount) AS total_loan_amount
FROM
    loan_submission
WHERE
    STRFTIME('%Y-%m', SUBSTR(timestamp, 1, 19)) < STRFTIME('%Y-%m', 'now')
GROUP BY
    year_month,
    stage
ORDER BY
    year_month,
    stage;


--- 1. turn timestamp to year month
--- 2. group by year_month and stage
--- 3. do not show data for incomplete months: use where to filter data in current month.