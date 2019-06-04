-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-03 12:49:38
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `useid` int(10) NOT NULL COMMENT '用户id',
  `usenum` varchar(11) NOT NULL,
  `usename` varchar(15) DEFAULT NULL COMMENT '用户名',
  `usepaw` varchar(10) NOT NULL COMMENT '密码',
  `useemail` varchar(15) DEFAULT NULL COMMENT '邮箱',
  `usesex` tinyint(6) DEFAULT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`useid`, `usenum`, `usename`, `usepaw`, `useemail`, `usesex`) VALUES
(1, '0', 'zhangsan', '111', '123@163.com', 1),
(2, '0', 'lisi', '7890', '123456@qq.com', 1),
(10, '13111111111', NULL, '123123', NULL, NULL),
(11, '13011111111', NULL, '111111', NULL, NULL),
(12, '13011111112', NULL, '111111', NULL, NULL),
(13, '13011111113', NULL, '123123', NULL, NULL),
(14, '13011111114', NULL, '12323', NULL, NULL),
(15, '13011111115', NULL, '111111', NULL, NULL),
(16, '13011111116', NULL, '123123', NULL, NULL),
(17, '13011111117', NULL, '123123', NULL, NULL),
(18, '13011111118', NULL, '123123', NULL, NULL),
(19, '13011111119', NULL, '123456', NULL, NULL),
(32, '13011111119', NULL, '123456', NULL, NULL),
(33, '13011111119', NULL, '123456', NULL, NULL),
(34, '13011111119', NULL, '123456', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`useid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `useid` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
