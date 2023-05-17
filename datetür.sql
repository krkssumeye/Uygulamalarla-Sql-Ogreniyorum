/**Tarih format�n� de�i�tirme (FORMAT fonksiyonu):
SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') AS NewDate;
Yukar�daki �rnekte, GETDATE() fonksiyonuyla ge�erli tarihi al�yoruz ve 'dd/MM/yyyy' format�na d�n��t�r�yoruz.



Tarih ve saat bilgilerini ayr� ayr� almak (DATEPART fonksiyonu):
SELECT DATEPART(YEAR, GETDATE()) AS Year,
       DATEPART(MONTH, GETDATE()) AS Month,
       DATEPART(DAY, GETDATE()) AS Day,
       DATEPART(HOUR, GETDATE()) AS Hour,
       DATEPART(MINUTE, GETDATE()) AS Minute,
       DATEPART(SECOND, GETDATE()) AS Second;
Yukar�daki �rnekte, DATEPART fonksiyonunu kullanarak ge�erli tarihin y�l, ay, g�n, saat, dakika ve saniye bilgilerini ayr� ayr� al�yoruz.



Tarihler aras�ndaki fark� hesaplama (DATEDIFF fonksiyonu):
SELECT DATEDIFF(DAY, '2022-01-01', '2022-01-31') AS Days;
Yukar�daki �rnekte, DATEDIFF fonksiyonuyla '2022-01-01' ve '2022-01-31' tarihleri aras�ndaki g�n fark�n� hesapl�yoruz.



Tarihlerin toplam g�n say�s�n� hesaplama (DATEDIFF + DATEADD):
DECLARE @StartDate DATE = '2022-01-01';
DECLARE @EndDate DATE = '2022-12-31';
SELECT DATEDIFF(DAY, @StartDate, @EndDate) + 1 AS TotalDays;

Yukar�daki �rnekte, @StartDate ve @EndDate de�i�kenleri aras�ndaki g�n say�s�n� hesaplamak i�in DATEDIFF fonksiyonunu kullan�yoruz. 
"+ 1" ifadesini ekleyerek, ba�lang�� ve biti� tarihlerini de dahil ediyoruz.
**//