-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-03 12:45:02
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
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `discount` varchar(50) NOT NULL,
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(10) NOT NULL COMMENT '商品库存',
  `pic` varchar(50) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `title`, `discount`, `price`, `num`, `pic`, `details`) VALUES
(1, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 5 3500U 8GB 512GB（冰河银）', '【预订】MagicBook 2019 锐龙版', '订金100元抵400元 赠大礼包', 4299, 50, '../img/notebook-2.png', '<h1>商品详情描述</h1>'),
(2, '（华为）HUAWEI MateBook 13   2K全面屏轻薄性能笔记本 手机电脑一碰即传 皓月银 i5 8GB 512GB 独显', 'HUAWEI MateBook E 2019 款', '赠内胆包+3期免息', 4699, 4999, '../img/notebook-3.png', '<h1>商品详情描述</h1>'),
(10, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 7 3700U 8GB 512GB（冰河银）', 'HUAWEI MateBook 14', '皓月银新色 6月4日开售', 6999, 1200, '../img/notebook-4.png', '<h1>商品详情描述</h1>'),
(3, '荣耀MagicBook 14英寸轻薄笔记本电脑 i5-8250U 8GB 256GB 独显（冰河银）', '【618预订】荣耀MagicBook', '订金100元抵400 赠耳机', 4999, 280, '../img/notebook-4.png', '<h1>商品详情描述</h1>'),
(4, '（华为）HUAWEI MateBook E 2019款 12英寸全连接轻薄二合一笔记本 2K触摸屏 手机电脑一碰即传（钛金灰 高通 850 8GB 512GB）', 'HUAWEI MateBook 13', '现货速发 3期免息', 6399, 346, '../img/notebook-5.png', '<h1>商品详情描述</h1>'),
(5, '（华为）HUAWEI MateBook 14 2K全面屏轻薄性能笔记本 手机电脑一碰即传 英特尔酷睿i7 8GB 512GB 独显 深空灰', 'HUAWEI MateBook D', '限量赠华为双肩包', 5188, 703, '../img/reco-2.png', '<h1>商品详情描述</h1>'),
(9, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 7 3700U 8GB 512GB（冰河银）', '荣耀MagicBook 2019 锐龙版', '性能新升级 轻薄长续航', 3999, 1000, '../img/reco-5.png', '<h1>商品详情描述</h1>'),
(6, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 7 3700U 8GB 512GB（冰河银）', '荣耀MagicBook', '最高直降300元 享6期免息', 4699, 90, '../img/reco-5.png', '<h1>商品详情描述</h1>'),
(7, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 7 3700U 8GB 512GB（冰河银）', 'HUAWEI MateBook 14', '皓月银新色 6月4日开售', 6999, 30, '../img/notebook-4.png', '<h1>商品详情描述</h1>'),
(8, '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 7 3700U 8GB 512GB（冰河银）', 'HUAWEI MateBook E', '限量赠配件礼包', 4288, 280, '../img/reco-2.png', '<h1>商品详情描述</h1>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
