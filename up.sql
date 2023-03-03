-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 03 2022 р., 18:39
-- Версія сервера: 8.0.24
-- Версія PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `up`
--

-- --------------------------------------------------------

--
-- Структура таблиці `up`
--

CREATE TABLE `up` (
  `ID` int NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `spec` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `up`
--

INSERT INTO `up` (`ID`, `name`, `surname`, `phone`, `spec`, `comment`, `date`, `time`) VALUES
(1, 'Max', 'K', '+380981472583', 'studen', 'dddsss', '2022-11-28', '23:57:32'),
(2, 'Andr', 'H', '+380963216549', 'studen', 'aaasss', '2022-11-29', '00:00:22'),
(3, 'Olga', 'D', '+380509876543', 'studen', 'tttggg', '2022-11-29', '00:03:07'),
(4, 'Taras', 'H', '+380632589631', 'studen', 'rrrddd', '2022-11-29', '00:04:22'),
(5, 'Nazar', 'K', '+380667894561', 'studen', 'bbbhhh', '2022-11-28', '23:55:32');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `up`
--
ALTER TABLE `up`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `up`
--
ALTER TABLE `up`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `customers` (
  `cnum` smallint(5) unsigned NOT NULL,
  `cname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `rating` smallint(5) unsigned NOT NULL,
  `snum` smallint(5) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`cnum`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `customers` (`cnum`, `cname`, `city`, `rating`, `snum`, `text`) VALUES
(2001, 'Andrey', 'London', 100, 1001, 'php'),
(2002, 'Max', 'UK', 200, 1003, 'mysql'),
(2003, 'Nazar', 'San Jose', 300, 1002, 'Hello'),
(2004, 'Olga', 'Paris', 500, 1004, 'World'),
(2005, 'Taras', 'Poland', 800, 1010, 'Test Html'),
(2006, 'Nik', 'Ukraine', 300, 1002, 'PHP MYSQL');

CREATE TABLE IF NOT EXISTS `salers` (
  `snum` smallint(5) unsigned NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `comm` decimal(3,2) NOT NULL,
  PRIMARY KEY (`snum`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `salers` (`snum`, `sname`, `city`, `comm`) VALUES
(1001, 'Pol', 'London', 0.12),
(1002, 'Monika', 'San Jose', 0.15),
(1003, 'Mikle', 'UK', 0.13),
(1004, 'Skif', 'Paris', 0.17),
(1010, 'Staf', 'New York', 0.00);

CREATE TABLE IF NOT EXISTS `orders` (
  `onum` smallint(5) unsigned NOT NULL,
  `amt` decimal(6,2) unsigned NOT NULL,
  `odate` date NOT NULL,
  `cnum` smallint(5) unsigned NOT NULL,
  `snum` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`onum`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES
(3001, 18.69, '2022-12-12', 2004, 1004),
(3002, 767.25, '2022-05-05', 2005, 1010),
(3003, 785.13, '2022-08-08', 2006, 1003),
(3004, 147.23, '2021-06-06', 2003, 1002),
(3005, 159.15, '2020-04-04', 2002, 1001),
(3006, 65.12, '2019-07-07', 2001, 1010);

-- домашня робота 1

-- 1
-- Отримайте середнє значення поля amt (таблиця orders), не використовуючи функцію AVG(). Результат має бути отриманий одним запитом. Підказка: Використовуйте вкладений запит.
SELECT SUM(amt) / COUNT(amt) FROM `orders`;

-- 2
-- Отримайте суму всіх продажів продавця з ідентифікатором 1007. Спробуйте скласти 2 запити, які мають однаковий результат.
SELECT SUM(amt) FROM `orders` WHERE snum=1010;
SELECT SUM(amt) FROM `orders` WHERE snum IN(SELECT snum FROM `salers` WHERE sname='Staf');

-- 3
-- Отримайте список міст (без повторів) та максимальний рейтинг для кожного з них з таблиці customers.
SELECT `city`, `rating` FROM `customers` ORDER BY rating DESC;

-- 4
-- Отримайте список міст (без повторів) та мінімальний розмір комісійних для кожного з них із таблиці salers.
SELECT `city`, `comm` FROM `salers` ORDER BY comm;

-- 5
-- Напишіть запит, який вибере всі ряди з таблиці замовлень (orders) за березень-квітень
SELECT * FROM `orders` WHERE odate BETWEEN '2022-04-01' AND '2022-08-31';

-- 6
-- Виберіть всіх клієнтів (таблиця customers) продавців Peel та Motika.
SELECT cname FROM `customers` WHERE snum IN(SELECT snum FROM `salers` WHERE sname = 'Monika' OR sname='Pol');

-- 7
-- Складіть запит, який виведе всіх клієнтів, імена яких знаходяться в діапазоні A-G включно.
SELECT * FROM `customers` WHERE cname BETWEEN 'A%' AND 'O%';

-- 8
-- Виберіть усіх представників, чиї імена починаються з латинської літери "C".
SELECT * FROM `salers` WHERE sname LIKE 'S%';

-- 9
-- Виберіть усіх представників, чиї імена починаються на латинську літеру "D" і при цьому закінчуються на латинську літеру "n". Вибірку проведіть двома різними способами (2 різних запити, що дають однаковий результат).
SELECT * FROM `salers` WHERE sname LIKE 'M%a';
SELECT * FROM `salers` WHERE sname LIKE 'M__%a';

-- 10
-- Виберіть усіх представників, чиї імена закінчуються на латинську літеру "n", але не починаються на латинську літеру "D".
SELECT * FROM `salers` WHERE sname LIKE '%f' AND sname NOT LIKE 'D%';

-- 11
-- Виберіть всі ряди з значеннями NULL з таблиці продавців.
SELECT * FROM `salers` WHERE comm IS NOT NULL;



-- домашня робота 2

-- 1
-- Виберіть усі замовлення за 1990-03-10 з таблиці orders, впорядкувавши їх за сумою в порядку зростання
SELECT * FROM `orders` WHERE odate='2019-07-07' ORDER BY amt;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3006 | 65.12 | 2019-07-07 | 2001 | 1010 |
+------+-------+------------+------+------+

-- 2
-- Виберіть 2 останні замовлення з таблиці orders
SELECT * FROM `orders` ORDER BY onum DESC LIMIT 2;
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3006 |  65.12 | 2019-07-07 | 2001 | 1010 |
| 3005 | 159.15 | 2020-04-04 | 2002 | 1001 |
+------+--------+------------+------+------+

-- 3
-- Отримайте імена клієнтів, рейтинг яких більше 200, місто їхнього проживання, а також імена продавців, до яких належать зазначені клієнти. Використовуйте псевдоніми таблиць
SELECT customers.cname as CustomerName, customers.city as CustomerCity, salers.sname as SalerName FROM customers, salers WHERE customers.snum = salers.snum AND customers.rating > 200;
+--------------+--------------+-----------+
| CustomerName | CustomerCity | SalerName |
+--------------+--------------+-----------+
| Nazar        | San Jose     | Monika    |
| Olga         | Paris        | Skif      |
| Taras        | Poland       | Staf      |
| Nik          | Ukraine      | Monika    |
+--------------+--------------+-----------+

-- 4 ???????
-- Виберіть імена продавців (таблиця salers), суму кожного продажу продавців (таблиця orders) та підраховану суму комісійних з кожного конкретного продажу. Висновок супроводжуйте поясненнями, щоб кожен ряд таблиці мав такий вигляд: Продавець: | Rifkin | Сума продажу: | 18.69 | Розмір комісійних: | 2.8035
SELECT salers.sname as SalerName, orders.amt as Amt, salers.comm as Comm FROM salers, orders WHERE salers.snum = orders.snum;
+-----------+--------+------+
| SalerName | Amt    | Comm |
+-----------+--------+------+
| Skif      |  18.69 | 0.17 |
| Staf      | 767.25 | 0.00 |
| Mikle     | 785.13 | 0.13 |
| Monika    | 147.23 | 0.15 |
| Pol       | 159.15 | 0.12 |
| Staf      |  65.12 | 0.00 |
+-----------+--------+------+
SELECT salers.sname as SalerName, orders.amt as Amt, orders.amt * salers.comm as SumComm FROM salers, orders WHERE salers.snum = orders.snum;
+-----------+--------+----------+
| SalerName | Amt    | SumComm  |
+-----------+--------+----------+
| Skif      |  18.69 |   3.1773 |
| Staf      | 767.25 |   0.0000 |
| Mikle     | 785.13 | 102.0669 |
| Monika    | 147.23 |  22.0845 |
| Pol       | 159.15 |  19.0980 |
| Staf      |  65.12 |   0.0000 |
+-----------+--------+----------+

-- 1
-- З таблиці salers оберіть продавців, імена яких складаються з 6 і більше символів
SELECT sname, CHAR_LENGTH(sname) FROM `salers` WHERE CHAR_LENGTH(sname)>=6;
+--------+--------------------+
| sname  | CHAR_LENGTH(sname) |
+--------+--------------------+
| Monika |                  6 |
+--------+--------------------+

-- 2
-- Виберіть усі поля з таблиці orders, при цьому результуюча таблиця повинна задовольняти двом умовам - поля повинні мати ті ж імена, що і таблиця orders, значення поля odate повинні мати формат ГГГГ/ММ/ДД
SELECT onum, amt, REPLACE(odate, '-', '/') as odate, cnum, snum FROM `orders`;
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3001 |  18.69 | 2022/12/12 | 2004 | 1004 |
| 3002 | 767.25 | 2022/05/05 | 2005 | 1010 |
| 3003 | 785.13 | 2022/08/08 | 2006 | 1003 |
| 3004 | 147.23 | 2021/06/06 | 2003 | 1002 |
| 3005 | 159.15 | 2020/04/04 | 2002 | 1001 |
| 3006 |  65.12 | 2019/07/07 | 2001 | 1010 |
+------+--------+------------+------+------+

-- 3
-- Отримайте лише цілі частини (без дробової частини) сум з таблиці orders
SELECT FLOOR(amt) FROM `orders`;
+------------+
| FLOOR(amt) |
+------------+
|         18 |
|        767 |
|        785 |
|        147 |
|        159 |
|         65 |
+------------+

-- 4 ??????
-- Отримайте місяць та число з таблиці orders (дозволяється використовувати лише функцію SUBSTRING_INDEX), при цьому в результуючій таблиці формат виводу повинен мати вигляд ММ/ДД
SELECT SUBSTRING_INDEX(odate, '-', -2) as odate FROM `orders`;
+-------+
| odate |
+-------+
| 12-12 |
| 05-05 |
| 08-08 |
| 06-06 |
| 04-04 |
| 07-07 |
+-------+

-- 5
-- Отримайте з таблиці salers дані про всіх продавців, імена яких записані кирилицею (підказка - працездатність цього способу залежить від кодування)


-- 1 ?????????
-- З таблиці orders виберіть усі суми до 1000. Використовуйте функцію REGEXP. Намагайтеся отримати результат, використовуючи 2 різних шаблони.
SELECT * FROM `orders` WHERE amt <= 1000;
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3001 |  18.69 | 2022-12-12 | 2004 | 1004 |
| 3002 | 767.25 | 2022-05-05 | 2005 | 1010 |
| 3003 | 785.13 | 2022-08-08 | 2006 | 1003 |
| 3004 | 147.23 | 2021-06-06 | 2003 | 1002 |
| 3005 | 159.15 | 2020-04-04 | 2002 | 1001 |
| 3006 |  65.12 | 2019-07-07 | 2001 | 1010 |
+------+--------+------------+------+------+
SELECT * FROM `orders` WHERE amt REGEXP "[0-999]";
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3001 |  18.69 | 2022-12-12 | 2004 | 1004 |
| 3002 | 767.25 | 2022-05-05 | 2005 | 1010 |
| 3003 | 785.13 | 2022-08-08 | 2006 | 1003 |
| 3004 | 147.23 | 2021-06-06 | 2003 | 1002 |
| 3005 | 159.15 | 2020-04-04 | 2002 | 1001 |
| 3006 |  65.12 | 2019-07-07 | 2001 | 1010 |
+------+--------+------------+------+------+

-- 2
-- З таблиці salers виберіть усі міста, що складаються з двох слів.
SELECT city FROM `salers` WHERE LOCATE(' ', city);
+----------+
| city     |
+----------+
| San Jose |
| New York |
+----------+

-- 3
-- З таблиці salers отримайте всі ряди, де імена продавців та назви міст не перевищують 6 символів
SELECT sname, city, CHAR_LENGTH(sname), CHAR_LENGTH(city) FROM `salers` WHERE CHAR_LENGTH(sname)<6 AND CHAR_LENGTH(city)<6;
+-------+-------+--------------------+-------------------+
| sname | city  | CHAR_LENGTH(sname) | CHAR_LENGTH(city) |
+-------+-------+--------------------+-------------------+
| Mikle | UK    |                  5 |                 2 |
| Skif  | Paris |                  4 |                 5 |
+-------+-------+--------------------+-------------------+

-- 4
-- Отримайте з таблиці orders усі суми без дробової частини (з округленням) 
SELECT ROUND(amt, 0) FROM `orders`;
+---------------+
| ROUND(amt, 0) |
+---------------+
|            19 |
|           767 |
|           785 |
|           147 |
|           159 |
|            65 |
+---------------+

-- 5
-- Отримайте з таблиці orders усі суми без дробової частини (без заокруглення)
SELECT TRUNCATE(amt, 0) FROM `orders`;
+------------------+
| TRUNCATE(amt, 0) |
+------------------+
|               18 |
|              767 |
|              785 |
|              147 |
|              159 |
|               65 |
+------------------+



-- домашня робота 3

-- 1 Знайдіть кількість днів між датами першого та останнього продажів таблиці orders. Результат постарайтеся отримати двома різними способами
SELECT TO_DAYS('2022-12-12') - TO_DAYS('2019-07-07') AS DAYS;
+------+
| DAYS |
+------+
| 1254 |
+------+

SELECT DATEDIFF('2022-12-12', '2019-07-07') AS DAYS;
+------+
| DAYS |
+------+
| 1254 |
+------+

--2 З таблиці orders отримаєте результат у 2 колонки: у першій дати повинні перебувати у вихідному вигляді, у другій вони повинні мати вигляд – 10 березня 1990 року. Результат має бути приблизно таким: 1990-03-10 | 10 березня 1990 року
SELECT odate, CONCAT_WS(' ', DAY(odate), MONTHNAME(odate), YEAR(odate)) AS DATE FROM orders;
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

+------------+-----------------+
| odate      | DATE            |
+------------+-----------------+
| 2022-12-12 | 12 Грудень 2022 |
| 2022-05-05 | 5 Травень 2022  |
| 2022-08-08 | 8 Серпень 2022  |
| 2021-06-06 | 6 Червень 2021  |
| 2020-04-04 | 4 Кв?тень 2020  |
| 2019-07-07 | 7 Липень 2019   |
+------------+-----------------+

SELECT odate, DATE_FORMAT(odate, '%e %M %Y') AS DATE FROM orders;

-- 3 Підрахуйте, скільки днів пройшло з початку Нового року і до поточного моменту. Результат отримаєте двома способами
SELECT DAYOFYEAR(NOW()) - DAY('20230101');
+------------------------------------+
| DAYOFYEAR(NOW()) - DAY('20230101') |
+------------------------------------+
|                                  1 |
+------------------------------------+

SELECT DAY('20230102') - DAY('20230101');
+-----------------------------------+
| DAY('20230102') - DAY('20230101') |
+-----------------------------------+
|                                 1 |
+-----------------------------------+


-- новий урок
-- новий урок

SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating;
+--------+--------+--------+
| cname  | cname  | rating |
+--------+--------+--------+
| Andrey | Andrey |    100 |
| Max    | Max    |    200 |
| Nik    | Nazar  |    300 |
| Nazar  | Nazar  |    300 |
| Olga   | Olga   |    500 |
| Taras  | Taras  |    800 |
| Nik    | Nik    |    300 |
| Nazar  | Nik    |    300 |
+--------+--------+--------+

SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating AND f.cname > s.cname;
+-------+-------+--------+
| cname | cname | rating |
+-------+-------+--------+
| Nik   | Nazar |    300 |
+-------+-------+--------+

SELECT f.sname, s.sname, s.city FROM salers f, salers s WHERE f.city = s.city;
+--------+--------+----------+
| sname  | sname  | city     |
+--------+--------+----------+
| Pol    | Pol    | London   |
| Monika | Monika | San Jose |
| Mikle  | Mikle  | UK       |
| Skif   | Skif   | Paris    |
| Staf   | Staf   | New York |
+--------+--------+----------+

SELECT cname FROM customers WHERE snum = (SELECT snum FROM salers WHERE sname = 'Mikle');
+-------+
| cname |
+-------+
| Max   |
+-------+

SELECT * FROM orders WHERE snum = (SELECT snum FROM salers WHERE city = 'London');
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3005 | 159.15 | 2020-04-04 | 2002 | 1001 |
+------+--------+------------+------+------+

SELECT * FROM orders WHERE snum IN (SELECT snum FROM salers WHERE city = 'London');
-- використовується якщо декілька міст
+------+--------+------------+------+------+
| onum | amt    | odate      | cnum | snum |
+------+--------+------------+------+------+
| 3005 | 159.15 | 2020-04-04 | 2002 | 1001 |
+------+--------+------------+------+------+

SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM customers GROUP BY snum HAVING COUNT(snum) > 1);
+------+--------+
| snum | sname  |
+------+--------+
| 1002 | Monika |
+------+--------+

SELECT * FROM customers c WHERE '2020-04-04' IN (SELECT odate FROM orders o WHERE o.cnum = c.cnum);
+------+-------+------+--------+------+-------+
| cnum | cname | city | rating | snum | text  |
+------+-------+------+--------+------+-------+
| 2002 | Max   | UK   |    200 | 1003 | mysql |
+------+-------+------+--------+------+-------+

SELECT o.cnum, c.cname, c.city, c.rating, c.snum FROM orders o, customers c WHERE c.cnum = o.cnum AND odate = '2020-04-04';
+------+-------+------+--------+------+
| cnum | cname | city | rating | snum |
+------+-------+------+--------+------+
| 2002 | Max   | UK   |    200 | 1003 |
+------+-------+------+--------+------+

SELECT * FROM salers WHERE EXISTS (SELECT * FROM customers WHERE rating > 500);
+------+--------+----------+------+
| snum | sname  | city     | comm |
+------+--------+----------+------+
| 1001 | Pol    | London   | 0.12 |
| 1002 | Monika | San Jose | 0.15 |
| 1003 | Mikle  | UK       | 0.13 |
| 1004 | Skif   | Paris    | 0.17 |
| 1010 | Staf   | New York | 0.00 |
+------+--------+----------+------+
-- якщо умова виконується то виводиться вся таблиця, якщо умова невиконується то нічого невиводиться
-- EXISTS працює коли TRUE або FALSE

mysql> SELECT snum, sname FROM salers
    -> UNION
    -> SELECT cnum, cname FROM customers;
+------+--------+ 
| snum | sname  | 
+------+--------+ 
| 1001 | Pol    | 
| 1002 | Monika | 
| 1003 | Mikle  | 
| 1004 | Skif   | 
| 1010 | Staf   | 
| 2001 | Andrey | 
| 2002 | Max    | 
| 2003 | Nazar  | 
| 2004 | Olga   | 
| 2005 | Taras  | 
| 2006 | Nik    | 
+------+--------+ 

SELECT snum, sname FROM salers UNION SELECT cnum, cname FROM customers;
+------+--------+
| snum | sname  |
+------+--------+
| 1001 | Pol    |
| 1002 | Monika |
| 1003 | Mikle  |
| 1004 | Skif   |
| 1010 | Staf   |
| 2001 | Andrey |
| 2002 | Max    |
| 2003 | Nazar  |
| 2004 | Olga   |
| 2005 | Taras  |
| 2006 | Nik    |
+------+--------+

SELECT snum, city FROM salers
    -> UNION
    -> SELECT snum, city FROM customers;
+------+----------+
| snum | city     |
+------+----------+
| 1001 | London   |
| 1002 | San Jose |
| 1003 | UK       |
| 1004 | Paris    |
| 1010 | New York |
| 1010 | Poland   |
| 1002 | Ukraine  |
+------+----------+

SELECT s.snum , s.sname FROM salers s, orders o WHERE o.snum = s.snum AND o.cnum IN (SELECT c.cnum FROM customers c WHERE rating > 400);
+------+-------+
| snum | sname |
+------+-------+
| 1004 | Skif  |
| 1010 | Staf  |
+------+-------+
-- рейтин продавців більше 400, поєднання всіх робочих таблиць




-- домашня робота

-- 1 Отримайте ідентифікатор клієнта, ім'я клієнта, суму та дату здійснення покупки
SELECT c.cnum, c.cname, o.amt, o.odate FROM customers c, orders o WHERE c.cnum = o.cnum;
+------+--------+--------+------------+
| cnum | cname  | amt    | odate      |
+------+--------+--------+------------+
| 2004 | Olga   |  18.69 | 2022-12-12 |
| 2005 | Taras  | 767.25 | 2022-05-05 |
| 2006 | Nik    | 785.13 | 2022-08-08 |
| 2003 | Nazar  | 147.23 | 2021-06-06 |
| 2002 | Max    | 159.15 | 2020-04-04 |
| 2001 | Andrey |  65.12 | 2019-07-07 |
+------+--------+--------+------------+


-- 2 Виберіть ідентифікатори та імена продавців, які мають лише 1 клієнта
SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM customers GROUP BY snum HAVING COUNT(snum) = 1);
+------+-------+
| snum | sname |
+------+-------+
| 1001 | Pol   |
| 1003 | Mikle |
| 1004 | Skif  |
| 1010 | Staf  |
+------+-------+


-- 3 Отримайте ідентифікатор та ім'я продавця, який здійснив максимальний продаж
SELECT s.snum, s.sname, o.amt FROM salers s, orders o WHERE s.snum = o.snum AND o.amt = (SELECT MAX(o.amt) FROM orders o);
+------+-------+--------+
| snum | sname | amt    |
+------+-------+--------+
| 1003 | Mikle | 785.13 |
+------+-------+--------+


-- 4 Отримайте ідентифікатор та ім'я продавця, який здійснив найменший продаж
SELECT s.snum, s.sname, o.amt FROM salers s, orders o WHERE s.snum = o.snum AND o.amt = (SELECT MIN(o.amt) FROM orders o);
+------+-------+-------+
| snum | sname | amt   |
+------+-------+-------+
| 1004 | Skif  | 18.69 |
+------+-------+-------+


-- 5 Отримайте ідентифікатори та імена продавців, які здійснили найменший та найбільший продаж
SELECT s.snum, s.sname, o.amt FROM salers s, orders o WHERE s.snum = o.snum AND o.amt = (SELECT MIN(o.amt) FROM orders o) UNION SELECT s.snum, s.sname, o.amt FROM salers s, orders o WHERE s.snum = o.snum AND o.amt = (SELECT MAX(o.amt) FROM orders o);
+------+-------+--------+
| snum | sname | amt    |
+------+-------+--------+
| 1004 | Skif  |  18.69 |
| 1003 | Mikle | 785.13 |
+------+-------+--------+


-- 6 Отримайте ідентифікатори імена та міста клієнтів/продавців із Лондона
SELECT c.cname, c.city, s.sname, s.city FROM salers s, customers c WHERE c.city = 'London' AND s.city = 'London';
+--------+--------+-------+--------+
| cname  | city   | sname | city   |
+--------+--------+-------+--------+
| Andrey | London | Pol   | London |
+--------+--------+-------+--------+



-- 7 Використовуючи оператор EXISTS отримайте ідентифікатори та імена продавців, які мають продаж із сумою понад 2000
SELECT snum, sname FROM salers WHERE EXISTS (SELECT * FROM orders WHERE amt > 500);
+------+--------+
| snum | sname  |
+------+--------+
| 1001 | Pol    |
| 1002 | Monika |
| 1003 | Mikle  |
| 1004 | Skif   |
| 1010 | Staf   |
+------+--------+





-- новий урок
-- новий урок (база up_2)
-- новий урок

SELECT * FROM salers INNER JOIN customers ON customers.snum = salers.snum;
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+
| snum | sname  | city     | comm  | cnum | cname    | city     | rating | snum | text             |
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+
| 1001 | Pol    | London   |  0.12 | 2001 | Andrey   | London   |    100 | 1001 | php              |
| 1003 | Mikle  | London   |  0.13 | 2002 | Max      | UK       |    200 | 1003 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2003 | Nazar    | San Jose |    300 | 1002 | Hello            |
| 1004 | Skif   | Paris    |  0.17 | 2004 | Olga     | Paris    |    500 | 1004 | World            |
| 1010 | Staf   | New York | -0.25 | 2005 | Taras    | Poland   |    800 | 1010 | Test Html        |
| 1002 | Monika | San Jose |  0.15 | 2006 | Nik      | Ukraine  |    300 | 1002 | PHP MYSQL        |
| 1001 | Pol    | London   |  0.12 | 2007 | Hoffman  | London   |    100 | 1001 | php              |
| 1003 | Mikle  | London   |  0.13 | 2008 | Giovanni | New York |    200 | 1003 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2009 | Liu      | San Jose |    200 | 1002 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2010 | Grass    | San Jose |    300 | 1002 | mysql            |
| 1001 | Pol    | London   |  0.12 | 2011 | Clemens  | London   |    100 | 1001 | hello            |
| 1004 | Skif   | Paris    |  0.17 | 2013 | Pereira  | London   |    100 | 1004 | программирование |
| 1010 | Staf   | New York | -0.25 | 2014 | Петров   | Париж    |    150 | 1010 | test, mysql      |
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+


SELECT * FROM salers JOIN customers ON customers.snum = salers.snum;
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+
| snum | sname  | city     | comm  | cnum | cname    | city     | rating | snum | text             |
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+
| 1001 | Pol    | London   |  0.12 | 2001 | Andrey   | London   |    100 | 1001 | php              |
| 1003 | Mikle  | London   |  0.13 | 2002 | Max      | UK       |    200 | 1003 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2003 | Nazar    | San Jose |    300 | 1002 | Hello            |
| 1004 | Skif   | Paris    |  0.17 | 2004 | Olga     | Paris    |    500 | 1004 | World            |
| 1010 | Staf   | New York | -0.25 | 2005 | Taras    | Poland   |    800 | 1010 | Test Html        |
| 1002 | Monika | San Jose |  0.15 | 2006 | Nik      | Ukraine  |    300 | 1002 | PHP MYSQL        |
| 1001 | Pol    | London   |  0.12 | 2007 | Hoffman  | London   |    100 | 1001 | php              |
| 1003 | Mikle  | London   |  0.13 | 2008 | Giovanni | New York |    200 | 1003 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2009 | Liu      | San Jose |    200 | 1002 | mysql            |
| 1002 | Monika | San Jose |  0.15 | 2010 | Grass    | San Jose |    300 | 1002 | mysql            |
| 1001 | Pol    | London   |  0.12 | 2011 | Clemens  | London   |    100 | 1001 | hello            |
| 1004 | Skif   | Paris    |  0.17 | 2013 | Pereira  | London   |    100 | 1004 | программирование |
| 1010 | Staf   | New York | -0.25 | 2014 | Петров   | Париж    |    150 | 1010 | test, mysql      |
+------+--------+----------+-------+------+----------+----------+--------+------+------------------+


SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum;
+--------+----------+----------+
| sname  | cname    | city     |
+--------+----------+----------+
| Pol    | Andrey   | London   |
| Mikle  | Max      | London   |
| Monika | Nazar    | San Jose |
| Skif   | Olga     | Paris    |
| Staf   | Taras    | New York |
| Monika | Nik      | San Jose |
| Pol    | Hoffman  | London   |
| Mikle  | Giovanni | London   |
| Monika | Liu      | San Jose |
| Monika | Grass    | San Jose |
| Pol    | Clemens  | London   |
| Skif   | Pereira  | Paris    |
| Staf   | Петров   | New York |
+--------+----------+----------+


SELECT s.sname, c.cname, s.city FROM salers s, customers c WHERE c.snum = s.snum;
+--------+----------+----------+
| sname  | cname    | city     |
+--------+----------+----------+
| Pol    | Andrey   | London   |
| Mikle  | Max      | London   |
| Monika | Nazar    | San Jose |
| Skif   | Olga     | Paris    |
| Staf   | Taras    | New York |
| Monika | Nik      | San Jose |
| Pol    | Hoffman  | London   |
| Mikle  | Giovanni | London   |
| Monika | Liu      | San Jose |
| Monika | Grass    | San Jose |
| Pol    | Clemens  | London   |
| Skif   | Pereira  | Paris    |
| Staf   | Петров   | New York |
+--------+----------+----------+


SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum WHERE s.city = 'London';
+-------+----------+--------+
| sname | cname    | city   |
+-------+----------+--------+
| Pol   | Andrey   | London |
| Mikle | Max      | London |
| Pol   | Hoffman  | London |
| Mikle | Giovanni | London |
| Pol   | Clemens  | London |
+-------+----------+--------+


SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum;
+------------+----------+-----------+
| sname      | cname    | city      |
+------------+----------+-----------+
| Pol        | Clemens  | London    |
| Pol        | Hoffman  | London    |
| Pol        | Andrey   | London    |
| Monika     | Grass    | San Jose  |
| Monika     | Liu      | San Jose  |
| Monika     | Nik      | San Jose  |
| Monika     | Nazar    | San Jose  |
| Mikle      | Giovanni | London    |
| Mikle      | Max      | London    |
| Skif       | Pereira  | Paris     |
| Skif       | Olga     | Paris     |
| Staf       | Петров   | New York  |
| Staf       | Taras    | New York  |
| Peel       | NULL     | London    |
| Serres     | NULL     | San Jose  |
| Motika     | NULL     | London    |
| Rifkin     | NULL     | Barcelona |
| Axelrod    | NULL     | New York  |
| Иванов     | NULL     | Киев      |
| NULL       | NULL     | Paris     |
| dArtanian  | NULL     | Paris     |
| Sifkin     | NULL     | San Jose  |
+------------+----------+-----------+


SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;
+--------+----------+----------+
| sname  | cname    | city     |
+--------+----------+----------+
| Pol    | Andrey   | London   |
| Mikle  | Max      | London   |
| Monika | Nazar    | San Jose |
| Skif   | Olga     | Paris    |
| Staf   | Taras    | New York |
| Monika | Nik      | San Jose |
| Pol    | Hoffman  | London   |
| Mikle  | Giovanni | London   |
| Monika | Liu      | San Jose |
| Monika | Grass    | San Jose |
| Pol    | Clemens  | London   |
| NULL   | Cisneros | NULL     |
| Skif   | Pereira  | Paris    |
| Staf   | Петров   | New York |
| NULL   | Test     | NULL     |
+--------+----------+----------+


SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum
    -> UNION
    -> SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;
+------------+----------+-----------+
| sname      | cname    | city      |
+------------+----------+-----------+
| Pol        | Clemens  | London    |
| Pol        | Hoffman  | London    |
| Pol        | Andrey   | London    |
| Monika     | Grass    | San Jose  |
| Monika     | Liu      | San Jose  |
| Monika     | Nik      | San Jose  |
| Monika     | Nazar    | San Jose  |
| Mikle      | Giovanni | London    |
| Mikle      | Max      | London    |
| Skif       | Pereira  | Paris     |
| Skif       | Olga     | Paris     |
| Staf       | Петров   | New York  |
| Staf       | Taras    | New York  |
| Peel       | NULL     | London    |
| Serres     | NULL     | San Jose  |
| Motika     | NULL     | London    |
| Rifkin     | NULL     | Barcelona |
| Axelrod    | NULL     | New York  |
| Иванов     | NULL     | Киев      |
| NULL       | NULL     | Paris     |
| dArtanian  | NULL     | Paris     |
| Sifkin     | NULL     | San Jose  |
| NULL       | Cisneros | NULL      |
| NULL       | Test     | NULL      |
+------------+----------+-----------+


SELECT s.sname, c.cname, s.city FROM salers s CROSS JOIN customers c;
+------------+----------+-----------+
| sname      | cname    | city      |
+------------+----------+-----------+
| Sifkin     | Andrey   | San Jose  |
| dArtanian  | Andrey   | Paris     |
| NULL       | Andrey   | Paris     |
| Иванов     | Andrey   | Киев      |
| Axelrod    | Andrey   | New York  |
| Rifkin     | Andrey   | Barcelona |
| Motika     | Andrey   | London    |
| Serres     | Andrey   | San Jose  |
| Peel       | Andrey   | London    |
| Staf       | Andrey   | New York  |
| Skif       | Andrey   | Paris     |
| Mikle      | Andrey   | London    |
| Monika     | Andrey   | San Jose  |
| Pol        | Andrey   | London    |
| Sifkin     | Max      | San Jose  |
| dArtanian  | Max      | Paris     |
| NULL       | Max      | Paris     |
| Иванов     | Max      | Киев      |
| Axelrod    | Max      | New York  |
| Rifkin     | Max      | Barcelona |
| Motika     | Max      | London    |
| Serres     | Max      | San Jose  |
| Peel       | Max      | London    |
| Staf       | Max      | New York  |
| Skif       | Max      | Paris     |
| Mikle      | Max      | London    |
| Monika     | Max      | San Jose  |
| Pol        | Max      | London    |
| Sifkin     | Nazar    | San Jose  |
| dArtanian  | Nazar    | Paris     |
| NULL       | Nazar    | Paris     |
| Иванов     | Nazar    | Киев      |
| Axelrod    | Nazar    | New York  |
| Rifkin     | Nazar    | Barcelona |
| Motika     | Nazar    | London    |
| Serres     | Nazar    | San Jose  |
| Peel       | Nazar    | London    |
| Staf       | Nazar    | New York  |
| Skif       | Nazar    | Paris     |
| Mikle      | Nazar    | London    |
| Monika     | Nazar    | San Jose  |
| Pol        | Nazar    | London    |
| Sifkin     | Olga     | San Jose  |
| dArtanian  | Olga     | Paris     |
| NULL       | Olga     | Paris     |
| Иванов     | Olga     | Киев      |
| Axelrod    | Olga     | New York  |
| Rifkin     | Olga     | Barcelona |
| Motika     | Olga     | London    |
| Serres     | Olga     | San Jose  |
| Peel       | Olga     | London    |
| Staf       | Olga     | New York  |
| Skif       | Olga     | Paris     |
| Mikle      | Olga     | London    |
| Monika     | Olga     | San Jose  |
| Pol        | Olga     | London    |
| Sifkin     | Taras    | San Jose  |
| dArtanian  | Taras    | Paris     |
| NULL       | Taras    | Paris     |
| Иванов     | Taras    | Киев      |
| Axelrod    | Taras    | New York  |
| Rifkin     | Taras    | Barcelona |
| Motika     | Taras    | London    |
| Serres     | Taras    | San Jose  |
| Peel       | Taras    | London    |
| Staf       | Taras    | New York  |
| Skif       | Taras    | Paris     |
| Mikle      | Taras    | London    |
| Monika     | Taras    | San Jose  |
| Pol        | Taras    | London    |
| Sifkin     | Nik      | San Jose  |
| dArtanian  | Nik      | Paris     |
| NULL       | Nik      | Paris     |
| Иванов     | Nik      | Киев      |
| Axelrod    | Nik      | New York  |
| Rifkin     | Nik      | Barcelona |
| Motika     | Nik      | London    |
| Serres     | Nik      | San Jose  |
| Peel       | Nik      | London    |
| Staf       | Nik      | New York  |
| Skif       | Nik      | Paris     |
| Mikle      | Nik      | London    |
| Monika     | Nik      | San Jose  |
| Pol        | Nik      | London    |
| Sifkin     | Hoffman  | San Jose  |
| dArtanian  | Hoffman  | Paris     |
| NULL       | Hoffman  | Paris     |
| Иванов     | Hoffman  | Киев      |
| Axelrod    | Hoffman  | New York  |
| Rifkin     | Hoffman  | Barcelona |
| Motika     | Hoffman  | London    |
| Serres     | Hoffman  | San Jose  |
| Peel       | Hoffman  | London    |
| Staf       | Hoffman  | New York  |
| Skif       | Hoffman  | Paris     |
| Mikle      | Hoffman  | London    |
| Monika     | Hoffman  | San Jose  |
| Pol        | Hoffman  | London    |
| Sifkin     | Giovanni | San Jose  |
| dArtanian  | Giovanni | Paris     |
| NULL       | Giovanni | Paris     |
| Иванов     | Giovanni | Киев      |
| Axelrod    | Giovanni | New York  |
| Rifkin     | Giovanni | Barcelona |
| Motika     | Giovanni | London    |
| Serres     | Giovanni | San Jose  |
| Peel       | Giovanni | London    |
| Staf       | Giovanni | New York  |
| Skif       | Giovanni | Paris     |
| Mikle      | Giovanni | London    |
| Monika     | Giovanni | San Jose  |
| Pol        | Giovanni | London    |
| Sifkin     | Liu      | San Jose  |
| dArtanian  | Liu      | Paris     |
| NULL       | Liu      | Paris     |
| Иванов     | Liu      | Киев      |
| Axelrod    | Liu      | New York  |
| Rifkin     | Liu      | Barcelona |
| Motika     | Liu      | London    |
| Serres     | Liu      | San Jose  |
| Peel       | Liu      | London    |
| Staf       | Liu      | New York  |
| Skif       | Liu      | Paris     |
| Mikle      | Liu      | London    |
| Monika     | Liu      | San Jose  |
| Pol        | Liu      | London    |
| Sifkin     | Grass    | San Jose  |
| dArtanian  | Grass    | Paris     |
| NULL       | Grass    | Paris     |
| Иванов     | Grass    | Киев      |
| Axelrod    | Grass    | New York  |
| Rifkin     | Grass    | Barcelona |
| Motika     | Grass    | London    |
| Serres     | Grass    | San Jose  |
| Peel       | Grass    | London    |
| Staf       | Grass    | New York  |
| Skif       | Grass    | Paris     |
| Mikle      | Grass    | London    |
| Monika     | Grass    | San Jose  |
| Pol        | Grass    | London    |
| Sifkin     | Clemens  | San Jose  |
| dArtanian  | Clemens  | Paris     |
| NULL       | Clemens  | Paris     |
| Иванов     | Clemens  | Киев      |
| Axelrod    | Clemens  | New York  |
| Rifkin     | Clemens  | Barcelona |
| Motika     | Clemens  | London    |
| Serres     | Clemens  | San Jose  |
| Peel       | Clemens  | London    |
| Staf       | Clemens  | New York  |
| Skif       | Clemens  | Paris     |
| Mikle      | Clemens  | London    |
| Monika     | Clemens  | San Jose  |
| Pol        | Clemens  | London    |
| Sifkin     | Cisneros | San Jose  |
| dArtanian  | Cisneros | Paris     |
| NULL       | Cisneros | Paris     |
| Иванов     | Cisneros | Киев      |
| Axelrod    | Cisneros | New York  |
| Rifkin     | Cisneros | Barcelona |
| Motika     | Cisneros | London    |
| Serres     | Cisneros | San Jose  |
| Peel       | Cisneros | London    |
| Staf       | Cisneros | New York  |
| Skif       | Cisneros | Paris     |
| Mikle      | Cisneros | London    |
| Monika     | Cisneros | San Jose  |
| Pol        | Cisneros | London    |
| Sifkin     | Pereira  | San Jose  |
| dArtanian  | Pereira  | Paris     |
| NULL       | Pereira  | Paris     |
| Иванов     | Pereira  | Киев      |
| Axelrod    | Pereira  | New York  |
| Rifkin     | Pereira  | Barcelona |
| Motika     | Pereira  | London    |
| Serres     | Pereira  | San Jose  |
| Peel       | Pereira  | London    |
| Staf       | Pereira  | New York  |
| Skif       | Pereira  | Paris     |
| Mikle      | Pereira  | London    |
| Monika     | Pereira  | San Jose  |
| Pol        | Pereira  | London    |
| Sifkin     | Петров   | San Jose  |
| dArtanian  | Петров   | Paris     |
| NULL       | Петров   | Paris     |
| Иванов     | Петров   | Киев      |
| Axelrod    | Петров   | New York  |
| Rifkin     | Петров   | Barcelona |
| Motika     | Петров   | London    |
| Serres     | Петров   | San Jose  |
| Peel       | Петров   | London    |
| Staf       | Петров   | New York  |
| Skif       | Петров   | Paris     |
| Mikle      | Петров   | London    |
| Monika     | Петров   | San Jose  |
| Pol        | Петров   | London    |
| Sifkin     | Test     | San Jose  |
| dArtanian  | Test     | Paris     |
| NULL       | Test     | Paris     |
| Иванов     | Test     | Киев      |
| Axelrod    | Test     | New York  |
| Rifkin     | Test     | Barcelona |
| Motika     | Test     | London    |
| Serres     | Test     | San Jose  |
| Peel       | Test     | London    |
| Staf       | Test     | New York  |
| Skif       | Test     | Paris     |
| Mikle      | Test     | London    |
| Monika     | Test     | San Jose  |
| Pol        | Test     | London    |
+------------+----------+-----------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('php');
+------+---------+---------+--------+------+------------+
| cnum | cname   | city    | rating | snum | text       |
+------+---------+---------+--------+------+------------+
| 2001 | Andrey  | London  |    100 | 1001 | php        |
| 2007 | Hoffman | London  |    100 | 1001 | php        |
| 2006 | Nik     | Ukraine |    300 | 1002 | PHP MYSQL  |
| 2015 | Test    | Test    |    150 | 1000 | php, mysql |
+------+---------+---------+--------+------+------------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('php' IN NATURAL LANGUAGE MODE);
+------+---------+---------+--------+------+------------+
| cnum | cname   | city    | rating | snum | text       |
+------+---------+---------+--------+------+------------+
| 2001 | Andrey  | London  |    100 | 1001 | php        |
| 2007 | Hoffman | London  |    100 | 1001 | php        |
| 2006 | Nik     | Ukraine |    300 | 1002 | PHP MYSQL  |
| 2015 | Test    | Test    |    150 | 1000 | php, mysql |
+------+---------+---------+--------+------+------------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('php' IN BOOLEAN MODE);
+------+---------+---------+--------+------+------------+
| cnum | cname   | city    | rating | snum | text       |
+------+---------+---------+--------+------+------------+
| 2001 | Andrey  | London  |    100 | 1001 | php        |
| 2006 | Nik     | Ukraine |    300 | 1002 | PHP MYSQL  |
| 2007 | Hoffman | London  |    100 | 1001 | php        |
| 2015 | Test    | Test    |    150 | 1000 | php, mysql |
+------+---------+---------+--------+------+------------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('ph*' IN BOOLEAN MODE);
+------+---------+---------+--------+------+------------+
| cnum | cname   | city    | rating | snum | text       |
+------+---------+---------+--------+------+------------+
| 2001 | Andrey  | London  |    100 | 1001 | php        |
| 2006 | Nik     | Ukraine |    300 | 1002 | PHP MYSQL  |
| 2007 | Hoffman | London  |    100 | 1001 | php        |
| 2015 | Test    | Test    |    150 | 1000 | php, mysql |
+------+---------+---------+--------+------+------------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('+php -mysql' IN BOOLEAN MODE);
+------+---------+--------+--------+------+------+
| cnum | cname   | city   | rating | snum | text |
+------+---------+--------+--------+------+------+
| 2001 | Andrey  | London |    100 | 1001 | php  |
| 2007 | Hoffman | London |    100 | 1001 | php  |
+------+---------+--------+--------+------+------+


SELECT * FROM customers WHERE MATCH(text) AGAINST ('+ph* -my*' IN BOOLEAN MODE);
+------+---------+--------+--------+------+------+
| cnum | cname   | city   | rating | snum | text |
+------+---------+--------+--------+------+------+
| 2001 | Andrey  | London |    100 | 1001 | php  |
| 2007 | Hoffman | London |    100 | 1001 | php  |
+------+---------+--------+--------+------+------+


SELECT * FROM customers WHERE MATCH(cnum) AGAINST ('2011' IN BOOLEAN MODE);
+------+---------+--------+--------+------+-------+
| cnum | cname   | city   | rating | snum | text  |
+------+---------+--------+--------+------+-------+
| 2011 | Clemens | London |    100 | 1001 | hello |
+------+---------+--------+--------+------+-------+


SELECT * FROM salers WHERE MATCH(snum) AGAINST ('1185' IN BOOLEAN MODE);
+------+--------+----------+-------+
| snum | sname  | city     | comm  |
+------+--------+----------+-------+
| 1185 | Sifkin | San Jose | -0.17 |
+------+--------+----------+-------+


SELECT * FROM customers WHERE MATCH(text) AGAINST('mysql' IN BOOLEAN MODE);
+------+----------+----------+--------+------+-------------+
| cnum | cname    | city     | rating | snum | text        |
+------+----------+----------+--------+------+-------------+
| 2002 | Max      | UK       |    200 | 1003 | mysql       |
| 2006 | Nik      | Ukraine  |    300 | 1002 | PHP MYSQL   |
| 2008 | Giovanni | New York |    200 | 1003 | mysql       |
| 2009 | Liu      | San Jose |    200 | 1002 | mysql       |
| 2010 | Grass    | San Jose |    300 | 1002 | mysql       |
| 2014 | Петров   | Париж    |    150 | 1010 | test, mysql |
| 2015 | Test     | Test     |    150 | 1000 | php, mysql  |
+------+----------+----------+--------+------+-------------+

