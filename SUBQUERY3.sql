USE ETRADE4
---�R�N HANG� AYDA EN �OK SATILDI
SELECT ITM.ITEMCODE AS URUNKODU,
ITM.ITEMNAME AS URUNADI,
(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFIYAT,
(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFIYAT,
(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,

(
SELECT TOP 1 DATEPART(MONTH,O.DATE_) AS AY FROM ORDERDETAILS OD
INNER JOIN ORDERS O ON OD.ORDERID=O.ID
WHERE OD.ITEMID=ITM.ID
GROUP BY DATEPART(MONTH,O.DATE_)
ORDER BY SUM(AMOUNT) DESC
)AS ENCOKSSATILANAY
FROM 
ITEMS ITM

--WHERE (SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) IS NULL --BO� OLAN KOLONLARI GET�RD�K
WHERE ITM.ID NOT IN 
(SELECT ITEMID FROM ORDERDETAILS)  --BU �EK�LDEDE GET�REB�L�R�Z 
ORDER BY ENDUSUKFIYAT

