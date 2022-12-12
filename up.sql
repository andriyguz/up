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
