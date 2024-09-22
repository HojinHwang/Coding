# Write your MySQL query statement below
SELECT
     DATE_FORMAT(trans_date, '%Y-%m') AS month
    ,country
    ,COUNT(id) AS trans_count
    ,COALESCE(COUNT(CASE WHEN state = 'approved' THEN id END), 0) AS approved_count
    ,SUM(amount) AS trans_total_amount
    ,COALESCE(SUM(CASE WHEN state = 'approved' THEN amount END), 0) AS approved_total_amount
FROM Transactions
GROUP BY
     DATE_FORMAT(trans_date, '%Y-%m')
    ,country
;
