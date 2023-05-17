/**Tarih formatýný deðiþtirme (FORMAT fonksiyonu):
SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') AS NewDate;
Yukarýdaki örnekte, GETDATE() fonksiyonuyla geçerli tarihi alýyoruz ve 'dd/MM/yyyy' formatýna dönüþtürüyoruz.



Tarih ve saat bilgilerini ayrý ayrý almak (DATEPART fonksiyonu):
SELECT DATEPART(YEAR, GETDATE()) AS Year,
       DATEPART(MONTH, GETDATE()) AS Month,
       DATEPART(DAY, GETDATE()) AS Day,
       DATEPART(HOUR, GETDATE()) AS Hour,
       DATEPART(MINUTE, GETDATE()) AS Minute,
       DATEPART(SECOND, GETDATE()) AS Second;
Yukarýdaki örnekte, DATEPART fonksiyonunu kullanarak geçerli tarihin yýl, ay, gün, saat, dakika ve saniye bilgilerini ayrý ayrý alýyoruz.



Tarihler arasýndaki farký hesaplama (DATEDIFF fonksiyonu):
SELECT DATEDIFF(DAY, '2022-01-01', '2022-01-31') AS Days;
Yukarýdaki örnekte, DATEDIFF fonksiyonuyla '2022-01-01' ve '2022-01-31' tarihleri arasýndaki gün farkýný hesaplýyoruz.



Tarihlerin toplam gün sayýsýný hesaplama (DATEDIFF + DATEADD):
DECLARE @StartDate DATE = '2022-01-01';
DECLARE @EndDate DATE = '2022-12-31';
SELECT DATEDIFF(DAY, @StartDate, @EndDate) + 1 AS TotalDays;

Yukarýdaki örnekte, @StartDate ve @EndDate deðiþkenleri arasýndaki gün sayýsýný hesaplamak için DATEDIFF fonksiyonunu kullanýyoruz. 
"+ 1" ifadesini ekleyerek, baþlangýç ve bitiþ tarihlerini de dahil ediyoruz.
**//