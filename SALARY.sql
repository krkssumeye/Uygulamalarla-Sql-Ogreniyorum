SELECT TOP(100)* FROM SALARY 
--Select Listelenecek_alanlar, fonksiyonlar from Tablo_adý Where þart veya þartlar Group by Gruplandýrýlacak_alanlar

SELECT job_title, avg(salary) as total_salary_SE from SALARY WHERE experience_level='SE' GROUP BY job_title
SELECT job_title, avg(salary) as total_salary_MI from SALARY WHERE experience_level='MI' GROUP BY job_title
SELECT job_title, avg(salary) as total_salary_EN from SALARY WHERE experience_level='EN' GROUP BY job_title;
SELECT job_title, avg(salary) as total_salary_EX from SALARY WHERE experience_level='EX' GROUP BY job_title;



