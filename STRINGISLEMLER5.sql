--REPLACE
SELECT 'S�MEYYE KARAKA�'
SELECT REPLACE('S�MEYYE KARAKA�','S�MEYYE','S�MEYYE DEN�Z')


-----
DECLARE @CUMLE AS VARCHAR(MAX)
SET @CUMLE='Sonunda eserleri saraya teslim ederler. Tablolara bakan kral sadece ikisinden ho�lan�r. 
Ama birinciyi se�mesi i�in karar ver�mesi gereklidir. Resimlerden birisinde s�k�netli bir g�l vard�r. 
G�l bir ayna gibi etraf�nda y�kselen da�lar�n g�r�nt�s�n� yans�tmaktad�r. �st tarafta pamuk beyaz� bulutlar g�ky�z�n� s�slemektedir. 
Resim, bakanlar� m�kemmel bir huzur resmi oldu�unu d���nd�recek kadar g�zeldir.
Di�er resimde de da�lar vard�r. Ama engebeli ve ��plak da�lar... 
�st tarafta �fkeli bir g�ky�z�nden bo�anan ya�murlar ve �akan �im�ek, resmi daha da s�k�nt�l� h�le sokmaktad�r.
Da��n eteklerindeki bir �elale ise insana g�r�lt�y�, yorgunlu�u hat�r�latacak kadar h�r��n resmedilmi�tir.
K�saca resim, pek de �yle huzur verecek t�rden de�ildir. Fakat kral resme bak�nca �elale�nin ard�nda kayal�klardaki �atlaktan ��kan mini minnac�k bir �al�l�k g�r�r. 
�al�l���n �st�nde ise anne bir ku�un �rtt��� bir ku� yuvas� g�ze �arpmaktad�r. 
Sert�e akan suyun orta yerinde anne ku�un kurdu�u yuva, harika bir huzur ve s�kun �rne�i sunmaktad�r izleyenlere...'

SET @CUMLE=REPLACE(@CUMLE,'Sonunda','Tam zaman�nda')

DECLARE @LEN1 AS INT
SET @LEN1=LEN(@CUMLE)
DECLARE @LEN2 AS INT
SET @CUMLE=REPLACE(@CUMLE,' B�R ',' ')
SET @LEN2=LEN(@CUMLE)
SELECT(@LEN1-@LEN2)/LEN(' B�R ')
