--MA�AZALARIN M��TER� SAYILARINI GET�RME
SELECT FICHENO, COUNT(*)
FROM SALES WHERE MONTHNAME_ ='01.OCAK'
AND CITY='ADANA'
GROUP BY FICHENO

--B�R F��TE B�RDEN FAZLA �R�N OLDU�U ���N F�� SAYISI FAZLAYDI
--��MD� �SE F�� SAYISINA KES�LEN �R�N ADED�N� SAYDIRDI�IMIZ ���N SADECE ADET OLARAK F�� SAYISINI ALDI 


SELECT CITY, COUNT(DISTINCT FICHENO)
FROM SALES WHERE MONTHNAME_ ='01.OCAK'

GROUP BY CITY
ORDER BY CITY    --�EH�RLERDE OCAK AYINDA KES�LEN F�� ADED�


---B�R MA�AZANIN TEK�L M��TER� ADED�
SELECT CITY, COUNT(DISTINCT CUSTOMERNAME) AS UNIQECUSTOMER,
COUNT(DISTINCT FICHENO) CUSTOMERCOUNT,
COUNT(*) ITEMCOUNT
FROM SALES WHERE MONTHNAME_ ='01.OCAK'

GROUP BY CITY
ORDER BY CITY 
