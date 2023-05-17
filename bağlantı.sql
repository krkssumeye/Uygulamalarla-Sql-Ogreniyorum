//**SELECT *
FROM [MOCK_DATA]  -- "MOCK_DATA" veritabanýndaki "MOCK_DATA" tablosunu seçiyoruz

SELECT COUNT(id)
FROM [MOCK_DATA2].dbo.[MOCK_DATA2]
WHERE country = 'South Korea'

SELECT country, car_model, car_model_year
FROM [MOCK_DATA2].dbo.[MOCK_DATA2]
WHERE car_model_year >= '1998'

SELECT *
FROM (
    SELECT country, car_model, car_model_year
    FROM [MOCK_DATA2].dbo.[MOCK_DATA2]
    WHERE car_model_year >= '1998'
) AS a
LEFT JOIN (
    SELECT first_name, last_name, email, gender
    FROM [MOCK_DATA].dbo.[MOCK_DATA]
) AS m ON a.country = m.country

*//

//*SELECT name, age,
    CASE
        WHEN age < 18 THEN 'Under 18'
        WHEN age >= 18 AND age < 30 THEN '18-29'
        WHEN age >= 30 AND age < 40 THEN '30-39'
        ELSE '40+'
    END AS age_group
FROM MOCK_DATA;
**//