-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-09-13 14:49:11
-- 服务器版本： 8.0.20
-- PHP 版本： 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mvc`
--

-- --------------------------------------------------------

--
-- 表的结构 `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `logs`
--

INSERT INTO `logs` (`id`, `title`, `description`, `created_time`, `updated_time`) VALUES
(1, 'testing log', NULL, '2020-09-12 16:46:15', '2020-09-12 16:46:15'),
(2, 'testing log', NULL, '2020-09-12 16:46:17', '2020-09-12 16:46:17'),
(3, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(4, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(5, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(6, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(7, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(8, 'testing log', NULL, '2020-09-12 16:46:18', '2020-09-12 16:46:18'),
(9, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(10, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(11, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(12, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(13, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(14, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(15, 'testing log', NULL, '2020-09-12 16:46:19', '2020-09-12 16:46:19'),
(16, 'testing log', NULL, '2020-09-12 16:46:20', '2020-09-12 16:46:20'),
(17, 'testing log', NULL, '2020-09-12 16:46:42', '2020-09-12 16:46:42'),
(18, 'testing log', NULL, '2020-09-12 16:46:42', '2020-09-12 16:46:42'),
(19, 'testing log', NULL, '2020-09-12 16:46:42', '2020-09-12 16:46:42'),
(20, 'testing log', NULL, '2020-09-12 16:46:42', '2020-09-12 16:46:42'),
(21, 'testing log', NULL, '2020-09-12 16:46:42', '2020-09-12 16:46:42'),
(22, 'testing log', NULL, '2020-09-12 16:46:43', '2020-09-12 16:46:43'),
(23, 'testing log', NULL, '2020-09-12 16:47:53', '2020-09-12 16:47:53'),
(24, 'testing log', NULL, '2020-09-12 18:35:17', '2020-09-12 18:35:17'),
(25, 'testing log', NULL, '2020-09-12 18:35:17', '2020-09-12 18:35:17'),
(26, 'testing log', NULL, '2020-09-12 18:35:18', '2020-09-12 18:35:18'),
(27, 'testing log', NULL, '2020-09-12 18:35:18', '2020-09-12 18:35:18'),
(28, 'testing log', NULL, '2020-09-12 18:54:38', '2020-09-12 18:54:38'),
(29, 'testing log', NULL, '2020-09-12 19:30:36', '2020-09-12 19:30:36'),
(30, 'testing log', NULL, '2020-09-12 19:31:46', '2020-09-12 19:31:46'),
(31, 'testing log', NULL, '2020-09-12 19:32:56', '2020-09-12 19:32:56'),
(32, 'testing log', NULL, '2020-09-13 09:26:10', '2020-09-13 09:26:10');

--
-- 转储表的索引
--

--
-- 表的索引 `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
