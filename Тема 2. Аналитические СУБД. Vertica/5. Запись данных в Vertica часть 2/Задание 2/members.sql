CREATE TABLE stv2025021816.members
(
    id int NOT NULL,
    age int,
    gender char,
    email varchar(50),
    CONSTRAINT C_PRIMARY PRIMARY KEY (id) DISABLED
);

copy stv2025021816.members (xx, cc , vv ENRFORCELENGTH ) 
from local '/home/nikolay/python_projects/practicum_yandex/s6-lessons/Тема 2. Аналитические СУБД. Vertica/5. Запись данных в Vertica часть 2/Задание 2/members.csv';
DELIMITER ';'
REJECTED DATA AS TABLE stv2025021816.members_rej;
;