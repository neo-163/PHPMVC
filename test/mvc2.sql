-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-09-13 14:48:23
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

-- --------------------------------------------------------

--
-- 表的结构 `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noteset_id` int DEFAULT '0',
  `user_id` int DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `image`, `noteset_id`, `user_id`, `created_time`, `updated_time`) VALUES
(1, '在localhost上运行前端模板 - 1', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 1', 'resources/images/image1.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(2, '在localhost上运行前端模板 - 2', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 2', 'resources/images/image2.jpg', 1, 1, '2020-09-13 10:08:24', '2020-09-13 10:08:24'),
(3, '在localhost上运行前端模板 - 3', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 3', 'resources/images/image3.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(4, '在localhost上运行前端模板 - 4', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 4', 'resources/images/image4.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(5, '在localhost上运行前端模板 - 5', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 5', 'resources/images/image5.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(6, '在localhost上运行前端模板 - 6', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 6', 'resources/images/image6.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(7, '在localhost上运行前端模板 - 7', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 7', 'resources/images/image7.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(8, '在localhost上运行前端模板 - 8', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 8', 'resources/images/image8.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(9, '在localhost上运行前端模板 - 9', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 9', 'resources/images/image9.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(10, '在localhost上运行前端模板 - 10', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 10', 'resources/images/image10.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(11, '在localhost上运行前端模板 - 11', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 11', 'resources/images/image1.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(12, '在localhost上运行前端模板 - 12', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 12', 'resources/images/image2.jpg', 1, 1, '2020-09-13 10:08:24', '2020-09-13 10:08:24'),
(13, '在localhost上运行前端模板 - 13', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 13', 'resources/images/image3.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(14, '在localhost上运行前端模板 - 14', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 14', 'resources/images/image4.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(15, '在localhost上运行前端模板 - 15', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 15', 'resources/images/image5.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(16, '在localhost上运行前端模板 - 16', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 16', 'resources/images/image6.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(17, '在localhost上运行前端模板 - 17', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 17', 'resources/images/image7.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(18, '在localhost上运行前端模板 - 18', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 18', 'resources/images/image8.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(19, '在localhost上运行前端模板 - 19', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 19', 'resources/images/image9.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(20, '在localhost上运行前端模板 - 20', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 20', 'resources/images/image10.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(21, '在localhost上运行前端模板 - 21', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 21', 'resources/images/image1.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(22, '在localhost上运行前端模板 - 22', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 22', 'resources/images/image2.jpg', 1, 1, '2020-09-13 10:08:24', '2020-09-13 10:08:24'),
(23, '在localhost上运行前端模板 - 23', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 23', 'resources/images/image3.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(24, '在localhost上运行前端模板 - 24', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 24', 'resources/images/image4.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(25, '在localhost上运行前端模板 - 25', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 25', 'resources/images/image5.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(26, '在localhost上运行前端模板 - 26', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 26', 'resources/images/image6.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(27, '在localhost上运行前端模板 - 27', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 27', 'resources/images/image7.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(28, '在localhost上运行前端模板 - 28', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 28', 'resources/images/image8.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(29, '在localhost上运行前端模板 - 29', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 29', 'resources/images/image9.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(30, '在localhost上运行前端模板 - 30', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 30', 'resources/images/image10.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(31, '在localhost上运行前端模板 - 31', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 31', 'resources/images/image1.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26'),
(32, '在localhost上运行前端模板 - 32', '请运行在localhost本地服务器环境，因为需要用http协议发送请求实现jQuery的load函数，获取header.html和footer.html！ - 32', 'resources/images/image2.jpg', 1, 1, '2020-09-13 09:59:26', '2020-09-13 09:59:26');

-- --------------------------------------------------------

--
-- 表的结构 `notesets`
--

CREATE TABLE `notesets` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `notesets`
--

INSERT INTO `notesets` (`id`, `title`, `description`, `image`, `user_id`, `created_time`, `updated_time`) VALUES
(1, '未分类', NULL, NULL, 1, '2020-09-13 10:02:37', '2020-09-13 10:02:37');

--
-- 转储表的索引
--

--
-- 表的索引 `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notesets`
--
ALTER TABLE `notesets`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用表AUTO_INCREMENT `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用表AUTO_INCREMENT `notesets`
--
ALTER TABLE `notesets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
