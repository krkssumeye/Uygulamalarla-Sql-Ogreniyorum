--TRIM,LTRIM,RTRIM  BO�LUKLARI TEM�ZLE
SELECT TRIM(' S�MEYYE KARAKA� ')
SELECT LTRIM(' S�MEYYE KARAKA� ')
SELECT RTRIM(' S�MEYYE KARAKA� ')

SELECT LTRIM(RTRIM(' S�MEYYE KARAKA� '))


--LOWER, UPPER,REVERSE,REPLICATE

SELECT LOWER('S�MEYYE')
SELECT UPPER('S�meyye')
SELECT REVERSE('S�MEYYE')
SELECT REPLICATE('0',10)

SELECT*,
REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)
FROM TEST
UPDATE TEST SET SIRANO2=REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)

SELECT*FROM TEST




