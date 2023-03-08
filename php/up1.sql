-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 11 2022 р., 15:32
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
-- Структура таблиці `up1`
--

CREATE TABLE `up1` (
  `ID` int NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `up1`
--

INSERT INTO `up1` (`ID`, `name`, `unit`, `price`) VALUES
(1, 'banana', 'kg', 4),
(2, 'pampers', 'box', 7),
(3, 'energy', 'watt', 1),
(4, 'lamp', 'unit', 2);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `up1`
--
ALTER TABLE `up1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `up1`
--
ALTER TABLE `up1`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
