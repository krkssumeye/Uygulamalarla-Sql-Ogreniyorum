--TESL�MAT S�RES� GEC�KEN M��TER� B�LG�S�
USE ETRADE4
SELECT 

U.ID,U.NAMESURNAME,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORT_TESLIMAT_SURESI
FROM ORDERS O 
	INNER JOIN USERS U ON U.ID=O.USERID
	
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

GROUP BY
U.ID,U.NAMESURNAME
HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>28
ORDER BY ORT_TESLIMAT_SURESI DESC


---GEC�KEN TESL�MATLARDA S�REKL� ALI�VER�� YAPAN M��TER� B�LG�S�
SELECT 
U.ID,U.NAMESURNAME,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMATSURESI_SAAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMATSURESI_SAAT,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORT_TESLIMAT_SURESI,
SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARISSAYISI
FROM ORDERS O 
	INNER JOIN USERS U ON U.ID=O.USERID
	
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

GROUP BY
U.ID,U.NAMESURNAME
HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>28
ORDER BY TOPLAM_SIPARIS_TUTARI DESC
