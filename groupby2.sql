use ETRADE2
/**SELECT*,CONVERT(DATE,DATE_) AS DATE2
FROM SALES WHERE CITY='ANKARA'
ORDER BY DATE_
--DATA DA SAAT VE TAR�H AYNI S�TUNDA BUNU TEK�LLE�T�RMEK ���N
--CONVERT �LE �K�YE B�LER�Z AMA BU SADECE SORGU �ALI�TI�I ZAMAN GEL�R
--YAN� AYRI B�R S�TUN TEMELL� OLARAK DATA YA EKLENMEZ**/

--�imdi tablomuza date alan�n� ekledik ve update i�lemini ger�ekle�tiricez

UPDATE SALES SET DATE2=CONVERT(DATE,DATE_)

SELECT*FROM SALES

SELECT CITY, DATE2,SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES WHERE CITY ='ANKARA'
GROUP BY CITY,DATE2
ORDER BY CITY,DATE2