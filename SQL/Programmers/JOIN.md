# ๐ ํ๋ก๊ทธ๋๋จธ์ค SQL SELECT ๋ฌธ์  ๋ชจ์

## 1๋ฒ - ์์ด์ง ๊ธฐ๋ก ์ฐพ๊ธฐ
```MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_OUTS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_INS)
ORDER BY ANIMAL_ID;
```

## 2๋ฒ - ์์๋๋ฐ์ ์์์ต๋๋ค
```MySQL
SELECT ins.ANIMAL_ID, ins.NAME
FROM ANIMAL_INS AS ins
INNER JOIN ANIMAL_OUTS AS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
WHERE ins.DATETIME > outs.DATETIME
ORDER BY ins.DATETIME;
```

## 3๋ฒ - ์ค๋ ๊ธฐ๊ฐ ๋ณดํธํ ๋๋ฌผ(1)
```MySQL
SELECT NAME, DATETIME
FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY DATETIME
LIMIT 3;
```

## 4๋ฒ - ๋ณดํธ์์์ ์ค์ฑํํ ๋๋ฌผ
'''MySQL
SELECT ins.ANIMAL_ID, ins.ANIMAL_TYPE, ins.NAME
FROM animal_ins AS ins
INNER JOIN animal_outs AS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
WHERE ins.SEX_UPON_INTAKE IN ('Intact Male', "Intact Female") 
and outs.SEX_UPON_OUTCOME in ('Neutered Male', 'Spayed Female')
```
