--FORMAT 
SELECT FORMAT(GETDATE(),'d','en-us')
SELECT FORMAT(GETDATE(),'D','en-us')


--LEFT RIGHT LEN

SELECT LEFT('S�MEYYE KARAKA�',4)
SELECT RIGHT('S�MEYYE KARAKA�',4)
SELECT LEN('1234567890')


SELECT LEFT('S�MEYYE KARAKA�',7)
SELECT RIGHT('S�MEYYE KARAKA�',7)

SELECT LEFT('S�MEYYE KARAKA�',CHARINDEX(' ','S�MEYYE KARAKA�'))
SELECT RIGHT('S�MEYYE KARAKA�',LEN('S�MEYYE KARAKA�')-CHARINDEX(' ','S�MEYYE KARAKA�'))

SELECT
LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)),
*FROM USERS


