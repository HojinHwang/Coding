# ๐ ํ๋ก๊ทธ๋๋จธ์ค SQL SELECT ๋ฌธ์  ๋ชจ์

## 1๋ฒ - ๋ชจ๋  ๋ ์ฝ๋ ์กฐํํ๊ธฐ
```MySQL
SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
```

## 2๋ฒ - ์ญ์ ์ ๋ ฌํ๊ธฐ
```MySQL
SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;
```

## 3๋ฒ - ์ํ ๋๋ฌผ ์ฐพ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID;
```

## 4๋ฒ - ์ด๋ฆฐ ๋๋ฌผ ์ฐพ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID;
```

## 5๋ฒ - ๋๋ฌผ์ ์์ด๋์ ์ด๋ฆ
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
```

## 6๋ฒ - ์ฌ๋ฌ ๊ธฐ์ค์ผ๋ก ์ ๋ ฌํ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;
```

## 7๋ฒ - ์์ n๊ฐ ๋ ์ฝ๋
```MySQL
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;
```
