-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 05:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jvp_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `comment_text` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `pid`, `comment_text`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hello', '2024-03-22 15:49:51', '2024-03-22 15:49:51'),
(2, 2, 2, 'hi', '2024-03-22 15:49:51', '2024-03-22 15:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `links` varchar(250) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `un_likes` int(11) DEFAULT 0,
  `times` time DEFAULT '00:00:00',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `uid`, `tid`, `title`, `description`, `links`, `img`, `view`, `likes`, `un_likes`, `times`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'title videos', 'description videos', '#', NULL, 0, 0, 0, '00:00:00', 0, '2024-03-22 15:46:14', '2024-03-22 15:46:14'),
(2, 2, 1, 'title videos 2', 'description videos 2', '##', NULL, 0, 0, 0, '00:00:00', 0, '2024-03-22 15:46:14', '2024-03-22 15:46:14'),
(3, 2, 1, 'title videos 3', 'description videos 3', '###', NULL, 0, 0, 0, '00:00:00', 0, '2024-03-22 15:47:29', '2024-03-22 15:47:29'),
(4, 2, 1, 'title videos 4', 'description videos 4', '####', NULL, 0, 0, 0, '00:00:00', 0, '2024-03-22 15:47:29', '2024-03-22 15:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `tid` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sub_title` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`tid`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, '4K', NULL, '2024-03-22 15:42:27', '2024-03-22 15:42:27'),
(2, '2K', NULL, '2024-03-22 15:42:44', '2024-03-22 15:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` int(11) NOT NULL,
  `id` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
(19, 'OvxGv3H3jrYcXde6rlgMwZKa7rOq0Dxp5zWqzaix', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWg3UUJXT2Rqb1JSRk91bHNkYW01R2dIYW52VGEydVVIS3NVNUVHMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvanZwX3N5c3RlbS9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712500901),
(20, 'ZNuky0bSbMiPRjcpERAg2RpAu3rlCIn84lcGWI9D', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXNOTW1GY21tbVFHRm9jcVF2TGNVSzZHc1JhQ3pURlNLejZNbmZpVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvanZwX3N5c3RlbS9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712592035),
(21, 'T2JO1JkqrRKLXXZRblU9dSV4Y1Yuf3T3t9fqxaiS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUVxSExldW41bkFRdVZqTWRxNldKNUp3NHc4YVRXeGpvblV0QkI0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvanZwX3N5c3RlbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712763117),
(17, 'lTZlNXwBV9RH9S3ZXKWsXdVoyKr0sSeBdIJILmrr', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmFRcUluWFZ5R0ZCVEkydERqMWlJYUNtYlhFYjh0RW0ySUpwSWdyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvanZwX3N5c3RlbS9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712463528),
(18, '3ekXR0ZVBqHnh2NeFWRcJNYNJWqQztKM05Xo1jns', NULL, '::1', 'PostmanRuntime/7.37.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmV3c2d5TjBrUEJJc1pqZHlzclJaVGptUWU1bnRWbm1uTlNXYjQ2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3QvanZwX3N5c3RlbS9wcm9kdWN0cy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712762841);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(500) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `permissions` varchar(150) DEFAULT NULL,
  `profile_img` varchar(150) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `sex`, `contact`, `permissions`, `profile_img`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'f', '090741315', NULL, NULL, '2024-04-08 03:55:30', '2024-03-22 15:39:58', '2024-04-08 15:55:30'),
(2, 'u1', 'e10adc3949ba59abbe56e057f20f883e', 'm', '090', 'user', NULL, '2024-04-08 03:59:51', '2024-03-22 15:40:55', '2024-04-08 15:59:51'),
(3, 'u1', '25d55ad283aa400af464c76d713c07ad', 'm', '090', 'user', NULL, '2024-04-10 03:22:54', '2024-03-22 15:40:55', '2024-04-10 15:22:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);
ALTER TABLE `products` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `last_act` (`last_activity`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
