SELECT USERS.*, ADDRESS.ADDRESSTEXT FROM
USERS,ADDRESS
WHERE USERS.ID=ADDRESS.USERID
AND USERS.ID=1  --�K� TABLOYU BAS�T B�R Y�NETEMLE B�RLE�T�RME


SELECT USERS.NAMESURNAME,USERS.EMAIL,USERS.GENDER,USERS.BIRTHDATE ,ADDRESS.ADDRESSTEXT FROM
USERS,ADDRESS
WHERE USERS.ID=ADDRESS.USERID
AND USERS.ID=1   --BURADA �SE USERS TABLOSUNDAN �STED���M�Z DE�ERLER� �EKT�K 

--BU ��LEM� UZUN UZUN YAZMAK YER�NE ALIAS KULLANARAK DAHA KISA KEL�MELERLE D�ZENLEYEB�L�RZ
SELECT U.NAMESURNAME,U.EMAIL,U.GENDER,U.BIRTHDATE ,A.ADDRESSTEXT FROM
USERS U,ADDRESS A
WHERE U.ID=A.USERID
AND U.ID=5  --USERS U HARF� �LE ADDRESS A HARF� �LE KISALTMI� OLDUK

SELECT U.NAMESURNAME AS ADSOYAD,U.EMAIL MA�LADRES�,U.GENDER C�NS�YET,U.BIRTHDATE DOGUMTAR�H�,A.ADDRESSTEXT AS ACIKADRES FROM
USERS U,ADDRESS A
WHERE U.ID=A.USERID
AND U.ID=10  --AS �LE KOLON �S�MLER�N� DE���T�RD�K