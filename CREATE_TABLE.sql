USE MOCK_DATA

CREATE TABLE MOCK_DATA (
id int not null ,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) not null,
gender varchar(50) not null,
primary key (id)

)
SELECT*FROM MOCK_DATA

---ÝKÝ FARKLI DB OLUÞTURDUK
USE MOCK_DATA2
create table MOCK_DATA2 (
	id INT,
	country VARCHAR(50),
	car_model VARCHAR(50),
	car_model_year VARCHAR(50)
);


SELECT*FROM MOCK_DATA2