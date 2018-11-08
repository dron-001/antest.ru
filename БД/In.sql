-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 28 2018 г., 09:26
-- Версия сервера: 5.6.38-log
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `In`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `surname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `patronymic` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_sex` int(1) DEFAULT NULL,
  `user_regdate` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `surname`, `patronymic`, `user_sex`, `user_regdate`, `avatar`) VALUES
(2, 'qwe@mail.com', '123456789', 'qwe', 'qwe', 'qwe', 1, '17-10-2018-23:2', '2'),
(3, 'qwe@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-15:49', '2'),
(4, 'qwe@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-15:52', '2'),
(5, 'qwe@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-15:54', '2'),
(6, 'ewq@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'qweqwe', 'qwe', 'qwe', 1, '18-10-2018-16:05', '2'),
(7, 'alfa_romeo01@mail.ru', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:08', '2'),
(8, 'lfa_romeo01@mail.ru', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:12', '2'),
(9, 'fa_romeo01@mail.ru', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:13', '2'),
(10, 'alfa_roeo01@mail.ru', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:15', '2'),
(11, 'alfa_romeo1@mail.ru', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:19', '2'),
(12, 'alfa_rome1@mail.ru', 'd41d8cd98f00b204e9800998ecf8427e', 'qwe', 'qwe', 'qwe', 1, '18-10-2018-16:21', '2'),
(13, '12345@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Soslan', 'Gassiev', 'Edvsrdovi', 1, '18-10-2018-19:00', '2'),
(14, 'ew2q@mail.com', 'ZVEzdat34', 'qwe', 'qwe', 'qwe', 0, '25-10-2018-21:34', '2'),
(15, 'ew2qw@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'qwe', 0, '25-10-2018-21:35', '2'),
(16, 'ew2q4w@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'qwe', 0, '25-10-2018-21:37', '2'),
(17, 'ew2qf4w@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'qwe', 0, '25-10-2018-21:38', '2'),
(18, 'ew2qrfr4w@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'qwe', 0, '25-10-2018-22:01', ''),
(19, 'ewqw@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qwe', 'weq', 0, '25-10-2018-22:04', ''),
(20, 'ewqqq@mail.com', '9caecda706238d68e9255f65e8b45736', 'qweqwe', 'qwe', 'qwe', 0, '25-10-2018-22:05', ''),
(21, 'ewqpqq@mail.com', '9caecda706238d68e9255f65e8b45736', 'qweqwe', 'qwe', 'qwe', 0, '25-10-2018-22:08', ''),
(22, 'ewqww@mail.com', '9caecda706238d68e9255f65e8b45736', 'fsdf', 'sdf', 'fds', 0, '25-10-2018-22:13', ''),
(23, 'ewqq@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qew', 'qw', 0, '27-10-2018-17:55', ''),
(24, 'ewqrrq@mail.com', '9caecda706238d68e9255f65e8b45736', 'qwe', 'qew', 'qw', 0, '27-10-2018-17:56', ''),
(25, '321ewq@mail.com', '9caecda706238d68e9255f65e8b45736', 'cxz', 'zcx', 'zcx', 0, '27-10-2018-18:00', ''),
(26, 'eyqweq@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:04', 'Array'),
(27, 'qweq@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:05', 'Array'),
(28, 'eyq@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:08', 'Array'),
(29, 'eyqii@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:08', 'Array'),
(30, 'eyqrii@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:09', 'Array'),
(31, 'eyqmrii@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:10', 'Array'),
(32, 'eyqpmrii@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'bhip', 'hjup', 0, '27-10-2018-19:11', 'Array'),
(33, 'eyqty@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'fqf', 'hjup', 0, '27-10-2018-19:14', 'Array'),
(34, 'eyeeeqty@mail.com', '9caecda706238d68e9255f65e8b45736', 'bhip', 'fqf', 'hjup', 0, '27-10-2018-19:18', 'Array'),
(35, '123@mail.com', '9caecda706238d68e9255f65e8b45736', 'zxc', 'zxc', 'xcz', 0, '27-10-2018-23:32', 'Array');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
