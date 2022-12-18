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

-- домашня робота

-- 1
SELECT SUM(amt) / COUNT(amt) FROM `orders`;

-- 2
SELECT SUM(amt) FROM `orders` WHERE snum=1010;
SELECT SUM(amt) FROM `orders` WHERE snum IN(SELECT snum FROM `salers` WHERE sname='Staf');

-- 3
SELECT `city`, `rating` FROM `customers` ORDER BY rating DESC;

-- 4
SELECT `city`, `comm` FROM `salers` ORDER BY comm;

-- 5
SELECT * FROM `orders` WHERE odate BETWEEN '2022-04-01' AND '2022-08-31';

-- 6
SELECT cname FROM `customers` WHERE snum IN(SELECT snum FROM `salers` WHERE sname = 'Monika' OR sname='Pol');

-- 7
SELECT * FROM `customers` WHERE cname BETWEEN 'A%' AND 'O%';

-- 8
SELECT * FROM `salers` WHERE sname LIKE 'S%';

-- 9
SELECT * FROM `salers` WHERE sname LIKE 'M%a';
SELECT * FROM `salers` WHERE sname LIKE 'M__%a';

-- 10
SELECT * FROM `salers` WHERE sname LIKE '%f' AND sname NOT LIKE 'D%';

-- 11
SELECT * FROM `salers` WHERE comm IS NOT NULL;
