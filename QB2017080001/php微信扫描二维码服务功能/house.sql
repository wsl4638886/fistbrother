-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-08-08 09:29:22
-- 服务器版本： 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house`
--

-- --------------------------------------------------------

--
-- 表的结构 `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `oname` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `roomid` int(11) NOT NULL,
  `bedid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `details`
--

INSERT INTO `details` (`id`, `sid`, `oname`, `age`, `sex`, `roomid`, `bedid`) VALUES
(1, 50, '送奶奶', 88, '女', 6, 2),
(2, 50, '余奶奶', 79, '女', 6, 1),
(3, 51, '刘大爷', 79, '男', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `jname` char(10) NOT NULL,
  `nature` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `job`
--

INSERT INTO `job` (`id`, `jname`, `nature`) VALUES
(1, '送开水', 0),
(2, '洗衣服', 0),
(3, '送饭', 0),
(4, '做饭', 0),
(5, '扫地', 0),
(6, '剪指甲', 0),
(7, '理发', 0),
(8, '聊天', 0),
(9, '散步', 0),
(10, '清洁', 0);

-- --------------------------------------------------------

--
-- 表的结构 `old`
--

CREATE TABLE `old` (
  `id` int(11) NOT NULL,
  `oname` varchar(11) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(3) CHARACTER SET utf8 NOT NULL,
  `roomid` int(11) NOT NULL,
  `bedid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `old`
--

INSERT INTO `old` (`id`, `oname`, `age`, `sex`, `roomid`, `bedid`) VALUES
(1, '宋奶奶', 88, '女', 6, 2),
(2, '余奶奶', 79, '女', 6, 1),
(3, '刘大爷', 79, '男', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_users`
--

CREATE TABLE `tp_users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tp_users`
--

INSERT INTO `tp_users` (`id`, `username`, `avatar`, `mobile`) VALUES
(1, '尼古拉斯·赵四', '/uploads/images/0.jpg', '15950452241'),
(2, '亚历山大·刘能', '/uploads/images/avatar.jpg', '15950555555'),
(3, '郭达·斯坦森', '/uploads/images/timg.jpg', '15999999999'),
(4, '路易斯·广坤', '/uploads/images/timg_1.jpg', '15874785985'),
(5, '莱安纳多·本山', '/uploads/images/timg_2.jpg', '15998574856');

-- --------------------------------------------------------

--
-- 表的结构 `tp_user_service`
--

CREATE TABLE `tp_user_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `service_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  `aged_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT AS `老人姓名`,
  `room_no` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT AS `房间号`,
  `bed_no` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT AS `床位号`
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tp_user_service`
--

INSERT INTO `tp_user_service` (`id`, `userid`, `service_name`, `start_time`, `end_time`, `aged_name`, `room_no`, `bed_no`) VALUES
(1, 1, '送饭', 1501745696, 1501745955, '1', NULL, NULL),
(2, 1, '送饭', 1501746085, 1501746184, NULL, NULL, NULL),
(3, 1, '送饭', 1501746194, 1501746218, NULL, NULL, NULL),
(4, 1, '送饭', 1501746220, 1501746856, NULL, NULL, NULL),
(5, 1, '送饭', 1501746900, 1501746906, NULL, NULL, NULL),
(6, 2, '送饭', 1501748513, 1501748519, NULL, NULL, NULL),
(7, 2, '送饭', 1501753266, 1501753298, NULL, NULL, NULL),
(8, 2, '送饭', 1501753302, 1501753305, NULL, NULL, NULL),
(9, 3, '送饭', 1491753565, 1501689599, NULL, NULL, NULL),
(10, 3, '送饭', 1501753596, 1501753684, NULL, NULL, NULL),
(11, 2, '送饭', 1491753689, 1491839999, NULL, NULL, NULL),
(12, 3, '送饭', 1491753804, 1491839999, NULL, NULL, NULL),
(13, 2, '送饭', 1501756314, 1501756323, NULL, NULL, NULL),
(14, 1, '拖地', 1501901086, 1501901101, NULL, NULL, NULL),
(15, 2, '拖地', 1501901112, 1501901207, NULL, NULL, NULL),
(16, 1, '拖地', 1501901281, 1501901284, NULL, NULL, NULL),
(17, 1, '送饭', 1501989601, 1501989605, NULL, NULL, NULL),
(18, 4, '剪指甲', 1502000151, 1502000156, NULL, NULL, NULL),
(19, 4, '打水', 1502068093, 1502068101, NULL, NULL, NULL),
(20, 4, '打水', 1502068261, 0, NULL, NULL, NULL),
(21, 4, '送饭', 1502068280, 1502102183, NULL, NULL, NULL),
(22, 4, '拖地', 1502068294, 1502068324, NULL, NULL, NULL),
(23, 4, '洗衣服', 1502068317, 1502086875, NULL, NULL, NULL),
(24, 4, '拖地', 1502068950, 1502072913, NULL, NULL, NULL),
(25, 3, '拖地', 1502086937, 1502086942, NULL, NULL, NULL),
(26, 2, '打水', 1502087034, 1502087039, NULL, NULL, NULL),
(27, 2, '剪指甲', 1502087100, 1502087103, NULL, NULL, NULL),
(28, 1, '剪指甲', 1502087126, 1502087137, NULL, NULL, NULL),
(29, 5, '剪指甲', 1502087223, 1502087226, NULL, NULL, NULL),
(30, 5, '剪指甲', 1502087392, 1502087395, NULL, NULL, NULL),
(31, 5, '剪指甲', 1502097249, 1502097253, NULL, NULL, NULL),
(32, 1, '剪指甲', 1502097334, 1502097337, NULL, NULL, NULL),
(33, 1, '剪指甲', 1502098418, 1502098421, NULL, NULL, NULL),
(34, 1, '剪指甲', 1502100758, 1502100820, NULL, NULL, NULL),
(35, 1, '送饭', 1502100775, 1502100846, NULL, NULL, NULL),
(36, 5, '送饭', 1502101078, 1502101094, NULL, NULL, NULL),
(37, 3, '送饭', 1502101104, 1502101133, NULL, NULL, NULL),
(38, 1, '送饭', 1502101139, 1502101200, NULL, NULL, NULL),
(39, 5, '送饭', 1502101299, 1502101785, NULL, NULL, NULL),
(40, 4, '送饭', 1502102378, 1502102413, NULL, NULL, NULL),
(41, 1, '剪指甲', 1502153780, 1502153796, NULL, NULL, NULL),
(42, 1, '剪指甲', 1502153810, 1502153822, NULL, NULL, NULL),
(43, 2, '剪指甲', 1502153827, 1502153829, NULL, NULL, NULL),
(44, 5, '剪指甲', 1502153835, 1502153850, NULL, NULL, NULL),
(45, 1, '剪指甲', 1502153856, 1502153898, NULL, NULL, NULL),
(46, 2, '剪指甲', 1502153906, 0, NULL, NULL, NULL),
(47, 3, '送饭', 1502154021, 1502155185, NULL, NULL, NULL),
(48, 4, '送饭', 1502155262, 1502155437, NULL, NULL, NULL),
(49, 3, '送饭', 1502155443, 1502161255, NULL, NULL, NULL),
(50, 1, '拖地', 1502166560, 1502172517, '11', '111', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old`
--
ALTER TABLE `old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_users`
--
ALTER TABLE `tp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_user_service`
--
ALTER TABLE `tp_user_service`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `old`
--
ALTER TABLE `old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `tp_users`
--
ALTER TABLE `tp_users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `tp_user_service`
--
ALTER TABLE `tp_user_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
