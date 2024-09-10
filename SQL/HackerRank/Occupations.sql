WITH ROW_NUMS AS
(
    SELECT
         Name
        ,Occupation
        ,ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS ROW_NUM
    FROM OCCUPATIONS
)
SELECT 
     MIN(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor
    ,MIN(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor
    ,MIN(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer
    ,MIN(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM ROW_NUMS
GROUP BY ROW_NUM
ORDER BY ROW_NUM
;
