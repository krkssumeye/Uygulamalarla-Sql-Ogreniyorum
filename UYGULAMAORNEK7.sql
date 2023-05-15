USE ETRADE4

SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
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
DATEPART(YEAR,O.DATE_) ,
DATEPART(MONTH,O.DATE_) 

ORDER BY YIL,AY DESC


--�LLERE G�RE TESL�MAT S�RES�

SELECT 
CT.CITY,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMATSURESI_SAAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMATSURESI_SAAT,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORT_TESLIMAT_SURESI,
SUM(O.TOTALPRICE) AS TOPLAM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARISSAYISI
FROM ORDERS O 
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

GROUP BY
CT.CITY
ORDER BY ENUZUN_TESLIMATSURESI_SAAT DESC