USE ETRADE4
SELECT DISTINCT PAYMENTTYPE FROM PAYMENTS --�K� T�R �DEME T�P� VAR

SELECT PAYMENTTYPE AS ODEME_TURU,
SUM(PAYMENTTYPE) AS TOPLAMTUTAR
FROM PAYMENTS
GROUP BY PAYMENTTYPE  --�DEME T�R�NE G�RE  TOPLAM TUTAR


--YUKARIDAK� SORGUDA �DEME T�R� 1 VE 2 �EKL�NDEYD� ��MD� CASE WHEN METODU �LE �S�M EKLEYECE��Z
SELECT 
PAYMENTTYPE AS ODEME_TURU,
CASE 
	WHEN  PAYMENTTYPE=1 THEN 'KRED�_KARTI'
	WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
END AS ODEMETURU_ACIKLAMA,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS
GROUP BY PAYMENTTYPE


--AYLARA G�RE
SELECT 
DATEPART(YEAR,DATE_) AS YIL,
DATEPART(MONTH,DATE_) AS AY,
CASE 
	WHEN  PAYMENTTYPE=1 THEN 'KRED�_KARTI'
	WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
END AS ODEMETURU_ACIKLAMA,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS
GROUP BY DATEPART(YEAR,DATE_) ,DATEPART(MONTH,DATE_) ,PAYMENTTYPE
ORDER BY  DATEPART(YEAR,DATE_) ,DATEPART(MONTH,DATE_)
