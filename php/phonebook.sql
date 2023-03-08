--  up урок

DROP DATABASE IF EXISTS `up`;

CREATE DATABASE IF NOT EXISTS `up`;

USE `up`;

DROP TABLE IF EXISTS `phonebook`;

CREATE TABLE `phonebook`(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(35) NULL DEFAULT '',
    `surname` VARCHAR(35) NULL DEFAULT '',
    `spec` VARCHAR(35) NULL DEFAULT '',
    `phone` VARCHAR(15) NULL DEFAULT '',
    `comments` TEXT ,
    `date` DATE NULL,
    PRIMARY KEY (`id`)
)  ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

/************/


/*
DROP DATABASE `up`;
CREATE DATABASE `up`;
DROP TABLE `phonebook`;
CREATE TABLE `phonebook`(
    `ID` INT NOT NULL,
)  ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
ALTER TABLE `phonebook` ADD `dates` DATE NOT NULL AFTER `spec`;
ALTER TABLE `phonebook` DROP COLUMN `dates`;
ALTER TABLE `phonebook` CHANGE `comments` `comments` TEXT NULL DEFAULT NULL;
*/


RENAME TABLE `up`.`phonebook` TO `up`.`phonebooks`;
ALTER TABLE `phonebook` CHANGE `name` `names` VARCHAR(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '';



USE `up`;

INSERT INTO `phonebook` (`ID`, `name`, `surname`, `spec`, `phone`, `comments`, `date`) VALUES ('1', 'Max', 'S', 'student', '+380961234567', 'front', '2022-11-26');


SELECT * FROM `phonebook`;

SELECT * FROM `phonebook` WHERE `name`= 'Max';
#SELECT * FROM `phonebook` WHERE `name`= 'Max';
-- SELECT * FROM `phonebook` WHERE `name`= 'Max';
/* SELECT * FROM `phonebook` WHERE `name`= 'Max'; */





SELECT DISTINCT `post_title` FROM `wp_posts`;
SELECT DISTINCT `post_title` FROM `wp_posts` LIMIT 5;
SELECT DISTINCT `post_title` FROM `wp_posts` LIMIT 5 OFFSET 5;
SELECT DISTINCT `post_title` FROM `wp_posts` LIMIT 5,5;
SELECT MAX(`ID`)  FROM `wp_posts`;
SELECT MAX(`ID`) AS `MAXID` FROM `wp_posts`;
SELECT COUNT(`post_title`) FROM `wp_posts`;
SELECT SUM(`ID`) FROM `wp_posts`
SELECT AVG(`ID`) FROM `wp_posts`;
SELECT `post_title`,`post_modified` FROM `wp_posts` ORDER BY `post_modified`;
SELECT `post_title`,`post_modified` FROM `wp_posts` ORDER BY `wp_posts`.`post_modified` DESC
SELECT `post_title` FROM `wp_posts` WHERE `post_type` = 'post';
SELECT `post_title`,`post_type` FROM `wp_posts` WHERE `post_type` <> 'post';
SELECT `post_title`,`post_type` FROM `wp_posts` WHERE `post_type` != 'post';
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE `post_parent`>150;
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE `post_parent` BETWEEN 500 AND 1000;
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE `post_type`<>'revision' AND `post_type`<>'product_variation';
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE `post_type`='revision' OR `post_type`='product_variation';
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE NOT `post_type`='revision' OR NOT `post_type`='product_variation';
SELECT `ID`,`post_title`,`post_type` FROM `wp_posts` WHERE NOT `post_type`='revision' AND NOT `post_type`='product_variation';
SELECT `ID`,`post_title`,`post_type`,`post_parent` FROM `wp_posts` WHERE NOT `post_type`='product_variation' AND ( `post_parent` BETWEEN 100 AND 3000 );
SELECT `ID`,`post_title` FROM `wp_posts` WHERE `post_title` LIKE '%а%';
SELECT `ID`,`post_title` FROM `wp_posts` WHERE `post_title` LIKE 'а%';
SELECT `ID`,`post_title` FROM `wp_posts` WHERE `post_title` LIKE '%а';
SELECT `ID`,`post_title` FROM `wp_posts` WHERE `post_title` LIKE 'г%а';
SELECT `ID`,`post_title` FROM `wp_posts` WHERE `post_title` LIKE 'г__%';
SELECT * FROM `wp_posts` WHERE `post_type` IN ( 'product_variation', 'attachment');




USE `up`;
INSERT INTO `phonebook` VALUES (2, 'MAX', 'K', 'students', '+380974561241', 'comments', '2022-11-11');

ALTER TABLE `phonebook` ADD New colum VARCHAR(15);

ALTER TABLE `phonebook` MODIFY COLUMN spec TEXT



-- команди MySQL моє

SELECT * FROM `up`
SELECT `ID`, `name`, `phone` FROM `up`;
SELECT DISTINCT spec FROM `up`;

SELECT * FROM `up` WHERE ID = 1;
SELECT * FROM `up` WHERE surname = 'K';

SELECT * FROM `up` WHERE surname = 'H' AND spec = 'studen';
SELECT * FROM `up` WHERE `name` = 'Taras' OR `name` = 'Olga';
SELECT * FROM `up` WHERE NOT surname = 'K';
SELECT * FROM `up` WHERE NOT surname = 'K' AND NOT surname = 'H';

SELECT * FROM `up` ORDER BY name;
SELECT * FROM `up` ORDER BY surname DESC;
SELECT * FROM `up` ORDER BY surname, name;

INSERT INTO `up`(`ID`, `name`, `surname`, `phone`, `spec`, `comment`, `date`, `time`) VALUES ('6','Vlad','J','+380507775511','studen','fffrrr','2022-12-10','20:46:02');
INSERT INTO `up`(`ID`, `name`, `surname`, `phone`, `spec`, `date`, `time`) VALUES ('7','Pavlo','D','+380684442288','teacher','2022-12-10', '20:53:25');

SELECT `name`, `surname`, `comment` FROM `up` WHERE comment IS NULL;
SELECT `name`, `comment` FROM `up` WHERE comment IS NOT NULL;

UPDATE `up` SET `comment`='wwwsss' WHERE ID = 2;
UPDATE `up` SET `comment`='nnnbbb' WHERE surname = 'K';

DELETE FROM `up` WHERE name = 'Valdemar';

SELECT * FROM `up` LIMIT 3;
SELECT * FROM `up` WHERE spec = 'studen' LIMIT 4;

SELECT MIN(price) FROM `up1`;
SELECT MAX(price) FROM `up1`;

SELECT COUNT(ID) FROM `up1`;
SELECT AVG(price) FROM `up1`;
SELECT SUM(price) FROM `up1`;

SELECT * FROM `up` WHERE name LIKE 'A%';
SELECT * FROM `up` WHERE name LIKE '_a%';
SELECT * FROM `up` WHERE name NOT LIKE '_l%';

SELECT * FROM `up` WHERE spec IN ('studen', 'teacher');
SELECT * FROM `up` WHERE comment NOT IN ('nnnbbb', 'NULL');

SELECT * FROM `up1` WHERE price BETWEEN 3 AND 7;
SELECT * FROM `up1` WHERE price NOT BETWEEN 3 AND 7;
SELECT * FROM `up1` WHERE unit BETWEEN 'kg' AND 'watt' ORDER BY unit;
SELECT * FROM `up` WHERE date BETWEEN '2022-11-28' AND '2022-11-29';



-- новий урок

-- рядкові функції

-- LENGTH: возвращает количество символов в строке. В качестве параметра в функцию передается строка, для которой надо найти длину:
-- SELECT LENGTH('MySQL')
SELECT cname, LENGTH(cname) FROM `customers`;
+--------+---------------+
| cname  | LENGTH(cname) |
+--------+---------------+
| Andrey |             6 |
| Max    |             3 |
| Nazar  |             5 |
| Olga   |             4 |
| Taras  |             5 |
| Nik    |             3 |
+--------+---------------+

-- CHAR_LENGTH: возвращает количество символов в строке. В качестве параметра в функцию передается строка, для которой надо найти длину:
-- SELECT CHAR_LENGTH('MySQL')
 SELECT cname, CHAR_LENGTH(cname) FROM `customers`;
+--------+--------------------+
| cname  | CHAR_LENGTH(cname) |
+--------+--------------------+
| Andrey |                  6 |
| Max    |                  3 |
| Nazar  |                  5 |
| Olga   |                  4 |
| Taras  |                  5 |
| Nik    |                  3 |
+--------+--------------------+

-- LTRIM: удаляет начальные пробелы из строки. В качестве параметра принимает строку:
-- SELECT LTRIM('  MySQL')
SELECT LTRIM('  MySQL');
+------------------+
| LTRIM('  MySQL') |
+------------------+
| MySQL            |
+------------------+

-- RTRIM: удаляет конечные пробелы из строки. В качестве параметра принимает строку:
-- SELECT RTRIM('MySQL    ')
SELECT RTRIM('MySQL      ');
+----------------------+
| RTRIM('MySQL      ') |
+----------------------+
| MySQL                |
+----------------------+

-- SUBSTRING_INDEX: возвращает индекс, по которому находится первое вхождение подстроки в строке. В качестве первого параметра передается подстрока, а в качестве второго - строка, в которой надо вести поиск:
-- SELECT SUBSTRING_INDEX("www.w3schools.com", ".", 1); (результат : www)
SELECT SUBSTRING_INDEX('MySQL-PHP', '-', 1);
+--------------------------------------+
| SUBSTRING_INDEX('MySQL-PHP', '-', 1) |
+--------------------------------------+
| MySQL                                |
+--------------------------------------+

-- Функція CONCAT() додає два або більше виразів разом.
-- SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString;
SELECT CONCAT(cnum,' ', cname, ' ', city) FROM `customers`;
+------------------------------------+
| CONCAT(cnum,' ', cname, ' ', city) |
+------------------------------------+
| 2001 Andrey London                 |
| 2002 Max UK                        |
| 2003 Nazar San Jose                |
| 2004 Olga Paris                    |
| 2005 Taras Poland                  |
| 2006 Nik Ukraine                   |
+------------------------------------+

-- Функція CONCAT_WS() додає два або більше виразів разом із роздільником.
-- SELECT CONCAT_WS("-", "SQL", "Tutorial", "is", "fun!") AS ConcatenatedString;
SELECT CONCAT_WS('   ', cnum, cname, city) FROM `customers`;
+-------------------------------------+
| CONCAT_WS('   ', cnum, cname, city) |
+-------------------------------------+
| 2001   Andrey   London              |
| 2002   Max   UK                     |
| 2003   Nazar   San Jose             |
| 2004   Olga   Paris                 |
| 2005   Taras   Poland               |
| 2006   Nik   Ukraine                |
+-------------------------------------+

-- Функція LEFT() витягує певну кількість символів із рядка (починаючи зліва).
-- SELECT LEFT("SQL Tutorial", 3) AS ExtractString;
SELECT LEFT(text, 2) FROM `customers`;
+---------------+
| LEFT(text, 2) |
+---------------+
| ph            |
| my            |
| He            |
| Wo            |
| Te            |
| PH            |
+---------------+

-- Функція RIGHT() витягує певну кількість символів із рядка (починаючи справа).
-- SELECT RIGHT("SQL Tutorial is cool", 4) AS ExtractString;
SELECT RIGHT(city, 2) FROM `customers`;
+----------------+
| RIGHT(city, 2) |
+----------------+
| on             |
| UK             |
| se             |
| is             |
| nd             |
| ne             |
+----------------+

-- Функція LOCATE() повертає позицію першого входження підрядка в рядок.
-- Якщо підрядок не знайдено в оригінальному рядку, ця функція повертає 0.
-- Ця функція виконує пошук без урахування регістру.
-- SELECT LOCATE("3", "W3Schools.com") AS MatchPosition;
SELECT LOCATE('S', 'MySQL');
+----------------------+
| LOCATE('S', 'MySQL') |
+----------------------+
|                    3 |
+----------------------+
SELECT LOCATE('Poland', city) FROM `customers`;
+------------------------+
| LOCATE('Poland', city) |
+------------------------+
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      1 |
|                      0 |
+------------------------+

-- Функція LOWER() перетворює рядок на нижній регістр.
-- SELECT LOWER("SQL Tutorial is FUN!");
SELECT LOWER(text) FROM `customers`;
+-------------+
| LOWER(text) |
+-------------+
| php         |
| mysql       |
| hello       |
| world       |
| test html   |
| php mysql   |
+-------------+

-- Функція UPPER() перетворює рядок у верхній регістр.
-- SELECT UPPER("SQL Tutorial is FUN!");
SELECT UPPER(text) FROM `customers`;
+-------------+
| UPPER(text) |
+-------------+
| PHP         |
| MYSQL       |
| HELLO       |
| WORLD       |
| TEST HTML   |
| PHP MYSQL   |
+-------------+

-- Функція REPEAT() повторює рядок стільки разів, скільки вказано.
-- SELECT REPEAT("SQL Tutorial", 3);
SELECT REPEAT(cname, 3) FROM `customers`;
+--------------------+
| REPEAT(cname, 3)   |
+--------------------+
| AndreyAndreyAndrey |
| MaxMaxMax          |
| NazarNazarNazar    |
| OlgaOlgaOlga       |
| TarasTarasTaras    |
| NikNikNik          |
+--------------------+

-- Функція REPLACE() замінює всі входження підрядка в рядку новим підрядком.
-- Ця функція виконує заміну з урахуванням регістру.
-- SELECT REPLACE("SQL Tutorial", "SQL", "HTML"); (Замініть "SQL" на "HTML")
SELECT REPLACE ('studen and techer', 'and', 'or');
+--------------------------------------------+
| REPLACE ('studen and techer', 'and', 'or') |
+--------------------------------------------+
| studen or techer                           |
+--------------------------------------------+


-- математичні функції

-- Функція ROUND() округлює число до вказаної кількості знаків після коми.
-- SELECT ROUND(135.375, 2);
SELECT ROUND(amt, 1) FROM `orders`;
+---------------+
| ROUND(amt, 1) |
+---------------+
|          18.7 |
|         767.3 |
|         785.1 |
|         147.2 |
|         159.2 |
|          65.1 |
+---------------+

-- Функція ABS() повертає абсолютне (додатне) значення числа.
-- SELECT ABS(-243.5);
SELECT ABS(-222);
+-----------+
| ABS(-222) |
+-----------+
|       222 |
+-----------+


-- Обєднання таблиць по спільному стовпцю(полю)
SELECT * FROM salers, customers WHERE salers.snum = customers.snum;
+------+--------+----------+------+------+--------+----------+--------+------+-----------+
| snum | sname  | city     | comm | cnum | cname  | city     | rating | snum | text      |
+------+--------+----------+------+------+--------+----------+--------+------+-----------+
| 1001 | Pol    | London   | 0.12 | 2001 | Andrey | London   |    100 | 1001 | php       |
| 1003 | Mikle  | UK       | 0.13 | 2002 | Max    | UK       |    200 | 1003 | mysql     |
| 1002 | Monika | San Jose | 0.15 | 2003 | Nazar  | San Jose |    300 | 1002 | Hello     |
| 1004 | Skif   | Paris    | 0.17 | 2004 | Olga   | Paris    |    500 | 1004 | World     |
| 1010 | Staf   | New York | 0.00 | 2005 | Taras  | Poland   |    800 | 1010 | Test Html |
| 1002 | Monika | San Jose | 0.15 | 2006 | Nik    | Ukraine  |    300 | 1002 | PHP MYSQL |
+------+--------+----------+------+------+--------+----------+--------+------+-----------+

-- Обєднання таблиць по спільному стовпцю(полю) + сортування
SELECT * FROM salers, customers WHERE salers.snum = customers.snum ORDER BY salers.sname;
+------+--------+----------+------+------+--------+----------+--------+------+-----------+
| snum | sname  | city     | comm | cnum | cname  | city     | rating | snum | text      |
+------+--------+----------+------+------+--------+----------+--------+------+-----------+
| 1003 | Mikle  | UK       | 0.13 | 2002 | Max    | UK       |    200 | 1003 | mysql     |
| 1002 | Monika | San Jose | 0.15 | 2003 | Nazar  | San Jose |    300 | 1002 | Hello     |
| 1002 | Monika | San Jose | 0.15 | 2006 | Nik    | Ukraine  |    300 | 1002 | PHP MYSQL |
| 1001 | Pol    | London   | 0.12 | 2001 | Andrey | London   |    100 | 1001 | php       |
| 1004 | Skif   | Paris    | 0.17 | 2004 | Olga   | Paris    |    500 | 1004 | World     |
| 1010 | Staf   | New York | 0.00 | 2005 | Taras  | Poland   |    800 | 1010 | Test Html |
+------+--------+----------+------+------+--------+----------+--------+------+-----------+


-- Функція порівняння рядків
-- SELECT 'a' REGEXP 'a'; (1)



-- новий урок

-- функції дати та часу
--1 NOW(), SYSDATE(), CURRENT_TIMESTAMP() возвращают текущую локальную дату и время на основе системных часов в виде объекта datetime. Все три функции возвращают одинаковый результат
+---------------------+
| NOW()               |
+---------------------+
| 2023-01-02 17:15:21 |
+---------------------+

+---------------------+
| SYSDATE()           |
+---------------------+
| 2023-01-02 17:17:51 |
+---------------------+

+---------------------+
| CURRENT_TIMESTAMP() |
+---------------------+
| 2023-01-02 17:18:37 |
+---------------------+

+----------------+
| NOW() + 0      |
+----------------+
| 20230102171909 |
+----------------+

+----------------+
| SYSDATE() + 0  |
+----------------+
| 20230102171937 |
+----------------+

+-------------------------+
| CURRENT_TIMESTAMP() + 0 |
+-------------------------+
|          20230102172001 |
+-------------------------+

+---------------------+----------+---------------------+
| NOW()               | SLEEP(5) | NOW()               |
+---------------------+----------+---------------------+
| 2023-01-02 17:21:28 |        0 | 2023-01-02 17:21:28 |
+---------------------+----------+---------------------+

+---------------------+----------+---------------------+
| SYSDATE()           | SLEEP(5) | SYSDATE()           |
+---------------------+----------+---------------------+
| 2023-01-02 17:22:17 |        0 | 2023-01-02 17:22:22 |
+---------------------+----------+---------------------+

--2 CURDATE и CURRENT_DATE возвращают текущую локальную дату в виде объекта date
+------------+
| CURDATE()  |
+------------+
| 2023-01-02 |
+------------+

+---------------+
| CURDATE() + 0 |
+---------------+
|      20230102 |
+---------------+

--3 CURTIME и CURRENT_TIME возвращают текущее время в виде объекта time
+-----------+
| CURTIME() |
+-----------+
| 17:26:55  |
+-----------+

+---------------+
| CURTIME() + 0 |
+---------------+
|        172701 |
+---------------+

--4 DAYOFWEEK(date) возвращает день недели в виде числового значения
+------------+------------------+
| odate      | DAYOFWEEK(odate) |
+------------+------------------+
| 2022-12-12 |                2 |
| 2022-05-05 |                5 |
| 2022-08-08 |                2 |
| 2021-06-06 |                1 |
| 2020-04-04 |                7 |
| 2019-07-07 |                1 |
+------------+------------------+

--5 WEEKDAY(date) возвращает номер недели года. Необязательный параметр позволяет задать стартовый день недели. Если этот параметр равен 1, то первым днем считается понедельник, иначе воскресенье
+------------+----------------+
| odate      | WEEKDAY(odate) |
+------------+----------------+
| 2022-12-12 |              0 |
| 2022-05-05 |              3 |
| 2022-08-08 |              0 |
| 2021-06-06 |              6 |
| 2020-04-04 |              5 |
| 2019-07-07 |              6 |
+------------+----------------+

--6 DAYOFWEEK(date) возвращает день недели в виде числового значения
+------------+------------------+
| odate      | DAYOFWEEK(odate) |
+------------+------------------+
| 2022-12-12 |                2 |
| 2022-05-05 |                5 |
| 2022-08-08 |                2 |
| 2021-06-06 |                1 |
| 2020-04-04 |                7 |
| 2019-07-07 |                1 |
+------------+------------------+

--7 DAYOFYEAR(date) возвращает номер дня в году
+------------+------------------+
| odate      | DAYOFYEAR(odate) |
+------------+------------------+
| 2022-12-12 |              346 |
| 2022-05-05 |              125 |
| 2022-08-08 |              220 |
| 2021-06-06 |              157 |
| 2020-04-04 |               95 |
| 2019-07-07 |              188 |
+------------+------------------+

--8 MONTH(date) возвращает месяц даты
+------------+-------------------+
| odate      | DAYOFMONTH(odate) |
+------------+-------------------+
| 2022-12-12 |                12 |
| 2022-05-05 |                 5 |
| 2022-08-08 |                 8 |
| 2021-06-06 |                 6 |
| 2020-04-04 |                 4 |
| 2019-07-07 |                 7 |
+------------+-------------------+

--9 DAYNAME(date) возвращает название дня недели
+------------+----------------+
| odate      | DAYNAME(odate) |
+------------+----------------+
| 2022-12-12 | Monday         |
| 2022-05-05 | Thursday       |
| 2022-08-08 | Monday         |
| 2021-06-06 | Sunday         |
| 2020-04-04 | Saturday       |
| 2019-07-07 | Sunday         |
+------------+----------------+

--SET lc_time_names = 'uk_UA';(переключення мови)
+------------+----------------+
| odate      | DAYNAME(odate) |
+------------+----------------+
| 2022-12-12 | Понед?лок      |
| 2022-05-05 | Четвер         |
| 2022-08-08 | Понед?лок      |
| 2021-06-06 | Нед?ля         |
| 2020-04-04 | Субота         |
| 2019-07-07 | Нед?ля         |
+------------+----------------+

--10 MONTHNAME(date) возвращает название текущего месяца
+------------+------------------+
| odate      | MONTHNAME(odate) |
+------------+------------------+
| 2022-12-12 | December         |
| 2022-05-05 | May              |
| 2022-08-08 | August           |
| 2021-06-06 | June             |
| 2020-04-04 | April            |
| 2019-07-07 | July             |
+------------+------------------+

+------------+------------------+
| odate      | MONTHNAME(odate) |
+------------+------------------+
| 2022-12-12 | Грудень          |
| 2022-05-05 | Травень          |
| 2022-08-08 | Серпень          |
| 2021-06-06 | Червень          |
| 2020-04-04 | Кв?тень          |
| 2019-07-07 | Липень           |
+------------+------------------+

-- вкладенна функція
--SELECT DAYOFYEAR(NOW());
+------------------+
| DAYOFYEAR(NOW()) |
+------------------+
|                2 |
+------------------+

--11 QUARTER(date) возвращает номер квартала года
+------------+----------------+
| odate      | QUARTER(odate) |
+------------+----------------+
| 2022-12-12 |              4 |
| 2022-05-05 |              2 |
| 2022-08-08 |              3 |
| 2021-06-06 |              2 |
| 2020-04-04 |              2 |
| 2019-07-07 |              3 |
+------------+----------------+

--12 YEAR(date) возвращает год из даты
+------------+-------------+
| odate      | YEAR(odate) |
+------------+-------------+
| 2022-12-12 |        2022 |
| 2022-05-05 |        2022 |
| 2022-08-08 |        2022 |
| 2021-06-06 |        2021 |
| 2020-04-04 |        2020 |
| 2019-07-07 |        2019 |
+------------+-------------+

--13 HOUR(time) возвращает час времени
+---------------------+-------------+
| NOW()               | HOUR(NOW()) |
+---------------------+-------------+
| 2023-01-02 18:11:05 |          18 |
+---------------------+-------------+

--14 MINUTE(time) возвращает минуту времени
+---------------------+---------------+
| NOW()               | MINUTE(NOW()) |
+---------------------+---------------+
| 2023-01-02 18:11:42 |            11 |
+---------------------+---------------+

--15 SECOND(time) возвращает секунду времени
+---------------------+---------------+
| NOW()               | SECOND(NOW()) |
+---------------------+---------------+
| 2023-01-02 18:12:12 |            12 |
+---------------------+---------------+

 --SELECT DAY(NOW()), MONTHNAME(NOW());
+------------+------------------+
| DAY(NOW()) | MONTHNAME(NOW()) |
+------------+------------------+
|          2 | January          |
+------------+------------------+

-- SELECT CONCAT_WS(' ', DAY(NOW()), MONTHNAME(NOW())) as date;
+-----------+
| date      |
+-----------+
| 2 January |
+-----------+

--16 PERIOD_ADD(P,N)
--SELECT odate, DATE_FORMAT(odate, '%Y%m'), PERIOD_ADD(DATE_FORMAT(odate, '%Y%m'),3) FROM orders;
+------------+----------------------------+------------------------------------------+
| odate      | DATE_FORMAT(odate, '%Y%m') | PERIOD_ADD(DATE_FORMAT(odate, '%Y%m'),3) |
+------------+----------------------------+------------------------------------------+
| 2022-12-12 | 202212                     |                                   202303 |
| 2022-05-05 | 202205                     |                                   202208 |
| 2022-08-08 | 202208                     |                                   202211 |
| 2021-06-06 | 202106                     |                                   202109 |
| 2020-04-04 | 202004                     |                                   202007 |
| 2019-07-07 | 201907                     |                                   201910 |
+------------+----------------------------+------------------------------------------+

--SELECT PERIOD_ADD(202301,6);
+----------------------+
| PERIOD_ADD(202301,6) |
+----------------------+
|               202307 |
+----------------------+

--17 PERIOD_DIFF(P1,P2)
--SELECT PERIOD_DIFF(202301, 202202);
+-----------------------------+
| PERIOD_DIFF(202301, 202202) |
+-----------------------------+
|                          11 |
+-----------------------------+

--18 DATE_ADD(date, INTERVAL expression unit) возвращает объект DATE или DATETIME, который является результатом сложения даты date с определенным временным интервалом. Интервал задается с помощью выражения INTERVAL expression unit, где INTERVAL предоставляет ключевое слово, expression - количество добавляемых к дате единиц, а unit - тип единиц (часы, дни и т.д.) Параметр unit может иметь те же значения, что и в функции EXTRACT, то есть DAY, HOUR и т.д
      --DATE_SUB(date, INTERVAL expression unit) возвращает объект DATE или DATETIME, который является результатом вычитания из даты date определенного временного интервала
--SELECT NOW(), ADDDATE(NOW(), INTERVAL 1 SECOND);
+---------------------+-----------------------------------+
| NOW()               | ADDDATE(NOW(), INTERVAL 1 SECOND) |
+---------------------+-----------------------------------+
| 2023-01-02 19:10:43 | 2023-01-02 19:10:44               |
+---------------------+-----------------------------------+

--SELECT NOW(), ADDDATE(NOW(), INTERVAL 1 MINUTE);
+---------------------+-----------------------------------+
| NOW()               | ADDDATE(NOW(), INTERVAL 1 MINUTE) |
+---------------------+-----------------------------------+
| 2023-01-02 19:12:01 | 2023-01-02 19:13:01               |
+---------------------+-----------------------------------+

--SELECT NOW(), ADDDATE(NOW(), INTERVAL '2:5' DAY_HOUR);
+---------------------+-----------------------------------------+
| NOW()               | ADDDATE(NOW(), INTERVAL '2:5' DAY_HOUR) |
+---------------------+-----------------------------------------+
| 2023-01-02 19:15:18 | 2023-01-05 00:15:18                     |
+---------------------+-----------------------------------------+

--SELECT NOW(), DATE_SUB(NOW(), INTERVAL '2:5' DAY_HOUR);
+---------------------+------------------------------------------+
| NOW()               | DATE_SUB(NOW(), INTERVAL '2:5' DAY_HOUR) |
+---------------------+------------------------------------------+
| 2023-01-02 19:18:55 | 2022-12-31 14:18:55                      |
+---------------------+------------------------------------------+

--SELECT NOW(), NOW() - INTERVAL 1 HOUR;
+---------------------+-------------------------+
| NOW()               | NOW() - INTERVAL 1 HOUR |
+---------------------+-------------------------+
| 2023-01-02 19:21:11 | 2023-01-02 18:21:11     |
+---------------------+-------------------------+

--SELECT NOW(), NOW() + INTERVAL 1 DAY;
+---------------------+------------------------+
| NOW()               | NOW() + INTERVAL 1 DAY |
+---------------------+------------------------+
| 2023-01-02 19:22:02 | 2023-01-03 19:22:02    |
+---------------------+------------------------+

--SELECT NOW(), ADDDATE(NOW(), 10);
+---------------------+---------------------+
| NOW()               | ADDDATE(NOW(), 10)  |
+---------------------+---------------------+
| 2023-01-02 19:24:16 | 2023-01-12 19:24:16 |
+---------------------+---------------------+

--19 EXTRACT извлекает из даты и времени какой-то определенный компонент.   EXTRACT(type FROM date)
--SELECT NOW(), EXTRACT(MINUTE FROM NOW());
+---------------------+----------------------------+
| NOW()               | EXTRACT(MINUTE FROM NOW()) |
+---------------------+----------------------------+
| 2023-01-02 19:27:15 |                         27 |
+---------------------+----------------------------+

--20 DATE_FORMAT(date, format) возвращает объект DATE или DATETIME, отформатированный с помощью шаблона format
-- SELECT NOW(), DATE_FORMAT(NOW(), '%e %M %Y');
+---------------------+--------------------------------+
| NOW()               | DATE_FORMAT(NOW(), '%e %M %Y') |
+---------------------+--------------------------------+
| 2023-01-02 18:31:14 | 2 January 2023                 |
+---------------------+--------------------------------+

--SELECT odate, DATE_FORMAT(odate, '%e %M %Y') AS DATE FROM orders;
+------------+------------------+
| odate      | DATE             |
+------------+------------------+
| 2022-12-12 | 12 December 2022 |
| 2022-05-05 | 5 May 2022       |
| 2022-08-08 | 8 August 2022    |
| 2021-06-06 | 6 June 2021      |
| 2020-04-04 | 4 April 2020     |
| 2019-07-07 | 7 July 2019      |
+------------+------------------+

--21 TIME_FORMAT(time, format) возвращает объект TIME или DATETIME, отформатированный с помощью шаблона format
--SELECT NOW(), TIME_FORMAT(NOW(), '%H:%i');
+---------------------+-----------------------------+
| NOW()               | TIME_FORMAT(NOW(), '%H:%i') |
+---------------------+-----------------------------+
| 2023-01-02 18:38:26 | 18:38                       |
+---------------------+-----------------------------+

--22 SEC_TO_TIME(seconds)
--SELECT SEC_TO_TIME(60);
+-----------------+
| SEC_TO_TIME(60) |
+-----------------+
| 00:01:00        |
+-----------------+

--23 TIME_TO_SEC(time) возвращает количество секунд, прошедших с момента полуночи
--SELECT TIME_TO_SEC('01:00:00');
+-------------------------+
| TIME_TO_SEC('01:00:00') |
+-------------------------+
|                    3600 |
+-------------------------+

--24 DATE(expr)
--SELECT NOW(), DATE(NOW());
+---------------------+-------------+
| NOW()               | DATE(NOW()) |
+---------------------+-------------+
| 2023-01-02 18:47:42 | 2023-01-02  |
+---------------------+-------------+

--25 TIME (expr)
--SELECT NOW(), TIME(NOW());
+---------------------+-------------+
| NOW()               | TIME(NOW()) |
+---------------------+-------------+
| 2023-01-02 18:48:25 | 18:48:25    |
+---------------------+-------------+

