# 👀 프로그래머스 SQL SELECT 문제 모음

## 1번 - 없어진 기록 찾기
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_OUTS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_INS)
ORDER BY ANIMAL_ID;
```

## 2번 - 있었는데요 없었습니다
```MySQL
SELECT ins.ANIMAL_ID, ins.NAME
FROM ANIMAL_INS AS ins
INNER JOIN ANIMAL_OUTS AS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
WHERE ins.DATETIME > outs.DATETIME
ORDER BY ins.DATETIME;
```

## 3번 - 오랜 기간 보호한 동물(1)
```MySQL
SELECT NAME, DATETIME
FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY DATETIME
LIMIT 3;
```

## 4번 - 보호소에서 중성화한 동물
'''MySQL
SELECT ins.ANIMAL_ID, ins.ANIMAL_TYPE, ins.NAME
FROM animal_ins AS ins
INNER JOIN animal_outs AS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
WHERE ins.SEX_UPON_INTAKE IN ('Intact Male', "Intact Female") 
and outs.SEX_UPON_OUTCOME in ('Neutered Male', 'Spayed Female')
```
