# Write your MySQL query statement below
WITH three_times_con AS
(
    SELECT
        id
        ,num
        ,LEAD(num, 1) OVER (ORDER BY id) AS one_lead_num
        ,LEAD(num, 2) OVER (ORDER BY id) AS two_lead_num
    FROM Logs
)
SELECT DISTINCT
     num AS ConsecutiveNums
FROM three_times_con
WHERE num = one_lead_num
AND num = two_lead_num
;
