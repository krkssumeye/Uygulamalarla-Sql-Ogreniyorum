--REPLACE
SELECT 'SÜMEYYE KARAKAÞ'
SELECT REPLACE('SÜMEYYE KARAKAÞ','SÜMEYYE','SÜMEYYE DENÝZ')


-----
DECLARE @CUMLE AS VARCHAR(MAX)
SET @CUMLE='Sonunda eserleri saraya teslim ederler. Tablolara bakan kral sadece ikisinden hoþlanýr. 
Ama birinciyi seçmesi için karar ver­mesi gereklidir. Resimlerden birisinde sükûnetli bir göl vardýr. 
Göl bir ayna gibi etrafýnda yükselen daðlarýn görüntüsünü yansýtmaktadýr. Üst tarafta pamuk beyazý bulutlar gökyüzünü süslemektedir. 
Resim, bakanlarý mükemmel bir huzur resmi olduðunu düþündürecek kadar güzeldir.
Diðer resimde de daðlar vardýr. Ama engebeli ve çýplak dað­lar... 
Üst tarafta öfkeli bir gökyüzünden boþanan yaðmurlar ve çakan þimþek, resmi daha da sýkýntýlý hâle sokmaktadýr.
Daðýn eteklerindeki bir þelale ise insana gürültüyü, yorgunluðu hatýr­latacak kadar hýrçýn resmedilmiþtir.
Kýsaca resim, pek de öyle huzur verecek türden deðildir. Fakat kral resme bakýnca þelale­nin ardýnda kayalýklardaki çatlaktan çýkan mini minnacýk bir çalýlýk görür. 
Çalýlýðýn üstünde ise anne bir kuþun örttüðü bir kuþ yuvasý göze çarpmaktadýr. 
Sertçe akan suyun orta yerinde anne kuþun kurduðu yuva, harika bir huzur ve sükun örneði sunmaktadýr izleyenlere...'

SET @CUMLE=REPLACE(@CUMLE,'Sonunda','Tam zamanýnda')

DECLARE @LEN1 AS INT
SET @LEN1=LEN(@CUMLE)
DECLARE @LEN2 AS INT
SET @CUMLE=REPLACE(@CUMLE,' BÝR ',' ')
SET @LEN2=LEN(@CUMLE)
SELECT(@LEN1-@LEN2)/LEN(' BÝR ')
