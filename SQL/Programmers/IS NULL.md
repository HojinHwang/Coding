# π νλ‘κ·Έλλ¨Έμ€ SQL SELECT λ¬Έμ  λͺ¨μ

## 1λ² - μ΄λ¦μ΄ μλ λλ¬Όμ μμ΄λ
```MySQL
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID;
```

## 2λ² - μ΄λ¦μ΄ μλ λλ¬Όμ μμ΄λ
```MySQL
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
ORDER BY ANIMAL_ID;
```

## 3λ² - NULL μ²λ¦¬νκΈ°
```MySQL
SELECT ANIMAL_TYPE, COALESCE(NAME, 'No name'), SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
```
