--AYLARA G�RE �EH�RLERDEK� SATI� DURUMU
SELECT CITY,MONTHNAME_,SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES
/*GROUP BY MONTHNAME_
ORDER BY MONTHNAME_ */ --T�M �EH�RLER�N AYLRA G�RE SATI� DA�ILIMI

GROUP BY CITY,MONTHNAME_
ORDER BY CITY,MONTHNAME_  --�EH�RLERE G�RE AYLARIN SATI� ORANI