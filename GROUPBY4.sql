--bir g�n�n ma�aza bazl� sat�� raporunu getirme
--209.04.23 cumartesi

SELECT DATE2,CITY,SUM(TOTALPRICE)AS TOTALPRICE FROM SALES 
WHERE DATE2='2019-01-01'
GROUP BY DATE2,CITY
ORDER BY DATE2,SUM(TOTALPRICE) DESC  --SATI� TUTARINA G�RE SIRALADIK


--MA�AZALARIN AYLARA G�RE SATI� TUTARINI GET�RME
--�NCE TABLOMUZA MONTH ADINDA S�TUN EKLED�K

--SELECT DATEPART(MONTH,'2019-08-02') --KA�INCI AY OLDU�UNU BEL�RT�R 8
SELECT*FROM SALES
UPDATE SALES SET MONTHNAME_='01.OCAK' WHERE DATEPART(MONTH,DATE2)=1
UPDATE SALES SET MONTHNAME_='02.�UBAT' WHERE DATEPART(MONTH,DATE2)=2
UPDATE SALES SET MONTHNAME_='03.MART' WHERE DATEPART(MONTH,DATE2)=3
UPDATE SALES SET MONTHNAME_='04.N�SAN' WHERE DATEPART(MONTH,DATE2)=4
UPDATE SALES SET MONTHNAME_='05.MAYIS' WHERE DATEPART(MONTH,DATE2)=5
UPDATE SALES SET MONTHNAME_='06.HAZ�RAN' WHERE DATEPART(MONTH,DATE2)=6
UPDATE SALES SET MONTHNAME_='07.TEMMUZ' WHERE DATEPART(MONTH,DATE2)=7
UPDATE SALES SET MONTHNAME_='08.A�USTOS' WHERE DATEPART(MONTH,DATE2)=8
UPDATE SALES SET MONTHNAME_='09.EYL�L' WHERE DATEPART(MONTH,DATE2)=9
UPDATE SALES SET MONTHNAME_='10.EK�M' WHERE DATEPART(MONTH,DATE2)=10
UPDATE SALES SET MONTHNAME_='11.KASIM' WHERE DATEPART(MONTH,DATE2)=11
UPDATE SALES SET MONTHNAME_='12.ARALIK' WHERE DATEPART(MONTH,DATE2)=12