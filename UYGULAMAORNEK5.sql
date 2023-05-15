USE ETRADE4
--ORTALAMA TESL�MAT S�RES�

SELECT
O.ID AS SIPARISID,
O.DATE_ AS SIPARISTARIHI,
I.DATE_ AS FATURATARIHI,
DATEDIFF(HOUR,O.DATE_,I.DATE_) AS TESLIMATSURESI_SAAT 
--AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMATSURESI_SAAT ORT TESL�MAT S�RES�
FROM ORDERS O 
	INNER JOIN INVOICES I ON I.ORDERID=O.ID



--- ORTALAMA S�RELER
SELECT
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMATSURESI_SAAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMATSURESI_SAAT,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_TESLIMATSURESI_SAAT
FROM ORDERS O 
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	
