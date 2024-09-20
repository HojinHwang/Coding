SELECT 
     CASE WHEN G.Grade >= 8 THEN S.Name ELSE Null END
    ,G.Grade
    ,S.Marks
FROM Students S
INNER JOIN Grades G
ON S.Marks BETWEEN G.Min_Mark AND G.MAX_Mark
ORDER BY 
     G.Grade DESC
    ,S.Name
    ,S.Marks
;
