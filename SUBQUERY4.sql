--KULLANICININ SON ADRES�N� BULMA
USE ETRADE4
SELECT U.*,A.ADDRESSTEXT,A.ID FROM
USERS U
INNER JOIN ADDRESS A ON U.ID=A.USERID

WHERE U.ID=1
ORDER BY A.ID DESC
--BU K���N�N 4 ADET ADRES� BULUNMAKTADIR EN SON ADRES�NE ER��MEK ���N �SE SUBQUERY KULLANMAMIZ LAZIM

SELECT U.*,
(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID DESC) SONADRES,
(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID=U.ID ORDER BY ID ) ILKADRES,
(SELECT COUNT(ADDRESSTEXT) FROM ADDRESS WHERE USERID=U.ID) ADRESSAYISI
FROM
USERS U