# ๐ ํ๋ก๊ทธ๋๋จธ์ค SQL SELECT ๋ฌธ์  ๋ชจ์

## 1๋ฒ - ๋ฃจ์์ ์๋ผ ์ฐพ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID;
```

## 2๋ฒ - ์ด๋ฆ์ el์ด ๋ค์ด๊ฐ๋ ๋๋ฌผ ์ฐพ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%EL%' AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;
```

## 3๋ฒ - ์ค์ฑํ ์ฌ๋ถ ํ์ํ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME, 
CASE WHEN (SEX_UPON_INTAKE LIKE '%Neutered%') THEN 'O'
WHEN (SEX_UPON_INTAKE LIKE '%Spayed%') THEN 'O'
ELSE 'X' END AS '์ค์ฑํ'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
```

## 4๋ฒ - ์ค๋ ๊ธฐ๊ฐ ๋ณดํธํ ๋๋ฌผ(2)
```MySQL
SELECT ins.ANIMAL_ID, ins.NAME
FROM ANIMAL_INS AS ins
INNER JOIN ANIMAL_OUTS AS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
ORDER BY outs.DATETIME - ins.DATETIME DESC
LIMIT 2;
```

## 5๋ฒ - DATETIME์์ DATE๋ก ํ ๋ณํ
```MySQL
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d')
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
```
