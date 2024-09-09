SELECT
    CONCAT(Name, '(', LEFT(Occupation,1), ')') AS result
FROM OCCUPATIONS
ORDER BY Name
;

SELECT
    CONCAT('There are a total of ', CAST(name_cnt AS CHAR(100)), ' ', LOWER(Occupation), 's.') AS result
FROM
(
    SELECT 
         Occupation
        ,COUNT(Name) AS name_cnt
    FROM OCCUPATIONS
    GROUP BY
         Occupation
    ORDER BY
         name_cnt
        ,Occupation
) T2
;
