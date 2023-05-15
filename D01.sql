USE ETRADE

SELECT * FROM CUSTOMERS

INSERT INTO CUSTOMERS 
(CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES
('AY�E ALDA�','MALATYA','1978-08-15','KALE','K')

SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS SET NATION='TR' , AGE=DATEDIFF(YEAR,BIRTHDATE,GETDATE())

/* dated�ff ile veritaban�m�zdaki t�m tarihleri bug�n�n tarihi ile ��kart�p ger�ek ya�� buluruz*/


/* DELETE---- DELETE FROM CUSTOMERS--- �EKL�NDE �ALI�IR*/

SELECT * FROM CUSTOMERS
/*TRUNCATE--- TRUNCATE TABLE CUSTOMERS--- �EKL�NDE KULLANILIR. 
Temel mant��� DELETE komutundan daha h�z�� �al���r ve tablo ilk haline d�ner,
yeni DELETE komutu ile silme yapt�kt�ktan sonra INSERT i�lemi ger�ekle�ti�inde
kald��� id den devam eder �rne�in 15 kay�t var tabloyu temizledik sonra insert att�k
ve kay�t 16 dan devam eder ama TRUNCATE komutunda s�f�rlar ve 1den yeniden ba�lat�r. */ 


/*WHERE �ARTI
<> E��T DE��LD�R
BETWEEN : ARASINDA AND 
LIKE : �LE BA�LAR,�LE B�TER, ��ER�R---TERS� ���N NOT LIKE
IN : ���NDED�R-----TERS� ���N NOT IN   */

SELECT * FROM CUSTOMERS
/*WHERE CUSTOMERNAME='Nazife DEVE'*/
/*WHERE CITY='Malatya'*/
/* WHERE CITY <> '�zmir' izmir harici  WHERE NOT CITY= '�ZM�R'*/
/*WHERE BIRTHDATE < '1999-01-01'  WHERE BIRTHDATE> '19900101' �EKL�NDE DE YAZAB�L�R�Z*/

/*WHERE BIRTHDATE BETWEEN '19900101' AND '19950805'
WHERE AGE BETWEEN '20' AND '35'
WHERE CUSTOMERNAME LIKE 'AL�%' AL� �LE BA�LAYANLAR  NOT L�KE �SE BA�LAMAYANLAR
'%AL�%' ���NDE AL� OLANLAR YAN� KALIP 
'%AL�' AL� �LE B�TENLER*/

/*WHERE CITY  IN ('ISTANBUL','ANKARA','MALATYA') �ehirleri se�ili olanlar� getirir
WHERE CITY NOT IN ('ISTANBUL','ANKARA','MALATYA') se�ili �ehirler hari� di�er �ehirleri getirir*/
SELECT * FROM CUSTOMERS
/*UPDATE CUSTOMERS SET GENDER = 'ERKEK' WHERE GENDER ='E'  E �LE BEL�RT�LEN C�NS�YET� ERKEK OLARAK DE���T�RD�K*/
UPDATE CUSTOMERS SET GENDER = 'KADIN' WHERE GENDER ='K'

/*SELECT * FROM CUSTOMERS WHERE ID=18
DELETE FROM CUSTOMERS WHERE ID = 18  ID 18 OLAN K���Y� S�LER�Z*/

SELECT * FROM CUSTOMERS
/*AND OPERAT�R� VER�LEN �K� �ARTA DA UYMAK ZORUNDA*/

/*OR OPERAT�R� VER�LEN �K� �ARTTAN HERHANG�B�R�N� KAR�ILAMALI*/

/*WHERE CITY='�STANBUL' AND DISTRICT ='BEYL�KD�Z�' AND AGE='82'*/

/*WHERE CITY = '�STANBUL' AND GENDER ='ERKEK' 
AND BIRTHDATE BETWEEN '19900101' AND '20000101'*/

/* OR OPERAT�R� UYGULMALARI*/
SELECT * FROM CUSTOMERS
--WHERE CITY = '�STANBUL' OR CITY='�ZM�R' AND GENDER NOT IN ('ERKEK') --BURADA AND KULLANDI�IMIZ ���N �ZM�R ERKEKLER� GET�RMEZ
--WHERE BIRTHDATE <='19900101' OR BIRTHDATE>= '19951231'

/*DISTINCT KOMUTU TEKRAR EDEN SATIRLARI TEK�LLE�T�RMEK */

SELECT DISTINCT CITY FROM CUSTOMERS  --�ehirlerin hepsini bir kere getirdik

SELECT CITY, DISTRICT FROM CUSTOMERS WHERE CITY='�STANBUL' --�STANBUL �EHR�NDEK� �L�ELER

SELECT DISTINCT CITY, DISTRICT FROM CUSTOMERS WHERE CITY='�STANBUL' --�L�ELER� TEK�LLE�T�RD�K

--ORDER BY KOMUTU
SELECT * FROM CUSTOMERS
--ORDER BY ID ASC K���KTEN B�Y��E
--ORDER BY ID DESC B�Y�KTEN K����E
--ORDER BY CUSTOMERNAME DESC  �S�MLER�N BA� HARFLER�NE G�RE
--ORDER BY DISTRICT ASC--DESC 
--ORDER BY BIRTHDATE DESC --ASC
--ORDER BY CITY ,DISTRICT --�EH�RLER� SIRALADI SONRA �L�ELER� ��LER�NDE SIRALADI

--ORDER BY BIRTHDATE ,AGE
--ORDER BY CITY ,DISTRICT,CUSTOMERNAME �EH�RLER� SIRALAR �L�ELER� SIRALAR �L�ELERDEK� �S�MLER� KEND� ���NDE SIRALAR
--ORDER BY CITY ASC ,CUSTOMERNAME DESC
SELECT * FROM CUSTOMERS
--WHERE CITY ='�STANBUL'
--ORDER BY CITY ,DISTRICT,CUSTOMERNAME

--ORDER BY 2 --iK�NC� KOLONA G�RE SIRALADI

WHERE CITY ='�STANBUL'
ORDER BY 5,2

SELECT TOP 100 *FROM  CUSTOMERS
ORDER BY CUSTOMERNAME

SELECT TOP 100 PERCENT *FROM  CUSTOMERS   --KAYITLARIN Y�ZDE Y�Z�N� GET�R�R
ORDER BY CUSTOMERNAME