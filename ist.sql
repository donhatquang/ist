-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2014 at 12:27 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ist`
--

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_assets`
--

CREATE TABLE `urhc6_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=385 ;

--
-- Dumping data for table `urhc6_assets`
--

INSERT INTO `urhc6_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 616, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 218, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 219, 220, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 221, 222, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 223, 224, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 225, 226, 1, 'com_login', 'com_login', '{}'),
(13, 1, 227, 228, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 229, 230, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 231, 232, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 233, 234, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 235, 236, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 237, 238, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 239, 242, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 243, 244, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 245, 246, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 247, 248, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 249, 250, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 251, 252, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 253, 256, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 257, 258, 1, 'com_wrapper', 'com_wrapper', '{}'),
(323, 319, 193, 194, 3, 'com_content.article.416', '2013 Software shows by IST', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 240, 241, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 254, 255, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(324, 309, 95, 96, 5, 'com_content.article.417', '鲍睿涵', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(325, 309, 69, 70, 5, 'com_content.article.418', '曹佩', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(326, 309, 71, 72, 5, 'com_content.article.419', '陈充泽', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(327, 309, 73, 74, 5, 'com_content.article.420', '邓建勋', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(328, 309, 75, 76, 5, 'com_content.article.421', '方泽杭', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(329, 309, 77, 78, 5, 'com_content.article.422', '胡敬远', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(330, 309, 79, 80, 5, 'com_content.article.423', '胡畔', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(331, 309, 81, 82, 5, 'com_content.article.424', '罗扬', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(332, 309, 83, 84, 5, 'com_content.article.425', '马晓明', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 0, 617, 618, 0, 'com_content.category.15', 'About Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(41, 0, 619, 620, 0, 'com_content.category.16', 'The Project', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(42, 0, 621, 622, 0, 'com_content.category.17', 'The CMS', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(43, 0, 623, 624, 0, 'com_content.category.18', 'The Community', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(333, 309, 85, 86, 5, 'com_content.article.426', '王建毅', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(334, 309, 87, 88, 5, 'com_content.article.427', '王珍海', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(335, 309, 89, 90, 5, 'com_content.article.428', '吴江', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(336, 309, 91, 92, 5, 'com_content.article.429', '俞宏云', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(337, 309, 93, 94, 5, 'com_content.article.430', '祝利聪', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(338, 308, 41, 42, 5, 'com_content.article.431', '白吉光', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(339, 308, 43, 44, 5, 'com_content.article.432', '陈天', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(340, 309, 97, 98, 5, 'com_content.article.433', '杜日光 (15)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(341, 308, 45, 46, 5, 'com_content.article.434', '侯佰鑫', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(342, 308, 47, 48, 5, 'com_content.article.435', '季金鑫', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(343, 308, 49, 50, 5, 'com_content.article.436', '余彬和', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(344, 308, 51, 52, 5, 'com_content.article.437', '李郁睐', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(345, 308, 53, 54, 5, 'com_content.article.438', '栾帅', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(346, 308, 55, 56, 5, 'com_content.article.439', '钱钰', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(347, 308, 57, 58, 5, 'com_content.article.440', '吴疆', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(348, 308, 59, 60, 5, 'com_content.article.441', '吴连亮', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(349, 308, 61, 62, 5, 'com_content.article.442', '谢晓青', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(350, 308, 63, 64, 5, 'com_content.article.443', '徐珂', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(351, 310, 101, 102, 5, 'com_content.article.444', '丁杰', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(352, 310, 103, 104, 5, 'com_content.article.445', '陈哲', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(353, 310, 105, 106, 5, 'com_content.article.446', '姜祖海', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(354, 310, 107, 108, 5, 'com_content.article.447', '计晓峰', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(355, 310, 109, 110, 5, 'com_content.article.448', '计晓峰 (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(356, 310, 111, 112, 5, 'com_content.article.449', '计晓峰 (3)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(357, 310, 113, 114, 5, 'com_content.article.450', '刘子嘉', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(358, 310, 115, 116, 5, 'com_content.article.451', '邱倩如', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(359, 310, 117, 118, 5, 'com_content.article.452', '师绍秋', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(360, 310, 119, 120, 5, 'com_content.article.453', '汪涵', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(361, 310, 121, 122, 5, 'com_content.article.454', '徐锋', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(362, 310, 123, 124, 5, 'com_content.article.455', '张煜苒', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(363, 310, 125, 126, 5, 'com_content.article.456', '朱菁菁', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 0, 625, 626, 0, 'com_banners.category.23', 'Joomla', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(77, 0, 627, 628, 0, 'com_banners.category.24', 'Text Ads', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(78, 0, 629, 630, 0, 'com_banners.category.25', 'Joomla! Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(79, 0, 631, 632, 0, 'com_banners.category.26', 'Demo Banner', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(80, 0, 633, 634, 0, 'com_contact.category.27', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(81, 0, 635, 636, 0, 'com_newsfeeds.category.28', 'Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(82, 0, 637, 638, 0, 'com_newsfeeds.category.29', 'Free and Open Source Software', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(83, 0, 639, 640, 0, 'com_newsfeeds.category.30', 'Related Projects', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(84, 0, 641, 642, 0, 'com_weblinks.category.31', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(85, 0, 643, 644, 0, 'com_weblinks.category.32', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(161, 8, 18, 21, 2, 'com_content.category.54', '青春律动', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(211, 1, 612, 613, 1, 'com_phocagallery', 'com_phocagallery', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(232, 161, 19, 20, 3, 'com_content.article.358', 'test', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(260, 8, 22, 23, 2, 'com_content.category.66', '媒体聚焦', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(282, 1, 614, 615, 1, 'com_rsform', 'rsform', '{}'),
(283, 301, 141, 142, 3, 'com_content.category.68', '协同应用组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(284, 301, 143, 144, 3, 'com_content.category.69', '云服务技术组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(285, 301, 145, 146, 3, 'com_content.category.70', '数据语义组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(286, 301, 147, 150, 3, 'com_content.category.71', '3D信息可视化组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(288, 8, 24, 131, 2, 'com_content.category.72', '人员', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(289, 288, 25, 32, 3, 'com_content.category.73', '导师', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(290, 288, 33, 38, 3, 'com_content.category.74', '博士生', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(291, 288, 39, 130, 3, 'com_content.category.75', '研究生', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(292, 289, 26, 27, 4, 'com_content.article.400', '步丰林', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(293, 289, 28, 29, 4, 'com_content.article.401', '蔡鸿明', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(294, 289, 30, 31, 4, 'com_content.article.402', '姜丽红', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(295, 290, 34, 35, 4, 'com_content.article.403', '谢诚', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(296, 290, 36, 37, 4, 'com_content.article.404', '黄承曦', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(297, 8, 132, 139, 2, 'com_content.category.76', '人员详细', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(298, 297, 133, 134, 3, 'com_content.article.405', '姜丽红', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(299, 297, 135, 136, 3, 'com_content.article.406', '步丰林', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(300, 297, 137, 138, 3, 'com_content.article.407', '蔡鸿明', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(301, 8, 140, 159, 2, 'com_content.category.77', '研究小组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(302, 301, 151, 152, 3, 'com_content.category.78', 'MES架构组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(307, 8, 160, 161, 2, 'com_content.category.82', '项目及软件', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(308, 291, 40, 65, 4, 'com_content.category.83', '2013', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(309, 291, 66, 99, 4, 'com_content.category.84', '2012', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(310, 291, 100, 127, 4, 'com_content.category.85', '2011', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(311, 291, 128, 129, 4, 'com_content.category.86', '2010', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(312, 309, 67, 68, 5, 'com_content.article.409', '杜日光', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(313, 301, 153, 154, 3, 'com_content.category.87', 'ORIPS组', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(314, 8, 162, 187, 2, 'com_content.category.88', '论文', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(315, 8, 188, 189, 2, 'com_content.category.89', '活动', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(316, 286, 148, 149, 4, 'com_content.article.410', '基于3D的多人协同建模平台', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(317, 314, 163, 164, 3, 'com_content.article.411', '2012 论文', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(318, 314, 165, 166, 3, 'com_content.article.412', '2012论文', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(319, 8, 190, 217, 2, 'com_content.category.90', '新闻', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(320, 319, 191, 192, 3, 'com_content.article.413', '2013软件展示会之IST实验室', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(321, 301, 155, 156, 3, 'com_content.article.414', '近年主要纵向项目', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(322, 301, 157, 158, 3, 'com_content.article.415', '实验室的气氛:', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(364, 319, 195, 196, 3, 'com_content.article.457', '2012届Ist实验室全日制硕士研究生答辩情况', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(365, 319, 197, 198, 3, 'com_content.article.458', '交大学子获中国大学生服务外包创新应用大赛一等奖[图]', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(366, 319, 199, 200, 3, 'com_content.article.459', 'NGX架构研究项目演示', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(367, 319, 201, 202, 3, 'com_content.article.460', '云计算的迁移', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(368, 319, 203, 204, 3, 'com_content.article.461', '基于资源的系统平台介绍', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(369, 319, 205, 206, 3, 'com_content.article.462', '本体创建研究', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(370, 319, 207, 208, 3, 'com_content.article.463', '上海交大获第三届中国大学生服务外包创新创业大赛二等奖', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(371, 319, 209, 210, 3, 'com_content.article.464', '实验室活动之共青森林公园烧烤游玩', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(372, 319, 211, 212, 3, 'com_content.article.465', '上海交通大学获第四届中国大学生软件服务外包创新创业大赛二等奖', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(373, 319, 213, 214, 3, 'com_content.article.466', 'X3D信息可视化组讨论班讲演', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(374, 319, 215, 216, 3, 'com_content.article.467', '2013年9月25日讨论班讲演', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(375, 314, 167, 168, 3, 'com_content.article.468', '2011', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(376, 314, 169, 170, 3, 'com_content.article.469', '2010', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(377, 314, 171, 172, 3, 'com_content.article.470', '2009', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(378, 314, 173, 174, 3, 'com_content.article.471', '2008', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(379, 314, 175, 176, 3, 'com_content.article.472', '2007', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(380, 314, 177, 178, 3, 'com_content.article.473', '2006', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(381, 314, 179, 180, 3, 'com_content.article.474', '2005', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(382, 314, 181, 182, 3, 'com_content.article.475', '2004', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(383, 314, 183, 184, 3, 'com_content.article.476', '2013', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(384, 314, 185, 186, 3, 'com_content.article.477', '2014', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_associations`
--

CREATE TABLE `urhc6_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_banners`
--

CREATE TABLE `urhc6_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `urhc6_banners`
--

INSERT INTO `urhc6_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(1, 1, 0, 'OSM 1', 'osm-1', 0, 1918, 0, 'http://www.opensourcematters.org', 1, 23, '', '', 0, 1, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(2, 1, 0, 'OSM 2', 'osm-2', 0, 2021, 2, 'http://www.opensourcematters.org', 1, 23, '', '', 0, 2, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(3, 1, 0, 'Joomla!', 'joomla', 0, 504, 0, 'http://www.joomla.org', 1, 24, '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 0, 1, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(4, 1, 0, 'JoomlaCode', 'joomlacode', 0, 504, 0, 'http://joomlacode.org', 1, 24, '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 0, 2, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(5, 1, 0, 'Joomla! Extensions', 'joomla-extensions', 0, 499, 0, 'http://extensions.joomla.org', 1, 24, '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 0, 3, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(6, 1, 0, 'Joomla! Shop', 'joomla-shop', 0, 499, 0, 'http://shop.joomla.org', 1, 24, '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 0, 4, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(7, 1, 0, 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 8, 1, 'http://shop.joomla.org', 1, 25, '', '', 0, 3, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(8, 1, 0, 'Joomla! Promo Books', 'joomla-promo-books', 0, 10, 0, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 25, '', '', 0, 4, '', '{}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*'),
(9, 1, 0, 'Demo Banner', 'demo-banner', 0, 2634, 0, '', 1, 26, '', '', 0, 1, '', '{"width":0,"height":0}', 0, '', -1, -1, -1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '*');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_banner_clients`
--

CREATE TABLE `urhc6_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_banner_tracks`
--

CREATE TABLE `urhc6_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_categories`
--

CREATE TABLE `urhc6_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `urhc6_categories`
--

INSERT INTO `urhc6_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 81, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 29, 30, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 31, 32, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 33, 34, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 35, 36, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 40, 1, 21, 28, 1, 'about-joomla', 'com_content', 'About Joomla!', 'about-joomla', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 41, 15, 22, 23, 2, 'about-joomla/the-project', 'com_content', 'The Project', 'the-project', '', 'General facts about Joomla!<br />', -2, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 42, 15, 24, 25, 2, 'about-joomla/the-cms', 'com_content', 'The CMS', 'the-cms', '', 'Information about the software behind Joomla!<br />', -2, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(18, 43, 15, 26, 27, 2, 'about-joomla/the-community', 'com_content', 'The Community', 'the-community', '', 'About the millions of Joomla! users and Web sites<br />', -2, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(23, 76, 1, 19, 20, 1, 'joomla', 'com_banners', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(24, 77, 1, 17, 18, 1, 'text-ads', 'com_banners', 'Text Ads', 'text-ads', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(25, 78, 1, 15, 16, 1, 'joomla-promo', 'com_banners', 'Joomla! Promo', 'joomla-promo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(26, 79, 1, 13, 14, 1, 'demo-banner', 'com_banners', 'Demo Banner', 'demo-banner', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(27, 80, 1, 11, 12, 1, 'contacts', 'com_contact_details', 'Contacts', 'contacts', '', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(28, 81, 1, 9, 10, 1, 'joomla', 'com_newsfeeds', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(29, 82, 1, 7, 8, 1, 'free-and-open-source-software', 'com_newsfeeds', 'Free and Open Source Software', 'free-and-open-source-software', '', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(30, 83, 1, 5, 6, 1, 'related-projects', 'com_newsfeeds', 'Related Projects', 'related-projects', '', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(31, 84, 1, 3, 4, 1, 'joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(32, 85, 1, 1, 2, 1, 'other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 62, '2009-04-07 19:56:18', 1, '{}', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*'),
(54, 161, 1, 37, 38, 1, '2011-11-20-05-30-41', 'com_content', '青春律动', '2011-11-20-05-30-41', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-06-08 15:33:00', 42, '2012-06-13 01:43:14', 0, '*'),
(66, 260, 1, 39, 40, 1, '2012-07-18-03-50-01', 'com_content', '媒体聚焦', '2012-07-18-03-50-01', '', '<p>媒体聚焦</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-07-18 03:50:01', 0, '0000-00-00 00:00:00', 0, '*'),
(68, 283, 77, 60, 61, 2, '2013-07-26-03-10-16/2012-10-01-13-44-37', 'com_content', '协同应用组', '2012-10-01-13-44-37', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-10-01 13:44:37', 42, '2014-09-21 09:20:06', 0, '*'),
(69, 284, 77, 62, 63, 2, '2013-07-26-03-10-16/2012-10-01-13-44-52', 'com_content', '云服务技术组', '2012-10-01-13-44-52', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-10-01 13:44:52', 42, '2014-09-21 09:20:16', 0, '*'),
(70, 285, 77, 64, 65, 2, '2013-07-26-03-10-16/2012-10-01-13-45-06', 'com_content', '数据语义组', '2012-10-01-13-45-06', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-10-01 13:45:06', 42, '2014-09-21 09:20:21', 0, '*'),
(71, 286, 77, 66, 67, 2, '2013-07-26-03-10-16/2012-10-01-13-45-13', 'com_content', '3D信息可视化组', '2012-10-01-13-45-13', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-10-01 13:45:13', 42, '2014-07-29 13:07:44', 0, '*'),
(72, 288, 1, 41, 56, 1, '2013-07-08-03-45-13', 'com_content', '人员', '2013-07-08-03-45-13', '', '<p>IST人员</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-08 03:45:13', 0, '0000-00-00 00:00:00', 0, '*'),
(73, 289, 72, 42, 43, 2, '2013-07-08-03-45-13/2013-07-08-03-49-15', 'com_content', '导师', '2013-07-08-03-49-15', '', '<h5 style="color: #333333; font-family: Verdana; line-height: 26px;">导师</h5>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-08 03:49:15', 0, '0000-00-00 00:00:00', 0, '*'),
(74, 290, 72, 44, 45, 2, '2013-07-08-03-45-13/2013-07-08-03-49-33', 'com_content', '博士生', '2013-07-08-03-49-33', '', '<p>博士生</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-08 03:49:33', 0, '0000-00-00 00:00:00', 0, '*'),
(75, 291, 72, 46, 55, 2, '2013-07-08-03-45-13/2013-07-08-03-49-58', 'com_content', '研究生', '2013-07-08-03-49-58', '', '<p>研究生</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-08 03:49:58', 42, '2013-07-08 03:50:49', 0, '*'),
(76, 297, 1, 57, 58, 1, '2013-07-09-03-17-12', 'com_content', '人员详细', '2013-07-09-03-17-12', '', '<p>人员详细</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-09 03:17:12', 0, '0000-00-00 00:00:00', 0, '*'),
(77, 301, 1, 59, 72, 1, '2013-07-26-03-10-16', 'com_content', '研究小组', '2013-07-26-03-10-16', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-26 03:10:16', 42, '2014-07-29 13:06:32', 0, '*'),
(78, 302, 77, 68, 69, 2, '2013-07-26-03-10-16/mes', 'com_content', 'MES架构组', 'mes', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-26 03:12:09', 0, '0000-00-00 00:00:00', 0, '*'),
(82, 307, 1, 73, 74, 1, '2013-07-26-04-02-32', 'com_content', '项目及软件', '2013-07-26-04-02-32', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-26 04:02:32', 0, '0000-00-00 00:00:00', 0, '*'),
(83, 308, 75, 47, 48, 3, '2013-07-08-03-45-13/2013-07-08-03-49-58/2013', 'com_content', '2013', '2013', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 10:28:09', 0, '0000-00-00 00:00:00', 0, '*'),
(84, 309, 75, 49, 50, 3, '2013-07-08-03-45-13/2013-07-08-03-49-58/2012', 'com_content', '2012', '2012', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 10:28:18', 0, '0000-00-00 00:00:00', 0, '*'),
(85, 310, 75, 51, 52, 3, '2013-07-08-03-45-13/2013-07-08-03-49-58/2011', 'com_content', '2011', '2011', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 10:28:27', 0, '0000-00-00 00:00:00', 0, '*'),
(86, 311, 75, 53, 54, 3, '2013-07-08-03-45-13/2013-07-08-03-49-58/2010', 'com_content', '2010', '2010', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 10:28:36', 0, '0000-00-00 00:00:00', 0, '*'),
(87, 313, 77, 70, 71, 2, '2013-07-26-03-10-16/orips', 'com_content', 'ORIPS组', 'orips', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 13:05:21', 42, '2014-07-29 13:05:38', 0, '*'),
(88, 314, 1, 75, 76, 1, '2014-07-29-13-21-52', 'com_content', '论文', '2014-07-29-13-21-52', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 13:21:52', 0, '0000-00-00 00:00:00', 0, '*'),
(89, 315, 1, 77, 78, 1, '2014-07-29-13-23-16', 'com_content', '活动', '2014-07-29-13-23-16', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 13:23:16', 0, '0000-00-00 00:00:00', 0, '*'),
(90, 319, 1, 79, 80, 1, '2014-07-29-13-51-16', 'com_content', '新闻', '2014-07-29-13-51-16', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2014-07-29 13:51:16', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_contact_details`
--

CREATE TABLE `urhc6_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `urhc6_contact_details`
--

INSERT INTO `urhc6_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_name":1,"show_position":1,"show_email":0,"show_street_address":1,"show_suburb":1,"show_state":1,"show_postcode":1,"show_country":1,"show_telephone":1,"show_mobile":1,"show_fax":1,"show_webpage":1,"show_misc":1,"show_image":1,"allow_vcard":0,"contact_icons":0,"icon_address":"","icon_email":"","icon_telephone":"","icon_fax":"","icon_misc":"","show_email_form":1,"email_description":1,"show_email_copy":1,"banned_email":"","banned_subject":"","banned_text":""}', 0, 12, 1, '', '', '', '', '', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_content`
--

CREATE TABLE `urhc6_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=478 ;

--
-- Dumping data for table `urhc6_content`
--

INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(416, 323, '2013 Software shows by IST', '2013-software-shows-by-ist', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;"><span id="ctl00_CentralContent_LabelTitle">2013 Software shows by IST</span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;">\r\n<ul>\r\n<li>请控制在4000字符以内!</li>\r\n<li><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/20131023174737kkk.png" border="0" /></li>\r\n</ul>\r\n</div>', '', 1, 0, 0, 90, '2014-07-29 17:32:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-07-29 17:32:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'en-GB', ''),
(417, 324, '鲍睿涵', '2014-07-30-04-06-57', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/20129162030425197-3.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>188486382@qq.com</li>\r\n</ul>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;"><span style="font-size: 12.800000190734863px;">Research direction:</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>NGX Application</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Other Infomation:</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>中国软件服务外包大赛2011年第二届一等奖</li>\r\n<li>中国软件服务外包大赛2012年第三届二等奖</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:06:57', 42, 42, '2014-07-30 04:06:57', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(431, 338, '白吉光', '2013-07-08-04-00-28', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013925145315IMG_7894.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Email &amp; Tel</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Research direction</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;"><span style="font-size: 12.800000190734863px;">Other Infomation</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"> </div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:01:22', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 12, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(418, 325, '曹佩', '2013-07-08-04-00-15', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012918221247IMG_7099.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>14782398988</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:36:04', 42, 42, '2014-07-30 03:59:04', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 14, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(419, 326, '陈充泽', '2013-07-08-04-00-16', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012918110858DSC_1898_副本.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：cczsjtu@foxmail.com</li>\r\n<li>微博：http://weibo.com/ccz2jyx</li>\r\n<li>人人：http://www.renren.com/249358498</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:02:28', 42, 42, '2014-07-30 04:02:34', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 13, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(420, 327, '邓建勋', '2013-07-08-04-00-17', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012913214459无标题.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>手机：13564669687</li>\r\n<li>isaacdjxdjx@gmail.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:01:58', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 12, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(421, 328, '方泽杭', '2013-07-08-04-00-18', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012926122508IMG_20120926_122047.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:58:56', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 11, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(422, 329, '胡敬远', '2013-07-08-04-00-19', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012914230155胡敬远330482198909260031.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>tel:15121022007</li>\r\n<li>Email:hujingyuan16@163.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>DOR(Data Oriented Resource platform)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:01:13', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 10, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(423, 330, '胡畔', '2013-07-08-04-00-20', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013916123053一寸免冠照片_胡畔.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; font-weight: bold; line-height: 25.600000381469727px;">\r\n<li style="font-weight: normal;">本人于2012年6月毕业于上海交通大学软件学院，获工学学士学位(Bachelor of Science in Engineering)，2013年9月毕业于法国国立高等矿业精英大学-圣埃蒂安分校，获工程师学位 （Bachelor of Arts），同年毕业于里昂大学，获理学硕士学位 (Master of Science)，曾于2013年3月至9月在比利时天主教鲁汶大学（荷兰语）机器学习实验室交流（International Scholar）。</li>\r\n<li style="font-weight: normal;">本人业余时间酷爱乒乓球，长期坚持半专业训练，曾代表上海交通大学出战全国和市级比赛若干次。</li>\r\n<li style="font-weight: normal;"><span style="font-weight: bold; font-size: 12.800000190734863px;">联系方式</span>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n</li>\r\n<li>电子邮件: sjtu.hupan AT gmail.com</li>\r\n<li style="font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n</li>\r\n<li>机器学习，数据挖掘，语义网络</li>\r\n<li style="font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n</li>\r\n<li>Publications :</li>\r\n<li>A poster presented at the 2013 Spring Workshop on Mining and Learning (SMILEE 2013)</li>\r\n<li>Hu, P., Vens, C., Verstrynge, B., and Blockeel, H. (2013). Generalizing from example clusters. In Proceedings of the 16th International Conference on Discovery Science (EI).</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:01:38', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 9, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(424, 331, '罗扬', '2013-07-08-04-00-21', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012913183800头像.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>email:779446731@qq.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:00:54', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 8, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(425, 332, '马晓明', '2013-07-08-04-00-22', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012916234820QQ截图20120916233053.png" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<li>Tel: 18818212279</li>\r\n<li>QQ: 948651615</li>\r\n<li>Email: maxiaoming_2011@163.com</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n</li>\r\n<li>X3D多人协同建模基于语义的冲突分析、管理和解决</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:02:52', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(426, 333, '王建毅', '2013-07-08-04-00-23', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012913184215修改版DSCF3437.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<li>手机：15801735651</li>\r\n<li>邮箱：327913186@qq.com</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:59:41', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(427, 334, '王珍海', '2013-07-08-04-00-24', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012913191313捕获.PNG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<li>邮箱：wangzhenhai3@126.com</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n</li>\r\n<li>X3D协同建模</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:00:06', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(428, 335, '吴江', '2013-07-08-04-00-25', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/20129121618522012-09-12%2009.17.17.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<li>kai3204356@yahoo.com.cn</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:57:06', 42, 42, '2014-07-30 03:58:23', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(429, 336, '俞宏云', '2013-07-08-04-00-26', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012915204415头像.png" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<ul style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<li>yhyleo@sjtu.edu.cn</li>\r\n<li>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>\r\n</li>\r\n</ul>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:56:13', 42, 42, '2014-07-30 03:58:16', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(430, 337, '祝利聪', '2013-07-08-04-00-27', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201291492312large_FBtN_125700004213125c.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>13917141907</li>\r\n<li>zhulicong@sjtu.edu.cn</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"> </div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 04:03:43', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(432, 339, '陈天', '2013-07-08-04-00-29', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013917121859QQ20130917-3.png" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Email &amp; Tel：</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;"><span style="font-size: 12.800000190734863px;">邮箱：</span><span style="font-size: 12.800000190734863px; font-weight: normal;">tinachen@sjtu.edu.cn</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Research direction</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;"><span style="font-size: 12.800000190734863px;">Other Infomation</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"> </div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:04:14', 42, 42, '2014-07-31 09:10:45', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(433, 340, '杜日光 (15)', '2013-07-08-04-00-28', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012914103057avatar.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Email &amp; Tel</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>电话：13661755647</li>\r\n<li>邮箱: donhatquang@gmail.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Research direction:</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>NGX Application</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Other Infomation:</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>中国软件服务外包大赛2011年第二届一等奖</li>\r\n<li>中国软件服务外包大赛2012年第三届二等奖</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:34:21', 0, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(434, 341, '侯佰鑫', '2013-07-08-04-00-30', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013919225113阿阿萨德.png" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:08:39', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(435, 342, '季金鑫', '2013-07-08-04-00-31', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013916192746照片%20102(以后洗照片可用）.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>邮箱：827376467@qq.com</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:09:55', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(436, 343, '余彬和', '2013-07-08-04-00-32', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013912191222310592595.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：yubin1991@yeah.net</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:13:16', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(437, 344, '李郁睐', '2013-07-08-04-00-33', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013916190017IMG_5854~1.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：170412795@qq.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;"> </div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:14:39', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 7, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(438, 345, '栾帅', '2013-07-08-04-00-34', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013923155946IMG_7312_副本.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:17:38', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(439, 346, '钱钰', '2013-07-08-04-00-35', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/20139161833251.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:18:21', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(440, 347, '吴疆', '2013-07-08-04-00-36', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013917231556吴疆登记像9.4-360.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:19:10', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(441, 348, '吴连亮', '2013-07-08-04-00-37', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2013923705251.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:19:51', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(442, 349, '谢晓青', '2013-07-08-04-00-38', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201392113480416K.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:20:37', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(443, 350, '徐珂', '2013-07-08-04-00-39', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201310993045SM0185-1210300004.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 83, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:21:30', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(444, 351, '丁杰', '2013-07-08-04-00-40', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201391103836photo.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:28:58', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 12, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(445, 352, '陈哲', '2013-07-08-04-00-41', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201191323384118756%20%209k.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱： </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:29:47', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(446, 353, '姜祖海', '2013-07-08-04-00-42', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913180329fixed.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<ul>\r\n<li style="font-weight: normal;">2007-2011 中南大学软件学院</li>\r\n<li style="font-weight: normal;">2011至今 上海交通大学软件学院</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n</ul>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：sansiex1988@gmail.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>ORIPS</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:39:36', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(450, 357, '刘子嘉', '2013-07-08-04-00-46', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011914185646lzj.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2007年至2011年 武汉大学国际软件学院</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2011年至今 上海交通大学软件学院</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n</ul>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：liuzijia0108@yahoo.com.cn</li>\r\n<li>QQ：505257922</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:41:35', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(447, 354, '计晓峰', '2013-07-08-04-00-43', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913130519计晓峰.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：andyjxf@sjtu.edu.cn</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:36:55', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(448, 355, '计晓峰 (2)', '2013-07-08-04-00-44', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913130519计晓峰.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：andyjxf@sjtu.edu.cn</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:36:55', 0, 42, '2014-07-30 05:36:58', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(449, 356, '计晓峰 (3)', '2013-07-08-04-00-45', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913130519计晓峰.JPG" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：andyjxf@sjtu.edu.cn</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:36:55', 0, 42, '2014-07-30 05:36:58', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(451, 358, '邱倩如', '2013-07-08-04-00-47', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913132439单.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2011-至今 上海交通大学 软件学院 软件工程 管理信息系统实验室</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2007-2011 浙江大学 软件工程</li>\r\n</ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n</ul>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：qiuqianru@gmail.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:43:21', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(452, 359, '师绍秋', '2013-07-08-04-00-48', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/201192613203320090315009.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n</ul>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>邮箱：shishaoqiu@126.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>ORIPS</li>\r\n</ul>\r\n</span></div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:45:18', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(453, 360, '汪涵', '2013-07-08-04-00-49', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/20119735751无标题.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2007~2011 上海交通大学软件学院 数字艺术方向</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2011~ 上海交通大学软件学院 信息系统实验室 信息可视化组</li>\r\n</ul>\r\n<p> </p>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">研究方向</span></li>\r\n</ul>\r\n</ul>\r\n<p><span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>信息可视化，网页3D建模，3D模型本体管理等</li>\r\n</ul>\r\n</span></p>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n</div>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:47:36', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(454, 361, '徐锋', '2013-07-08-04-00-50', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913124243DSC01442副本.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<p><span id="ctl00_CentralContent_LabelIntroduction">\r\n<ul>\r\n<li>2011.7~上海交大软件学院</li>\r\n</ul>\r\n</span></p>\r\n<p> </p>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">邮箱：</span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">good.gold@yahoo.com.cn</span></li>\r\n</ul>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">研究方向： MES</span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">其它信息</span></li>\r\n</ul>\r\n</ul>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:50:04', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(455, 362, '张煜苒', '2013-07-08-04-00-51', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913115612我的照片.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p>  </p>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">邮箱：</span>zhangyuran1130@gmail.com</li>\r\n</ul>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">研究方向： </span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">其它信息</span></li>\r\n</ul>\r\n</ul>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:51:42', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(456, 363, '朱菁菁', '2013-07-08-04-00-52', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011913202740QQ截图20110913202708.png" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<p> </p>\r\n<p><span style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2011-至今 上海交通大学 软件学院 软件工程 管理信息系统实验室</span></p>\r\n<p><span style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;">2007-2011 华东师范大学 软件学院 软件工程</span></p>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">联系方式</span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">邮箱：</span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">610037869@qq.com</span></li>\r\n</ul>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">研究方向： </span></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 13px; line-height: 25.600000381469727px;"><span style="font-weight: bold;">其它信息</span></li>\r\n</ul>\r\n</ul>', 1, 0, 0, 85, '2013-07-08 04:00:11', 42, '', '2014-07-30 05:53:23', 42, 42, '2014-07-30 05:53:23', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(339, 0, '举行上海交通大学2012届本科生毕业典礼的公告', 'djg4', '', '<p>上海交通大学2012届全体本科毕业生：</p>\r\n<p>　　根据教学计划任务安排和院系毕业设计（论文）工作进展情况，兹定于2012年6月22日（星期五）下午1：30-4：30在闵行校区新体育馆隆重举行 “上海交通大学2012届本科生毕业典礼暨学位授予仪式”，请如时出席，按指定座位就坐，并诚邀您的家人、亲友同赴庆典、共同见证。</p>\r\n<p>　　特此公告。</p>\r\n<p align="right">　　教务处<br />　　学生工作指导委员会<br />　　2012年5月18日</p>\r\n<p>　　时光荏苒，岁月如梭；春华秋实、寒暑四载！</p>\r\n<p>　　四年前，你们以“交大人”之名相聚浦江之滨。这座跨越了三个世纪的大学，这座气交物通、上下心交的高等学府，因为你们的加入，激情四溢、活力万千。</p>\r\n<p>　　四年间，你们以“交大人”之名自立拼搏，以勤、朴、忠、诚之交汇贯通的准则，怀感恩之心，承责任之重，以激情之志，寻梦想之途。</p>\r\n<p>　　如今，你们将以“交大人”之名从大学殿堂扬帆启航，愿思源致远成为你们的一种情怀、一种信念、一种品格，激励你们不断超越自我、勇创一流，愿“大爱”校园里走出的你们，用更广博、更深厚的爱去奉献社会、投身事业、关注他人、呵护家庭。</p>\r\n<p>　　一段难忘的岁月，一份难舍的情怀，一场难得的相聚，让我们共同祝福：2012届校友，前程似锦！ </p>', '', -2, 0, 0, 54, '2012-06-13 14:22:07', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-06-13 14:22:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 5, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(340, 0, '举行上海交通大学2012届本科生毕业典礼的公告', 'djg5', '', '<p>上海交通大学2012届全体本科毕业生：</p>\r\n<p>　　根据教学计划任务安排和院系毕业设计（论文）工作进展情况，兹定于2012年6月22日（星期五）下午1：30-4：30在闵行校区新体育馆隆重举行 “上海交通大学2012届本科生毕业典礼暨学位授予仪式”，请如时出席，按指定座位就坐，并诚邀您的家人、亲友同赴庆典、共同见证。</p>\r\n<p>　　特此公告。</p>\r\n<p align="right">　　教务处<br />　　学生工作指导委员会<br />　　2012年5月18日</p>\r\n<p>　　时光荏苒，岁月如梭；春华秋实、寒暑四载！</p>\r\n<p>　　四年前，你们以“交大人”之名相聚浦江之滨。这座跨越了三个世纪的大学，这座气交物通、上下心交的高等学府，因为你们的加入，激情四溢、活力万千。</p>\r\n<p>　　四年间，你们以“交大人”之名自立拼搏，以勤、朴、忠、诚之交汇贯通的准则，怀感恩之心，承责任之重，以激情之志，寻梦想之途。</p>\r\n<p>　　如今，你们将以“交大人”之名从大学殿堂扬帆启航，愿思源致远成为你们的一种情怀、一种信念、一种品格，激励你们不断超越自我、勇创一流，愿“大爱”校园里走出的你们，用更广博、更深厚的爱去奉献社会、投身事业、关注他人、呵护家庭。</p>\r\n<p>　　一段难忘的岁月，一份难舍的情怀，一场难得的相聚，让我们共同祝福：2012届校友，前程似锦！ </p>', '', -2, 0, 0, 54, '2012-06-13 14:22:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-06-13 14:22:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(341, 0, '举行上海交通大学2012届本科生毕业典礼的公告', 'djg6', '', '', '\r\n<p>上海交通大学2012届全体本科毕业生：</p>\r\n<p>　　根据教学计划任务安排和院系毕业设计（论文）工作进展情况，兹定于2012年6月22日（星期五）下午1：30-4：30在闵行校区新体育馆隆重举行 “上海交通大学2012届本科生毕业典礼暨学位授予仪式”，请如时出席，按指定座位就坐，并诚邀您的家人、亲友同赴庆典、共同见证。</p>\r\n<p>　　特此公告。</p>\r\n<p style="text-align: right;">　　教务处<br />　　学生工作指导委员会<br />　　2012年5月18日</p>\r\n<p>　　时光荏苒，岁月如梭；春华秋实、寒暑四载！</p>\r\n<p>　　四年前，你们以“交大人”之名相聚浦江之滨。这座跨越了三个世纪的大学，这座气交物通、上下心交的高等学府，因为你们的加入，激情四溢、活力万千。</p>\r\n<p>　　四年间，你们以“交大人”之名自立拼搏，以勤、朴、忠、诚之交汇贯通的准则，怀感恩之心，承责任之重，以激情之志，寻梦想之途。</p>\r\n<p>　　如今，你们将以“交大人”之名从大学殿堂扬帆启航，愿思源致远成为你们的一种情怀、一种信念、一种品格，激励你们不断超越自我、勇创一流，愿“大爱”校园里走出的你们，用更广博、更深厚的爱去奉献社会、投身事业、关注他人、呵护家庭。</p>\r\n<p>　　一段难忘的岁月，一份难舍的情怀，一场难得的相聚，让我们共同祝福：2012届校友，前程似锦！</p>', 1, 0, 0, 54, '2012-06-13 23:25:38', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-06-13 23:25:38', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 164, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(345, 0, 'test', 'test', '', '<p>test</p>', '', -2, 0, 0, 54, '2012-06-15 12:58:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-06-15 12:58:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(346, 0, 'test2', 'test2', '', '<p>test2</p>', '', -2, 0, 0, 54, '2012-06-17 00:25:13', 42, '', '2012-06-17 00:27:14', 42, 0, '0000-00-00 00:00:00', '2012-06-17 00:25:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(358, 232, 'test', 'djg13', '', '', '\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;">    康奈尔大学成立于1865年，是代表美国顶尖名校的常春藤盟校八大成员之一，农科全球排名第一位。上海交通大学农业与生物学院从2004年开始与该校的农业与生命学院展开了全面合作，多年来在人才培养、科学研究、社会服务等领域开展深度合作，取得了卓越的成效。学院2009 年开始采用2+2的双学位培养模式，与康奈尔大学联合培养本科生，目前已有13名交大本科生入选该计划就读于康奈尔大学。</span></p>\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;"><img src="images/111118.jpg" border="0" alt="" /></span></p>\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;"><br /></span></p>\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;"><br /></span></p>\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;"><br /></span></p>\r\n<p><span style="font-family: Arial, Arial, sans-serif; font-size: 14px; line-height: 19px; background-color: #000000;"><br /></span></p>', -2, 0, 0, 54, '2012-06-19 00:26:58', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-06-19 00:26:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(400, 292, '步丰林', '2013-07-08-04-00-11', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011516154515bufl.jpg" border="0" width="150" style="border: 0;" /></p>\r\n<p>步丰林</p>\r\n', '\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">步丰林</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">硕士导师</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">联系方式</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">E-mail:flbu@sjtu.edu.cn</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">研究方向</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">计算机集成制造系统</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">业务流程建模</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">其它信息</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">科研情况</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">863 CIMS</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">主题重点项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">并行工程</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">新大洲大轮踏板摩托车并行工程</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">支持异种</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">CAD</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">平台间的分布协同设计的装配特征建模技术研究</span></p>\r\n<p> </p>\r\n<p> </p>', 1, 0, 0, 73, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:28:59', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 3, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(401, 293, '蔡鸿明', '2013-07-08-04-00-12', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011610165507caihm201106.jpg" border="0" width="150" style="border: 0;" /></p>\r\n<p>蔡鸿明</p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">蔡鸿明</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">副教授</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">博士生导师。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1996,1999,2002</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年西北工业大学分别获得学士、硕士、博士学位</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2004</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年从上海交通大学计算机科学与技术博士后流动站提前出站后留校任教</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年由德国克虏伯基金及中国国家留学基金委公派赴德国曼海姆大学</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">BIT</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">研究所访问学者</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年。</span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="center"><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">联系方式</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">邮箱：</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> hmcai@sjtu.edu.cn</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">研究方向</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">服务计算、协同计算、业务流程建模、信息集成技术、信息可视化技术</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">其它信息</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">学术兼职</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">:</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国图学学会理事，计算机图学专委会秘书长</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海工程图学学会理事，数字化设计及集成制造专委会副主任</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国计算机学会高级会员，协同计算专委会委员</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国自动化学会制造技术专业委员会委员</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国通信学会云计算专家委员会委员</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">ACM/IEEE member,ISCG member.</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">—————————————————————————————————————————————</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">获奖</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">:</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2012</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年上海交通大学凯原十佳教师</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2012</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年全国优秀科技工作者</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2011</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年上海交通大学优秀教师二等奖</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2010</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国高校科学技术奖科技进步奖（二等）：基于信息资源的</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">web</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">服务平台</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年上海交通大学首届</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">晨星青年学者奖励计划优秀青年教师后备人才</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">一等奖</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海高校选拔培养优秀青年教师科研专项基金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">项目培养范围。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年德国阿尔弗来德</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">.</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">克虏伯</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">.</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">冯</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">.</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">博棱和哈尔巴赫基金会基金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国优秀青年学者奖学金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2006</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市科技进步奖（三等）</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">: </span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">都市工业设计信息大平台研制及应用</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2001</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">中国高校科学技术奖自然科学奖（二等）：典型机床计算机辅助造型软件系统</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">——————————————————————————————————————————————</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">:</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">863</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">资源元模型驱动的企业信息集成平台研究</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008AA04Z126</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008.10-2010.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家自然科学基金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> “</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">网格环境下面向可视操纵的几何建模服务构造研究</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">60603080</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007.1-2009.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">航空科学基金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于资源的产品跨企业综合集成平台研究</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007ZG5701</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007.10-2009.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">铁道部</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">铁路信息科学与工程</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">重点实验室基金（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">DXX0505</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">面向虚拟城市构造的三维模型生成技术研究</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2005.7-2006.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海外高桥造船公司数字化造船平台决策支持系统及生产现场管理系统，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2005.9-2007.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">B-B</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">的药品电子商务系统，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007.7-2008.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，企业合作项目，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">web</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">的上海通信管理局电子政务系统，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2006.7-2008.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，技术负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2007</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年科技项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市公交智能调度系统综合集成示范应用研究</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">07DZ12061</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">）课题子项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">公交信息化和智能调度标准规范研究项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2008.3-2009.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2004</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年重大科技项目，上海洋山深水港</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">数字港城</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">的标准规范，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2005.1-2007.12</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，主要完成人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2003</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">年科技项目，上海洋山深水港</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">数字港城</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">框架规划</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">主要完成人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">863</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">项目（</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2003AA411310</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于知识的概念创新设计系统</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”,2003.10-2005.3,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">主要完成人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海市重点项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">(025111051)“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于资源库的快速设计制造网络平台</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”,2002.11-2005.3,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">技术负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家中小企业创新基金</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">LONWORKS</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">的家庭智能控制器及其应用平台</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2001.1-2002.12,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">第</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家自然科学基金，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于美学家大脑模型的产品外观创新设计</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”, 2000.11-2002.9,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">第一参加者</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">863</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">重大攻关课题，山西经纬纺机厂</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">基于虚拟制造的剑杆织机创新设计</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”, 1999.11-2000.12,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">分专题技术负责人</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">国家</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">863</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">课题项目</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">“</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">西安飞机公司</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">Y7-200A</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">内装饰并行工程</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">”,1999.4-2000.11,</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">主要参加者</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"> </p>\r\n<p class="MsoNormal"><span lang="EN-US"> </span></p>\r\n</div>', 1, 0, 0, 73, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:27:17', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 11, 0, 2, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(402, 294, '姜丽红', '2013-07-08-04-00-13', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011622150743%E5%A7%9C%E4%B8%BD%E7%BA%A2%204.gif" border="0" width="150" style="border: 0;" /></p>\r\n<p><a href="http://ist.sjtu.edu.cn/UI/Chinese/StaffDetail.aspx?UserID=10" target="_self" style="text-decoration: none; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px; text-align: center;">姜丽红</a></p>\r\n', '\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1985.9-1989.7</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，天津大学计算机系本科。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1989.9-1992.4</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，天津大学计算机系硕士研究生。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1993.5-1996.4</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，天津大学系统工程研究所博士研究生。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1996.5-1998.4</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，复旦大学管理学院博士后。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1998.5- </span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">上海交通大学</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">联系方式</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">E-mail:jiang-lh@cs.sjtu.edu.cn</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">研究方向</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">数据仓库与数据挖掘</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">ERP</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">系统</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">管理信息系统</span></p>\r\n<p class="MsoNormal" style="line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><strong><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">其它信息</span></strong><strong></strong></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">Lihong Jiang, et.al., An Automatic Method of Data Warehouses Multi-dimension Modeling for Distributed Information Systems, CSCWD 2011.</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> Lihong Jiang, et.al.,A domain ontology approach in the ETL process of data warehousing, 2010 IEEE 7th International Conference on e-Business Engineering (ICEBE 2010), pp.30-35.(EI20110813692184)</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">3</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红等，基于案例推理的过滤算法及智能信息推荐系统，清华大学学报（自然科学版），</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2006,46(S1)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">pp.1074-1077</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">(EI20070110348819)</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">4</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红等，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> cnXML</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">电子商务中注册服务机制研究，合肥工业大学学报</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">(</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">自然科学版</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2004</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">27(2)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">pp.195-198</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">5</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红等，信息自动过滤方法以及个性化的信息推荐系统，情报科学，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2005,23(S1)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">pp.149-152</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">6</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红等，一种协同过滤方法及其在信息推荐系统中的实现，情报学报，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2005</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">24(6)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">pp.669-673</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">7</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红，吴建林，薛华成，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US"> GDSS</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">决策信息流及基于</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">Multi-agents</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">信息收集模型研究，</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">复旦学报</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">(</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">自然科学版</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">2000,39(1)</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">pp.15-18</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span></p>\r\n<p class="MsoNormal" style="margin-left: 66pt; text-indent: -18pt; line-height: 19.5pt; background-position: initial initial; background-repeat: initial initial;" align="left"><span style="font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">·<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">         </span></span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">8</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">、</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">姜丽红，吴建林，薛华成，一种基于多智能主体的</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">GDSS</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">信息收集框架，管理科学学报，</span><span style="font-size: 10.0pt; font-family: ''Verdana'',''sans-serif''; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;" lang="EN-US">1998, Vol.1, No.2, pp.80-85</span><span style="font-size: 10.0pt; font-family: 宋体; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; color: #333333; mso-font-kerning: 0pt;">。</span></p>\r\n<p> </p>', 1, 0, 0, 73, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:29:38', 42, 42, '2013-07-09 03:29:38', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(403, 295, '谢诚', '2013-07-08-04-00-14', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011520132054xiecheng.jpg" border="0" width="200" style="border: 0;" /></p>\r\n<p><span style="color: #333333; font-family: Verdana; font-size: 13px; font-weight: bold; line-height: 26px;">谢诚</span></p>\r\n<p> </p>', '', 1, 0, 0, 74, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:03:55', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(404, 296, '黄承曦', '2013-07-08-04-00-15', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/20129141412172011530195522picture.do.jpg" border="0" width="200" style="border: 0;" /></p>\r\n<p><span style="color: #333333; font-family: Verdana; font-size: 13px; font-weight: bold; line-height: 26px;">黄承曦</span></p>\r\n<p> </p>', '', 1, 0, 0, 74, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:04:41', 42, 42, '2013-07-09 03:04:41', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(405, 298, '姜丽红', '2013-07-08-04-00-14', '', '<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;"><span id="ctl00_CentralContent_LabelName">姜丽红</span></div>\r\n<span id="ctl00_CentralContent_LabelIntroduction">\r\n<ul>\r\n<li>1985.9-1989.7，天津大学计算机系本科。</li>\r\n<li>1989.9-1992.4，天津大学计算机系硕士研究生。</li>\r\n<li>1993.5-1996.4，天津大学系统工程研究所博士研究生。</li>\r\n<li>1996.5-1998.4，复旦大学管理学院博士后。</li>\r\n<li>1998.5- 上海交通大学</li>\r\n</ul>\r\n</span></div>\r\n<div id="staffContent_header_right" style="margin: 0px; padding: 0px; border: 1px dotted #b9b9b9; float: right; height: 200px; width: 150px; text-align: center;"><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011622150743%e5%a7%9c%e4%b8%bd%e7%ba%a2%204.gif" border="0" style="height: 200px; width: 150px;" /></div>\r\n</div>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>E-mail:jiang-lh@cs.sjtu.edu.cn</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>数据仓库与数据挖掘</li>\r\n<li>ERP系统</li>\r\n<li>管理信息系统</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelAchievement">\r\n<ul>\r\n<li>1、Lihong Jiang, et.al., An Automatic Method of Data Warehouses Multi-dimension Modeling for Distributed Information Systems, CSCWD 2011.</li>\r\n<li>2、 Lihong Jiang, et.al.,A domain ontology approach in the ETL process of data warehousing, 2010 IEEE 7th International Conference on e-Business Engineering (ICEBE 2010), pp.30-35.(EI20110813692184)</li>\r\n<li>3、 姜丽红等，基于案例推理的过滤算法及智能信息推荐系统，清华大学学报（自然科学版），2006,46(S1)，pp.1074-1077。(EI20070110348819)</li>\r\n<li>4、 姜丽红等， cnXML电子商务中注册服务机制研究，合肥工业大学学报(自然科学版)，2004，27(2)，pp.195-198。</li>\r\n<li>5、 姜丽红等，信息自动过滤方法以及个性化的信息推荐系统，情报科学，2005,23(S1)，pp.149-152。</li>\r\n<li>6、 姜丽红等，一种协同过滤方法及其在信息推荐系统中的实现，情报学报，2005，24(6)，pp.669-673。</li>\r\n<li>7、 姜丽红，吴建林，薛华成， GDSS决策信息流及基于Multi-agents信息收集模型研究， 复旦学报(自然科学版)，2000,39(1)，pp.15-18。</li>\r\n<li>8、 姜丽红，吴建林，薛华成，一种基于多智能主体的GDSS信息收集框架，管理科学学报，1998, Vol.1, No.2, pp.80-85。</li>\r\n</ul>\r\n</span></div>\r\n</div>', '', 1, 0, 0, 76, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:21:13', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(406, 299, '步丰林', '2013-07-08-04-00-15', '', '<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;">\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;"><span id="ctl00_CentralContent_LabelName">步丰林</span></div>\r\n<span id="ctl00_CentralContent_LabelIntroduction">\r\n<ul>\r\n<li>硕士导师</li>\r\n</ul>\r\n</span></div>\r\n<div id="staffContent_header_right" style="margin: 0px; padding: 0px; border: 1px dotted #b9b9b9; float: right; height: 200px; width: 150px; text-align: center;"><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011516154515bufl.jpg" border="0" style="height: 200px; width: 150px;" /></div>\r\n</div>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1; font-weight: normal;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>E-mail:flbu@sjtu.edu.cn</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>计算机集成制造系统</li>\r\n<li>业务流程建模</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelAchievement">\r\n<ul>\r\n<li>科研情况</li>\r\n<li>国家863 CIMS主题重点项目“并行工程”</li>\r\n<li>新大洲大轮踏板摩托车并行工程</li>\r\n<li>支持异种CAD平台间的分布协同设计的装配特征建模技术研究</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 0, 0, 76, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:22:09', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(407, 300, '蔡鸿明', '2013-07-08-04-00-16', '', '<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 13px; line-height: 26px;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;">\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;">\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div id="staffContent_header_left" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 500px;">\r\n<div id="staffContent_header_left_title" style="margin: 0px; padding: 5px 0px; border: 0px; height: 20px; font-weight: bold;"><span id="ctl00_CentralContent_LabelName">蔡鸿明</span></div>\r\n<span id="ctl00_CentralContent_LabelIntroduction">\r\n<ul>\r\n<li>副教授,博士生导师。</li>\r\n<li>1996,1999,2002年西北工业大学分别获得学士、硕士、博士学位</li>\r\n<li>2004年从上海交通大学计算机科学与技术博士后流动站提前出站后留校任教</li>\r\n<li>2008年由德国克虏伯基金及中国国家留学基金委公派赴德国曼海姆大学BIT研究所访问学者1年。</li>\r\n</ul>\r\n</span></div>\r\n<div id="staffContent_header_right" style="margin: 0px; padding: 0px; border: 1px dotted #b9b9b9; float: right; height: 200px; width: 150px; text-align: center;"><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2011610165507caihm201106.jpg" border="0" style="height: 200px; width: 150px;" /></div>\r\n</div>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1; font-weight: normal;"> </div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">联系方式</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelContact">\r\n<ul>\r\n<li>邮箱： hmcai@sjtu.edu.cn</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">研究方向</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelDirection">\r\n<ul>\r\n<li>服务计算、协同计算、业务流程建模、信息集成技术、信息可视化技术</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">其它信息</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;"><span id="ctl00_CentralContent_LabelAchievement">\r\n<ul>\r\n<li>学术兼职:</li>\r\n<li>中国图学学会理事，计算机图学专委会秘书长</li>\r\n<li>上海工程图学学会理事，数字化设计及集成制造专委会副主任</li>\r\n<li>中国计算机学会高级会员，协同计算专委会委员</li>\r\n<li>中国自动化学会制造技术专业委员会委员</li>\r\n<li>中国通信学会云计算专家委员会委员</li>\r\n<li>ACM/IEEE member,ISCG member.</li>\r\n<li>—————————————————————————————————————————————</li>\r\n<li>获奖:</li>\r\n<li>2012年上海交通大学凯原十佳教师</li>\r\n<li>2012年全国优秀科技工作者</li>\r\n<li>2011年上海交通大学优秀教师二等奖</li>\r\n<li>2010中国高校科学技术奖科技进步奖（二等）：基于信息资源的web服务平台</li>\r\n<li>2008年上海交通大学首届“晨星青年学者奖励计划优秀青年教师后备人才”一等奖</li>\r\n<li>2008年“上海高校选拔培养优秀青年教师科研专项基金”项目培养范围。</li>\r\n<li>2007年德国阿尔弗来德.克虏伯.冯.博棱和哈尔巴赫基金会基金“中国优秀青年学者奖学金”</li>\r\n<li>2006上海市科技进步奖（三等）: 都市工业设计信息大平台研制及应用</li>\r\n<li>2001中国高校科学技术奖自然科学奖（二等）：典型机床计算机辅助造型软件系统</li>\r\n<li>——————————————————————————————————————————————</li>\r\n<li>项目:</li>\r\n<li>国家863项目“资源元模型驱动的企业信息集成平台研究”（2008AA04Z126），2008.10-2010.12，负责人</li>\r\n<li>国家自然科学基金 “网格环境下面向可视操纵的几何建模服务构造研究”（60603080），2007.1-2009.12，负责人</li>\r\n<li>航空科学基金“基于资源的产品跨企业综合集成平台研究”（2007ZG5701），2007.10-2009.12，负责人</li>\r\n<li>铁道部“铁路信息科学与工程”重点实验室基金（DXX0505），“面向虚拟城市构造的三维模型生成技术研究”，2005.7-2006.12，负责人</li>\r\n<li>上海外高桥造船公司数字化造船平台决策支持系统及生产现场管理系统，2005.9-2007.12，负责人</li>\r\n<li>基于B-B的药品电子商务系统，2007.7-2008.12，企业合作项目，负责人</li>\r\n<li>基于web的上海通信管理局电子政务系统，2006.7-2008.12，技术负责人</li>\r\n<li>上海市2007年科技项目“上海市公交智能调度系统综合集成示范应用研究”（07DZ12061）课题子项目“公交信息化和智能调度标准规范研究项目”，2008.3-2009.12，负责人</li>\r\n<li>上海市2004年重大科技项目，上海洋山深水港“数字港城”的标准规范，2005.1-2007.12，主要完成人</li>\r\n<li>上海市2003年科技项目，上海洋山深水港“数字港城”框架规划,主要完成人</li>\r\n<li>国家863项目（2003AA411310），“基于知识的概念创新设计系统”,2003.10-2005.3,主要完成人</li>\r\n<li>上海市重点项目(025111051)“基于资源库的快速设计制造网络平台”,2002.11-2005.3,技术负责人</li>\r\n<li>国家中小企业创新基金“基于LONWORKS的家庭智能控制器及其应用平台”，2001.1-2002.12,第2负责人</li>\r\n<li>国家自然科学基金，“基于美学家大脑模型的产品外观创新设计”, 2000.11-2002.9,第一参加者</li>\r\n<li>国家863重大攻关课题，山西经纬纺机厂“基于虚拟制造的剑杆织机创新设计”, 1999.11-2000.12,分专题技术负责人</li>\r\n<li>国家863课题项目“西安飞机公司Y7-200A内装饰并行工程”,1999.4-2000.11,主要参加者</li>\r\n</ul>\r\n</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 0, 0, 76, '2013-07-08 04:00:11', 42, '', '2013-07-09 03:22:43', 42, 42, '2013-07-09 03:22:43', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(409, 312, '杜日光', '2013-07-08-04-00-14', '', '<p><img src="http://ist.sjtu.edu.cn/UI/Images/StaffImages/2012914103057avatar.jpg" border="0" width="150" height="200" style="border: 0;" /></p>\r\n', '\r\n<div id="staffContent_header" style="margin: 25px 40px 0px; padding: 0px; border: 0px; font-weight: normal;">\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Email &amp; Tel</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>电话：13661755647</li>\r\n<li>邮箱: donhatquang@gmail.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Research direction:</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>NGX Application</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="staffContent_middle" style="margin: 0px 40px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="staffContent_middle_header" style="margin: 0px; padding: 5px 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; height: 20px; font-weight: bold;">Other Infomation:</div>\r\n<div class="staffContent_middle_content" style="margin: 0px; padding: 0px; border: 0px;">\r\n<ul>\r\n<li>中国软件服务外包大赛2011年第二届一等奖</li>\r\n<li>中国软件服务外包大赛2012年第三届二等奖</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 1, 0, 0, 84, '2013-07-08 04:00:11', 42, '', '2014-07-30 03:34:21', 42, 0, '0000-00-00 00:00:00', '2013-07-08 04:00:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 0, 15, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(411, 317, '2012 论文', '2012-', '', '<div class="publicationContent_class"><ol>\r\n<li><a href="../papers/6764-14731-1-PB.pdf" style="font-size: 10px;">Jiangning Yu, Hongming Cai, Fenglin Bu, Ailing Liu: OWL-S based Service Composition of Three-dimensional Geometry Modeling. Journal of Multimedia 7(1): 98-105 (2012)</a></li>\r\n<li><a href="../papers/jucs_18_17_2493_2513_cai.pdf" style="font-size: 10px;">Hongming Cai, Boyi Xu, Fenglin Bu: A Conceptual Ontology-based Resource Meta-Model towards Business-driven Information System Implementation. J. UCS 18(17): 2493-2513 (2012)</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/apscc/2012/4897/00/4897a305-abs.html" style="font-size: 10px;">Shaojun Qin, Hongming Cai, Lihong Jiang: A Product Lifecycle Data Management Framework Based on Resource Meta-model. APSCC 2012: 305-308</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/apscc/2012/4897/00/4897a374-abs.html" style="font-size: 10px;">Hui Liu, Fenglin Bu, Hongming Cai: SLA-Based Service Composition Model with Semantic Support. APSCC 2012: 374-379</a></li>\r\n<li><a href="http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6382823" style="font-size: 10px;">Long Cheng, Hongming Cai, Lihong Jiang: Research on Code Migration Framework for Mobile Computing. CGC 2012: 230-236</a></li>\r\n<li><a href="../papers/06382824.pdf" style="font-size: 10px;">Yutao Ren, Lihong Jiang, Fenglin Bu, Hongming Cai: Rules and Implementation for Generating Ontology from Relational Database. CGC 2012: 237-244</a></li>\r\n<li><a href="../papers/06221850.pdf" style="font-size: 10px;">Hongming Cai, Lihong Jiang, Fenglin Bu: Configurable Resource-Oriented Architecture towards services cooperation. CSCWD 2012: 404-410</a></li>\r\n<li><a href="../papers/06221869.pdf" style="font-size: 10px;">Lihong Jiang, Boyi Xu, Hongming Cai: A multi-views modeling approach for product lifecycle management in supply chain. CSCWD 2012: 533-539</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/icebe/2012/4809/00/4809a221-abs.html" style="font-size: 10px;">Lihong Jiang, Boyi Xu, Lu Fang, Hongming Cai: A Ubiquitous Clinic Data Accessing Method Based on Resource Model. ICEBE 2012: 221-226</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/icebe/2012/4809/00/4809a350-abs.html" style="font-size: 10px;">Lei Sun, Hongming Cai, Lihong Jiang: A Checking Consistency Framework Based on Multi-View Models Towards Business Process Model Repository. ICEBE 2012: 350-355</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/ipdpsw/2012/4676/00/4676c292-abs.html" style="font-size: 10px;">Hongming Cai, Fenglin Bu, Lihong Jiang: A Business-driven Methodology for Service-Oriented Information System Development. IPDPS Workshops 2012: 2292-2299</a></li>\r\n<li><a href="../papers/06416601.pdf" style="font-size: 10px;">Mengwei Shi, Hongming Cai, Lihong Jiang: An approach to semi-automatic semantic annotation on Web3D scenes based on an ontology framework. ISDA 2012: 574-579</a></li>\r\n</ol></div>', '', 0, 0, 0, 88, '2014-07-29 13:32:00', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-07-29 13:32:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 11, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(412, 318, '2012论文', '201', '', '<div id="publicationContent">\r\n<div class="publicationContent_class"><ol>\r\n<li><a href="papers/6764-14731-1-PB.pdf">Jiangning Yu, Hongming Cai, Fenglin Bu, Ailing Liu: OWL-S based Service Composition of Three-dimensional Geometry Modeling. Journal of Multimedia 7(1): 98-105 (2012)</a></li>\r\n<li><a href="papers/jucs_18_17_2493_2513_cai.pdf">Hongming Cai, Boyi Xu, Fenglin Bu: A Conceptual Ontology-based Resource Meta-Model towards Business-driven Information System Implementation. J. UCS 18(17): 2493-2513 (2012)</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/apscc/2012/4897/00/4897a305-abs.html">Shaojun Qin, Hongming Cai, Lihong Jiang: A Product Lifecycle Data Management Framework Based on Resource Meta-model. APSCC 2012: 305-308</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/apscc/2012/4897/00/4897a374-abs.html">Hui Liu, Fenglin Bu, Hongming Cai: SLA-Based Service Composition Model with Semantic Support. APSCC 2012: 374-379</a></li>\r\n<li><a href="http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6382823">Long Cheng, Hongming Cai, Lihong Jiang: Research on Code Migration Framework for Mobile Computing. CGC 2012: 230-236</a></li>\r\n<li><a href="papers/06382824.pdf">Yutao Ren, Lihong Jiang, Fenglin Bu, Hongming Cai: Rules and Implementation for Generating Ontology from Relational Database. CGC 2012: 237-244</a></li>\r\n<li><a href="papers/06221850.pdf">Hongming Cai, Lihong Jiang, Fenglin Bu: Configurable Resource-Oriented Architecture towards services cooperation. CSCWD 2012: 404-410</a></li>\r\n<li><a href="papers/06221869.pdf">Lihong Jiang, Boyi Xu, Hongming Cai: A multi-views modeling approach for product lifecycle management in supply chain. CSCWD 2012: 533-539</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/icebe/2012/4809/00/4809a221-abs.html">Lihong Jiang, Boyi Xu, Lu Fang, Hongming Cai: A Ubiquitous Clinic Data Accessing Method Based on Resource Model. ICEBE 2012: 221-226</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/icebe/2012/4809/00/4809a350-abs.html">Lei Sun, Hongming Cai, Lihong Jiang: A Checking Consistency Framework Based on Multi-View Models Towards Business Process Model Repository. ICEBE 2012: 350-355</a></li>\r\n<li><a href="http://www.computer.org/csdl/proceedings/ipdpsw/2012/4676/00/4676c292-abs.html">Hongming Cai, Fenglin Bu, Lihong Jiang: A Business-driven Methodology for Service-Oriented Information System Development. IPDPS Workshops 2012: 2292-2299</a></li>\r\n<li><a href="papers/06416601.pdf">Mengwei Shi, Hongming Cai, Lihong Jiang: An approach to semi-automatic semantic annotation on Web3D scenes based on an ontology framework. ISDA 2012: 574-579</a></li>\r\n</ol></div>\r\n</div>', '', 1, 0, 0, 88, '2014-07-29 13:32:35', 42, '', '2014-09-21 10:04:35', 42, 0, '0000-00-00 00:00:00', '2014-07-29 13:32:35', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 10, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(413, 320, '2013软件展示会之IST实验室', '2013ist', '', '<p><span style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;">大一大二小朋友参观实验室，就实验室项目进行了解，邱倩茹学姐在给小朋友们介绍基于感性工学的名片布局辅助设计系统</span></p>\r\n<p><span style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;"><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/20131023174653QQ%e6%88%aa%e5%9b%be20131023174158.png" border="0" /></span></p>', '', 1, 0, 0, 90, '2014-07-29 13:52:42', 42, '', '2014-07-29 17:33:59', 42, 42, '2014-07-31 09:11:17', '2014-07-29 13:52:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 12, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(414, 321, '近年主要纵向项目', '2014-07-29-14-14-11', '', '<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>国家高技术发展计划项目（863）：“资源元模型驱动的企业信息集成平台研究”（2008AA04Z126）</li>\r\n</ul>\r\n</ul>\r\n<p> </p>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>国家自然基金：网格环境下面向可视操纵的场景服务模型构造（60603080）</li>\r\n</ul>\r\n</ul>\r\n<p> </p>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>航空科学学基金：基于资源的企业集成平台</li>\r\n</ul>\r\n</ul>\r\n<p> </p>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>上海市2007年重大科技项目，“海市公交智能调度系统综合集成示范应用研究-信息化标准规范”子项目：公交智能化和调度系统标准规范</li>\r\n</ul>\r\n</ul>\r\n<p> </p>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>上海市2008科技攻关项目：医院数据仓库和数据挖掘系统</li>\r\n</ul>\r\n</ul>\r\n<p> </p>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>上海市2009科技攻关项目：基于服务的按需应变平台</li>\r\n</ul>', '', 1, 0, 0, 77, '2014-07-29 14:14:11', 42, '', '2014-07-29 14:14:46', 42, 0, '0000-00-00 00:00:00', '2014-07-29 14:14:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(415, 322, '实验室的气氛:', '2014-07-29-14-14-12', '', '<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;" type="disc">\r\n<li>\r\n<h1>高效: 论文，编码，建模 ……</h1>\r\n</li>\r\n<li>\r\n<h1>和谐: 团队，礼貌，谦让，友爱 ……</h1>\r\n</li>\r\n<li>\r\n<h1>公平: 积极主动，追求个性，展示自我 ……</h1>\r\n</li>\r\n</ul>\r\n</ul>', '', 1, 0, 0, 77, '2014-07-29 14:14:11', 42, '', '2014-07-29 14:15:25', 42, 0, '0000-00-00 00:00:00', '2014-07-29 14:14:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(410, 316, '基于3D的多人协同建模平台', '3d', '', '<p style="text-indent: 2em; color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;">小组目前主要研究方向是基于3D（可扩展三维语言）的多人协同建模平台.</p>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;">主要研究点：</h5>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;">\r\n<li>2D图片生成3D模型</li>\r\n<li>3D模型和html5格式模型之间的转换</li>\r\n<li>3D模型语义标注</li>\r\n<li>3D模型语义的管理和应用,概念模型的建立、管理和维护</li>\r\n<li>3D模型的聚类、分类</li>\r\n<li>多人协同建模过程中冲突分析、冲突管理和冲突的解决</li>\r\n<li>3D模型语义关系推理及分布式存储</li>\r\n<li>基于web的3D多人协同设计平台的研究</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;">项目目标：</h5>\r\n<ul style="color: #333333; font-family: Verdana; font-size: 12.800000190734863px; line-height: 25.600000381469727px;">\r\n<li>建立基于3D模型的、能够支持多人协同高效智能建模且很好地解决协同冲突问题的三维场景设计平台</li>\r\n<li>掌握可用、易用和高效的3D模型语义标注，概念模型抽取、管理和应用等技术</li>\r\n<li>研究2D到3D模型的转换技术</li>\r\n<li>研究3D模型在web条件下显示、编辑和管理技术</li>\r\n<li>研究3D模型语义关系推理及分布式存储技术</li>\r\n<li>掌握高效的3D多人协同设计冲突问题的解决方案和技术</li>\r\n<li>', '</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;">系统架构如图所示</h5>\r\n<p><img src="http://ist.sjtu.edu.cn/UI/Images/visualPic/4.jpg" border="0" width="500" style="border: 0;" /></p>\r\n<p><img border="0" /></p>', 1, 0, 0, 71, '2014-07-29 13:30:20', 42, '', '2014-07-29 14:17:06', 42, 42, '2014-07-31 09:18:04', '2014-07-29 13:30:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(457, 364, '2012届Ist实验室全日制硕士研究生答辩情况', '2012ist', '', '<div class="newsFormat" style="margin: 0px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px; text-align: center;">\r\n<div id="newsOutline" style="margin: 5px; padding: 10px; border: 1px solid #b9b9b9; text-indent: 2em; text-align: left;">核心提示：2012年1月5日，上海交通大学软件学院信息系统技术实验室（Ist）16位同学于软件大楼5308会议室进行了硕士论文答辩，答辩结果为16位同学全部通过。</div>\r\n</div>\r\n<div class="newsPlan" style="margin: 5px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"> ', '</div>\r\n<div class="newsPlan" style="margin: 5px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">答辩安排</div>\r\n<div class="newsPlanContent" style="margin: 5px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">\r\n<ul>\r\n<li>答辩时间： 2011年1月5日（周四）9:00-12:00,13:00-17:00</li>\r\n<li>答辩地点： 软件大楼5308会议室</li>\r\n<li>答辩要求： 每个研究生按下列次序答辩，PPT演讲15分钟，回答问题10-15分钟。答辩时带上纸面的论文（五份）。</li>\r\n</ul>\r\n</div>\r\n<div class="newsPlan" style="margin: 5px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">答辩委员会</div>\r\n<div class="newsPlanContent" style="margin: 5px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">主席</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">何援军</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">委员</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">沈惠璋</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">委员</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">王东</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">副教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">委员</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">蔡鸿明</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">副教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">委员</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">姜丽红</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">副教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">委员</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">步丰林</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">副教授</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n<ul>\r\n<ul>\r\n<li>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">秘书</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">巩普遍</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">中级</div>\r\n<div class="newsPlanContentCell" style="margin: 0px; padding: 0px; border: 0px; float: left; width: 100px;">上海交通大学</div>\r\n</li>\r\n</ul>\r\n</ul>\r\n<div class="ClearFloat" style="margin: 0px; padding: 0px; border: 0px; zoom: 1;"> </div>\r\n</div>\r\n<div class="newsPlan" style="margin: 5px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">集体合影</div>\r\n<p> </p>\r\n<div id="news2012Page" style="margin: 0px; padding: 0px; border: 0px; text-align: center; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"> </div>\r\n<p> </p>\r\n<div style="margin: 0px; padding: 0px; border: 0px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6000003814697px; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: center; background-color: #ffffff;"><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/2012Reply/GroupPhoto.jpg" border="0" style="border-style: dotted; width: 660px; border-width: 0px;" /></div>', 1, 0, 0, 90, '2014-09-02 01:03:07', 42, '', '2014-09-02 01:06:31', 42, 0, '0000-00-00 00:00:00', '2014-09-02 01:03:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 10, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(458, 365, '交大学子获中国大学生服务外包创新应用大赛一等奖[图]', '2014-09-02-01-17-33', '', '<p class="p1">交大学子获中国大学生服务外包创新应用大赛一等奖<span class="s1">[</span>图<span class="s1">]</span></p>\r\n<p class="p1"><span class="s1">2010</span>年<span class="s1">8</span>月<span class="s1">20-25</span>日，上海交通大学软件学院<span class="s1">6</span>名学生组成的代表队在步丰林老师的带领下，参加了由教育部、商务部和无锡市人民政府联合举办<span class="s1">“</span>首届中国大学生服务外包创新应用大赛<span class="s1">”</span>。</p>\r\n', '\r\n<p class="p1"> </p>\r\n<p class="p1">在与清华大学、北京大学等<span class="s1">34</span>所全国重点高校<span class="s1">220</span>名大学生激烈竞争中，信息系统技术实验室的学生奋力拼搏，通过了构建项目方案、现场评审答辩等环节，最终在<span class="s1">9</span>月<span class="s1">11</span>日捧回了全国大赛一等奖的桂冠。</p>\r\n<p class="p1"><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/2011516145830Outsourcing.jpg" border="0" align="middle" style="color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px; text-align: center; width: 638px;" /></p>', 1, 0, 0, 90, '2014-09-02 01:17:33', 42, '', '2014-09-02 01:20:43', 42, 0, '0000-00-00 00:00:00', '2014-09-02 01:17:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 9, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(459, 366, 'NGX架构研究项目演示', 'ngx', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelTitle">NGX架构研究项目演示</span></div>\r\n<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">', '</div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail">\r\n<ul>\r\n<li>我们的项目目标是实现一个在代码级别的生成、组装、部署的可配置业务驱动平台。在该平台下，业务开发人员通过使用业务过程建模的可视化业务建模工具对业务进行建模或调整业务模型，然后由建模工具解析并自动转换为J2EE体系的平台相关模型（PSM）存储于业务组件库中。然后通过平台提供的业务引擎解析PSM并生成为可执行组件代码，业务引擎还将自动部署，结合平台的各个层面上的基础构件形成一个可配置的MES系统。由于平台是业务注入的形式，它支持重新导入业务模型并重新构建应用。重新构建的整个过程都可以在系统管理员掌控之中，重新构建的自动化过程时间极短。因此解决软件需求变更的代价只是修改业务模型的成本。这不但解决了需求变更过于频繁对于企业管理软件的冲击，同时可以通过更改需求重新构建应用的迭代促使软件实体与实际业务的之间差异的快速收敛。</li>\r\n</ul>\r\n</span></div>', 1, 0, 0, 90, '2014-09-02 01:21:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-02 01:21:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(460, 367, '云计算的迁移', '2014-09-02-01-23-02', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelTitle">云计算的迁移</span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail">\r\n<ul>\r\n<li>云计算的优势越来越明显，所以有很多项目都是基于云计算平台开发的。但是对于已有的项目，我们不可能去重新开发一个基于云计算的项目，这样的成本会好高。这次的主题是以已有的C/S架构的投资管理系统为例，提出了一个将其迁移到亚马逊云计算平台AWS下的解决方案。</li>\r\n</ul>\r\n</span></div>', '', 1, 0, 0, 90, '2014-09-02 01:23:02', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-02 01:23:02', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(461, 368, '基于资源的系统平台介绍', '2014-09-02-01-26-09', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelTitle">基于资源的系统平台介绍</span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail"><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">REST的原意是“表述性状态转移”，是有意唤起人们对于一个良好设计的Web应用如何运转的印象：一个由网页组成的网络（一个虚拟状态机），用户通过选择链接（状态转移）在应用中前进，导致下一个页面（代表应用的下一个状态）被转移给用户，并且呈现给他们，以便他们来使用。这就要求REST服务能够自行提供用户将要跳转到哪个界面的功能</span></span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">', '</div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail"><br /><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">这一点其实没有必要，因为如果一旦这样确定了的话则每个服务的重用性会不佳。我们的ORIPS2不光对基于WADL的服务进行了支持，对WSDL和WADL这两种都进行了支持，可以同时兼容的根源在于后台交互的数据格式的统一性（XML），两者都可以接受XML格式的请求，仅仅由于消息封装的不同。在ORIPS3当中，通过业务需求定义不同的企业资源，然后依据资源开发相应的REST风格的服务，然后依托服务进行界面的快速生成，进而修改界面内容以达到与用户交互的目的。</span></span></div>', 1, 0, 0, 90, '2014-09-02 01:26:09', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-02 01:26:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(462, 369, '本体创建研究', '2014-09-02-01-30-23', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelTitle">本体创建研究</span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail"><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">医疗数据广泛存在着数据自治性与语义异构问题，使医疗数据很难通过简单的映射而实现有效的集成。目前，克服语义异构问题的主要途径是建立具有语义描述及语用应用的数据模型，使异构、自</span></span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;">', '</div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.7272720336914px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelDetail"><br /><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">治的资源以语义一致性的方式实现共享和互操作。然而，医疗本体网络的构建与维护是一个复杂、困难的工程。</span><br /><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">本研究研究诊疗本体的自动构建方法，从数据源的关系模型自动映射生成局部的本体网络模型，并演化生成领域本体</span><br /><span style="font-size: 12.7272720336914px; line-height: 25.6000003814697px;">研究本体进化方法，最后，研究基于本体的医疗数据应用方法。</span></span></div>', 1, 0, 0, 90, '2014-09-02 01:30:23', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-02 01:30:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(463, 370, '上海交大获第三届中国大学生服务外包创新创业大赛二等奖', '2014-09-21-02-52-50', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">2012年8月21日至25日，由国家商务部、教育部和无锡市人民政府联合举办的“第三届中国大学生服务外包创新创业大赛”总决赛在江苏省无锡市举行。我校软件学院蔡鸿明老师指导的学生姜祖海、方璐、徐珂、栾帅和杜日光（留学生），在初赛和决赛中表现优异，荣获全国二等奖。', '</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">本届大赛的主题是服务经济、信息技术、创意创新创业、应用导向和产学互动。大赛关注商业创新与社会、公众福祉，鼓励面向客户价值的微创新应用，提倡公益、公众、公平的社会责任，涉及技术方案、项目管理、市场营销等广泛的专业背景知识。</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">我校软件学院团队的参赛项目为《欧倍办公采购平台》。团队成员利用暑期，开展业务分析、开发计划的设计、软件系统实现等工作，其解决方案融合了创新的营销手段、开放的服务平台以及优化的采购、销售流程。在25日的决赛答辩现场，团队成员自信大方的现场解说与系统展示，获得专家评委的关注和肯定，并在行业应用组评选中，脱颖而出，夺得全国二等奖。</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">团队成员栾帅同学表示，他们度过了一个充实、丰富而富有意义的两个月。这两个月里，学院的老师和团队成员齐心协力，辛勤付出，才有了赛场上的自信大方。无论是技术方案还是项目管理经验，都让团队的每一位成员受益匪浅。</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">据悉，这是继软院学子在第一届、第二届中国大学生服务外包创新应用大赛斩获全国一等奖之后，在该项赛事中取得的又一佳绩。软件学院一直致力于创新性人才的培养工作，引入工程化教学模式，开设暑期大型课程设计，培养工程实践能力</li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">依托学生创新实践计划及国内外高水平赛事等，启发科创兴趣、开拓创新思维。本次大赛中参赛学生的优异表现，正是这种培养模式的又一见证。<img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/2012831100923img20120830_01.jpg" border="0" style="font-size: 12.8000001907349px; line-height: 25.6000003814697px;" /></li>\r\n</ul>', 1, 0, 0, 90, '2014-09-21 02:52:50', 42, '', '2014-09-21 09:08:31', 42, 0, '0000-00-00 00:00:00', '2014-09-21 02:52:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 4, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(464, 371, '实验室活动之共青森林公园烧烤游玩', '2014-09-21-09-04-14', '', '<p><span style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">2013年5月份，紧张而又忙碌的学习之余，实验室组织大家来到了共青森林公园，蔡老师和学生们继续着往日对待工作和学习的严谨和不苟，一起为吃和玩打拼着！</span></p>\r\n', '\r\n<p> </p>\r\n<p><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/201395151556%e5%ae%9e%e9%aa%8c%e5%ae%a4%e5%90%88%e7%85%a7.png" border="0" width="600" /></p>', 1, 0, 0, 90, '2014-09-21 09:04:14', 42, '', '2014-09-21 09:09:33', 42, 0, '0000-00-00 00:00:00', '2014-09-21 09:04:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 3, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(465, 372, '上海交通大学获第四届中国大学生软件服务外包创新创业大赛二等奖', '2014-09-21-09-05-42', '', '<p>上海交通大学获第四届中国大学生软件服务外包创新创业大赛二等奖</p>\r\n<p>2013年8月20、21日，由国家商务部、教育部和无锡市人民政府联合举办的第四届中国大学生软件服务外包创新创业大赛决赛在无锡市国际博览中心举行，参赛团队由来自大陆和港澳台133所高校的208支团队组成，上海交通大学唯一一支参赛团队是以软件学院信息系统技术实验室蔡鸿明老师为指导老师，以宋奕青老师为领队，和实验室马晓明、徐珂、顾逸之、周珺和虞思源五位同学组成，在经过暑期一个多月的紧张工作之后，进入决赛并获得二等奖！</p>\r\n', '\r\n<p><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/201395161913%e5%9b%a2%e9%98%9f%e7%85%a7%e7%89%87.png" border="0" /></p>', 1, 0, 0, 90, '2014-09-21 09:05:42', 42, '', '2014-09-21 09:10:59', 42, 0, '0000-00-00 00:00:00', '2014-09-21 09:05:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 0, 2, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(467, 374, '2013年9月25日讨论班讲演', '2013925', '', '<div class="SearchNewsTitle" style="margin: 10px; padding: 10px; border: 0px; height: 20px; color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><span id="ctl00_CentralContent_LabelTitle">2013年9月25日讨论班讲演</span></div>\r\n<div class="SearchNewsDetail" style="margin: 10px; padding: 10px; border: 0px solid #b9b9b9; color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">\r\n<ul>\r\n<li>周三上午新近加入实验室的研二同学胡畔做主题演讲，主要介绍了其在法国和比利时交流两年的学习和研究经历，并着重讲解了其在比利时鲁汶大学放学期间发表的一篇关于半监督聚类的论文。演讲结束后实验室其他成员积极提问和探讨，发表了很多有建设性的意见和建议。', '<img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/2013929142906talk.png" border="0" width="600" style="font-size: 12.8000001907349px; line-height: 25.6000003814697px;" /></li>\r\n</ul>\r\n</div>', 1, 0, 0, 90, '2014-09-21 09:40:10', 42, '', '2014-09-21 13:41:30', 42, 42, '2014-09-21 13:41:30', '2014-09-21 09:40:10', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', ''),
(466, 373, 'X3D信息可视化组讨论班讲演', 'x3d', '', '<p>X3D信息可视化组讨论班讲演</p>\r\n<p>周三上午IST讨论班由X3D信息可视化组组长汪涵讲演，主要介绍了小组当前研究项目—X3D多人协同设计平台，讲演之后由小组成员王珍海进行系统演示，演示结束后，大家进行提问并给出了很多好的建议，在此感谢大家！</p>\r\n', '\r\n<p><img border="0" /><img border="0" /><img src="http://ist.sjtu.edu.cn/UI/Images/NewsImages/2013924195624QQ%e6%88%aa%e5%9b%be20130924165400.png" border="0" width="600" style="font-size: 10px;" /></p>\r\n<p><img border="0" /></p>', 1, 0, 0, 90, '2014-09-21 09:37:31', 42, '', '2014-09-21 13:41:52', 42, 42, '2014-09-21 13:41:52', '2014-09-21 09:37:31', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'zh-CN', '');
INSERT INTO `urhc6_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(468, 375, '2011', '2011', '', '<ol>\r\n<li><a href="http://www.computer.org/csdl/proceedings/apscc/2011/4624/00/4624a001-abs.html" style="font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px; text-decoration: none; color: #333333;">Minghui Jing, Hongming Cai, Fenglin Bu: Flexible Organization Structure-Based Access Control Model and Application. APSCC 2011: 1-8</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/jucs_18_17_2493_2513_cai.pdf" style="text-decoration: none; color: #333333;">Pengfei Fan, Fenglin Bu, Hongming Cai: Model of Variable Granularity Service Composition Based on Event Stream. APSCC 2011: 208-214</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05960048.pdf" style="text-decoration: none; color: #333333;">Lihong Jiang, Junliang Xu, Boyi Xu, Hongming Cai: An automatic method of data warehouses multi-dimension modeling for distributed information systems. CSCWD 2011: 9-16</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/06019626.pdf" style="text-decoration: none; color: #333333;">Boyi Xu, Jiahong Wu, Hongming Cai: Business process driven ontology discovery method from distributed data environment. FSKD 2011: 1246-1251</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/icebe/2011/4518/00/4518a024-abs.html" style="text-decoration: none; color: #333333;">Cheng Xie, Lihong Jiang, Hongming Cai: Instance-Driven Ontology Evolution Mechanism towards Enterprise Data Management. ICEBE 2011: 24-30</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/icebe/2011/4518/00/4518a386-abs.html" style="text-decoration: none; color: #333333;">Yuanliang Gao, Boyi Xu, Hongming Cai: Information Recommendation Method Research Based on Trust Network and Collaborative Filtering. ICEBE 2011: 386-391</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-25255-6_57.pdf" style="text-decoration: none; color: #333333;">Liming Liu, Hongming Cai: WSPOM: An Ontology Model for Web Service Planning. ICICA (LNCS) 2011: 447-454</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-25255-6_58.pdf" style="text-decoration: none; color: #333333;">Xinyong Wu, Lihong Jiang, Fenglin Bu, Hongming Cai: A Requirement Group Based Web Service Scheduling Model. ICICA (LNCS) 2011: 455-462</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-25255-6_73.pdf" style="text-decoration: none; color: #333333;">Yan Zheng, Hongming Cai, Lihong Jiang: Application Integration Patterns Based on Open Resource-Based Integrated Process Platform. ICICA (LNCS) 2011: 577-584</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/06139106.pdf" style="text-decoration: none; color: #333333;">Sinan Mei, Hongming Cai, Fenglin Bu: Multi-view service-oriented rule merged business process modeling framework. SOSE 2011: 175-180</a></li>\r\n</ol>', '', 1, 0, 0, 88, '2014-09-21 10:04:58', 42, '', '0000-00-00 00:00:00', 0, 42, '2014-09-21 10:04:58', '2014-09-21 10:04:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 9, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(469, 376, '2010', '2010', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.humanpub.org/ijiip/ppl/03_IJIIP1-018017JE.pdf" style="text-decoration: none; color: #333333;">Yanjie Lu, Hongming Cai, Lihong Jiang: Construction of BPMN-based Business Process Model Base. IJIIP 1(2): 32-38 (2010)</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/jmm0804.pdf" style="text-decoration: none; color: #333333;">Hongming Cai, Xiaoxiong Tian, Nan Li, Boyi Xu: Framework of Geometry Modeling Integrated Platform based on Services for Large-scale Information Visualization. Journal of Multimedia 5(4): 361-368 (2010)</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05708573.pdf" style="text-decoration: none; color: #333333;">Jian Liang, Fenglin Bu, Hongming Cai: High-Precision Service Matching Based on Formal Semantic Description. APSCC 2010: 212-217</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05471975.pdf" style="text-decoration: none; color: #333333;">Tianyang Dong, Hongming Cai, Boyi Xu: A business process modeling approach based on Semantic Event-driven Process Chains. CSCWD 2010: 201-206</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/icebe/2011/4518/00/4518a024-abs.html" style="text-decoration: none; color: #333333;">Boyi Xu, Jing Wang, Hongming Cai: A Web page classification algorithm and its application in E-government system. FSKD 2010: 1767-1771</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-11659-9_12.pdf" style="text-decoration: none; color: #333333;">Cheng Zhu, Hao Yu, Hongming Cai, Boyi Xu: Template-Based Process Abstraction for Reusable Inter-organizational Applications in RESTful Architecture. ICDCIT 2010: 122-133</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-16167-4_24.pdf" style="text-decoration: none; color: #333333;">Jiaxuan Ji, Fenglin Bu, Hongming Cai, Junye Wang: Ontology Model for Semantic Web Service Matching. ICICA (LNCS) 2010: 181-188</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-16934-2_40.pdf" style="text-decoration: none; color: #333333;">Xiaodong Wang, Nan Li, Hongming Cai, Boyi Xu: An Ontological Approach for Semantic Annotation of Supply Chain Process Models. OTM Conferences (1) 2010: 540-554</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05642270.pdf" style="text-decoration: none; color: #333333;">Jiahong Wu, Hongming Cai, Lihong Jiang: Business-driven ontology evolution mechanism for enterprise data management. SMC 2010: 3174-3179</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05569921.pdf" style="text-decoration: none; color: #333333;">Wei Zhang, Lihong Jiang, Hongming Cai: An Ontology-Based Resource-Oriented Information Supported Framework towards RESTful Service Generation and Invocation. SOSE 2010: 107-112</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:32:27', 42, '', '2014-09-21 13:32:53', 42, 0, '0000-00-00 00:00:00', '2014-09-21 13:32:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(470, 377, '2009', '2009', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/icebe/2009/3842/00/3842a103-abs.html" style="text-decoration: none; color: #333333;">Hao Yu, Cheng Zhu, Hongming Cai, Boyi Xu: Role-Centric RESTful Services Description and Composition for E-Business Applications. ICEBE 2009: 103-110</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-978-3-642-05148-7_11.pdf" style="text-decoration: none; color: #333333;">Xiaodong Wang, Xiaoyu Zhang, Hongming Cai, Boyi Xu: An Extended Petri-Net Based Approach for Supply Chain Process Enactment in Resource-Centric Web Service Environment. OTM Conferences (1) 2009: 130-146</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/05346020.pdf" style="text-decoration: none; color: #333333;">Hongming Cai, Dominik Englert, Hao Yu: ORIPS: An Open Resource-based Integrated Platform System for business process execution. SMC 2009: 5111-5116</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:33:22', 42, '', '2014-09-21 13:33:32', 42, 0, '0000-00-00 00:00:00', '2014-09-21 13:33:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 7, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(471, 378, '2008', '2008', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/1-s2.0-S1474034608000293-main.pdf" style="text-decoration: none; color: #333333;">Jiale Wang, Yuanjun He, Haishan Tian, Hongming Cai: Retrieving 3D CAD model by freehand sketches for design reuse. Advanced Engineering Informatics 22(3): 385-392 (2008)</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="https://www.jstage.jst.go.jp/article/dsj/7/0/7_45/???Y.Url.Path.AY03S050???" style="text-decoration: none; color: #333333;">Jiale Wang, Hongming Cai, Yuanjun He: A Method for Content-Based Searching of 3D Model Databases. Data Science Journal 7: 46-53 (2008)</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/npc/2008/3354/00/3354a440-abs.html" style="text-decoration: none; color: #333333;">Jing Wang, Hongming Cai, Boyi Xu, Lihong Jiang: CUCS: A Web Page Classification Algorithm for Large Training Set. NPC Workshops 2008: 440-445</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:33:46', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-21 13:33:46', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(472, 379, '2007', '2007', '', '<p><a href="http://www.computer.org/csdl/proceedings/sitis/2007/3122/00/3122a026-abs.html" style="text-decoration: none; color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;">Jiale Wang, Hongming Cai, Yuanjun He, Yi Zhang: Content-Based Shape Search of 3D CAD Models with Relevance Feedback. SITIS 2007: 26-32</a></p>', '', 1, 0, 0, 88, '2014-09-21 13:34:02', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-21 13:34:02', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(473, 380, '2006', '2006', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/04019132.pdf" style="text-decoration: none; color: #333333;">Hongming Cai, Lihong Jiang, Yiqiong Zhu: Interactive mechanism for cooperative design in web environment based on multi-agent technology. CSCWD 2006: 608-613</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/icat/2006/2754/00/27540260-abs.html" style="text-decoration: none; color: #333333;">Haishan Tian, Yuanjun He, Hongming Cai, Lirong Feng: Efficient Metamorphosis of Point-Sampled Geometry. ICAT Workshops 2006: 260-263</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/isda/2006/2528/01/252801026-abs.html" style="text-decoration: none; color: #333333;">Hongming Cai, Yiqiong Zhu, Lihong Jiang: An Interactive Agent for Resource Pushing towards Web-based Cooperative Design. ISDA (1) 2006: 1026-1031</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:34:35', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-21 13:34:35', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(474, 381, '2005', '2005', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/1-s2.0-S0262885605001204-main.pdf" style="text-decoration: none; color: #333333;">Yong Wu, Yuanjun He, Hongming Cai: Optimal threshold selection algorithm in edge detection based on wavelet transform. Image Vision Comput. 23(13): 1159-1169 (2005)</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/cscwd/2005/0002/01/01504059-abs.html" style="text-decoration: none; color: #333333;">Hongming Cai, Yuanjun He, Yong Wu: A resource-based CSCW supporting environment for rapid design. CSCWD (1) 2005: 101-106</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://www.computer.org/csdl/proceedings/cscwd/2005/0002/01/01504152-abs.html" style="text-decoration: none; color: #333333;">Yong Wu, Yuanjun He, Hongming Cai: A new approach to constructing subdivision connectivity meshes. CSCWD (1) 2005: 627-632</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-11428848_43.pdf" style="text-decoration: none; color: #333333;">Yong Wu, Yuanjun He, Hongming Cai: Remeshing Triangle Meshes with Boundaries. International Conference on Computational Science (2) 2005: 335-338</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:34:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-21 13:34:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(475, 382, '2004', '2004', '', '<ul>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/10.1007-11568421_45.pdf" style="text-decoration: none; color: #333333;">Hongming Cai, Yuanjun He, Yong Wu: A Rapid Inducing Solid Model Towards Web-Based Interactive Design. CSCWD (Selected papers) 2004: 448-456</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/p50-wu.pdf" style="text-decoration: none; color: #333333;">Yong Wu, Yuanjun He, Hongming Cai: QEM-based mesh simplification with global geometry features preserved. GRAPHITE 2004: 50-57</a></li>\r\n<li style="color: #333333; font-family: Verdana; font-size: 12.8000001907349px; line-height: 25.6000003814697px;"><a href="http://ist.sjtu.edu.cn/UI/papers/p100-cai.pdf" style="text-decoration: none; color: #333333;">Hongming Cai, Yuanjun He: Interactive agent based user avatar in the virtual environment. VRCAI 2004: 100-103</a></li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:35:00', 42, '', '2014-09-21 13:37:12', 42, 0, '0000-00-00 00:00:00', '2014-09-21 13:35:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(476, 383, '2013', '2013', '', '<ul class="publ-list" style="margin: 1ex 0em 4ex; padding: 0px; color: #505b62; font-family: ''Open Sans'', sans-serif; font-size: 15px;">\r\n<li id="conf/cscwd/WangCJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;">\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c47" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<br />\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/w/Wang:Han" style="color: #7d848a; text-decoration: none;">Han Wang</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">A configurable visual steering architecture based on 3D scene composition.</span> <a href="http://dblp.uni-trier.de/db/conf/cscwd/cscwd2013.html#WangCJ13" style="color: #7d848a; text-decoration: none;">CSCWD 2013</a>: 338-343</div>\r\n</li>\r\n<li id="conf/fskd/XuCJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;"><a name="XuCJ13" style="color: #7d848a;"></a>\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c46" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<br />\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/x/Xu:Boyi" style="color: #7d848a; text-decoration: none;">Boyi Xu</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">A clinic ontology construction method in distributed hospital information systems.</span> <a href="http://dblp.uni-trier.de/db/conf/fskd/fskd2013.html#XuCJ13" style="color: #7d848a; text-decoration: none;">FSKD 2013</a>: 685-689</div>\r\n</li>\r\n<li id="conf/idcs/LiuCJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;"><a name="LiuCJ13" style="color: #7d848a;"></a>\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c45" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<br />\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/l/Liu:Zijia" style="color: #7d848a; text-decoration: none;">Zijia Liu</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">A Model-Driven Service Integrated Framework Based on Three-Layer Ontology.</span> <a href="http://dblp.uni-trier.de/db/conf/idcs/idcs2013.html#LiuCJ13" style="color: #7d848a; text-decoration: none;">IDCS 2013</a>: 120-133</div>\r\n</li>\r\n<li id="conf/wise/FangCXJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;"><a name="FangCXJ13" style="color: #7d848a;"></a>\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c44" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<br />\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/f/Fang:Lu" style="color: #7d848a; text-decoration: none;">Lu Fang</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/x/Xie:Cheng" style="color: #7d848a; text-decoration: none;">Cheng Xie</a>, <a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">Transitional Resource Meta-model: Generating Restful Service to Implement Complex Activity.</span> <a href="http://dblp.uni-trier.de/db/conf/wise/wise2013-1.html#FangCXJ13" style="color: #7d848a; text-decoration: none;">WISE (1) 2013</a>: 257-266<br /><br /></div>\r\n</li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:38:05', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-21 13:38:05', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(477, 384, '2014', '2013-2', '', '<ul class="publ-list" style="margin: 1ex 0em 4ex; padding: 0px; color: #505b62; font-family: ''Open Sans'', sans-serif; font-size: 15px;">\r\n<li id="conf/cscwd/WangCJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;">\r\n<div class="box" style="display: table-cell; padding: 0px 2px;">\r\n<ul class="publ-list" style="margin: 1ex 0em 4ex; padding: 0px; font-size: 15px;">\r\n<li id="conf/cdve/MaCJ14" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;">\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c50" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/m/Ma:Xiaoming" style="color: #7d848a; text-decoration: none;">Xiaoming Ma</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">A Creative Approach to Conflict Detection in Web-Based 3D Cooperative Design.</span> <a href="http://dblp.uni-trier.de/db/conf/cdve/cdve2014.html#MaCJ14" style="color: #7d848a; text-decoration: none;">CDVE 2014</a>: 261-268</div>\r\n</li>\r\n<li id="conf/cscwd/JiangXXC14" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;"><a name="JiangXXC14" style="color: #7d848a;"></a>\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c49" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/j/Jiang:Lihong" style="color: #7d848a; text-decoration: none;">Lihong Jiang</a>, <a href="http://dblp.uni-trier.de/pers/hd/x/Xu:Boyi" style="color: #7d848a; text-decoration: none;">Boyi Xu</a>, <a href="http://dblp.uni-trier.de/pers/hd/x/Xie:Cheng" style="color: #7d848a; text-decoration: none;">Cheng Xie</a>, <span class="this-person">Hongming Cai</span>:<br /><span class="title" style="color: #666666; font-weight: bold;">A framework of emergency clinical decision support system based on MDA and resource model.</span> <a href="http://dblp.uni-trier.de/db/conf/cscwd/cscwd2014.html#JiangXXC14" style="color: #7d848a; text-decoration: none;">CSCWD 2014</a>: 451-456</div>\r\n</li>\r\n<li id="conf/sg/HuCB14" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;"><a name="HuCB14" style="color: #7d848a;"></a>\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"><img src="http://dblp.uni-trier.de/img/n.png" border="0" alt="" title="Conference and Workshop Papers" style="width: 12px; height: 12px; background: #196ca3;" /></div>\r\n<div id="c48" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"><a href="http://dblp.uni-trier.de/pers/hd/h/Hu:Pan" style="color: #7d848a; text-decoration: none;">Pan Hu</a>, <span class="this-person">Hongming Cai</span>, <a href="http://dblp.uni-trier.de/pers/hd/b/Bu:Fenglin" style="color: #7d848a; text-decoration: none;">Fenglin Bu</a>:<br /><span class="title" style="color: #666666; font-weight: bold;">D-Sweep: Using Profile Snapping for 3D Object Extraction from Single Image.</span> <a href="http://dblp.uni-trier.de/db/conf/sg/sg2014.html#HuCB14" style="color: #7d848a; text-decoration: none;">Smart Graphics 2014</a>: 39-50<br /><br /></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div id="c47" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"> </div>\r\n</li>\r\n<li id="conf/wise/FangCXJ13" class="entry inproceedings" style="list-style-type: square; display: table; margin: 0ex 0em 1ex; padding: 0px;">\r\n<div class="box" style="display: table-cell; padding: 0px 2px;"> </div>\r\n<div id="c44" class="nr" style="display: table-cell; padding: 0px 2px 0px 4px; min-width: 2.5em; text-align: center; white-space: nowrap;"> </div>\r\n<div class="data" style="display: table-cell; padding: 0px 2px;"> </div>\r\n</li>\r\n</ul>', '', 1, 0, 0, 88, '2014-09-21 13:38:05', 42, '', '2014-09-21 13:38:51', 42, 42, '2014-09-21 13:38:51', '2014-09-21 13:38:05', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_content_frontpage`
--

CREATE TABLE `urhc6_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_content_frontpage`
--

INSERT INTO `urhc6_content_frontpage` (`content_id`, `ordering`) VALUES
(6, 4),
(9, 6),
(30, 7),
(44, 5),
(45, 3),
(377, 2),
(378, 1);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_content_rating`
--

CREATE TABLE `urhc6_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_core_log_searches`
--

CREATE TABLE `urhc6_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_extensions`
--

CREATE TABLE `urhc6_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10036 ;

--
-- Dumping data for table `urhc6_extensions`
--

INSERT INTO `urhc6_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"zh-CN","site":"zh-CN"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"1.7.0","description":"Classes for sending email","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"A PHP-Based RSS and Atom Feed Framework.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"1.7.0","description":"Classes for UTF8","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.7.0","description":"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_unread', 'module', 'mod_unread', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"1.7.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.7.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2011","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.3.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{"detect_browser":"1","automatic_change":"1","menu_associations":"1"}', '', '', 42, '2014-07-29 14:27:45', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `urhc6_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.7.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.7.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.7.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"1.7.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.7.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"July 2011","author":"Joomla!","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Shape 5 Live Search', 'module', 'mod_s5_live_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Latest News', 'module', 'mod_latestnews', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'S5 Accordion Menu', 'module', 'mod_s5_accordion_menu', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Register', 'module', 'mod_s5_register', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'S5 Box', 'module', 'mod_s5_box', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'S5 Frontpage Display 2', 'module', 'mod_s5_frontpage_display2', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'S5 Vertical Accordion', 'module', 'mod_s5_vertical_accordion', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'VirtueMart Product Snapshot', 'plugin', 'vmproductsnapshots', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Virtuemart Extended Search Plugin', 'plugin', 'vmxsearch.plugin', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'callie_rush', 'template', 'callie_rush', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'System - S5 Flex Menu', 'plugin', 'S5FlexMenu', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - S5 Flex Menu","type":"plugin","creationDate":"June 2011","author":"Shape5.com","copyright":"This Plugin is released under the GNU\\/GPL License","authorEmail":"contact@shape5.com","authorUrl":"www.shape5.com","version":"1.0","description":"The S5 Flex Menu system is a very powerful plugin that provides functionality far beyond what the standard Joomla menu system.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Joomla! Content Management System', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Content Management System","type":"package","creationDate":"2006","author":"Joomla!","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.7.0","description":"The Joomla! Content Management System is one of the most popular content management system''s available today.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, '', 'language', 'zh-CN', '', 0, 1, 0, 0, '{"legacy":true,"name":"\\u7b80\\u4f53\\u4e2d\\u6587","type":"language","creationDate":"2011-07-20","author":"Joomla\\u4e4b\\u95e8","copyright":"Copyright (C) 2005 - 2011 Open Source Matters & Joomla.fr. All rights reserved.","authorEmail":"joomlagate@gmail.com","authorUrl":"http:\\/\\/www.joomlagate.com","version":"1.7.0","description":"Joomla 1.7.0 \\u524d\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\uff08Simplified Chinese\\uff09\\u8bed\\u8a00\\u6587\\u4ef6","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, '', 'language', 'zh-CN', '', 1, 1, 0, 0, '{"legacy":true,"name":"\\u7b80\\u4f53\\u4e2d\\u6587","type":"language","creationDate":"2010-07-20","author":"Joomla\\u4e4b\\u95e8","copyright":"Copyright (C) 2005 - 2011 Open Source Matters & Joomla.fr. All rights reserved.","authorEmail":"joomlagate@gmail.com","authorUrl":"http:\\/\\/www.joomlagate.com","version":"1.7.0","description":"Joomla 1.7.0 \\u540e\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\uff08Simplified Chinese\\uff09\\u8bed\\u8a00\\u6587\\u4ef6","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'mod_shoutbox', 'module', 'mod_shoutbox', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_shoutbox","type":"module","creationDate":"February 2011","author":"Bart Jochems","copyright":"(C) Bart Jochems","authorEmail":"info@batjo.nl","authorUrl":"http:\\/\\/joomla.batjo.nl","version":"1.6","description":"This module displays a shoutbox that gets automatically refresh through AJAX.","group":""}', '{"shouts":"10","refresh":"4","fadefrom":"#000000","fadeto":"#FFFFFF","submit":"0","post_guest":"1","name":"0","tag":"1","url":"0","textarea":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_phocagallery","type":"component","creationDate":"30\\/10\\/2011","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.1.0","description":"Phoca Gallery","group":""}', '{"categories_description":"","categories_columns":"2","equal_percentage_width":"1","display_image_categories":"4","categories_box_width":"50%","image_categories_size":"5","categories_image_ordering":"9","categories_display_avatar":"1","display_subcategories":"1","display_empty_categories":"0","hide_categories":"","show_categories":"","display_access_category":"0","default_pagination_categories":"0","pagination_categories":"5,10,15,20,50","font_color":"#b36b00","background_color":"#fcfcfc","background_color_hover":"#f5f5f5","image_background_color":"#f5f5f5","image_background_shadow":"shadow1","border_color":"#e8e8e8","border_color_hover":"#b36b00","margin_box":"5","padding_box":"5","display_new":"0","display_hot":"0","display_name":"1","display_icon_detail":"1","display_icon_download":"2","display_icon_folder":"0","font_size_name":"12","char_length_name":"15","category_box_space":"0","display_categories_sub":"0","display_subcat_page":"0","display_category_icon_image":"1","category_image_ordering":"9","display_back_button":"1","display_categories_back_button":"1","default_pagination_category":"20","pagination_category":"5,10,15,20,50","display_img_desc_box":"0","font_size_img_desc":"10","img_desc_box_height":"30","char_length_img_desc":"300","display_categories_cv":"0","display_subcat_page_cv":"0","display_category_icon_image_cv":"0","category_image_ordering_cv":"9","display_back_button_cv":"1","display_categories_back_button_cv":"1","categories_columns_cv":"1","display_image_categories_cv":"1","image_categories_size_cv":"4","detail_window":"0","detail_window_background_color":"#ffffff","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","sb_lang":"en","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","boxplus_theme":"lightsquare","boxplus_bautocenter":"1","boxplus_autofit":"1","boxplus_slideshow":"0","boxplus_loop":"0","boxplus_captions":"bottom","boxplus_thumbs":"inside","boxplus_duration":"250","boxplus_transition":"linear","boxplus_contextmenu":"1","display_description_detail":"0","display_title_description":"0","font_size_desc":"11","font_color_desc":"#333333","description_detail_height":"16","description_lightbox_font_size":"12","description_lightbox_font_color":"#ffffff","description_lightbox_bg_color":"#000000","slideshow_delay":"3000","slideshow_pause":"2000","slideshow_random":"0","slideshow_description":"peekaboo","detail_buttons":"1","phocagallery_width":"","phocagallery_center":"0","category_ordering":"1","image_ordering":"1","gallery_metadesc":"","gallery_metakey":"","alt_value":"1","tags_links":"0","display_tags_links":"0","enable_custom_css":"0","custom_css":"","enable_cooliris":"0","start_cooliris":"0","piclens_image":"0","switch_image":"0","switch_width":"640","switch_height":"480","switch_fixed_size":"0","enable_overlib":"0","ol_bg_color":"#666666","ol_fg_color":"#f6f6f6","ol_tf_color":"#000000","ol_cf_color":"#ffffff","overlib_overlay_opacity":"0.7","overlib_image_rate":"","create_watermark":"0","watermark_position_x":"center","watermark_position_y":"middle","display_category_statistics":"0","display_main_cat_stat":"1","display_lastadded_cat_stat":"1","count_lastadded_cat_stat":"3","display_mostviewed_cat_stat":"1","count_mostviewed_cat_stat":"3","display_feed":"1","feed_cat_ids":"","feed_img_ordering":"6","feed_img_count":"5","feed_title":"","enable_user_cp":"0","enable_upload_avatar":"1","enable_avatar_approve":"0","enable_usercat_approve":"0","enable_usersubcat_approve":"0","enable_direct_subcat":"0","user_subcat_count":"5","max_create_cat_char":"1000","user_ucp_lang":"1","enable_userimage_approve":"0","max_upload_char":"1000","upload_maxsize":"3145728","upload_maxres_width":"3072","upload_maxres_height":"2304","user_images_max_size":"20971520","enable_multiple":"0","multiple_upload_method":"1","multiple_upload_chunk":"0","multiple_resize_width":"-1","multiple_resize_height":"-1","enable_java":"0","java_box_width":"480","java_box_height":"480","display_rating":"0","display_rating_img":"0","display_comment":"0","display_comment_img":"0","comment_width":"500","max_comment_char":"1000","display_comment_nopup":"0","external_comment_system":"0","fb_comment_user_id":"","display_camera_info":"0","exif_information":"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED.Height,COMPUTED.Width,COMPUTED.IsColor,COMPUTED.ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp","display_categories_geotagging":"0","categories_lng":"","categories_lat":"","categories_zoom":"2","categories_map_width":"","categories_map_height":"500","display_icon_geotagging":"0","display_category_geotagging":"0","category_map_width":"","category_map_height":"400","display_icon_vm":"0","pagination_thumbnail_creation":"0","clean_thumbnails":"0","enable_thumb_creation":"1","crop_thumbnail":"4","jpeg_quality":"82","enable_picasa_loading":"1","picasa_load_pagination":"20","enable_facebook_loading":"1","icon_format":"png","large_image_width":"640","large_image_height":"480","medium_image_width":"100","medium_image_height":"100","small_image_width":"50","small_image_height":"50","front_modal_box_width":"680","front_modal_box_height":"560","folder_permissions":"0777","jfile_thumbs":"0","alias_iconv":"0","enable_cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'Horizontal scrolling slideshow', 'module', 'mod_horizontal_scrolling_slideshow', '', 0, 1, 0, 0, '{"legacy":false,"name":"Horizontal scrolling slideshow","type":"module","creationDate":"July 2011","author":"Gopi.R","copyright":"(C) 2010 - 2011 www.gopiplus.com, LLC. All rights reserved.","authorEmail":"gopiplus@gmail.com","authorUrl":"http:\\/\\/www.gopiplus.com\\/extensions\\/2011\\/07\\/horizontal-scrolling-slideshow-joomla-module\\/","version":"2.0","description":"Lets you showcase images in a horizontal scroll style. Scroll will start automatically. Slideshow will pause on mouse over.","group":""}', '{"slideshow_type":"jpg","slideshow_folder":"modules\\/mod_horizontal_scrolling_slideshow\\/images","slideshow_link":"http:\\/\\/www.gopiplus.com","slideshow_width":"300","slideshow_height":"75","slideshow_speed":"2","slideshow_bgcolor":"#FFFFFF","slideshow_gap":"5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"legacy":true,"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"legacy":true,"name":"RSForm","type":"component","creationDate":"August 2011","author":"RSJoomla!","copyright":"(C) 2007-2011 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0 R42","description":"With RSForm!Pro you can quickly add forms to your Joomla! website.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_jupgrade_categories`
--

CREATE TABLE `urhc6_jupgrade_categories` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL,
  `section` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_jupgrade_categories`
--

INSERT INTO `urhc6_jupgrade_categories` (`old`, `new`, `section`) VALUES
(0, 2, '0'),
(1, 7, 'com_section'),
(1, 8, '1'),
(3, 9, '1'),
(3, 10, 'com_section'),
(27, 11, '3'),
(28, 12, '3'),
(31, 13, '3'),
(32, 14, '3'),
(4, 15, 'com_section'),
(25, 16, '4'),
(29, 17, '4'),
(30, 18, '4'),
(21, 19, 'com_section'),
(57, 20, '21'),
(22, 21, 'com_section'),
(60, 22, '22'),
(13, 23, 'com_banner'),
(14, 24, 'com_banner'),
(33, 25, 'com_banner'),
(34, 26, 'com_banner'),
(12, 27, 'com_contact_details'),
(4, 28, 'com_newsfeeds'),
(5, 29, 'com_newsfeeds'),
(6, 30, 'com_newsfeeds'),
(2, 31, 'com_weblinks'),
(19, 32, 'com_weblinks');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_jupgrade_menus`
--

CREATE TABLE `urhc6_jupgrade_menus` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_jupgrade_menus`
--

INSERT INTO `urhc6_jupgrade_menus` (`old`, `new`) VALUES
(1, 102),
(2, 103),
(5, 104),
(7, 105),
(8, 106),
(9, 107),
(23, 108),
(26, 109),
(27, 110),
(28, 111),
(32, 112),
(33, 113),
(34, 114),
(35, 115),
(36, 116),
(37, 117),
(38, 118),
(47, 119),
(48, 120),
(49, 121),
(81, 122),
(88, 123),
(89, 124),
(90, 125),
(93, 126),
(96, 127),
(97, 128),
(99, 129),
(100, 130),
(113, 131),
(120, 132),
(129, 133),
(141, 134),
(142, 135),
(201, 136),
(202, 137),
(207, 138),
(210, 139),
(211, 140),
(213, 141),
(214, 142),
(225, 143),
(226, 144),
(228, 145),
(230, 146),
(232, 147),
(233, 148),
(234, 149),
(250, 150),
(252, 151),
(259, 152),
(264, 153),
(266, 154),
(268, 155),
(269, 156),
(270, 157),
(275, 158),
(276, 159),
(277, 160),
(278, 161),
(279, 162),
(280, 163),
(281, 164),
(282, 165),
(283, 166),
(284, 167),
(285, 168),
(286, 169),
(287, 170),
(288, 171),
(289, 172),
(290, 173),
(291, 174),
(292, 175),
(293, 176),
(294, 177),
(295, 178),
(309, 179),
(310, 180),
(311, 181),
(312, 182),
(313, 183),
(314, 184),
(315, 185),
(316, 186),
(317, 187),
(318, 188),
(319, 189),
(320, 190),
(321, 191),
(322, 192),
(323, 193),
(324, 194),
(325, 195),
(327, 196),
(328, 197),
(330, 198),
(331, 199),
(332, 200),
(334, 201),
(335, 202),
(336, 203);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_jupgrade_modules`
--

CREATE TABLE `urhc6_jupgrade_modules` (
  `old` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_jupgrade_modules`
--

INSERT INTO `urhc6_jupgrade_modules` (`old`, `new`) VALUES
(1, 26),
(16, 27),
(18, 28),
(20, 29),
(21, 30),
(22, 31),
(23, 32),
(24, 33),
(26, 34),
(27, 35),
(28, 36),
(30, 37),
(32, 38),
(34, 39),
(35, 40),
(36, 41),
(38, 42),
(120, 43),
(132, 44),
(252, 45),
(435, 46),
(476, 47),
(477, 48),
(478, 49),
(479, 50),
(480, 51),
(481, 52),
(482, 53),
(483, 54),
(484, 55),
(485, 56),
(486, 57),
(487, 58),
(488, 59),
(489, 60),
(504, 61),
(505, 62),
(543, 63),
(548, 64),
(549, 65),
(561, 66),
(585, 67),
(587, 68),
(588, 69),
(597, 70),
(606, 71),
(608, 72),
(609, 73),
(610, 74),
(611, 75),
(612, 76),
(635, 77),
(636, 78),
(659, 79),
(660, 80),
(661, 81),
(662, 82),
(663, 83),
(664, 84),
(665, 85),
(666, 86),
(667, 87),
(1, 19),
(16, 20),
(18, 21),
(20, 22),
(21, 23),
(22, 24),
(23, 25),
(24, 26),
(26, 27),
(27, 28),
(28, 29),
(30, 30),
(32, 31),
(34, 32),
(35, 33),
(36, 34),
(38, 35),
(120, 36),
(132, 37),
(252, 38),
(435, 39),
(476, 40),
(477, 41),
(478, 42),
(479, 43),
(480, 44),
(481, 45),
(482, 46),
(483, 47),
(484, 48),
(485, 49),
(486, 50),
(487, 51),
(488, 52),
(489, 53),
(504, 54),
(505, 55),
(543, 56),
(548, 57),
(549, 58),
(561, 59),
(585, 60),
(587, 61),
(588, 62),
(597, 63),
(606, 64),
(608, 65),
(609, 66),
(610, 67),
(611, 68),
(612, 69),
(635, 70),
(636, 71),
(659, 72),
(660, 73),
(661, 74),
(662, 75),
(663, 76),
(664, 77),
(665, 78),
(666, 79),
(667, 80);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_jupgrade_steps`
--

CREATE TABLE `urhc6_jupgrade_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `extension` int(1) NOT NULL DEFAULT '0',
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `urhc6_jupgrade_steps`
--

INSERT INTO `urhc6_jupgrade_steps` (`id`, `name`, `status`, `extension`, `state`) VALUES
(1, 'users', 1, 0, ''),
(2, 'menus', 1, 0, ''),
(3, 'modules', 1, 0, ''),
(4, 'categories', 1, 0, ''),
(5, 'content', 1, 0, ''),
(6, 'banners', 1, 0, ''),
(7, 'contacts', 1, 0, ''),
(8, 'newsfeeds', 1, 0, ''),
(9, 'weblinks', 1, 0, ''),
(10, 'extensions', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_languages`
--

CREATE TABLE `urhc6_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `urhc6_languages`
--

INSERT INTO `urhc6_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `published`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', 1, 0),
(2, 'zh-CN', '简体中文', '简体中文', 'zh', 'zh', '', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_menu`
--

CREATE TABLE `urhc6_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=352 ;

--
-- Dumping data for table `urhc6_menu`
--

INSERT INTO `urhc6_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 263, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 87, 92, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 88, 89, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 90, 91, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 93, 98, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 94, 95, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 96, 97, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 99, 104, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 100, 101, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 102, 103, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 113, 114, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 105, 106, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 107, 112, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 108, 109, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 110, 111, 0, '*', 1),
(101, 'mainmenu', '主页', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 11, 12, 1, '*', 0),
(139, 'second-menu', 'About us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 209, 210, 0, '*', 0),
(140, 'second-menu', 'FAQs', 'faqs', '', 'faqs', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 211, 212, 0, '*', 0),
(141, 'second-menu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 225, 226, 0, '*', 0),
(142, 'second-menu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 5, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 227, 228, 0, '*', 0),
(152, 'second-menu', 'Home', 'home', '', '', 'index.php?Itemid=', 'alias', 1, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_item":1,"aliasoptions":1,"show_page_heading":"0"}', 0, 0, 0, '*', 0),
(157, 'second-menu', 'Site Map', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 6, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 235, 236, 0, '*', 0),
(158, 'second-menu', 'Site Terms', 'site-terms', '', 'site-terms', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 7, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 243, 244, 0, '*', 0),
(159, 'Bottom-Menu-1', 'Updates', 'updates-15897', '', 'updates-15897', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 1, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 197, 198, 0, '*', 0),
(160, 'Bottom-Menu-1', 'Addons', 'addons-16094', '', 'addons-16094', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 215, 216, 0, '*', 0),
(161, 'Bottom-Menu-1', 'Knowledge Base', 'knowledge-base', '', 'knowledge-base', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 5, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 229, 230, 0, '*', 0),
(162, 'Bottom-Menu-1', 'Designs', 'designs-6335', '', 'designs-6335', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 7, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 241, 242, 0, '*', 0),
(163, 'Bottom-Menu-2', 'Careers', 'careers-27532', '', 'careers-27532', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 1, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 201, 202, 0, '*', 0),
(164, 'Bottom-Menu-2', 'Our Forum', 'our-forum-8917', '', 'our-forum-8917', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 217, 218, 0, '*', 0),
(165, 'Bottom-Menu-2', 'Listings', 'listings-27370', '', 'listings-27370', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 221, 222, 0, '*', 0),
(166, 'Bottom-Menu-2', 'Community', 'community', '', 'community', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 6, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 237, 238, 0, '*', 0),
(167, 'Bottom-Menu-1', 'Learn More', 'learn-more-475', '', 'learn-more-475', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 249, 250, 0, '*', 0),
(168, 'Bottom-Menu-2', 'Learn How', 'learn-how-13432', '', 'learn-how-13432', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 7, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 245, 246, 0, '*', 0),
(169, 'Bottom-Menu-1', 'Mobile', 'mobile', '', 'mobile', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 205, 206, 0, '*', 0),
(170, 'Bottom-Menu-4', 'Affiliates', 'affiliates', '', 'affiliates', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 1, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 199, 200, 0, '*', 0),
(171, 'Bottom-Menu-1', 'Specials', 'specials', '', 'specials', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 223, 224, 0, '*', 0),
(172, 'Bottom-Menu-4', 'Supplies', 'supplies', '', 'supplies', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 219, 220, 0, '*', 0),
(173, 'Bottom-Menu-2', 'Where To', 'where-to', '', 'where-to', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 203, 204, 0, '*', 0),
(174, 'Bottom-Menu-4', 'Careers', 'careers', '', 'careers', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 213, 214, 0, '*', 0),
(175, 'Bottom-Menu-4', 'Our Forum', 'our-forum', '', 'our-forum', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 6, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 239, 240, 0, '*', 0),
(176, 'Bottom-Menu-4', 'Listings', 'listings', '', 'listings', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 207, 208, 0, '*', 0),
(177, 'Bottom-Menu-4', 'Designs', 'designs', '', 'designs', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 5, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 231, 232, 0, '*', 0),
(178, 'Bottom-Menu-2', 'Learn How', 'learn-how', '', 'learn-how', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 5, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"s5_load_mod":0,"s5_columns":1,"s5_subtext":"","s5_group_child":0,"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 233, 234, 0, '*', 0),
(181, 'second-menu', 'Learn More', 'learn-more', '', 'learn-more', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 251, 252, 0, '*', 0),
(182, 'second-menu', 'Updates', 'updates', '', 'updates', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 9, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 253, 254, 0, '*', 0),
(198, 'Bottom-Menu-4', 'Addons', 'addons', '', 'addons', 'index.php?option=com_content&view=article&id=208', 'component', 1, 1, 1, 22, 7, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":1,"pageclass_sfx":"","menu_image":"","secure":0,"show_page_heading":"0"}', 247, 248, 0, '*', 0),
(340, 'mainmenu', 'Intro (7)', 'home-7', '', 'home-7', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 85, 86, 0, '*', 0),
(341, 'mainmenu', '主页', 'home-8', '', 'home-8', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 13, 14, 0, 'zh-CN', 0),
(303, 'mainmenu', '修改用户信息', '2014-07-29-12-14-07', '', '2014-07-29-06-56-09/2014-07-29-12-14-07', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 300, 2, 25, 0, 42, '2014-09-22 18:51:02', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 42, 43, 0, 'zh-CN', 0),
(302, 'mainmenu', '用户信息', '2014-07-29-12-13-28', '', '2014-07-29-06-56-09/2014-07-29-12-13-28', 'index.php?option=com_users&view=profile', 'component', 1, 300, 2, 25, 0, 42, '2014-09-22 18:51:06', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 46, 47, 0, 'zh-CN', 0),
(343, 'menu-en', 'Home (2)', 'mainmenu-2', '', 'mainmenu-2', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 189, 190, 0, 'en-GB', 0),
(301, 'mainmenu', '2013', '2013-07-08-03-47-31', '', '2013-07-08-03-47-29/2013-07-08-03-47-32/2013-07-08-03-47-31', 'index.php?option=com_content&view=category&layout=blog&id=83', 'component', 1, 296, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"3","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 23, 24, 0, 'zh-CN', 0),
(345, 'mainmenu', 'Supervisor', '2013-07-08-03-47-36', '', '2013-07-08-03-47-31/2013-07-08-03-47-36', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 321, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"3","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 54, 55, 0, 'en-GB', 0),
(290, 'xiaozu', '数据语义组', '2012-10-01-13-48-18', '', '2012-10-01-13-48-18', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 159, 160, 0, 'zh-CN', 0),
(289, 'xiaozu', '业务建模组', '2012-10-01-13-48-17', '', '2012-10-01-13-48-17', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 157, 158, 0, 'zh-CN', 0),
(288, 'xiaozu', '协同应用组', '2012-10-01-13-48-16', '', '2012-10-01-13-48-16', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 155, 156, 0, 'zh-CN', 0),
(242, 'mainmenu', '新闻', '2011-11-20-11-51-37', '', '2011-11-20-11-51-37', 'index.php?option=com_content&view=category&layout=blog&id=90', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 15, 16, 0, 'zh-CN', 0),
(271, 'main', 'COM_PHOCAGALLERY_TAGS', 'comphocagallerytags', '', 'comphocagallery/comphocagallerytags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-tags.png', 0, '', 136, 137, 0, '', 1),
(270, 'main', 'COM_PHOCAGALLERY_FB', 'comphocagalleryfb', '', 'comphocagallery/comphocagalleryfb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png', 0, '', 134, 135, 0, '', 1),
(269, 'main', 'COM_PHOCAGALLERY_USERS', 'comphocagalleryusers', '', 'comphocagallery/comphocagalleryusers', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png', 0, '', 132, 133, 0, '', 1),
(268, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'comphocagalleryimagecomments', '', 'comphocagallery/comphocagalleryimagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png', 0, '', 130, 131, 0, '', 1),
(267, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'comphocagallerycategorycomments', '', 'comphocagallery/comphocagallerycategorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png', 0, '', 128, 129, 0, '', 1),
(266, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'comphocagalleryimagerating', '', 'comphocagallery/comphocagalleryimagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png', 0, '', 126, 127, 0, '', 1),
(265, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'comphocagallerycategoryrating', '', 'comphocagallery/comphocagallerycategoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png', 0, '', 124, 125, 0, '', 1),
(264, 'main', 'COM_PHOCAGALLERY_THEMES', 'comphocagallerythemes', '', 'comphocagallery/comphocagallerythemes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png', 0, '', 122, 123, 0, '', 1),
(263, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'comphocagallerycategories', '', 'comphocagallery/comphocagallerycategories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png', 0, '', 120, 121, 0, '', 1),
(262, 'main', 'COM_PHOCAGALLERY_IMAGES', 'comphocagalleryimages', '', 'comphocagallery/comphocagalleryimages', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png', 0, '', 118, 119, 0, '', 1),
(261, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'comphocagallerycontrolpanel', '', 'comphocagallery/comphocagallerycontrolpanel', 'index.php?option=com_phocagallery', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png', 0, '', 116, 117, 0, '', 1),
(260, 'main', 'COM_PHOCAGALLERY', 'comphocagallery', '', 'comphocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu.png', 0, '', 115, 140, 0, '', 1),
(272, 'main', 'COM_PHOCAGALLERY_INFO', 'comphocagalleryinfo', '', 'comphocagallery/comphocagalleryinfo', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 260, 2, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png', 0, '', 138, 139, 0, '', 1),
(273, 'mainmenu', '精彩瞬间', '2012-06-12-04-29-04', '', '2012-06-12-04-29-04', 'index.php?option=com_phocagallery&view=categories', 'component', 1, 1, 1, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_categories":"1","show_pagination_category":"1","show_pagination_limit_categories":"1","show_pagination_limit_category":"1","show_ordering_categories":"0","show_ordering_images":"1","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 33, 34, 0, 'zh-CN', 0),
(279, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 0, 1, 1, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '', 141, 154, 0, '', 1),
(280, 'main', 'COM_RSFORM_MANAGE_FORMS', 'comrsformmanageforms', '', 'rsformpro/comrsformmanageforms', 'index.php?option=com_rsform&task=forms.manage', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 142, 143, 0, '', 1),
(281, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'comrsformmanagesubmissions', '', 'rsformpro/comrsformmanagesubmissions', 'index.php?option=com_rsform&task=submissions.manage', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 144, 145, 0, '', 1),
(282, 'main', 'COM_RSFORM_CONFIGURATION', 'comrsformconfiguration', '', 'rsformpro/comrsformconfiguration', 'index.php?option=com_rsform&task=configuration.edit', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 146, 147, 0, '', 1),
(283, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'comrsformbackuprestore', '', 'rsformpro/comrsformbackuprestore', 'index.php?option=com_rsform&task=backup.restore', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 148, 149, 0, '', 1),
(284, 'main', 'COM_RSFORM_UPDATES', 'comrsformupdates', '', 'rsformpro/comrsformupdates', 'index.php?option=com_rsform&task=updates.manage', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 150, 151, 0, '', 1),
(285, 'main', 'COM_RSFORM_PLUGINS', 'comrsformplugins', '', 'rsformpro/comrsformplugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 279, 2, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 152, 153, 0, '', 1),
(286, 'mainmenu', '联系', '2012-10-01-10-12-40', '', '2012-10-01-10-12-40', 'index.php?option=com_rsform&view=rsform&formId=4', 'component', 1, 1, 1, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 37, 38, 0, 'zh-CN', 0),
(291, 'xiaozu', '3D信息可视化组', '2012-10-01-13-48-19', '', '2012-10-01-13-48-19', 'index.php?option=com_content&view=category&layout=blog&id=71', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 161, 162, 0, '*', 0);
INSERT INTO `urhc6_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(292, 'mainmenu', '人员', '2013-07-08-03-47-29', '', '2013-07-08-03-47-29', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"3","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 17, 26, 0, 'zh-CN', 0),
(294, 'mainmenu', '导师', '2013-07-08-03-47-30', '', '2013-07-08-03-47-29/2013-07-08-03-47-30', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 292, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"4","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 18, 19, 0, 'zh-CN', 0),
(295, 'mainmenu', '博士生', '2013-07-08-03-47-31', '', '2013-07-08-03-47-29/2013-07-08-03-47-31', 'index.php?option=com_content&view=category&layout=blog&id=74', 'component', 1, 292, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"4","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 20, 21, 0, 'zh-CN', 0),
(296, 'mainmenu', '研究生', '2013-07-08-03-47-32', '', '2013-07-08-03-47-29/2013-07-08-03-47-32', 'index.php?option=com_content&view=category&layout=blog&id=75', 'component', 1, 292, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"4","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 22, 25, 0, 'zh-CN', 0),
(297, 'xiaozu', 'MES架构组', '2012-10-01-13-48-20', '', '2012-10-01-13-48-20', 'index.php?option=com_content&view=category&layout=blog&id=78', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 163, 164, 0, '*', 0),
(298, 'xiaozu', 'ORIPS组', '2012-10-01-13-48-21', '', '2012-10-01-13-48-21', 'index.php?option=com_content&view=category&layout=blog&id=87', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 165, 166, 0, '*', 0),
(300, 'mainmenu', '用户管理', '2014-07-29-06-56-09', '', '2014-07-29-06-56-09', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 39, 48, 0, 'zh-CN', 0),
(344, 'menu-zh', 'Home', 'mainmenu-2zh', '', 'mainmenu-2zh', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 191, 192, 1, 'zh-CN', 0),
(304, 'mainmenu', '修改密码', '2014-07-29-12-14-32', '', '2014-07-29-06-56-09/2014-07-29-12-14-32', 'index.php?option=com_users&view=reset', 'component', 1, 300, 2, 25, 0, 42, '2014-09-22 18:51:02', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 44, 45, 0, 'zh-CN', 0),
(305, 'user-menu', '用户信息', '2014-07-29-12-18-38', '', '2014-07-29-12-18-38', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 167, 168, 0, '*', 0),
(306, 'user-menu', '修改信息', '2014-07-29-12-19-14', '', '2014-07-29-12-19-14', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 169, 170, 0, '*', 0),
(307, 'user-menu', '修改密码', '2014-07-29-12-19-39', '', '2014-07-29-12-19-39', 'index.php?option=com_users&view=reset', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 171, 172, 0, '*', 0),
(308, 'mainmenu', '研究小组', '2011-11-20-11-51-43', '', '2011-11-20-11-51-43', 'index.php?option=com_content&view=category&layout=blog&id=77', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 27, 28, 0, 'zh-CN', 0),
(309, 'mainmenu', '论文', '2011-11-20-11-51-44', '', '2011-11-20-11-51-44', 'index.php?option=com_content&view=category&layout=blog&id=88', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 29, 30, 0, 'zh-CN', 0),
(310, 'mainmenu', '项目及软件', '2011-11-20-11-51-45', '', '2011-11-20-11-51-45', 'index.php?option=com_content&view=category&layout=blog&id=82', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 35, 36, 0, 'zh-CN', 0),
(311, 'mainmenu', '活动', '2011-11-20-11-51-46', '', '2011-11-20-11-51-46', 'index.php?option=com_content&view=category&layout=blog&id=89', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 31, 32, 0, 'zh-CN', 0),
(312, 'user-menu', '登录', '2014-07-29-14-07-38', '', '2014-07-29-14-07-38', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 173, 174, 0, '*', 0),
(313, 'mainmenu', '登录', '2014-07-29-14-07-38', '', '2014-07-29-06-56-09/2014-07-29-14-07-38', 'index.php?option=com_users&view=login', 'component', 1, 300, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 40, 41, 0, 'zh-CN', 0),
(314, 'mainmenu', 'Home', 'home-2', '', 'home-2', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 175, 176, 0, 'en-GB', 0),
(315, 'mainmenu', '首页 (3)', 'home-3', '', 'home-3', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 177, 178, 0, '*', 0),
(318, 'mainmenu', 'News', '2011-11-20-11-51-47', '', '2011-11-20-11-51-47', 'index.php?option=com_content&view=category&layout=blog&id=90', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 51, 52, 0, 'en-GB', 0),
(317, 'mainmenu', 'Home', 'home-4', '', 'home-4', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 49, 50, 0, 'en-GB', 0),
(319, 'xiaozu', '3D信息可视化组 (4)', '2012-10-01-13-48-22', '', '2012-10-01-13-48-22', 'index.php?option=com_content&view=category&layout=blog&id=71', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 179, 180, 0, '*', 0),
(321, 'mainmenu', 'Member', '2013-07-08-03-47-31', '', '2013-07-08-03-47-31', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"3","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 53, 62, 0, 'en-GB', 0),
(322, 'mainmenu', 'Doctor', '2013-07-08-03-47-34', '', '2013-07-08-03-47-31/2013-07-08-03-47-34', 'index.php?option=com_content&view=category&layout=blog&id=74', 'component', 1, 321, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"2","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 56, 57, 0, 'en-GB', 0),
(323, 'mainmenu', 'Master', '2013-07-08-03-47-35', '', '2013-07-08-03-47-31/2013-07-08-03-47-35', 'index.php?option=com_content&view=category&layout=blog&id=75', 'component', 1, 321, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"4","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 58, 61, 0, 'en-GB', 0),
(324, 'mainmenu', '2013', '2013-07-08-03-47-32', '', '2013-07-08-03-47-31/2013-07-08-03-47-35/2013-07-08-03-47-32', 'index.php?option=com_content&view=category&layout=blog&id=83', 'component', 1, 323, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"30","num_columns":"3","num_links":"","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 59, 60, 0, 'en-GB', 0),
(325, 'mainmenu', 'Research Group', '2011-11-20-11-51-48', '', '2011-11-20-11-51-48', 'index.php?option=com_content&view=category&layout=blog&id=77', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 63, 64, 0, 'en-GB', 0),
(326, 'mainmenu', 'Papers', '2011-11-20-11-51-49', '', '2011-11-20-11-51-49', 'index.php?option=com_content&view=category&layout=blog&id=88', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 65, 66, 0, 'en-GB', 0),
(327, 'mainmenu', 'Activity', '2011-11-20-11-51-50', '', '2011-11-20-11-51-50', 'index.php?option=com_content&view=category&layout=blog&id=89', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 67, 68, 0, 'en-GB', 0),
(328, 'mainmenu', 'Album', '2012-06-12-04-29-5', '', '2012-06-12-04-29-5', 'index.php?option=com_phocagallery&view=categories', 'component', 1, 1, 1, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_categories":"1","show_pagination_category":"1","show_pagination_limit_categories":"1","show_pagination_limit_category":"1","show_ordering_categories":"0","show_ordering_images":"1","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 69, 70, 0, 'en-GB', 0),
(329, 'mainmenu', 'Projects', '2011-11-20-11-51-51', '', '2011-11-20-11-51-51', 'index.php?option=com_content&view=category&layout=blog&id=82', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"6","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 71, 72, 0, 'en-GB', 0),
(330, 'mainmenu', '首页 (5)', 'home-5', '', 'home-5', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 181, 182, 0, '*', 0),
(331, 'menu-en', 'Home', 'mainmenu', '', 'mainmenu', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 183, 184, 1, 'en-GB', 0),
(332, 'mainmenu', 'Contact', '2012-10-01-10-12-41', '', '2012-10-01-10-12-41', 'index.php?option=com_rsform&view=rsform&formId=4', 'component', 0, 1, 1, 10035, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 73, 74, 0, 'en-GB', 0),
(333, 'mainmenu', 'Users ', '2014-07-29-06-56-10', '', '2014-07-29-06-56-10', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 75, 84, 0, 'en-GB', 0),
(334, 'mainmenu', '首页 (6)', 'home-6', '', 'home-6', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 185, 186, 0, '*', 0),
(335, 'menu-en', 'Home', 'home-en1', '', 'home-en1', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 187, 188, 0, 'en-GB', 0),
(336, 'mainmenu', 'Sign in', '2014-07-29-14-07-39', '', '2014-07-29-06-56-10/2014-07-29-14-07-39', 'index.php?option=com_users&view=login', 'component', 1, 333, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 76, 77, 0, 'en-GB', 0),
(337, 'mainmenu', 'Change Information', '2014-07-29-12-14-8', '', '2014-07-29-06-56-10/2014-07-29-12-14-8', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 333, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 78, 79, 0, 'en-GB', 0),
(338, 'mainmenu', 'Change Password', '2014-07-29-12-14-33', '', '2014-07-29-06-56-10/2014-07-29-12-14-33', 'index.php?option=com_users&view=reset', 'component', 1, 333, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 80, 81, 0, 'en-GB', 0),
(339, 'mainmenu', 'User Information', '2014-07-29-12-13-29', '', '2014-07-29-06-56-10/2014-07-29-12-13-29', 'index.php?option=com_users&view=profile', 'component', 1, 333, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 82, 83, 0, 'en-GB', 0),
(346, 'xiaozu', '协同应用组 (8)', '2012-10-01-13-48-23', '', '2012-10-01-13-48-23', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 193, 194, 0, 'en-GB', 0);
INSERT INTO `urhc6_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(347, 'xiaozu', '协同应用组 (9)', '2012-10-01-13-48-24', '', '2012-10-01-13-48-24', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 195, 196, 0, 'zh-CN', 0),
(348, 'research-group', 'Collaborative Application Group', 'collaborative-application-group', '', 'collaborative-application-group', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 255, 256, 0, 'en-GB', 0),
(349, 'research-group', 'Cloud Services Technology Group', 'collaborative-application-group-2', '', 'collaborative-application-group-2', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 257, 258, 0, 'en-GB', 0),
(350, 'research-group', 'Data semantics Group', 'collaborative-application-group-3', '', 'collaborative-application-group-3', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 259, 260, 0, 'en-GB', 0),
(351, 'user-menu', '编写文章', '2014-09-23-02-46-42', '', '2014-09-23-02-46-42', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"enable_category":"1","catid":"75","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 261, 262, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_menu_types`
--

CREATE TABLE `urhc6_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `urhc6_menu_types`
--

INSERT INTO `urhc6_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', '菜单', 'The main menu for the site'),
(5, 'user-menu', '用户管理', ''),
(4, 'xiaozu', '小组', ''),
(9, 'menu-en', 'Menu', ''),
(10, 'menu-zh', '中文菜单', ''),
(11, 'research-group', 'Research Group', '');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_messages`
--

CREATE TABLE `urhc6_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_messages_cfg`
--

CREATE TABLE `urhc6_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_modules`
--

CREATE TABLE `urhc6_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `urhc6_modules`
--

INSERT INTO `urhc6_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(19, 'Main Menu', '', '', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","menu_style":"list","startLevel":1,"endLevel":0,"showAllChildren":0,"window_open":"","show_whitespace":0,"cache":1,"tag_id":"","class_sfx":"","moduleclass_sfx":"","maxdepth":10,"menu_images":0,"menu_images_align":0,"menu_images_link":0,"expand_menu":0,"activate_parent":0,"full_active_id":0,"indent_image":0,"indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', 0, '*'),
(20, 'Our Poll', '', '', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_poll', 1, 1, '{"id":"14","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(21, 'Login', '', '', 0, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"cache":"0","moduleclass_sfx":"","pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0"}', 0, '*'),
(22, 'Statistics', '', '', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","moduleclass_sfx":"","cache":"0","cache_time":"900"}', 0, '*'),
(23, 'Guests Online', '', '', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{"cache":"0","showmode":"0","moduleclass_sfx":"-plain"}', 0, '*'),
(24, 'Popular Articles', '', '', 1, 'bottom_row1_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":[""],"count":"7","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(25, 'Archive', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":10,"moduleclass_sfx":"-blue tester","cache":1}', 0, '*'),
(26, 'Sections', '', '', 4, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_sections', 1, 1, '{"count":"5","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(27, 'Related Items', '', '', 7, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{}', 0, '*'),
(28, 'Search', '', '', 2, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 1, '{"moduleclass_sfx":"","width":"32","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","cache":"1","cache_time":"900"}', 0, '*'),
(29, 'Random Image', '', '', 5, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"","link":"","width":"","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(30, 'Banners', '', '', 0, 'banner', 42, '2012-06-24 11:54:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":"13","tag_search":"0","ordering":"random","header_text":"","footer_text":"","moduleclass_sfx":"","cache":"1","cache_time":"15"}', 0, '*'),
(31, 'Wrapper', '', '', 4, 'bottom_row_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_wrapper', 1, 1, '{"moduleclass_sfx":"","url":"","scrolling":"auto","width":"100%","height":"200","height_auto":"1","add":"1","target":"","cache":"0","cache_time":"900"}', 0, '*'),
(32, 'Feed Display', '', '', 4, 'above_body_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"moduleclass_sfx":"","rssurl":"","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","cache":"0","cache_time":"15"}', 0, '*'),
(33, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","moduleclass_sfx":"","cache":"0","layout":"_:default","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(34, 'Syndication', '', '', 3, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 1, '{"cache":"0","text":"Feed Entries","format":"rss","moduleclass_sfx":""}', 0, '*'),
(35, 'Advertisement', '', '', 6, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"1","count":"4","cid":"0","catid":"14","tag_search":"0","ordering":"0","header_text":"Featured Links:","footer_text":"<a href=\\"http:\\/\\/www.joomla.org\\">Ads by Joomla!<\\/a>","moduleclass_sfx":"_text","cache":"0","cache_time":"900"}', 0, '*'),
(36, 'debug', '', '<p>This is the default debug module style.</p>', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(37, 'Shape 5 Live Search', '', '', 0, 'search', 62, '2011-08-09 16:55:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_s5_live_search', 1, 1, '{"moduleclass_sfx":"","icon_ml":"150","icon_mt":"-18","icon_height":"7","bar_font_color":"333333","bar_font_size":"12","bar_bg_color":"E4E4E4","bar_border_color":"EDECEC","bar_padding_lr":"10","bar_padding_tb":"6","result_font_size":"12","result_padding_lr":"14","result_padding_tb":"6","searchword_color":"B1B1B1","result1_font_color":"333333","result2_font_color":"333333","result1_link_font_color":"333333","result2_link_font_color":"333333","result1_readmore_font_color":"333333","result2_readmore_font_color":"333333","result1_bg_color":"ffffff","result2_bg_color":"f2f2f2","result1_bg_hover_color":"ffffff","result2_bg_hover_color":"ffffff","result1_border_color":"EDECEC","result2_border_color":"EDECEC","width":"35","popup_width":"400","popup_mt":"13","popup_mb":"10","popup_ml":"-210","popup_mr":"0","border_color":"BBBBBB","border_size":"1","text":"Live Search...","button_text":"","more_results_text":"Search Results - Click Here For Full Results","no_results_text":"No results found","readmore_text":"Read More...","button":"Yes","button_pos":"right","searchphrase":"any","ordering":"newest","limit":"5","cache":"1","cache_time":"900"}', 0, '*'),
(38, '最新新闻', '', '', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["90"],"count":"3","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(39, 'S5 Accordion Menu', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_s5_accordion_menu', 1, 1, '{"menutype":"mainmenu","parentlinks":"1","startLevel":"1","endLevel":"0","showAllChildren":"1","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"-no_background","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(40, 'Middle Menu', '', '', 1, 'middle_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"second-menu","menu_style":"list","startLevel":1,"endLevel":0,"showAllChildren":0,"window_open":"","show_whitespace":0,"cache":1,"tag_id":"","class_sfx":"","moduleclass_sfx":"","maxdepth":10,"menu_images":0,"menu_images_align":0,"menu_images_link":0,"expand_menu":0,"activate_parent":0,"full_active_id":0,"indent_image":0,"indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', 0, '*'),
(41, 'Top Menu', '', '', 1, 'top_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(42, 'Top Row1 Modules', '', 'This is an example of a module published to the top_row_1 row. This row contains 6 modules, read below for a full description.', 2, 'top_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(43, 'Top Row2 Modules', '', 'This is an example of a module published to the top_row_2 row. This row contains 6 modules, read below for a full description.', 0, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(44, 'Top Row3 Modules', '', '<p>This is an example of a module published to the top_row_3 row. This row contains 6 modules, read below for a full description.</p>', 0, 'top_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(45, 'Bottom Row1 Modules', '', 'This is an example of a module published to the bottom_row_1 row. This row contains 6 modules, read above for a full description.', 2, 'bottom_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(46, 'Bottom Row2 Modules', '', 'This is an example of a module published to the bottom_row_2 row. This row contains 6 modules, read above for a full description.', 0, 'bottom_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(47, 'Bottom Row3 Modules', '', 'This is an example of a module published to the bottom_row_3 row. This row contains 6 modules, read above for a full description.', 1, 'bottom_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(48, 'Mobile Top 1', '', 'This is the default mobile_top_1 position and is shown only on mobile devices.', 2, 'mobile_top_1', 42, '2012-06-24 12:36:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(49, 'Mobile Top 2', '', 'This is the default mobile_top_2 position and is shown only on mobile devices.', 2, 'mobile_top_2', 42, '2012-06-24 12:37:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(50, 'Mobile Bottom 2', '', 'This is the default mobile_bottom_2 position and is shown only on mobile devices.', 1, 'mobile_bottom_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(51, 'Mobile Bottom 1', '', 'This is the default mobile_bottom_1 position and is shown only on mobile devices.', 2, 'mobile_bottom_1', 42, '2011-09-26 14:40:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(52, 'Right', '', '<p>This is an example of a module published to the right position. There is also a left position and many others, be sure to read the full description.</p>', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(53, 'Right Inset', '', 'This is an example of a module published to the right_inset position. There is also a left_inset position and many others, be sure to read the full description.', 0, 'right_inset', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(54, 'Register', '', '', 0, 'register', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_s5_register', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(55, 'Connect with Us via', '', '<div>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;">Student Affairs Committee of <span class="Apple-style-span" style="color: #31302e; font-family: Arial, Arial, sans-serif; font-size: 13px; line-height: 17px;">Shanghai Jiao Tong University</span> which was set up in 1986 <span class="Apple-style-span" style="color: #31302e; font-family: Arial, Arial, sans-serif; font-size: 13px; line-height: 17px;">and referred to as “SAC” </span>is a functional division to coordinate all student affairs.</p>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;"><strong style="padding: 0px; margin: 0px;">Student Affairs Committee Office</strong></p>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;">Address: New Administration Building (3F)</p>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;">Tel: +86 21 34206179</p>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;">Email: <a href="mailto:sac@sjtu.edu.cn" style="text-decoration: none; color: #036c9e; padding: 0px; margin: 0px;">sac@sjtu.edu.cn</a></p>\r\n<p style="padding-top: 5px; padding-right: 0px; padding-bottom: 5px; padding-left: 0px; margin: 0px;"><strong><br /></strong></p>\r\n</div>', 1, 'bottom_row3_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"058B0F SAC","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(56, 'Site Shaper Available', '', '<p>Do you need a website up and running quickly? Then a site shaper is just what you are looking for. A Site Shaper is a quick and easy way to get your site looking just like our demo in just minutes! It includes Joomla itself, this template and any extensions that you see on this demo. It also installs the same module and article content, making an exact copy of this demo with very little effort. <a href="index.php?option=com_content&amp;view=article&amp;id=39&amp;Itemid=89">Learn More...</a></p>', 1, 'bottom_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"-highlight","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(57, 'Bottom Menu', '', '', 2, 'bottom_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Faq List', '', '', 1, 'bottom_row3_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"A81111 Hot","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(59, 'Featured News', '', '', 0, 'right_inset', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 0, '{"layout":"vertical","image":"0","link_titles":"1","showLastSeparator":"0","item_title":"1","moduleclass_sfx":"","cache":"0","cache_time":"900","catid":["22"],"item_heading":"h4","count":"5","ordering":"a.publish_up","cachemode":"itemid"}', 0, '*'),
(119, '登录', '', '', 1, 'left', 42, '2014-07-30 06:26:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(120, '用户管理', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"user-menu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(61, 'Who We Are', '', '', 0, 'bottom_row3_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"Bottom-Menu-3","menu_style":"list","startLevel":1,"endLevel":0,"showAllChildren":0,"window_open":"","show_whitespace":0,"cache":1,"tag_id":"","class_sfx":"","moduleclass_sfx":"","maxdepth":10,"menu_images":0,"menu_images_align":0,"menu_images_link":0,"expand_menu":0,"activate_parent":0,"full_active_id":0,"indent_image":0,"indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', 0, '*'),
(62, 'Quick Tips', '', '', 1, 'bottom_row3_4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"BF1FAE Links","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(63, 'S5 Box', '', '', 0, 'bottom_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_s5_box', 1, 1, '{"s5_jsversion":"mootools","s5_moover":"moo124","s5_boxeffect":"elastic","s5boxwidth1":"35","s5boxwidth2":"35","s5boxwidth3":"35","s5boxwidth4":"35","s5boxwidth5":"35","s5boxwidth6":"35","s5boxwidth7":"35","s5boxwidth8":"35","s5boxwidth9":"35","s5boxwidth10":"35","moduleclass_sfx":"-s5_box"}', 0, '*'),
(64, 'Built With Style and Functionality In Mind', '', '<div style="padding-top: 6px;">\r\n<div style="float: left; width: 294px; padding-left: 5px; margin-right: 22px;"><span style="display: block; font-size: 9pt; font-weight: bold; margin-bottom: 12px;"><span class="s5_highlight">MOBILE</span> DEVICE SUPPORT</span> <img class="boxed_black" src="images/mod1.jpg" border="0" style="float: left; margin-right: 14px; margin-bottom: 4px;" /> <span style="font-size: 9pt; line-height: 132%; color: #31302e;"> Need mobile device support for your website? Not a problem. Callie Rush comes with the ability to enable support for mobile devices! </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=211&amp;Itemid=252" style="margin-bottom: 8px; margin-left: 8px; margin-right: 8px;">Learn More...</a></div>\r\n<div style="float: left; width: 294px; padding-left: 5px; margin-right: 22px;"><span style="display: block; font-size: 9pt; font-weight: bold; margin-bottom: 12px;"><span class="s5_highlight">GOOGLE</span> FONTS ENABLED</span> <img class="boxed_black" src="images/mod2.jpg" border="0" style="float: left; margin-right: 14px; margin-bottom: 4px;" /> <span style="font-size: 9pt; line-height: 132%; color: #31302e;"> Do you want your own custom font? Not a problem, this template comes with Google Fonts enabled, allowing you to pick any font family. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=204&amp;Itemid=230" style="margin-bottom: 8px; margin-left: 8px; margin-right: 8px;">Learn More...</a></div>\r\n<div style="float: left; width: 294px; padding-left: 5px;"><span style="display: block; font-size: 9pt; font-weight: bold; margin-bottom: 12px;"><span class="s5_highlight">CUSTOM</span> COLUMN WIDTHS</span> <img class="boxed_black" src="images/mod3.jpg" border="0" style="float: left; margin-right: 14px; margin-bottom: 4px;" /> <span style="font-size: 9pt; line-height: 132%; color: #31302e;"> Flexibility is essential in a template! Set the width of the main body or any of the rows and columns in this template to any width that you need. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=24&amp;Itemid=250" style="margin-bottom: 8px; margin-left: 8px; margin-right: 8px;">Learn More...</a></div>\r\n</div>', 1, 'top_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"BD1F27 Popular","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'S5 Flex Menu Sample Module', '', '<div style="width:182px;font-size:0.85em"><div style="float:left;overflow:hidden;width:86px"><img style="height:58px" src="http://www.shape5.com/demo/images/multibox3.jpg" alt=""></img></div>This is a sample module to showcase the functionality of the S5 Flex Menu system. This menu system contains up to 40 module positions and you can publish any module to any of these positions under any menu item.</div>', 0, 's5_menu1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"moduleclass_sfx":""}', 0, '*'),
(66, '-dark', '', '<p>This is the -dark module style and can be applied to any of the main body positions except drop_down and bottom_row3 rows. Limited IE7 support.</p>', 7, 'right', 42, '2011-09-26 12:57:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":"-dark"}', 0, '*'),
(67, '-medium', '', '<p>This is the -medium module style and can be applied to any of the main body positions except drop_down and bottom_row3 rows. Limited IE7 support.</p>', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":"-medium"}', 0, '*'),
(68, '-highlight', '', '<p>This is the -highlight module style and can be applied to any of the main body positions except top_row1 and bottom_row3. Limited IE7 support.</p>', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":"-highlight"}', 0, '*'),
(69, '-no_background', '', '<p>This is the -no_background module style and can be applied to any of the main body positions except drop_down and bottom_row3 rows.</p>', 6, 'right', 42, '2012-06-24 11:53:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":"-no_background"}', 0, '*'),
(70, 'S5 Frontpage Display 2', '', '', 1, 'top_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_s5_frontpage_display2', 1, 0, '{"moduleclass_sfx":"","modulewidth":"942","topheight":"130","bottomheight":"0","tm":"0","rm":"0","bm":"0","lm":"0","background":"000000","boxes":"3","highlight":"3","rotate":"yes","speed":"2","top1_pic":"images\\/front\\/xinqing_banner1.JPG","top1_hyperlink":"#","top1_target":"same","top1_content":"","box1width":"222","box1_pic":"","box1_pic_hover":"","box1_hyperlink":"#","box1_target":"same","box1_content":"","top2_pic":"images\\/front\\/xinqing_banner2.JPG","top2_hyperlink":"#","top2_target":"same","top2_content":"","box2width":"0","box2_pic":"","box2_pic_hover":"","box2_hyperlink":"#","box2_target":"same","box2_content":"","top3_pic":"images\\/front\\/xinqing_banner3.JPG","top3_hyperlink":"#","top3_target":"same","top3_content":"","box3width":"0","box3_pic":"","box3_pic_hover":"","box3_hyperlink":"#","box3_target":"same","box3_content":"","top4_pic":"","top4_hyperlink":"","top4_target":"same","top4_content":"","box4width":"222","box4_pic":"","box4_pic_hover":"","box4_hyperlink":"","box4_target":"same","box4_content":"","top5_pic":"","top5_hyperlink":"","top5_target":"same","top5_content":"","box5width":"222","box5_pic":"","box5_pic_hover":"","box5_hyperlink":"","box5_target":"same","box5_content":"","top6_pic":"","top6_hyperlink":"","top6_target":"same","top6_content":"","box6width":"222","box6_pic":"","box6_pic_hover":"","box6_hyperlink":"","box6_target":"same","box6_content":"","top7_pic":"","top7_hyperlink":"","top7_target":"same","top7_content":"","box7width":"222","box7_pic":"","box7_pic_hover":"","box7_hyperlink":"","box7_target":"same","box7_content":"","top8_pic":"","top8_hyperlink":"","top8_target":"same","top8_content":"","box8width":"222","box8_pic":"","box8_pic_hover":"","box8_hyperlink":"","box8_target":"same","box8_content":""}', 0, '*'),
(71, 'S5 Vertical Accordion', '', '', 1, 'below_columns_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_s5_vertical_accordion', 1, 0, '{"moduleclass_sfx":"-no_background","s5_va_width":"473","s5_va_click_or_hover":"click","s5_va_opacity":"yes","s5_va_autorun":"5","title1":"\\u3010News\\u3011SJTU Opening Day 2011 ","title2":"\\u3010News\\u3011The International Student Talent Show Open ","title3":"\\u3010Tutorship\\u3011Professor Guo Xiaokui","title4":"\\u3010Campus Life\\u3011Ourhome","title5":"\\u3010Campus Life\\u3011Counseling and Support Services Center","title6":"","title7":"","title8":"","title9":"","title10":""}', 0, '*'),
(72, '精彩瞬间', '', '<div style="padding-top: 4px; padding-bottom: 4px;"><a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c33.jpg" title="Image #12:"><br /> <img class="padded" src="images/phocagallery/thumbs/phoca_thumb_l_9vjqvuxefv.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px; width: 55%;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/yhjy/thumbs/phoca_thumb_m_001.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273" title="Image #14:"> <img class="padded" src="images/phocagallery/yhjy/thumbs/phoca_thumb_m_002.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/yhjy/thumbs/phoca_thumb_m_003.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273" title="Image #14:"> <img class="padded" src="images/phocagallery/yhjy/thumbs/phoca_thumb_m_004.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/yhjy/thumbs/phoca_thumb_m_005.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/hwlxjlh/thumbs/phoca_thumb_m_hwlx1.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/hwlxjlh/thumbs/phoca_thumb_m_hwlx2.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/hwlxjlh/thumbs/phoca_thumb_m_hwlx3.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a> <a href="index.php?option=com_phocagallery&amp;view=categories&amp;Itemid=273#c44.jpg" title="Image #13:"> <img class="padded" src="images/phocagallery/thumbs/phoca_thumb_m_img_3602.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px;" /></a></div>', 1, 'below_columns_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"BF1FAE Hot","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, '新闻动态', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["90"],"count":"20","show_featured":"0","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Vertical Accordion 1', '', '<p><img class="padded" src="images/miaomen_small.jpg" border="0" alt="" style="float: left;" /> <span style="font-size: 8pt; line-height: 148%; float: right; width: 260px; padding-top: 5px;">The Golden September is the season to spread hope and harvest dream. On the morning of September 4, the Freshmen Opening Ceremony 2011 was held in the beaming New Gym on SJTU Minhang Campus with the joyous music. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=242:sjtu-opening-day-2011&amp;catid=39:news&amp;Itemid=207" style="float: right; margin: 0px;"> Read More...</a></p>\r\n<div style="clear: both; height: 0px;"> </div>', 1, 's5_va_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Vertical Accordion 2', '', '<p><img class="padded" src="images/talent_small.jpg" border="0" alt="" style="float: left;" /> <span style="font-size: 8pt; line-height: 148%; float: right; width: 260px; padding-top: 5px;"> On the evening of April 29, 2011, the Second Annual International Student Talent Show, organized by Shanghai Jiao Tong University School of International Education and International Student Council, opened its curtains to the audience at Guang Biao Building. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=254:the-second-annual-international-student-talent-show-open&amp;catid=37&amp;Itemid=212" style="float: right; margin: 0px;"> Read More...</a></p>\r\n<div style="clear: both; height: 0px;"> </div>', 1, 's5_va_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Vertical Accordion 3', '', '<p><img class="padded" src="images/xiaokui_small.jpg" border="0" alt="" style="float: left;" /> <span style="font-size: 8pt; line-height: 148%; float: right; width: 260px; padding-top: 5px;"> Professor Guo always stands fast in the forefront of teaching. He is one of the professors who enjoy the largest number of lessons. He is an innovative, hardworking and dependable person </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=252:professor-guo-xiaokui&amp;catid=36&amp;Itemid=214" style="float: right; margin: 0px;"> Read More...</a></p>\r\n<div style="clear: both; height: 0px;"> </div>', 1, 's5_va_3', 42, '2011-09-26 14:16:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Vertical Accordion 4', '', '<p><img class="padded" src="images/ourhome_small.jpg" border="0" alt="" style="float: left;" /> <span style="font-size: 8pt; line-height: 148%; float: right; width: 260px; padding-top: 5px;"> Shanghai Jiao Tong University Minghang campus is located in the northwest of Minhang district, which is close to the mother river of shanghai—Huangpu River. The campus with nice natural environment covers 5,000 mu of land. There are 94 student apartments divided into east and west part. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=258:ourhome&amp;catid=33:campus-life&amp;Itemid=213" style="float: right; margin: 0px;"> Read More...</a></p>\r\n<div style="clear: both; height: 0px;"> </div>', 1, 's5_va_4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(77, 'Vertical Accordion 5', '', '<p><img class="padded" src="images/1_small.jpg" border="0" alt="" style="float: left;" /> <span style="font-size: 8pt; line-height: 148%; float: right; width: 260px; padding-top: 5px;"> Counseling and Support Services Center of SJTU is founded in September, 1985. Originally, it is named "Yiyou (good friend) Counseling Center"; "Yiyou" is the first professional psychological counseling organization in universities of China. </span> <a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=261:counseling-and-support-services-center&amp;catid=33:campus-life&amp;Itemid=213" style="float: right; margin: 0px;"> Read More...</a></p>\r\n<div style="clear: both; height: 0px;"> </div>', 1, 's5_va_5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(78, 'Vertical Accordion 6', '', '<img alt="" class="padded" src="images/va6.jpg" style="float:left"></img>\r\n\r\n<span style="font-size:8pt;line-height:148%;float:right;width:260px;padding-top:5px">\r\n\r\nMultibox is a popup box effect that supports images, flash, audio and html! Tooltips can also be enabled and allow for images and tip text to be used and certain items.\r\n\r\n</span>\r\n\r\n<a href="index.php?option=com_content&view=article&id=195&Itemid=225" class="readon" style="float:right;margin:0px">Read More...</a>\r\n\r\n<div style="clear:both;height:0px"></div>', 0, 's5_va_6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(79, 'Virtual 3D Campus', '', '<p><img src="images/3d.png" border="0" alt="" width="470" height="150" /> </p>\r\n<p>Go to: <a href="http://3dcampus.sjtu.edu.cn/en/index.html" target="_blank">Virtual 3D Campus</a></p>', 1, 'bottom_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"058B0F 3DCampus","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(80, 'Dynamic Titles', '', 'To use a dynamic title simply enter any hex color code along with your title into any module''s module class suffix field in the module''s backend as shown in the image under #7 under "How to install and setup module styles" to the left:\r\n<br /><br />\r\nExamples:<br />\r\nBF1FAE Hot<br />\r\n058B0F Find<br />\r\nD69E16 Info<br />\r\nA81111 Popular<br />\r\n<br />\r\nYou must enter the suffix exactly as shown with a space after the color and no dashes.', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":"BF1FAE Titles"}', 0, '*'),
(81, 'About SAC News', '', '', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_latestnews', 1, 1, '', 0, '*'),
(82, 'About SAC', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["38"],"count":"7","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(83, '组织工作', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["40"],"count":"7","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(84, 'More Lectures', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["34"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(85, 'More Activities', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["35"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(86, 'Growing Footprints', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["37"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 'Campus Life', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["33"],"count":"15","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, '怀念与感恩', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["41"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, '最热新闻', '', '', 2, 'bottom_row1_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["40"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(90, '2012毕业季', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(112, '小组', '', '', 1, 'bottom_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"xiaozu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, 'zh-CN'),
(92, '思源致远', '', '', 1, 'bottom_row1_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(93, 'test', '', '', 1, 'bottom_row1_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(94, '主页文字', '', '<p class="MsoNormal" style="text-indent: 28.0pt; mso-char-indent-count: 2.0;"><span style="font-size: 14pt; font-family: 仿宋;" lang="ZH-CN">时光荏苒，岁月如梭；春华秋实、寒暑四载！</span></p>\r\n<p class="MsoNormal"><span style="font-size: 14pt; font-family: 仿宋;" lang="ZH-CN">　　四年前，你们以“交大人”之名相聚浦江之滨。这座跨越了三个世纪的大学，这座气交物通、上下心交的高等学府，因为你们的加入，激情四溢、活力万千。</span></p>\r\n<p class="MsoNormal"><span style="font-size: 14pt; font-family: 仿宋;" lang="ZH-CN">　　四年间，你们以“交大人”之名自立拼搏，以勤、朴、忠、诚之交汇贯通的准则，怀感恩之心，承责任之重，以激情之志，寻梦想之途。</span></p>\r\n<p class="MsoNormal"><span style="font-size: 14pt; font-family: 仿宋;" lang="ZH-CN">　　如今，你们将以“交大人”之名从大学殿堂扬帆启航，愿思源致远成为你们的一种情怀、一种信念、一种品格，激励你们不断超越自我、勇创一流，愿“大爱”校园里走出的你们，用更广博、更深厚的爱去奉献社会、投身事业、关注他人、呵护家庭。</span></p>\r\n<p class="MsoNormal"><span style="font-size: 14pt; font-family: 仿宋;" lang="ZH-CN">　　一段难忘的岁月，一份难舍的情怀，一场难得的相聚，让我们共同祝福：</span><span style="font-size: 14pt; font-family: 仿宋;">2012<span lang="ZH-CN">届校友，前程似锦！</span></span></p>', 1, 'top_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `urhc6_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(95, '毕业季活动一览表', '', '<p class="MsoNormal" style="text-indent: 28.0pt; mso-char-indent-count: 2.0;"><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">草长莺飞，又是一年毕业季。那些博学的师长、亲密的伙伴、明亮的教室、热闹的食堂、温馨的寝室</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">……</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">那些熟悉的记忆，是否让你满怀感念，依依不舍。</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">“</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">思源致远，让交大记忆永恒</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">”</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">，为了让</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">F08</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">的毕业生们留下那些属于自己的记忆，学校及各院系都为毕业生们准备了丰富多彩的毕业纪念活动，列为下表，以供毕业生参与分享。</span></p>\r\n<table class="MsoTableMediumShading2Accent3" style="border-collapse: collapse; mso-table-layout-alt: fixed; border: none; mso-border-top-alt: solid windowtext 2.25pt; mso-border-bottom-alt: solid windowtext 2.25pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 22.8pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 517;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">序号</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">活动名称</span></strong></p>\r\n</td>\r\n<td style="width: 56.1pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">主要内容</span></strong></p>\r\n</td>\r\n<td style="width: 59.9pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">时间</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">地点</span></strong></p>\r\n</td>\r\n<td style="width: 35.9pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">面向对象</span></strong></p>\r\n</td>\r\n<td style="width: 114.5pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">发布方式</span></strong></p>\r\n</td>\r\n<td style="width: 40.15pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">参与方式</span></strong></p>\r\n</td>\r\n<td style="width: 40.75pt; border-top: solid windowtext 2.25pt; border-left: none; border-bottom: solid windowtext 2.25pt; border-right: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 1;" align="center"><strong><span style="font-size: 12.0pt; font-family: ''微软雅黑'',''sans-serif''; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; mso-themecolor: background1;" lang="ZH-CN">主办单位</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">1</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业生远航教育大会暨励志讲坛</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">中国航空工业集团公司科技委主任刘高倬研究员“我的航空路”报告会</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">5<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>24<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>14:00-16:30<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">陈瑞球楼报告厅</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届毕业生党员和入党积极分子</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学校主页（链接）</span><strong></strong></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">现场参与</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">思政室</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 4;" align="center"><strong><span style="color: white; mso-themecolor: background1;">2</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">班级理事聘任大会</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">加强建立学校与毕业生、毕业生与毕业生之间互动、联系制度</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">5<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>29<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>14<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">：</span>00-15<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">：</span>00<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">铁生馆</span>200<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">号</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届毕业班班级理事</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">校友会通知</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">院系班级理事参加</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">校友会</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">3</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业创意活动</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业纪念图集，纪念点滴交大生活</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">校园内</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全体</span>2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届本科毕业生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">同去网、</span>BBS</p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">线上线下互动</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学生联合会</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 4;" align="center"><strong><span style="color: white; mso-themecolor: background1;">4</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">公务员单位就业毕业生座谈会</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">赴公务员单位毕业生座谈，分享交流经验、意见和建议</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月中旬</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">铁生馆</span>300<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">号</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">公务员毕业生代表</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">院系通知</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">院系推荐</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">就业中心、各院系</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">5</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">海外留学毕业生座谈会</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">赴海外留学毕业生座谈，分享交流经验、意见和建议</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月中旬</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">铁生馆</span>300<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">号</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">海外留学毕业生代表</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">院系通知</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">院系推荐</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">就业中心、各院系</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 4;" align="center"><strong><span style="color: white; mso-themecolor: background1;">6</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届优异学士学位论文评选活动</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全校性答辩评审</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>13<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>13:30<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">—</span>17:00<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">未定</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">各院系推荐的</span>50<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">名应届生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学校主页</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">欢迎全校师生旁听</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">教务处</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">7</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业跳蚤市场</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业生二手市场，爱心捐赠</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>13-14<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>11:00-14:00<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">东区文化广场</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全体</span>2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届本科毕业生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学校主页、同去网、</span>BBS</p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">现场参与</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学生联合会</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 4;" align="center"><strong><span style="color: white; mso-themecolor: background1;">8</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业露天歌会</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业前夕最后献歌</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>14<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>19<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">：</span>00-21<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">：</span>30<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">南体</span>/<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">仰思坪</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全体</span>2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届本科毕业生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">同去网、</span>BBS</p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">现场参与</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学生联合会</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">9</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">“我心目中的好老师”主题征文活动</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业前留下你与老师之间最难忘的故事</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>15<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日征文截止</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">网络投稿</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全体</span>2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届本科毕业生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">易班</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">网络投稿</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">思政室</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 4;" align="center"><strong><span style="color: white; mso-themecolor: background1;">10</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届毕业生离校爱心捐赠活动</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">向爱心屋捐赠个人闲余的衣物、图书、自行车等物品，捐赠可得纪念品和免费冲印毕业纪念照</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>18-22<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>10:00-16:00<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">毕业生宿舍楼、菁菁堂爱心亭、商业街爱心屋</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">全体</span>2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">届本科毕业生</span></p>\r\n</td>\r\n<td style="width: 114.5pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="153">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">爱心屋主页（</span>aixinwu.sjtu.edu.cn<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 40.15pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">现场参与</span></p>\r\n</td>\r\n<td style="width: 40.75pt; border: none; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="54">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">学生事务中心</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 22.8pt; border: none; background: #9BBB59; mso-background-themecolor: accent3; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="30">\r\n<p class="MsoNormal" style="text-align: center; mso-yfti-cnfc: 68;" align="center"><strong><span style="color: white; mso-themecolor: background1;">11</span></strong></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">最短毕业旅行</span></p>\r\n</td>\r\n<td style="width: 56.1pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="75">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">重走徐汇交大、参观钱馆，感受百年交大积淀</span></p>\r\n</td>\r\n<td style="width: 59.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="80">\r\n<p class="MsoNormal">2012<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">年</span>6<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">月</span>20-21<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">日</span></p>\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">（</span>9:00-16:00<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">）</span></p>\r\n</td>\r\n<td style="width: 36.35pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">徐汇校区</span>/<span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" lang="ZH-CN">钱学森图书馆</span></p>\r\n</td>\r\n<td style="width: 35.9pt; border: none; background: #D8D8D8; mso-background-themecolor: background1; mso-background-themeshade: 216; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="48">\r\n<p class="MsoNormal"><span style="font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;" ', 1, 'top_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `urhc6_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(96, 'F08毕业季活动一览表', '', '<p><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">草长莺飞，又是一年毕业季。那些博学的师长、亲密的伙伴、明亮的教室、热闹的食堂、温馨的寝室</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">……</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">那些熟悉的记忆，是否让你满怀感念，依依不舍。</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">“</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">思源致远，让交大记忆永恒</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">”</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">，为了让</span><span style="font-size: 10.5pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">F08</span><span style="font-size: 10.5pt; font-family: 宋体; mso-ascii-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;" lang="ZH-CN">的毕业生们留下那些属于自己的记忆，学校及各院系都为毕业生们准备了丰富多彩的毕业纪念活动，列为下表，以供毕业生参与分享。</span></p>\r\n<p><span style="font-family: 宋体; text-indent: 21pt;">预祝各位毕业生朋友们，前程似锦，鹏程万里！</span></p>\r\n<p class="MsoNormal" style="text-align: right; text-indent: 21.0pt; mso-char-indent-count: 2.0;" align="right"><a id="mb3" class="s5mb" href="images/gallery/page1.jpg" title="Image #13:"> <img class="padded s5_lazyload" src="images/gallery/small/page1.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px; visibility: visible; zoom: 1; opacity: 1;" /></a> <a id="mb3" class="s5mb" href="images/gallery/page2.jpg" title="Image #13:"> <img class="padded s5_lazyload" src="images/gallery/small/page2.jpg" border="0" style="float: left; cursor: pointer; margin-right: 12px; margin-bottom: 12px; visibility: visible; zoom: 1; opacity: 1;" /></a></p>', 1, 'below_columns_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, '留言板', '', '', 1, 'bottom_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_shoutbox', 1, 1, '{"shouts":"10","refresh":"5","fadefrom":"#000000","fadeto":"#666666","submit":"1","post_guest":"1","name":"0","tag":"0","url":"0","textarea":"0","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(101, '社区服务', '', '', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["64"],"count":"6","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(97, '使命与责任', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["53"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(98, '青春与激情', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["54"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, '勇气与梦想', '', '', 1, 'left', 42, '2012-06-24 11:53:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["55"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, '科研项目', '', '', 1, 'bottom_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["65"],"count":"6","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(103, '媒体聚焦', '', '', 1, 'bottom_row2_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["66"],"count":"6","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(105, '院系传真', '', '', 1, 'left', 42, '2012-06-24 11:51:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["57"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, '远航教育', '', '', 1, 'left', 42, '2012-06-13 01:49:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["58"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, '新闻速览', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["61"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, '社区服务 ', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["64"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, '科普项目  ', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["65"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, '媒体聚焦', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["66"],"count":"20","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, '精彩瞬间', '', '', 1, 'below_columns_6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_horizontal_scrolling_slideshow', 1, 1, '{"slideshow_type":"jpg","slideshow_folder":"images\\/slide","slideshow_link":"http:\\/\\/www.gopiplus.com","slideshow_width":"930","slideshow_height":"75","slideshow_speed":"2","slideshow_bgcolor":"#FFFFFF","slideshow_gap":"5","moduleclass_sfx":""}', 0, '*'),
(113, 'IST介绍', '', '<ul>\r\n<li>软件学院信息系统技术实验室(IST)建立于2004年，研究方向集中在企业信息系统技术及应用方面。</li>\r\n<li>通过SOA，信息集成，语义本体，网络计算机图形学等技术及理论的导入及应用，构造可配置、柔性、灵活的电子商务、电子政务、ERP软件、MES软件，满足政府、企业、公众的信息化应用需求。<img border="0" /></li>\r\n<li><img src="images/9-21-2014%205-40-43%20pm.png" border="0" width="600" style="border: 0;" /></li>\r\n</ul>\r\n<div><img border="0" /></div>\r\n<div>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><span style="text-decoration: underline;"><strong>在研项目</strong></span></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal; line-height: 25.600000381469727px;">\r\n<li>上海自然基金编号（13ZR1419800）：面向自演化软件服务的本体生成及进化研究</li>\r\n<li>国家自然科学基金(71171132)：诊疗本体自动构建方法与过程驱动的本体进化机制研究</li>\r\n<li>国家自然科学基金（61373030）：基于本体进化的自演化应用服务系统构造研究</li>\r\n<li>华为高校创新项目：下一代服务组合编程语言</li>\r\n<li>福建交通物流云平台（业务建模及服务组装）</li>\r\n<li>制造业MES系统</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><span style="text-decoration: underline;"><strong>近年主要纵向项目</strong></span></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal; line-height: 25.600000381469727px;">\r\n<li>国家高技术发展计划项目（863）：“资源元模型驱动的企业信息集成平台研究”（2008AA04Z126）</li>\r\n<li>国家自然基金：网格环境下面向可视操纵的场景服务模型构造（60603080）</li>\r\n<li>航空科学学基金：基于资源的企业集成平台</li>\r\n<li>上海市2007年重大科技项目，“海市公交智能调度系统综合集成示范应用研究-信息化标准规范”子项目：公交智能化和调度系统标准规范</li>\r\n<li>上海市2008科技攻关项目：医院数据仓库和数据挖掘系统</li>\r\n<li>上海市2009科技攻关项目：基于服务的按需应变平台</li>\r\n</ul>\r\n</div>', 1, 'below_body_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, '主要研究方向', '', '<p><strong>企业技术</strong></p>\r\n<ul>\r\n<li>数据层：基于资源的信息集 成技术，基于本体的语义管理技术，数据挖掘</li>\r\n<li>业务层：业务建模技术，服务架构及管理技术</li>\r\n<li>表现层：基于服务的信息可视化技术</li>\r\n</ul>', 5, 'bottom_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 'Web-based-Application', '', '<ol>\r\n<li>ERP</li>\r\n<li>MES</li>\r\n<li>CIMS</li>\r\n<li>电子业务</li>\r\n<li>电子政务</li>\r\n</ol>', 4, 'bottom_row1_2', 42, '2014-09-21 09:41:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, '人员', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(117, '导师', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["73"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(118, '人员', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"72","show_description":"0","show_children":"1","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(121, '研究小组', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"77","show_description":"1","show_children":"1","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(122, '论文年份', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["88"],"count":"20","show_featured":"0","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, '用户管理', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(124, '用户管理 (copy)', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"user-menu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(125, '语言切换', '', '', 1, 'left', 42, '2014-09-21 09:14:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"1","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(126, 'Research-team', '', '', 1, 'bottom_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"xiaozu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(127, 'Lastest New', '', '', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["90"],"count":"4","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(128, '最新新闻 (copy)', '', '', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["90"],"count":"4","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"_:static"}', 0, '*'),
(129, 'IST Lab Introduce', '', '<ul>\r\n<li>Information Systems Technology (IST) Lab in College of Software was established in 2004,which focuses on the research of the enterprise information systems technology and applications .</li>\r\n<li></li>\r\n<li>We can construct the configurable, flexible and agile e-commerce, e-government, ERP software, MES software to meet the informatization technology applications of the government, business and public through the technology and theory such as SOA, information integration, semantic ontology and network computer graphics.</li>\r\n<li><img src="images/9-21-2014%205-40-43%20pm.png" border="0" width="600" /></li>\r\n</ul>\r\n<div>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><em><strong>Main research directions:</strong></em></h5>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><em><strong>Enterprise Technology</strong></em></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal;" type="disc">\r\n<li>Data layer: resource-based information integration technology, ontology-based semantic management, data mining</li>\r\n<li>Business layer: business modeling, service structure and management</li>\r\n<li>Presentation layer: service-based information visualization</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><em><strong>Application:business-oriented, network-based (Internet\\Intranet), intersect-emphasized</strong></em></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal;" type="disc">\r\n<li>ERP</li>\r\n<li>MES</li>\r\n<li>CIMS</li>\r\n<li>E-business</li>\r\n<li>E-Government</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><em><strong>Current Research Projects</strong></em></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal;">\r\n<li>Shanghai natural science fund（13ZR1419800）：Self-evolution of software service oriented ontology generation and evolution</li>\r\n<li>NSFC(Natural Science Foundation of China)(71171132)：Diagnosis and treatment method of building ontology automatically and process-driven ontology evolution mechanism research</li>\r\n<li>NSFC(Natural Science Foundation of China)（61373030）：The research of application service system based on ontology evolution</li>\r\n<li>University innovation project of Huawei：The next generation service portfolio programming language</li>\r\n<li>Transportation logistics cloud platform in Fujian（Business modeling and service assembly）</li>\r\n<li>Manufacturing execution system</li>\r\n</ul>\r\n<h5 style="color: #333333; font-family: Verdana; line-height: 25.600000381469727px;"><em><strong>Major Research Project In Recent Years</strong></em></h5>\r\n<ul style="font-size: 12.800000190734863px; font-weight: normal;" type="disc">\r\n<li>National High Technology Development Program (863): "Resource Element Model-Driven Enterprise Information Integration Platform" (2008AA04Z126)</li>\r\n<li>National Science Foundation: Grid environment for the visual control-oriented of the construction of scene model services (60603080)</li>\r\n<li>Aviation Science Foundation: Resource-based Enterprise Integration Platform</li>\r\n<li>Major projects in Shanghai in 2007, “Shanghai Public Traffic Intelligent Control System with Integration and Demonstration Application - Information standards" components: intelligent transportation and scheduling system standards</li>\r\n<li>Scientific and technological project of Shanghai 2008: hospital data warehouse and data mining system</li>\r\n<li>Scientific and technological project of Shanghai 2009: service-based demand response platform</li>\r\n</ul>\r\n</div>', 1, 'below_body_2', 42, '2014-09-21 09:46:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, 'Research-Group', '', '', 1, 'bottom_row1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"research-group","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_modules_menu`
--

CREATE TABLE `urhc6_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_modules_menu`
--

INSERT INTO `urhc6_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 102),
(23, 103),
(23, 104),
(23, 105),
(23, 106),
(23, 108),
(23, 110),
(23, 111),
(23, 122),
(23, 123),
(23, 124),
(23, 126),
(23, 127),
(23, 128),
(23, 129),
(23, 131),
(23, 133),
(23, 143),
(23, 144),
(23, 146),
(23, 180),
(24, 101),
(24, 103),
(24, 104),
(24, 105),
(24, 106),
(24, 108),
(24, 109),
(24, 110),
(24, 111),
(24, 112),
(24, 113),
(24, 114),
(24, 115),
(24, 116),
(24, 117),
(24, 118),
(24, 119),
(24, 120),
(24, 122),
(24, 123),
(24, 124),
(24, 126),
(24, 127),
(24, 128),
(24, 129),
(24, 130),
(24, 131),
(24, 132),
(24, 134),
(24, 135),
(24, 136),
(24, 137),
(24, 138),
(24, 143),
(24, 144),
(24, 145),
(24, 146),
(24, 147),
(24, 148),
(24, 149),
(24, 150),
(24, 151),
(24, 153),
(24, 154),
(24, 155),
(24, 156),
(24, 179),
(24, 180),
(24, 183),
(24, 184),
(24, 185),
(24, 186),
(24, 187),
(24, 188),
(24, 189),
(24, 190),
(24, 191),
(24, 192),
(24, 193),
(24, 194),
(24, 195),
(24, 196),
(24, 197),
(24, 199),
(24, 200),
(24, 201),
(24, 202),
(25, 0),
(26, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 102),
(36, 121),
(36, 125),
(37, 0),
(38, 344),
(39, 101),
(39, 103),
(39, 104),
(39, 105),
(39, 106),
(39, 108),
(39, 109),
(39, 110),
(39, 111),
(39, 112),
(39, 113),
(39, 114),
(39, 115),
(39, 116),
(39, 117),
(39, 118),
(39, 119),
(39, 120),
(39, 122),
(39, 123),
(39, 124),
(39, 126),
(39, 127),
(39, 128),
(39, 129),
(39, 130),
(39, 131),
(39, 132),
(39, 134),
(39, 135),
(39, 136),
(39, 137),
(39, 138),
(39, 143),
(39, 144),
(39, 145),
(39, 146),
(39, 147),
(39, 148),
(39, 149),
(39, 150),
(39, 151),
(39, 153),
(39, 154),
(39, 155),
(39, 156),
(39, 179),
(39, 180),
(39, 183),
(39, 184),
(39, 185),
(39, 186),
(39, 187),
(39, 188),
(39, 189),
(39, 190),
(39, 191),
(39, 192),
(39, 193),
(39, 194),
(39, 195),
(39, 196),
(39, 197),
(39, 199),
(39, 200),
(39, 201),
(39, 203),
(40, 0),
(41, 0),
(42, 121),
(42, 125),
(43, 121),
(43, 125),
(44, 121),
(44, 125),
(45, 121),
(45, 125),
(46, 121),
(46, 125),
(47, 121),
(47, 125),
(48, 102),
(49, 102),
(50, 102),
(51, 102),
(52, 121),
(52, 125),
(53, 121),
(53, 125),
(54, 0),
(55, 101),
(55, 103),
(55, 104),
(55, 105),
(55, 106),
(55, 108),
(55, 109),
(55, 110),
(55, 111),
(55, 112),
(55, 113),
(55, 114),
(55, 115),
(55, 116),
(55, 117),
(55, 118),
(55, 119),
(55, 120),
(55, 122),
(55, 123),
(55, 124),
(55, 126),
(55, 127),
(55, 128),
(55, 129),
(55, 130),
(55, 131),
(55, 132),
(55, 134),
(55, 135),
(55, 136),
(55, 137),
(55, 138),
(55, 143),
(55, 144),
(55, 145),
(55, 146),
(55, 147),
(55, 148),
(55, 149),
(55, 150),
(55, 151),
(55, 153),
(55, 154),
(55, 155),
(55, 156),
(55, 179),
(55, 180),
(55, 183),
(55, 184),
(55, 185),
(55, 186),
(55, 187),
(55, 188),
(55, 189),
(55, 190),
(55, 191),
(55, 192),
(55, 193),
(55, 194),
(55, 195),
(55, 196),
(55, 197),
(55, 199),
(55, 200),
(55, 201),
(55, 202),
(56, 101),
(57, 0),
(58, 101),
(58, 103),
(58, 104),
(58, 105),
(58, 106),
(58, 108),
(58, 109),
(58, 110),
(58, 111),
(58, 112),
(58, 113),
(58, 114),
(58, 115),
(58, 116),
(58, 117),
(58, 118),
(58, 119),
(58, 120),
(58, 122),
(58, 123),
(58, 124),
(58, 126),
(58, 127),
(58, 128),
(58, 129),
(58, 130),
(58, 131),
(58, 132),
(58, 134),
(58, 135),
(58, 136),
(58, 137),
(58, 138),
(58, 143),
(58, 144),
(58, 145),
(58, 146),
(58, 147),
(58, 148),
(58, 149),
(58, 150),
(58, 151),
(58, 153),
(58, 154),
(58, 155),
(58, 156),
(58, 179),
(58, 180),
(58, 183),
(58, 184),
(58, 185),
(58, 186),
(58, 187),
(58, 188),
(58, 189),
(58, 190),
(58, 191),
(58, 192),
(58, 193),
(58, 194),
(58, 195),
(58, 196),
(58, 197),
(58, 199),
(58, 200),
(58, 201),
(58, 202),
(59, 102),
(60, 101),
(60, 103),
(60, 104),
(60, 105),
(60, 106),
(60, 108),
(60, 109),
(60, 110),
(60, 111),
(60, 112),
(60, 113),
(60, 114),
(60, 115),
(60, 116),
(60, 117),
(60, 118),
(60, 119),
(60, 120),
(60, 122),
(60, 123),
(60, 124),
(60, 126),
(60, 127),
(60, 128),
(60, 129),
(60, 130),
(60, 131),
(60, 132),
(60, 134),
(60, 135),
(60, 136),
(60, 137),
(60, 138),
(60, 143),
(60, 144),
(60, 145),
(60, 146),
(60, 147),
(60, 148),
(60, 149),
(60, 150),
(60, 151),
(60, 153),
(60, 154),
(60, 155),
(60, 156),
(60, 179),
(60, 180),
(60, 183),
(60, 184),
(60, 185),
(60, 186),
(60, 187),
(60, 188),
(60, 189),
(60, 190),
(60, 191),
(60, 192),
(60, 193),
(60, 194),
(60, 195),
(60, 196),
(60, 197),
(60, 199),
(60, 200),
(60, 201),
(60, 202),
(61, 102),
(61, 103),
(61, 104),
(61, 105),
(61, 106),
(61, 108),
(61, 109),
(61, 110),
(61, 111),
(61, 112),
(61, 113),
(61, 114),
(61, 115),
(61, 116),
(61, 117),
(61, 118),
(61, 119),
(61, 120),
(61, 122),
(61, 123),
(61, 124),
(61, 126),
(61, 127),
(61, 128),
(61, 129),
(61, 130),
(61, 131),
(61, 132),
(61, 133),
(61, 134),
(61, 135),
(61, 136),
(61, 137),
(61, 138),
(61, 139),
(61, 140),
(61, 141),
(61, 142),
(61, 143),
(61, 144),
(61, 145),
(61, 146),
(61, 147),
(61, 148),
(61, 149),
(61, 150),
(61, 151),
(61, 152),
(61, 153),
(61, 154),
(61, 155),
(61, 156),
(61, 157),
(61, 158),
(61, 159),
(61, 160),
(61, 161),
(61, 162),
(61, 163),
(61, 164),
(61, 165),
(61, 166),
(61, 167),
(61, 168),
(61, 169),
(61, 170),
(61, 171),
(61, 172),
(61, 173),
(61, 174),
(61, 175),
(61, 176),
(61, 177),
(61, 178),
(61, 180),
(61, 183),
(61, 193),
(61, 194),
(61, 195),
(61, 196),
(62, 101),
(62, 103),
(62, 104),
(62, 105),
(62, 106),
(62, 108),
(62, 109),
(62, 110),
(62, 111),
(62, 112),
(62, 113),
(62, 114),
(62, 115),
(62, 116),
(62, 117),
(62, 118),
(62, 119),
(62, 120),
(62, 122),
(62, 123),
(62, 124),
(62, 126),
(62, 127),
(62, 128),
(62, 129),
(62, 130),
(62, 131),
(62, 132),
(62, 134),
(62, 135),
(62, 136),
(62, 137),
(62, 138),
(62, 143),
(62, 144),
(62, 145),
(62, 146),
(62, 147),
(62, 148),
(62, 149),
(62, 150),
(62, 151),
(62, 153),
(62, 154),
(62, 155),
(62, 156),
(62, 179),
(62, 180),
(62, 183),
(62, 184),
(62, 185),
(62, 186),
(62, 187),
(62, 188),
(62, 189),
(62, 190),
(62, 191),
(62, 192),
(62, 193),
(62, 194),
(62, 195),
(62, 196),
(62, 197),
(62, 199),
(62, 200),
(62, 201),
(62, 202),
(63, 0),
(64, 101),
(65, 0),
(66, 121),
(66, 125),
(67, 121),
(67, 125),
(68, 121),
(68, 125),
(69, 121),
(69, 125),
(70, 101),
(71, 101),
(71, 202),
(72, 101),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 101),
(79, 103),
(79, 104),
(79, 105),
(79, 106),
(79, 108),
(79, 109),
(79, 110),
(79, 111),
(79, 112),
(79, 113),
(79, 114),
(79, 115),
(79, 116),
(79, 117),
(79, 118),
(79, 119),
(79, 120),
(79, 122),
(79, 123),
(79, 124),
(79, 126),
(79, 127),
(79, 128),
(79, 129),
(79, 130),
(79, 131),
(79, 132),
(79, 134),
(79, 135),
(79, 136),
(79, 137),
(79, 138),
(79, 143),
(79, 144),
(79, 145),
(79, 146),
(79, 147),
(79, 148),
(79, 149),
(79, 150),
(79, 151),
(79, 153),
(79, 154),
(79, 155),
(79, 156),
(79, 179),
(79, 180),
(79, 183),
(79, 184),
(79, 185),
(79, 186),
(79, 187),
(79, 188),
(79, 189),
(79, 190),
(79, 191),
(79, 192),
(79, 193),
(79, 194),
(79, 195),
(79, 196),
(79, 197),
(79, 199),
(79, 200),
(79, 201),
(79, 202),
(80, 121),
(80, 125),
(81, 0),
(82, 204),
(83, 207),
(84, 205),
(85, 206),
(86, 212),
(87, 213),
(88, 207),
(89, 101),
(90, -101),
(91, 228),
(91, 229),
(91, 230),
(91, 231),
(91, 238),
(91, 239),
(91, 240),
(92, 101),
(93, 0),
(94, 101),
(95, 101),
(96, 101),
(97, 241),
(98, 242),
(99, 243),
(100, 101),
(101, 101),
(102, 101),
(103, 101),
(104, 242),
(105, 245),
(106, 246),
(107, 274),
(108, 275),
(109, 276),
(110, 277),
(111, 101),
(112, 331),
(112, 344),
(113, 101),
(113, 344),
(114, 331),
(114, 344),
(115, 101),
(115, 331),
(115, 344),
(116, 0),
(117, 294),
(118, 292),
(118, 294),
(118, 295),
(118, 296),
(118, 301),
(119, 101),
(119, 331),
(119, 344),
(120, 302),
(120, 303),
(120, 304),
(120, 305),
(120, 306),
(120, 307),
(120, 312),
(120, 313),
(120, 351),
(121, 288),
(121, 289),
(121, 290),
(121, 291),
(121, 297),
(121, 298),
(121, 308),
(122, 309),
(123, 101),
(123, 305),
(123, 306),
(123, 307),
(124, 300),
(124, 302),
(124, 303),
(124, 304),
(124, 305),
(124, 306),
(124, 307),
(125, -318),
(125, -242),
(126, 331),
(127, 331),
(128, 101),
(129, 331),
(130, 331),
(130, 344),
(248, 1),
(249, 1),
(258, 1),
(259, 1),
(590, 1),
(590, 2),
(590, 5),
(590, 7),
(590, 8),
(590, 23),
(590, 26),
(590, 27),
(590, 28),
(590, 32),
(590, 33),
(590, 34),
(590, 35),
(590, 36),
(590, 37),
(590, 38),
(590, 47),
(590, 48),
(590, 81),
(590, 88),
(590, 89),
(590, 93),
(590, 96),
(590, 97),
(590, 99),
(590, 100),
(590, 113),
(590, 120),
(590, 129),
(590, 141),
(590, 142),
(590, 201),
(590, 202),
(590, 207),
(590, 210),
(590, 211),
(590, 213),
(590, 214),
(590, 225),
(590, 226),
(590, 228),
(590, 230),
(590, 232),
(590, 233),
(590, 234),
(590, 250),
(590, 252),
(590, 259),
(590, 264),
(590, 266),
(590, 268),
(590, 269),
(590, 270),
(590, 275),
(590, 276),
(590, 277),
(590, 278),
(590, 279),
(590, 280),
(590, 281),
(590, 282),
(590, 283),
(590, 284),
(590, 285),
(590, 286),
(590, 287),
(590, 288),
(590, 289),
(590, 290),
(590, 291),
(590, 292),
(590, 293),
(590, 294),
(590, 295);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_molajotools_customperms`
--

CREATE TABLE `urhc6_molajotools_customperms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `perms` varchar(4) DEFAULT '0644',
  UNIQUE KEY `id` (`id`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_newsfeeds`
--

CREATE TABLE `urhc6_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `urhc6_newsfeeds`
--

INSERT INTO `urhc6_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(28, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0, 1, '*', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery`
--

CREATE TABLE `urhc6_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `urhc6_phocagallery`
--

INSERT INTO `urhc6_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(50, 3, 0, '002', '002', 'yhjy/002.jpg', NULL, '2012-06-19 01:33:46', 36, '0', '0', 0, '', 0, NULL, 0, 182874, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(55, 6, 0, 'hwlx2', 'hwlx2', 'hwlxjlh/hwlx2.jpg', NULL, '2012-06-19 01:36:05', 29, '0', '0', 0, '', 0, NULL, 0, 393358, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(54, 6, 0, 'hwlx1', 'hwlx1', 'hwlxjlh/hwlx1.jpg', NULL, '2012-06-19 01:36:05', 42, '0', '0', 0, '', 0, NULL, 0, 345903, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(49, 3, 0, '001', '001', 'yhjy/001.jpg', NULL, '2012-06-19 01:33:46', 42, '0', '0', 0, '', 0, NULL, 0, 191571, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(51, 3, 0, '003', '003', 'yhjy/003.jpg', NULL, '2012-06-19 01:33:46', 36, '0', '0', 0, '', 0, NULL, 0, 155388, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(52, 3, 0, '004', '004', 'yhjy/004.jpg', NULL, '2012-06-19 01:33:46', 34, '0', '0', 0, '', 0, NULL, 0, 66117, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(53, 3, 0, '005', '005', 'yhjy/005.jpg', NULL, '2012-06-19 01:33:46', 31, '0', '0', 0, '', 0, NULL, 0, 104986, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(56, 6, 0, 'hwlx3', 'hwlx3', 'hwlxjlh/hwlx3.jpg', NULL, '2012-06-19 01:36:05', 29, '0', '0', 0, '', 0, NULL, 0, 325393, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(57, 6, 0, 'hwlx4', 'hwlx4', 'hwlxjlh/hwlx4.jpg', NULL, '2012-06-19 01:36:05', 27, '0', '0', 0, '', 0, NULL, 0, 106463, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(58, 6, 0, 'hwlx5', 'hwlx5', 'hwlxjlh/hwlx5.jpg', NULL, '2012-06-19 01:36:06', 28, '0', '0', 0, '', 0, NULL, 0, 106552, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(59, 6, 0, 'hwlx6', 'hwlx6', 'hwlxjlh/hwlx6.jpg', NULL, '2012-06-19 01:36:06', 28, '0', '0', 0, '', 0, NULL, 0, 142347, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(60, 6, 0, 'hwlx7', 'hwlx7', 'hwlxjlh/hwlx7.jpg', NULL, '2012-06-19 01:36:06', 24, '0', '0', 0, '', 0, NULL, 0, 105498, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(61, 6, 0, 'hwlx8', 'hwlx8', 'hwlxjlh/hwlx8.jpg', NULL, '2012-06-19 01:36:06', 31, '0', '0', 0, '', 0, NULL, 0, 407101, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(62, 7, 0, 'jlh1', 'jlh1', 'jlh1.jpg', NULL, '2012-06-19 02:22:47', 26, '0', '0', 0, '', 0, NULL, 0, 132152, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(63, 7, 0, 'jlh2', 'jlh2', 'jlh2.jpg', NULL, '2012-06-19 02:22:47', 28, '0', '0', 0, '', 0, NULL, 0, 112639, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(64, 7, 0, 'jlh3', 'jlh3', 'jlh3.jpg', NULL, '2012-06-19 02:22:47', 27, '0', '0', 0, '', 0, NULL, 0, 136047, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(65, 7, 0, 'jlh4', 'jlh4', 'jlh4.jpg', NULL, '2012-06-19 02:22:47', 28, '0', '0', 0, '', 0, NULL, 0, 149918, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(66, 7, 0, 'jlh5', 'jlh5', 'jlh5.jpg', NULL, '2012-06-19 02:22:47', 27, '0', '0', 0, '', 0, NULL, 0, 158873, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(67, 7, 0, 'jlh6', 'jlh6', 'jlh6.jpg', NULL, '2012-06-19 02:22:47', 27, '0', '0', 0, '', 0, NULL, 0, 136619, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(68, 7, 0, 'jlh7', 'jlh7', 'jlh7.jpg', NULL, '2012-06-19 02:22:47', 27, '0', '0', 0, '', 0, NULL, 0, 160633, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(69, 7, 0, 'jlh8', 'jlh8', 'jlh8.jpg', NULL, '2012-06-19 02:22:47', 34, '0', '0', 0, '', 0, NULL, 0, 176263, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(70, 8, 0, 'by1', 'by1', 'bysfsqsds/by1.jpg', NULL, '2012-06-19 02:24:43', 61, '0', '0', 0, '', 0, NULL, 0, 143043, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(71, 8, 0, 'by2', 'by2', 'bysfsqsds/by2.jpg', NULL, '2012-06-19 02:24:43', 46, '0', '0', 0, '', 0, NULL, 0, 286290, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(72, 8, 0, 'by3', 'by3', 'bysfsqsds/by3.jpg', NULL, '2012-06-19 02:24:43', 40, '0', '0', 0, '', 0, NULL, 0, 206727, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(73, 8, 0, 'by4', 'by4', 'bysfsqsds/by4.jpg', NULL, '2012-06-19 02:24:43', 44, '0', '0', 0, '', 0, NULL, 0, 101903, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(74, 8, 0, 'by5', 'by5', 'bysfsqsds/by5.jpg', NULL, '2012-06-19 02:24:43', 45, '0', '0', 0, '', 0, NULL, 0, 198627, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(75, 9, 0, '001', '001', 'qcxy/001.jpg', NULL, '2012-06-19 02:29:02', 39, '0', '0', 0, '', 0, NULL, 0, 638047, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(76, 9, 0, '002', '002', 'qcxy/002.jpg', NULL, '2012-06-19 02:29:02', 27, '0', '0', 0, '', 0, NULL, 0, 254430, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(77, 9, 0, '003', '003', 'qcxy/003.jpg', NULL, '2012-06-19 02:29:02', 35, '0', '0', 0, '', 0, NULL, 0, 206246, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(78, 9, 0, '004', '004', 'qcxy/004.jpg', NULL, '2012-06-19 02:29:02', 26, '0', '0', 0, '', 0, NULL, 0, 548310, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(79, 9, 0, '005', '005', 'qcxy/005.jpg', NULL, '2012-06-19 02:29:02', 30, '0', '0', 0, '', 0, NULL, 0, 113554, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(80, 9, 0, '006', '006', 'qcxy/006.jpg', NULL, '2012-06-19 02:29:02', 30, '0', '0', 0, '', 0, NULL, 0, 104777, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(81, 9, 0, '007', '007', 'qcxy/007.jpg', NULL, '2012-06-19 02:29:02', 29, '0', '0', 0, '', 0, NULL, 0, 104026, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(82, 4, 0, '1112107', '1112107', 'yxcz/1112107.jpg', NULL, '2012-06-19 02:32:01', 35, '0', '0', 0, '', 0, NULL, 0, 83436, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(83, 4, 0, '1112109', '1112109', 'yxcz/1112109.jpg', NULL, '2012-06-19 02:32:01', 32, '0', '0', 0, '', 0, NULL, 0, 109937, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(84, 4, 0, '1112110', '1112110', 'yxcz/1112110.jpg', NULL, '2012-06-19 02:32:01', 26, '0', '0', 0, '', 0, NULL, 0, 129612, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(85, 4, 0, '1112111', '1112111', 'yxcz/1112111.jpg', NULL, '2012-06-19 02:32:01', 30, '0', '0', 0, '', 0, NULL, 0, 32786, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(86, 10, 0, 'Shelwin', 'shelwin', 'img_3602.jpg', '', '0000-00-00 00:00:00', 41, '0', '0', 0, '', 0, '', 0, 441578, 1, 1, 42, '2012-06-22 15:11:36', 9, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(87, 10, 0, 'Shelwin', 'shelwin', 'img_3609.jpg', '', '2012-06-22 14:31:57', 37, '0', '0', 0, '', 0, '', 0, 366310, 1, 1, 42, '2012-06-22 15:01:45', 10, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(88, 10, 0, 'Shelwin', 'shelwin', 'img_3626.jpg', '', '2012-06-22 14:31:57', 39, '0', '0', 0, '', 0, '', 0, 1044223, 1, 1, 42, '2012-06-22 15:02:00', 11, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(89, 10, 0, 'Shelwin', 'shelwin', 'img_3630.jpg', '', '2012-06-22 14:31:57', 36, '0', '0', 0, '', 0, '', 0, 1143694, 1, 1, 42, '2012-06-22 15:02:17', 12, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(90, 10, 0, 'Shelwin', 'shelwin', 'large_wcqc_1a1b00002052118c.jpg', '', '2012-06-22 14:31:57', 39, '0', '0', 0, '', 0, '', 0, 82733, 1, 1, 42, '2012-06-22 15:00:27', 13, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(91, 10, 0, 'Shelwin', 'shelwin', 'original_avma_56bc000018881191.jpg', '', '2012-06-22 14:31:57', 39, '0', '0', 0, '', 0, '', 0, 123600, 1, 1, 42, '2012-06-22 15:00:47', 14, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(92, 10, 0, 'Shelwin', 'shelwin', 'original_pb3h_06ee0000185c118e.jpg', '', '2012-06-22 14:31:57', 39, '0', '0', 0, '', 0, '', 0, 149610, 1, 1, 42, '2012-06-22 15:01:11', 15, NULL, '', '', NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(93, 11, 0, 'Cholena', 'ceremonyphoto', '2axo4qniv2.jpg', NULL, '2012-06-24 11:14:58', 28, '0', '0', 0, '', 0, NULL, 0, 84742, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(94, 11, 0, 'Cholena', 'ceremonyphoto', '2b5p9q2edq.jpg', NULL, '2012-06-24 11:14:58', 28, '0', '0', 0, '', 0, NULL, 0, 145334, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(95, 11, 0, 'Cholena', 'ceremonyphoto', '2ghgq2sehc.jpg', NULL, '2012-06-24 11:14:58', 31, '0', '0', 0, '', 0, NULL, 0, 140103, 1, 1, 42, '2012-06-24 11:30:40', 14, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(96, 11, 0, 'Cholena', 'ceremonyphoto', '2mwhd6uicc.jpg', NULL, '2012-06-24 11:14:58', 34, '0', '0', 0, '', 0, NULL, 0, 101055, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(97, 11, 0, 'Cholena', 'ceremonyphoto', '2ptpq92eh7.jpg', NULL, '2012-06-24 11:14:58', 24, '0', '0', 0, '', 0, NULL, 0, 131235, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(98, 11, 0, 'Cholena', 'ceremonyphoto', '5e68b3zevl.jpg', NULL, '2012-06-24 11:14:58', 26, '0', '0', 0, '', 0, NULL, 0, 174970, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(99, 11, 0, 'Cholena', 'ceremonyphoto', '9vjqvuxefv.jpg', NULL, '2012-06-24 11:14:58', 27, '0', '0', 0, '', 0, NULL, 0, 175086, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(100, 11, 0, 'Cholena', 'ceremonyphoto', '14u2m9bki8w.jpg', NULL, '2012-06-24 11:14:58', 26, '0', '0', 0, '', 0, NULL, 0, 91440, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(101, 11, 0, 'Cholena', 'ceremonyphoto', '20n336pefc.jpg', NULL, '2012-06-24 11:14:58', 28, '0', '0', 0, '', 0, NULL, 0, 150255, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(102, 11, 0, 'Cholena', 'ceremonyphoto', '58psdcxi94.jpg', NULL, '2012-06-24 11:14:58', 24, '0', '0', 0, '', 0, NULL, 0, 89472, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(103, 11, 0, 'Cholena', 'ceremonyphoto', '520zgz9i9g.jpg', NULL, '2012-06-24 11:14:58', 23, '0', '0', 0, '', 0, NULL, 0, 79745, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(104, 11, 0, 'Cholena', 'ceremonyphoto', 'hz4zngqibk.jpg', NULL, '2012-06-24 11:14:58', 28, '0', '0', 0, '', 0, NULL, 0, 84661, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(105, 11, 0, 'Cholena', 'ceremonyphoto', 'pvd5zysi9a.jpg', NULL, '2012-06-24 11:14:58', 25, '0', '0', 0, '', 0, NULL, 0, 85362, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(106, 11, 0, 'Cholena', 'ceremonyphoto', '2zzk3s9efj.jpg', NULL, '2012-06-24 11:24:19', 21, '0', '0', 0, '', 0, NULL, 0, 125477, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(107, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3526.jpg', NULL, '2012-06-26 01:39:37', 38, '0', '0', 0, '', 0, NULL, 0, 181060, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(108, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3632.jpg', NULL, '2012-06-26 01:39:37', 32, '0', '0', 0, '', 0, NULL, 0, 168082, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(109, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3652.jpg', NULL, '2012-06-26 01:39:37', 32, '0', '0', 0, '', 0, NULL, 0, 213664, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(110, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3680.jpg', NULL, '2012-06-26 01:39:37', 34, '0', '0', 0, '', 0, NULL, 0, 233965, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(111, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3813.jpg', NULL, '2012-06-26 01:39:37', 32, '0', '0', 0, '', 0, NULL, 0, 151059, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(112, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3912.jpg', NULL, '2012-06-26 01:39:38', 32, '0', '0', 0, '', 0, NULL, 0, 186832, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(113, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3964.jpg', NULL, '2012-06-26 01:39:38', 34, '0', '0', 0, '', 0, NULL, 0, 199849, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(114, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_3973.jpg', NULL, '2012-06-26 01:39:38', 32, '0', '0', 0, '', 0, NULL, 0, 208143, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(115, 12, 0, 'VOS毕业晚会', 'vos', 'vos/img_4142.jpg', NULL, '2012-06-26 01:39:38', 32, '0', '0', 0, '', 0, NULL, 0, 137788, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_categories`
--

CREATE TABLE `urhc6_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `urhc6_phocagallery_categories`
--

INSERT INTO `urhc6_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(7, 0, 0, '公务员交流会', '', '2012-06-19-02-21-46', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 9, 1, 0, 35, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(2, 0, 0, '校园风光', '', '2012-06-17-14-14-57', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 42, '2012-06-19 02:21:12', NULL, 3, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(3, 0, 0, '远航教育', '', '2012-06-17-14-37-14', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 4, 1, 0, 44, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(4, 0, 0, '院系传真', '', '2012-06-17-15-11-00', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 5, 1, 0, 61, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(6, 0, 0, '海外留学交流会', '', '2012-06-19-01-35-09', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 42, '2012-06-22 14:34:59', NULL, 6, 1, 0, 32, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(8, 0, 0, '毕业生风采寝室大赛', '', '2012-06-19-02-23-52', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 7, 1, 0, 48, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(9, 0, 0, '青春校园', '', '2012-06-19-02-27-49', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 8, 1, 0, 41, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(10, 0, 0, '寝室临别24小时', '', 'room', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 42, '2012-06-22 15:22:32', NULL, 2, 1, 0, 48, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(11, 0, 0, '2012年本科生毕业典礼暨学位授予仪式', '', 'ceremonyphoto', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 42, '2012-06-24 11:23:05', NULL, 1, 1, 0, 62, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(12, 0, 0, 'VOS毕业晚会', '', 'vos', '', '', '', '', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 10, 1, 0, 26, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_comments`
--

CREATE TABLE `urhc6_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_fb_users`
--

CREATE TABLE `urhc6_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_img_comments`
--

CREATE TABLE `urhc6_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_img_votes`
--

CREATE TABLE `urhc6_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_img_votes_statistics`
--

CREATE TABLE `urhc6_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_tags`
--

CREATE TABLE `urhc6_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_tags_ref`
--

CREATE TABLE `urhc6_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_user`
--

CREATE TABLE `urhc6_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_votes`
--

CREATE TABLE `urhc6_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_phocagallery_votes_statistics`
--

CREATE TABLE `urhc6_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_redirect_links`
--

CREATE TABLE `urhc6_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

--
-- Dumping data for table `urhc6_redirect_links`
--

INSERT INTO `urhc6_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/callie2/jupgrade/index.php/extensions/images/fd_inactive.jpg', '', 'http://localhost/callie2/jupgrade/index.php/extensions/s5-frontpage-display', '', 0, '2011-08-16 18:51:27', '0000-00-00 00:00:00'),
(2, 'http://localhost/callie2/jupgrade/index.php/extensions/images/fd_active.jpg', '', 'http://localhost/callie2/jupgrade/index.php/extensions/s5-frontpage-display', '', 0, '2011-08-16 18:51:27', '0000-00-00 00:00:00'),
(3, 'http://localhost/callie2/jupgrade/index.php/extensions/images/fd_1.jpg', '', 'http://localhost/callie2/jupgrade/index.php/extensions/s5-frontpage-display', '', 0, '2011-08-16 18:51:27', '0000-00-00 00:00:00'),
(4, 'http://localhost/www/2011_summer/sac/shape/index.php/component/content/?id=211&Itemid=252', '', 'http://localhost/www/2011_summer/sac/shape/', '', 0, '2011-09-25 14:25:34', '0000-00-00 00:00:00'),
(5, 'http://localhost/www/2011_summer/sac/shape/index.php/features-mainmenu-47/joomla-stuff-mainmenu-26/news-mainmenu-2', '', 'http://localhost/www/2011_summer/sac/shape/', '', 0, '2011-09-26 03:03:39', '0000-00-00 00:00:00'),
(6, 'http://localhost/www/2011_summer/sac/shape/index.php/extensions/s5-frontpage-display', '', 'http://localhost/www/2011_summer/sac/shape/', '', 0, '2011-09-26 08:26:29', '0000-00-00 00:00:00'),
(7, 'http://nhatquang/www/2011_summer/sac/shape/index.php/academic-lectures', '', 'http://nhatquang/www/2011_summer/sac/shape/index.php/about-sac', '', 0, '2011-09-26 12:00:49', '0000-00-00 00:00:00'),
(11, 'http://localhost/www/2011_summer/sac/shape/index.php/campus-life/tutorship', '', 'http://localhost/www/2011_summer/sac/shape/index.php/campus-life/growing-footprints', '', 0, '2011-09-26 12:12:26', '0000-00-00 00:00:00'),
(12, 'http://nhatquang/www/2011_summer/sac/shape/index.php/component/content/?id=24&Itemid=250', '', 'http://nhatquang/www/2011_summer/sac/shape/', '', 0, '2011-09-26 13:26:22', '0000-00-00 00:00:00'),
(13, 'http://nhatquang/www/2011_summer/sac/shape/index.php/contact-us', '', 'http://nhatquang/www/2011_summer/sac/shape/index.php/campus-life/growing-footprints/254-the-second-annual-international-student-talent-show-open', '', 0, '2011-09-26 13:28:11', '0000-00-00 00:00:00'),
(19, 'http://nhatquang/www/2011_summer/sac/shape/index.php/extensions/s5-frontpage-display', '', 'http://nhatquang/www/2011_summer/sac/shape/', '', 0, '2011-09-26 13:32:28', '0000-00-00 00:00:00'),
(20, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=36:random-image-module&catid=66&Itemid=307', '', '', '', 0, '2011-09-27 00:10:14', '0000-00-00 00:00:00'),
(21, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=60:news-feeds&catid=21&Itemid=267', '', '', '', 0, '2011-09-27 00:12:35', '0000-00-00 00:00:00'),
(22, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=3555553&Itemid=213', '', '', '', 0, '2011-09-27 00:39:02', '0000-00-00 00:00:00'),
(23, 'http://sac.sjtu.edu.cn/en/index.php?option=com_countent&view=article&id=234:about-student-affairs-committee&catid=38&Itemid=204', '', '', '', 0, '2011-09-27 00:53:02', '0000-00-00 00:00:00'),
(24, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=18:second-blog-post&catid=27&Itemid=234', '', '', '', 0, '2011-09-27 10:28:19', '0000-00-00 00:00:00'),
(25, 'http://sac.sjtu.edu.cn/en/index.php?Itemid=316', '', '', '', 0, '2011-09-27 10:30:29', '0000-00-00 00:00:00'),
(26, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=106:notice-on-blood-donation&catid=83:activities-notice&Itemid=485', '', '', '', 0, '2011-09-27 10:33:11', '0000-00-00 00:00:00'),
(27, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=74:responsibility-the-first-lesson-for-sjtu-freshmen&catid=80:news&Itemid=490', '', '', '', 0, '2011-09-27 10:47:02', '0000-00-00 00:00:00'),
(28, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=108:i-am-a-pistachio-of-her-co-workers&catid=85:growing-footprints&Itemid=482', '', '', '', 0, '2011-09-27 10:56:29', '0000-00-00 00:00:00'),
(29, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=295:the-scientific-law-of-aeroengine-development-from-past-till-present&catid=3', '', '', '', 0, '2011-11-04 08:48:54', '0000-00-00 00:00:00'),
(30, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=293:rebooting-grammar-induction&catid=34:academic-lectures&Itemid=205', '', '', '', 0, '2011-11-04 09:48:23', '0000-00-00 00:00:00'),
(31, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=283:self-entrepreneurship-innovation-and-sustainable-development&catid=34&Itemi', '', '', '', 0, '2011-11-04 11:36:09', '0000-00-00 00:00:00'),
(32, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=284:information-literacy-lecture-8-methods-and-techniques-in-microsoft-visio&ca', '', '', '', 0, '2011-11-04 11:49:56', '0000-00-00 00:00:00'),
(33, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=291:safety-training-in-school-of-material-science-and-engineering&catid=39:news', '', '', '', 0, '2011-11-04 12:17:30', '0000-00-00 00:00:00'),
(34, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=265:school-of-mechanical-engineering-held-the-postgraduate-employment-starting-', '', '', '', 0, '2011-11-04 12:25:46', '0000-00-00 00:00:00'),
(35, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=268:job-center&catid=33&Itemid=213', '', '', '', 0, '2011-11-04 13:01:35', '0000-00-00 00:00:00'),
(36, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=269:student-affairs-center&catid=33&Itemid=213', '', '', '', 0, '2011-11-04 13:04:21', '0000-00-00 00:00:00'),
(37, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=272:international-workshop-on-validation-of-computational-solid-mechanics-model', '', '', '', 0, '2011-11-04 13:09:52', '0000-00-00 00:00:00'),
(38, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=271:sjtu-won-best-organization-prize-of-china-communist-party-90-anniversary-ce', '', '', '', 0, '2011-11-04 13:23:38', '0000-00-00 00:00:00'),
(39, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=269:student-affairs-center&catid=33:campus-life&Itemid=213', '', '', '', 0, '2011-11-04 13:26:24', '0000-00-00 00:00:00'),
(40, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=298:unilever-rsc-international-symposium-on-functional-materials&catid=34:acade', '', '', '', 0, '2011-11-04 13:34:40', '0000-00-00 00:00:00'),
(41, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=303:first-educational-encouragement-fund-award-for-overseas-postgraduates&catid', '', '', '', 0, '2011-11-04 13:37:25', '0000-00-00 00:00:00'),
(42, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=290:sjtu-guide-students-in-following-the-sixth-plenary-session-of-the-seventh-c', '', '', '', 0, '2011-11-04 13:40:11', '0000-00-00 00:00:00'),
(43, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=275:information-literacy-lecture-6-query-and-retrieval-of-the-full-text-in-scie', '', '', '', 0, '2011-11-04 13:42:56', '0000-00-00 00:00:00'),
(44, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=291:safety-training-in-school-of-material-science-and-engineering&catid=39&Item', '', '', '', 0, '2011-11-04 13:48:27', '0000-00-00 00:00:00'),
(45, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=289:unique-properties-of-the-aromatic-thermosetting-copolyesters&catid=34&Itemi', '', '', '', 0, '2011-11-04 13:51:15', '0000-00-00 00:00:00'),
(46, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=294:sjtuers-won-first-prize-of-cross-strait-interpretation-contest-in-east-chin', '', '', '', 0, '2011-11-04 13:53:57', '0000-00-00 00:00:00'),
(47, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=273:retrospection-and-considerationon-the-tenth-anniversary-of-chinas-wto-acces', '', '', '', 0, '2011-11-04 13:56:43', '0000-00-00 00:00:00'),
(48, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=304:sjtu-welcome-party-say-hi&catid=35:activities-notice&Itemid=206', '', '', '', 0, '2011-11-04 13:59:28', '0000-00-00 00:00:00'),
(49, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=297:academician-gu-songfen-modern-aircraft-design&catid=34:academic-lectures&It', '', '', '', 0, '2011-11-04 14:02:13', '0000-00-00 00:00:00'),
(50, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=304:sjtu-welcome-party-say-hi&catid=35&Itemid=206', '', '', '', 0, '2011-11-04 14:07:44', '0000-00-00 00:00:00'),
(51, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=286:study-engineering-at-melbourne-and-melbourne-polymer-research&catid=34:acad', '', '', '', 0, '2011-11-04 14:10:30', '0000-00-00 00:00:00'),
(52, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=296:the-uses-of-similarity-in-cognitive-information-processing&catid=34:academi', '', '', '', 0, '2011-11-04 15:57:58', '0000-00-00 00:00:00'),
(53, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=307:sjtu-football-team-heading-into-the-final&catid=39&Itemid=207', '', '', '', 0, '2011-11-04 17:15:41', '0000-00-00 00:00:00'),
(54, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=282:information-literacy-lecture-8-methods-and-techniques-in-microsoft-visio&ca', '', '', '', 0, '2011-11-04 18:01:59', '0000-00-00 00:00:00'),
(55, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=276:new-functional-chromophores-for-examining-protein-structure-and-function&ca', '', '', '', 0, '2011-11-04 22:31:17', '0000-00-00 00:00:00'),
(56, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=270:stray-dogs-hunting-in-sjtu-minhang-campus&catid=39&Itemid=207', '', '', '', 0, '2011-11-04 22:37:27', '0000-00-00 00:00:00'),
(57, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=292:ma-dexiu-and-zhang-jie-met-with-the-winners-of-the-qchallenge-cupq&catid=39', '', '', '', 0, '2011-11-04 23:02:06', '0000-00-00 00:00:00'),
(58, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=277:information-literacy-lecture-7-query-and-acquisition-of-the-full-text-in-hu', '', '', '', 0, '2011-11-04 23:18:32', '0000-00-00 00:00:00'),
(59, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=310:brenz-band-to-make-charity-debut-in-china&catid=34:academic-lectures&Itemid', '', '', '', 0, '2011-11-04 23:22:16', '0000-00-00 00:00:00'),
(60, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=270:stray-dogs-hunting-in-sjtu-minhang-campus&catid=39:news&Itemid=207', '', '', '', 0, '2011-11-04 23:26:45', '0000-00-00 00:00:00'),
(61, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=278:sjtu-delegation-promoted-to-the-global-finals-of-the-igem-competition&catid', '', '', '', 0, '2011-11-04 23:34:58', '0000-00-00 00:00:00'),
(62, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=283:self-entrepreneurship-innovation-and-sustainable-development&catid=34:acade', '', '', '', 0, '2011-11-04 23:45:14', '0000-00-00 00:00:00'),
(63, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=286:study-engineering-at-melbourne-and-melbourne-polymer-research&catid=34&Item', '', '', '', 0, '2011-11-04 23:53:27', '0000-00-00 00:00:00'),
(64, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=299:the-cross-strait-robot-challenge-2011-opens-at-sjtu&catid=39:news&Itemid=20', '', '', '', 0, '2011-11-04 23:59:37', '0000-00-00 00:00:00'),
(65, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=300:enjoy-electronic-teaching-references-with-mobil-terminal&catid=39&Itemid=20', '', '', '', 0, '2011-11-05 00:03:43', '0000-00-00 00:00:00'),
(66, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=289:unique-properties-of-the-aromatic-thermosetting-copolyesters&catid=34:acade', '', '', '', 0, '2011-11-05 00:07:50', '0000-00-00 00:00:00'),
(67, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=299:the-cross-strait-robot-challenge-2011-opens-at-sjtu&catid=39&Itemid=207', '', '', '', 0, '2011-11-05 00:09:53', '0000-00-00 00:00:00'),
(68, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=300:enjoy-electronic-teaching-references-with-mobil-terminal&catid=39:news&Item', '', '', '', 0, '2011-11-05 00:32:29', '0000-00-00 00:00:00'),
(69, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=293:rebooting-grammar-induction&catid=34&Itemid=205', '', '', '', 0, '2011-11-05 01:34:07', '0000-00-00 00:00:00'),
(70, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=280:one-dimensional-hybrid-nanoparticles&catid=34&Itemid=205', '', '', '', 0, '2011-11-05 01:36:10', '0000-00-00 00:00:00'),
(71, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=308:inspiration-forum-lecture-127-atomic-bomb-and-the-backbone&catid=34:academi', '', 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=308:inspiration-forum-lecture-127-atomic-bomb-and-the-backbone&catid=34:academi', '', 0, '2011-11-05 05:28:23', '0000-00-00 00:00:00'),
(72, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=307:sjtu-football-team-heading-into-the-final&catid=39:news&Itemid=207', '', '', '', 0, '2011-11-05 09:32:03', '0000-00-00 00:00:00'),
(73, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=305:information-literacy-lecture-12-multimedia-resources-and-their-usage&catid=', '', '', '', 0, '2011-11-05 09:49:37', '0000-00-00 00:00:00'),
(74, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=306:information-literacy-lecture-13-retrieving-and-applying-special-literature&', '', '', '', 0, '2011-11-05 09:50:28', '0000-00-00 00:00:00'),
(75, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=274:students-affairs-committee-organized-special-training-courses-for-the-newly', '', '', '', 0, '2011-11-05 10:09:43', '0000-00-00 00:00:00'),
(76, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=287:pursue-scientific-dream-in-sjtu&catid=37&Itemid=212', '', '', '', 0, '2011-11-05 10:10:33', '0000-00-00 00:00:00'),
(77, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=302:information-literacy-lecture-11-retrieval-and-full-text-acquisition-of-mast', '', '', '', 0, '2011-11-05 10:13:04', '0000-00-00 00:00:00'),
(78, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=297:academician-gu-songfen-modern-aircraft-design&catid=34&Itemid=205', '', '', '', 0, '2011-11-05 10:14:45', '0000-00-00 00:00:00'),
(79, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=301:how-to-get-listed-for-chain-enterprises&catid=34&Itemid=205', '', '', '', 0, '2011-11-05 10:30:40', '0000-00-00 00:00:00'),
(80, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=301:how-to-get-listed-for-chain-enterprises&catid=34:academic-lectures&Itemid=2', '', '', '', 0, '2011-11-05 11:31:00', '0000-00-00 00:00:00'),
(81, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=287:pursue-scientific-dream-in-sjtu&catid=37:growing-footprints&Itemid=212', '', '', '', 0, '2011-11-05 13:10:47', '0000-00-00 00:00:00'),
(82, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=288:information-literacy-lecture-9-retrieval-and-utilization-of-chinese-and-for', '', '', '', 0, '2011-11-06 03:01:42', '0000-00-00 00:00:00'),
(83, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=268:job-center&catid=33:campus-life&Itemid=213', '', '', '', 0, '2011-11-06 07:28:02', '0000-00-00 00:00:00'),
(84, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=281:the-medical-school-convened-the-2011-conscription-mobilization-meeting&cati', '', '', '', 0, '2011-11-06 08:26:49', '0000-00-00 00:00:00'),
(85, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=280:one-dimensional-hybrid-nanoparticles&catid=34:academic-lectures&Itemid=205', '', '', '', 0, '2011-11-06 12:16:04', '0000-00-00 00:00:00'),
(86, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=86:hospitals&catid=81&Itemid=489', '', '', '', 0, '2011-11-08 07:33:53', '0000-00-00 00:00:00'),
(87, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=47:the-joomla-community&catid=19&Itemid=260', '', '', '', 0, '2011-11-08 07:47:20', '0000-00-00 00:00:00'),
(88, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=75:sjtu-opening-day-2011&catid=80&Itemid=290', '', '', '', 0, '2011-11-08 08:22:13', '0000-00-00 00:00:00'),
(89, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=83&Itemid=485&limitstart=1', '', '', '', 0, '2011-11-08 08:41:00', '0000-00-00 00:00:00'),
(90, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=279:wenzhi-forum-reflections-on-improvement-of-national-language-competence&cat', '', '', '', 0, '2011-11-08 18:29:16', '0000-00-00 00:00:00'),
(91, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=10:content&catid=21&Itemid=266', '', '', '', 0, '2011-11-08 18:59:06', '0000-00-00 00:00:00'),
(92, 'http://sac.sjtu.edu.cn/en/index.php?option=com_contact&view=category&id=62&Itemid=427', '', '', '', 0, '2011-11-08 19:00:51', '0000-00-00 00:00:00'),
(93, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=312:sjtu-held-the-fourth-international-seminar-of-world-class-university&catid=', '', '', '', 0, '2011-11-08 21:14:22', '0000-00-00 00:00:00'),
(94, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=285:the-night-of-magic-is-coming&catid=34:academic-lectures&Itemid=205', '', '', '', 0, '2011-11-09 04:47:27', '0000-00-00 00:00:00'),
(95, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=6:australian-parks&catid=26&Itemid=243', '', '', '', 0, '2011-11-09 05:16:02', '0000-00-00 00:00:00'),
(96, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=26:language-switcher&catid=67&Itemid=447', '', '', '', 0, '2011-11-09 05:17:48', '0000-00-00 00:00:00'),
(97, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=7:banner-module&catid=66:display-modules&Itemid=305', '', '', '', 0, '2011-11-09 05:20:06', '0000-00-00 00:00:00'),
(98, 'http://sac.sjtu.edu.cn/en/index.php?option=''com_content&view=''article&id=''312:sjtu-held-the-fourth-international-seminar-of-world-class-university&cat', '', '', '', 0, '2011-11-09 05:33:14', '0000-00-00 00:00:00'),
(99, 'http://sac.sjtu.edu.cn/en/index.php?option=com_phocagallery&view=category&format=feed&id=2:2011-09-02-02-31-18&Itemid=483', '', '', '', 0, '2011-11-09 05:35:16', '0000-00-00 00:00:00'),
(100, 'http://sac.sjtu.edu.cn/en/index.php?option=../../../../../../../../../../../etc/passwd&view=article&id=264:student-designed-blueprint-for-refreshment-', '', '', '', 0, '2011-11-09 12:57:44', '0000-00-00 00:00:00'),
(101, 'http://sac.sjtu.edu.cn/en/index.php?option=../../../../../../../../../../../etc/passwd\0&view=article&id=264:student-designed-blueprint-for-refreshment', '', '', '', 0, '2011-11-09 12:57:45', '0000-00-00 00:00:00'),
(102, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=../../../../../../../../../../../etc/passwd&catid=39:news&Itemid=207&', '', '', '', 0, '2011-11-09 12:57:50', '0000-00-00 00:00:00'),
(103, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=../../../../../../../../../../../etc/passwd\0&catid=39:news&Itemid=207&', '', '', '', 0, '2011-11-09 12:57:51', '0000-00-00 00:00:00'),
(104, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=22:getting-started&catid=19&Itemid=437', '', '', '', 0, '2011-11-09 17:10:04', '0000-00-00 00:00:00'),
(105, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=56:whos-online&catid=65&Itemid=301', '', '', '', 0, '2011-11-09 17:12:12', '0000-00-00 00:00:00'),
(106, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=72:2&catid=79:2011-09-02-06-48-56&Itemid=290', '', '', '', 0, '2011-11-09 17:15:09', '0000-00-00 00:00:00'),
(107, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=81&Itemid=489&limitstart=0', '', '', '', 0, '2011-11-10 03:41:04', '0000-00-00 00:00:00'),
(108, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&id=67&Itemid=414', '', '', '', 0, '2011-11-10 03:49:34', '0000-00-00 00:00:00'),
(109, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=81&Itemid=489&limitstart=11', '', '', '', 0, '2011-11-10 04:05:58', '0000-00-00 00:00:00'),
(110, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=24&Itemid=283', '', '', '', 0, '2011-11-10 04:14:47', '0000-00-00 00:00:00'),
(111, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=309:hypersonic-crystals-and-ice-crystals&catid=34:academic-lectures&Itemid=205', '', '', '', 0, '2011-11-10 13:29:24', '0000-00-00 00:00:00'),
(112, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=categories&id=28&Itemid=244', '', '', '', 0, '2011-11-10 14:46:21', '0000-00-00 00:00:00'),
(113, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=50:upgraders&catid=19&Itemid=260', '', '', '', 0, '2011-11-10 14:50:26', '0000-00-00 00:00:00'),
(114, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=5:authentication&catid=25:plugins&Itemid=318', '', '', '', 0, '2011-11-10 15:20:49', '0000-00-00 00:00:00'),
(115, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=311:p53-and-cancer-cell-metabolism&catid=34:academic-lectures&Itemid=205', '', '', '', 0, '2011-11-11 00:21:28', '0000-00-00 00:00:00'),
(116, 'http://sac.sjtu.edu.cn/en/index.php?view=article&id=255&Itemid=210&option=com_content-0', '', '', '', 0, '2011-11-11 01:59:08', '0000-00-00 00:00:00'),
(117, 'http://sac.sjtu.edu.cn/en/index.php?view=article&id=255&Itemid=210&option=com_contents3', '', '', '', 0, '2011-11-11 01:59:09', '0000-00-00 00:00:00'),
(118, 'http://sac.sjtu.edu.cn/en/index.php?view=category&layout=blog&id=38&Itemid=204&option=com_content-0', '', '', '', 0, '2011-11-11 01:59:14', '0000-00-00 00:00:00'),
(119, 'http://sac.sjtu.edu.cn/en/index.php?view=article&id=276:sjtu-best-performance-ever-for-national-college-students-art-performance&catid=39:news&Itemid=', '', '', '', 0, '2011-11-11 01:59:14', '0000-00-00 00:00:00'),
(120, 'http://sac.sjtu.edu.cn/en/index.php?view=category&layout=blog&id=38&Itemid=204&option=com_contents3', '', '', '', 0, '2011-11-11 01:59:15', '0000-00-00 00:00:00'),
(121, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=60:news-feeds&catid=21:components&Itemid=267', '', '', '', 0, '2011-11-11 02:40:34', '0000-00-00 00:00:00'),
(122, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=77:about-ourhome&catid=81:campus-life&Itemid=489', '', '', '', 0, '2011-11-11 02:56:36', '0000-00-00 00:00:00'),
(123, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=298:unilever-rsc-international-symposium-on-functional-materials&catid=34&Itemi', '', '', '', 0, '2011-11-11 11:34:38', '0000-00-00 00:00:00'),
(124, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=65:ormiston-pound&catid=73&Itemid=400', '', '', '', 0, '2011-11-11 14:50:19', '0000-00-00 00:00:00'),
(125, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=25:koala&catid=72:animals&Itemid=399', '', '', '', 0, '2011-11-11 15:08:34', '0000-00-00 00:00:00'),
(126, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=285:the-night-of-magic-is-coming&catid=34&Itemid=205', '', '', '', 0, '2011-11-11 19:38:54', '0000-00-00 00:00:00'),
(127, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=308:inspiration-forum-lecture-127-atomic-bomb-and-the-backbone&catid=34&Itemid=', '', '', '', 0, '2011-11-11 22:54:43', '0000-00-00 00:00:00'),
(128, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=74:responsibility-the-first-lesson-for-sjtu-freshmen&catid=80&Itemid=435', '', '', '', 0, '2011-11-12 02:40:00', '0000-00-00 00:00:00'),
(129, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=49:typography&catid=23&Itemid=285', '', '', '', 0, '2011-11-12 02:52:27', '0000-00-00 00:00:00'),
(130, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=70&Itemid=456', '', '', '', 0, '2011-11-12 02:59:55', '0000-00-00 00:00:00'),
(131, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=72:2&catid=79:2011-09-02-06-48-56&Itemid=481', '', '', '', 0, '2011-11-12 14:50:10', '0000-00-00 00:00:00'),
(132, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=72:2&catid=79&Itemid=481', '', '', '', 0, '2011-11-12 14:57:58', '0000-00-00 00:00:00'),
(133, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=69&Itemid=419', '', '', '', 0, '2011-11-12 15:02:10', '0000-00-00 00:00:00'),
(134, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=57:wobbegone&catid=72&Itemid=399', '', '', '', 0, '2011-11-13 02:28:34', '0000-00-00 00:00:00'),
(135, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&id=75&Itemid=415', '', '', '', 0, '2011-11-13 02:32:27', '0000-00-00 00:00:00'),
(136, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=27&Itemid=234', '', '', '', 0, '2011-11-13 02:36:28', '0000-00-00 00:00:00'),
(137, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=84&Itemid=481&limitstart=1', '', '', '', 0, '2011-11-13 02:49:56', '0000-00-00 00:00:00'),
(138, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=37:related-items-module&catid=64&Itemid=326', '', '', '', 0, '2011-11-13 14:28:50', '0000-00-00 00:00:00'),
(139, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=9&Itemid=270', '', '', '', 0, '2011-11-13 14:30:52', '0000-00-00 00:00:00'),
(140, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=71:1&catid=79:2011-09-02-06-48-56&Itemid=290', '', '', '', 0, '2011-11-13 14:32:48', '0000-00-00 00:00:00'),
(141, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=61:breadcrumbs-module&catid=75:navigation-modules&Itemid=416', '', '', '', 0, '2011-11-13 14:34:53', '0000-00-00 00:00:00'),
(142, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=100:counseling-and-support-services-center&catid=81:campus-life&Itemid=489', '', '', '', 0, '2011-11-13 14:46:49', '0000-00-00 00:00:00'),
(143, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=101:zhang-hongmei-twenty-years-of-hard-work-and-wholeheartedness&catid=84&Itemi', '', '', '', 0, '2011-11-13 14:52:01', '0000-00-00 00:00:00'),
(144, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=9&Itemid=488', '', '', '', 0, '2011-11-14 15:32:46', '0000-00-00 00:00:00'),
(145, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=64:blue-mountain-rain-forest&catid=73:scenery&Itemid=400', '', '', '', 0, '2011-11-14 15:41:50', '0000-00-00 00:00:00'),
(146, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=65:ormiston-pound&catid=73:scenery&Itemid=400', '', '', '', 0, '2011-11-14 15:47:08', '0000-00-00 00:00:00'),
(147, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=57:wobbegone&catid=72:animals&Itemid=399', '', '', '', 0, '2011-11-14 15:53:58', '0000-00-00 00:00:00'),
(148, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=13:directions&catid=29:fruit-shop-site&Itemid=433', '', '', '', 0, '2011-11-14 16:00:52', '0000-00-00 00:00:00'),
(149, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=31:news-flash&catid=64:articles-modules&Itemid=309', '', '', '', 0, '2011-11-14 16:05:50', '0000-00-00 00:00:00'),
(150, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=84&Itemid=481&limitstart=0', '', '', '', 0, '2011-11-14 16:13:33', '0000-00-00 00:00:00'),
(151, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=82&Itemid=486&limitstart=3', '', '', '', 0, '2011-11-15 04:08:08', '0000-00-00 00:00:00'),
(152, 'http://sac.sjtu.edu.cn/en/index.php?Itemid=429', '', '', '', 0, '2011-11-15 04:19:32', '0000-00-00 00:00:00'),
(153, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=33:phyllopteryx&catid=72:animals&Itemid=399', '', '', '', 0, '2011-11-15 04:27:43', '0000-00-00 00:00:00'),
(154, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=68&Itemid=422', '', '', '', 0, '2011-11-15 17:29:04', '0000-00-00 00:00:00'),
(155, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=97:stores-a-supermarket&catid=81:campus-life&Itemid=489', '', '', '', 0, '2011-11-16 04:04:04', '0000-00-00 00:00:00'),
(156, 'http://sac.sjtu.edu.cn/en/index.php?Itemid=457', '', '', '', 0, '2011-11-16 04:16:25', '0000-00-00 00:00:00'),
(157, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&layout=blog&id=83&Itemid=485&limitstart=0', '', '', '', 0, '2011-11-16 04:22:18', '0000-00-00 00:00:00'),
(158, 'http://sac.sjtu.edu.cn/en/index.php?Itemid=243', '', '', '', 0, '2011-11-16 15:54:50', '0000-00-00 00:00:00'),
(159, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=31:news-flash&catid=64&Itemid=309', '', '', '', 0, '2011-11-16 16:12:15', '0000-00-00 00:00:00'),
(160, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=1:administrator-components&catid=21&Itemid=273&showall=&limitstart=1', '', '', '', 0, '2011-11-16 16:41:29', '0000-00-00 00:00:00'),
(161, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=55:weblinks-module&catid=66:display-modules&Itemid=417', '', '', '', 0, '2011-11-16 17:04:29', '0000-00-00 00:00:00'),
(162, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=309:hypersonic-crystals-and-ice-crystals&catid=34&Itemid=205', '', '', '', 0, '2011-11-16 19:31:24', '0000-00-00 00:00:00'),
(163, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=81:bookstores&catid=81:campus-life&Itemid=489', '', '', '', 0, '2011-11-17 03:33:04', '0000-00-00 00:00:00'),
(164, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=76:freshmen-received-and-registered-on-minhang-campus-2011&catid=80:news&Itemid', '', '', '', 0, '2011-11-17 03:37:55', '0000-00-00 00:00:00'),
(165, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&id=76&Itemid=463', '', '', '', 0, '2011-11-17 03:41:38', '0000-00-00 00:00:00'),
(166, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&id=80&Itemid=424', '', '', '', 0, '2011-11-17 03:46:02', '0000-00-00 00:00:00'),
(167, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=category&id=80&Itemid=458', '', '', '', 0, '2011-11-17 15:37:49', '0000-00-00 00:00:00'),
(168, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=33:phyllopteryx&catid=72&Itemid=399', '', '', '', 0, '2011-11-17 15:50:32', '0000-00-00 00:00:00'),
(169, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=75:sjtu-opening-day-2011&catid=80:news&Itemid=424', '', '', '', 0, '2011-11-17 15:56:35', '0000-00-00 00:00:00'),
(170, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=55:weblinks-module&catid=66&Itemid=417', '', '', '', 0, '2011-11-18 03:26:14', '0000-00-00 00:00:00'),
(171, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=100:counseling-and-support-services-center&catid=86&Itemid=484', '', '', '', 0, '2011-11-18 03:29:56', '0000-00-00 00:00:00'),
(172, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=10:content&catid=21:components&Itemid=266', '', '', '', 0, '2011-11-18 03:33:34', '0000-00-00 00:00:00'),
(173, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=92:plasmonic-metamaterials-and-their-application-in-extraordinary-imaging&catid', '', '', '', 0, '2011-11-18 15:07:05', '0000-00-00 00:00:00'),
(174, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=61:breadcrumbs-module&catid=75&Itemid=416', '', '', '', 0, '2011-11-18 15:26:52', '0000-00-00 00:00:00'),
(175, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=16:feed-display&catid=66&Itemid=410', '', '', '', 0, '2011-11-18 16:44:02', '0000-00-00 00:00:00'),
(176, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=1:administrator-components&catid=21&Itemid=273&showall=&limitstart=3', '', '', '', 0, '2011-11-19 03:17:01', '0000-00-00 00:00:00'),
(177, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=296:the-uses-of-similarity-in-cognitive-information-processing&catid=34&Itemid=', '', '', '', 0, '2011-11-19 04:45:59', '0000-00-00 00:00:00'),
(178, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=58:wonderful-watermelon&catid=30&Itemid=431', '', '', '', 0, '2011-11-19 15:05:13', '0000-00-00 00:00:00'),
(179, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=23:happy-orange-orchard&catid=30:growers&Itemid=431', '', '', '', 0, '2011-11-19 15:19:37', '0000-00-00 00:00:00'),
(180, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=17:first-blog-post&catid=27&Itemid=234', '', '', '', 0, '2011-11-19 15:36:43', '0000-00-00 00:00:00'),
(181, 'http://sac.sjtu.edu.cn/en/index.php?option=com_content&view=article&id=23:happy-orange-orchard&catid=30&Itemid=431', '', '', '', 0, '2011-11-20 02:30:50', '0000-00-00 00:00:00'),
(182, 'http://localhost/www/2011_2012/jwb/home/index.php?option=com_content&view=category&layout=blog&id=38&Itemid=204', '', 'http://localhost/www/2011_2012/jwb/home/', '', 0, '2011-11-20 05:29:55', '0000-00-00 00:00:00'),
(183, 'http://localhost/www/2012/biye/index.php?option=com_phocagallery&view=article&id=332:2012-06-12-03-07-48&catid=57:2012-06-11-03-08-52&Itemid=245', '', '', '', 0, '2012-06-12 04:04:25', '0000-00-00 00:00:00'),
(184, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=340:djg5&catid=54:2011-11-20-05-30-41&Itemid=242', '', '', '', 0, '2012-06-14 04:40:36', '0000-00-00 00:00:00'),
(185, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=339:djg4&catid=54:2011-11-20-05-30-41&Itemid=242', '', 'http://gsa.sjtu.edu.cn/search?q=%E4%BD%93%E8%82%B2%E9%A6%86+%E5%85%B8%E7%A4%BC&btnG=GSA+%E6%90%9C%E7%B4%A2&entsp=a&sort=date%3AD%3AL%3Ad1&client=defau', '', 0, '2012-06-14 08:28:31', '0000-00-00 00:00:00'),
(186, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=308:2012-06-11-13-09-59&catid=58:2012-06-11-03-08-53&Itemid=246', '', '', '', 0, '2012-06-15 05:15:44', '0000-00-00 00:00:00'),
(187, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=308:2012-06-11-13-09-59&catid=58:2012-06-11-03-08-53&Itemid=246''', '', '', '', 0, '2012-06-15 05:15:53', '0000-00-00 00:00:00'),
(188, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=316:2012-06-11-14-16-24&catid=57:2012-06-11-03-08-52&Itemid=245', '', '', '', 0, '2012-06-15 05:16:01', '0000-00-00 00:00:00'),
(189, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=316:2012-06-11-14-16-24&catid=57:2012-06-11-03-08-52&Itemid=245''', '', '', '', 0, '2012-06-15 05:16:09', '0000-00-00 00:00:00'),
(190, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=309:2012-06-11-13-15-06&catid=58:2012-06-11-03-08-53&Itemid=246', '', '', '', 0, '2012-06-15 07:07:55', '0000-00-00 00:00:00'),
(191, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=309:2012-06-11-13-15-06&catid=58:2012-06-11-03-08-53&Itemid=246''', '', '', '', 0, '2012-06-15 07:08:03', '0000-00-00 00:00:00'),
(192, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=345:test&catid=54:2011-11-20-05-30-41&Itemid=242', '', 'http://byj.sjtu.edu.cn/index.php', '', 0, '2012-06-15 13:07:05', '0000-00-00 00:00:00'),
(193, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=347:test3&catid=59:2012-06-17-03-10-34&Itemid=101', '', 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=featured&Itemid=101', '', 0, '2012-06-17 07:36:44', '0000-00-00 00:00:00'),
(194, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=350:2012-06-17-07-42-47&catid=61:2012-06-17-07-41-10&Itemid=274', '', '', '', 0, '2012-06-17 09:50:30', '0000-00-00 00:00:00'),
(195, 'http://byj.sjtu.edu.cn/index.php?option=com_content&view=article&id=356:2012&catid=61:2012-06-17-07-41-10&Itemid=274', '', '', '', 0, '2012-06-17 10:01:08', '0000-00-00 00:00:00'),
(196, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_phocagallery&view=category&id=1:test&Itemid=273', '', '', '', 0, '2012-06-19 14:45:31', '0000-00-00 00:00:00'),
(197, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(198, 'http://sac.sjtu.edu.cn/biye/index.php?option=../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(199, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(200, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(201, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(202, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:10', '0000-00-00 00:00:00'),
(203, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(204, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(205, 'http://sac.sjtu.edu.cn/biye/index.php?option=../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(206, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(207, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(208, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(209, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(210, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(211, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(212, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(213, 'http://sac.sjtu.edu.cn/biye/index.php?option=../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(214, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:11', '0000-00-00 00:00:00'),
(215, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(216, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(217, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(218, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(219, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(220, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(221, 'http://sac.sjtu.edu.cn/biye/index.php?option=&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(222, 'http://sac.sjtu.edu.cn/biye/index.php?option=www.y35u.com/y35u.txt&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(223, 'http://sac.sjtu.edu.cn/biye/index.php?option=www.y35u.com/y35u.txt?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:12', '0000-00-00 00:00:00'),
(224, 'http://sac.sjtu.edu.cn/biye/index.php?option=www.y35u.com/y35u.txt\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(225, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../etc/passwd\0&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(226, 'http://sac.sjtu.edu.cn/biye/index.php?option=</div>Y35Uwashere&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(227, 'http://sac.sjtu.edu.cn/biye/index.php?option=phpinfo&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(228, 'http://sac.sjtu.edu.cn/biye/index.php?option=<?php phpinfo();?>&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(229, 'http://sac.sjtu.edu.cn/biye/index.php?option=phpinfo()&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(230, 'http://sac.sjtu.edu.cn/biye/index.php?option=ifconfig&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:13', '0000-00-00 00:00:00'),
(231, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../etc/passwd?&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:14', '0000-00-00 00:00:00'),
(232, 'http://sac.sjtu.edu.cn/biye/index.php?option=../../../../../../../etc/passwd&view=category&layout=blog&id=57&Itemid=245', '', '', '', 0, '2012-06-30 11:26:15', '0000-00-00 00:00:00'),
(233, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(234, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(235, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(236, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(237, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(238, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:25', '0000-00-00 00:00:00'),
(239, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:26', '0000-00-00 00:00:00'),
(240, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:26', '0000-00-00 00:00:00'),
(241, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:26', '0000-00-00 00:00:00'),
(242, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:26', '0000-00-00 00:00:00'),
(243, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=&Itemid=245', '', '', '', 0, '2012-06-30 11:26:26', '0000-00-00 00:00:00'),
(244, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=www.y35u.com/y35u.txt&Itemid=245', '', '', '', 0, '2012-06-30 11:26:27', '0000-00-00 00:00:00'),
(245, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=www.y35u.com/y35u.txt?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:27', '0000-00-00 00:00:00'),
(246, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=www.y35u.com/y35u.txt\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:27', '0000-00-00 00:00:00'),
(247, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=</div>Y35Uwashere&Itemid=245', '', '', '', 0, '2012-06-30 11:26:27', '0000-00-00 00:00:00'),
(248, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=phpinfo&Itemid=245', '', '', '', 0, '2012-06-30 11:26:27', '0000-00-00 00:00:00'),
(249, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=phpinfo()&Itemid=245', '', '', '', 0, '2012-06-30 11:26:28', '0000-00-00 00:00:00'),
(250, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=phpinfo();&Itemid=245', '', '', '', 0, '2012-06-30 11:26:28', '0000-00-00 00:00:00'),
(251, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=ifconfig&Itemid=245', '', '', '', 0, '2012-06-30 11:26:28', '0000-00-00 00:00:00'),
(252, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:33', '0000-00-00 00:00:00'),
(253, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:33', '0000-00-00 00:00:00'),
(254, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:33', '0000-00-00 00:00:00'),
(255, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:34', '0000-00-00 00:00:00'),
(256, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:34', '0000-00-00 00:00:00'),
(257, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:34', '0000-00-00 00:00:00'),
(258, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:34', '0000-00-00 00:00:00'),
(259, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=<?php phpinfo();?>&Itemid=245', '', '', '', 0, '2012-06-30 11:26:35', '0000-00-00 00:00:00'),
(260, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:41', '0000-00-00 00:00:00'),
(261, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:41', '0000-00-00 00:00:00'),
(262, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:41', '0000-00-00 00:00:00'),
(263, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:42', '0000-00-00 00:00:00'),
(264, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:49', '0000-00-00 00:00:00');
INSERT INTO `urhc6_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(265, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../etc/passwd\0&Itemid=245', '', '', '', 0, '2012-06-30 11:26:49', '0000-00-00 00:00:00'),
(266, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../../../etc/passwd?&Itemid=245', '', '', '', 0, '2012-06-30 11:26:50', '0000-00-00 00:00:00'),
(267, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:50', '0000-00-00 00:00:00'),
(268, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:51', '0000-00-00 00:00:00'),
(269, 'http://sac.sjtu.edu.cn/biye/index.php?option=com_content&view=category&layout=blog&id=../../../../../../../etc/passwd&Itemid=245', '', '', '', 0, '2012-06-30 11:26:51', '0000-00-00 00:00:00'),
(270, 'http://localhost/2012_2013/ist/', '', 'http://localhost/2012_2013/ist/', '', 0, '2012-10-01 13:38:14', '0000-00-00 00:00:00'),
(271, 'http://nhatquang/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=66&Itemid=277', '', 'http://nhatquang/2012_2013/ist/', '', 0, '2012-10-01 13:58:47', '0000-00-00 00:00:00'),
(272, 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=64&Itemid=275', '', 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=63&Itemid=242', '', 0, '2012-10-02 01:35:49', '0000-00-00 00:00:00'),
(273, 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=65&Itemid=276', '', 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=63&Itemid=242', '', 0, '2012-10-02 01:35:52', '0000-00-00 00:00:00'),
(274, 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=66&Itemid=277', '', 'http://localhost/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=63&Itemid=242', '', 0, '2012-10-02 01:35:54', '0000-00-00 00:00:00'),
(275, 'http://localhost/2013/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=63&Itemid=242&limitstart=0', '', 'http://localhost/2013/2012_2013/ist/index.php?option=com_content&view=category&layout=blog&id=63&Itemid=242&limitstart=6', '', 0, '2014-07-29 13:50:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_responses`
--

CREATE TABLE `urhc6_responses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(11) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `extension` varchar(50) NOT NULL DEFAULT '' COMMENT 'Joomla! Extension that this response',
  `content_id` int(10) unsigned NOT NULL COMMENT 'Response to Primary Key for Content',
  `content_title` varchar(255) NOT NULL DEFAULT 'Resposne to Primary Key Content Title',
  `catid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Response to Content Category ID',
  `response_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '1: Comment 2: Content Rating 3: Social Bookmark 4: Poll Response 5: Email Subscription Response 6: Statistical Log 7: Trackback',
  `title` varchar(255) NOT NULL DEFAULT 'Response Title',
  `alias` varchar(255) NOT NULL DEFAULT 'Response Alias',
  `textual_response` mediumtext NOT NULL COMMENT 'Textual Response to Content',
  `numeric_response` int(11) NOT NULL DEFAULT '0' COMMENT 'Numeric Resposne to Content',
  `linked_response` varchar(255) NOT NULL DEFAULT '' COMMENT 'Linked Response to Content',
  `subscription_response` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email Subscription to Content',
  `state` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'State',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created Date and Time',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Created By User ID, if Member',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'Created By Alias',
  `created_by_email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Created By Email Address',
  `created_by_website` varchar(255) NOT NULL DEFAULT '' COMMENT 'Created By Website',
  `created_by_ip_address` varchar(10) NOT NULL DEFAULT '' COMMENT 'Created By IP Address',
  `created_by_referer` varchar(10) NOT NULL DEFAULT '' COMMENT 'Created By Referer',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modified Date and Time',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Modified By User ID',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Checked Out User ID',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Checked Out Date and Time',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish Up Date and Time',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish Down Date and Time',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if response item is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the response.',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'Ordering within the Content Item.',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_extension` (`extension`,`content_id`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_components`
--

CREATE TABLE `urhc6_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `urhc6_rsform_components`
--

INSERT INTO `urhc6_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 10, 1, 1),
(3, 1, 1, 3, 1),
(4, 1, 3, 4, 0),
(5, 1, 5, 5, 0),
(6, 1, 4, 6, 1),
(7, 1, 6, 7, 0),
(8, 1, 13, 8, 1),
(9, 1, 10, 9, 0),
(10, 2, 1, 2, 1),
(11, 2, 10, 1, 1),
(12, 2, 1, 3, 1),
(13, 2, 3, 6, 1),
(14, 2, 5, 7, 1),
(15, 2, 4, 10, 1),
(16, 2, 6, 11, 1),
(17, 2, 13, 12, 1),
(18, 2, 10, 13, 1),
(19, 2, 41, 4, 1),
(20, 2, 41, 8, 1),
(21, 2, 10, 5, 1),
(22, 2, 10, 9, 1),
(37, 4, 2, 2, 1),
(27, 4, 13, 4, 1),
(26, 4, 1, 1, 1),
(33, 4, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_component_types`
--

CREATE TABLE `urhc6_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `urhc6_rsform_component_types`
--

INSERT INTO `urhc6_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(12, 'imageButton'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_component_type_fields`
--

CREATE TABLE `urhc6_rsform_component_type_fields` (
  `ComponentTypeFieldId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ComponentTypeFieldId`),
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `urhc6_rsform_component_type_fields`
--

INSERT INTO `urhc6_rsform_component_type_fields` (`ComponentTypeFieldId`, `ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES
(2, 1, 'NAME', 'textbox', '', 1),
(3, 1, 'CAPTION', 'textbox', '', 2),
(4, 1, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(5, 1, 'SIZE', 'textbox', '20', 4),
(6, 1, 'MAXSIZE', 'textbox', '', 5),
(7, 1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(8, 1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(9, 1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(10, 1, 'DEFAULTVALUE', 'textarea', '', 9),
(11, 1, 'DESCRIPTION', 'textarea', '', 11),
(12, 1, 'COMPONENTTYPE', 'hidden', '1', 15),
(13, 2, 'NAME', 'textbox', '', 1),
(14, 2, 'CAPTION', 'textbox', '', 2),
(15, 2, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(16, 2, 'COLS', 'textbox', '50', 4),
(17, 2, 'ROWS', 'textbox', '5', 5),
(18, 2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(19, 2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(20, 2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(21, 2, 'DEFAULTVALUE', 'textarea', '', 9),
(22, 2, 'DESCRIPTION', 'textarea', '', 10),
(23, 2, 'COMPONENTTYPE', 'hidden', '2', 10),
(24, 3, 'NAME', 'textbox', '', 1),
(25, 3, 'CAPTION', 'textbox', '', 2),
(26, 3, 'SIZE', 'textbox', '', 3),
(27, 3, 'MULTIPLE', 'select', 'NO\r\nYES', 4),
(28, 3, 'ITEMS', 'textarea', '', 5),
(29, 3, 'REQUIRED', 'select', 'NO\r\nYES', 6),
(30, 3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(31, 3, 'DESCRIPTION', 'textarea', '', 8),
(32, 3, 'COMPONENTTYPE', 'hidden', '3', 10),
(33, 4, 'NAME', 'textbox', '', 1),
(34, 4, 'CAPTION', 'textbox', '', 2),
(35, 4, 'ITEMS', 'textarea', '', 3),
(36, 4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(37, 4, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(38, 4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(39, 4, 'DESCRIPTION', 'textarea', '', 6),
(40, 4, 'COMPONENTTYPE', 'hidden', '4', 7),
(41, 5, 'NAME', 'textbox', '', 1),
(42, 5, 'CAPTION', 'textbox', '', 2),
(43, 5, 'ITEMS', 'textarea', '', 3),
(44, 5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(45, 5, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(46, 5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(47, 5, 'DESCRIPTION', 'textarea', '', 6),
(48, 5, 'COMPONENTTYPE', 'hidden', '5', 7),
(49, 6, 'NAME', 'textbox', '', 1),
(50, 6, 'CAPTION', 'textbox', '', 2),
(51, 6, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(52, 6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4),
(53, 6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5),
(54, 6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(55, 6, 'DESCRIPTION', 'textarea', '', 7),
(56, 6, 'COMPONENTTYPE', 'hidden', '6', 8),
(57, 7, 'NAME', 'textbox', '', 1),
(58, 7, 'CAPTION', 'textbox', '', 2),
(59, 7, 'LABEL', 'textbox', '', 3),
(60, 7, 'RESET', 'select', 'NO\r\nYES', 4),
(61, 7, 'RESETLABEL', 'textbox', '', 5),
(62, 7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(63, 7, 'DESCRIPTION', 'textarea', '', 7),
(64, 7, 'COMPONENTTYPE', 'hidden', '7', 8),
(65, 8, 'NAME', 'textbox', '', 1),
(66, 8, 'CAPTION', 'textbox', '', 2),
(67, 8, 'LENGTH', 'textbox', '4', 3),
(68, 8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4),
(69, 8, 'TEXTCOLOR', 'textbox', '#000000', 5),
(70, 8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6),
(71, 8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7),
(72, 8, 'DESCRIPTION', 'textarea', '', 9),
(73, 8, 'COMPONENTTYPE', 'hidden', '8', 9),
(74, 9, 'NAME', 'textbox', '', 1),
(75, 9, 'CAPTION', 'textbox', '', 2),
(76, 9, 'FILESIZE', 'textbox', '', 3),
(77, 9, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(78, 9, 'ACCEPTEDFILES', 'textarea', '', 5),
(79, 9, 'DESTINATION', 'textbox', '//<code>\r\nreturn JPATH_SITE.DS.''components''.DS.''com_rsform''.DS.''uploads''.DS;\r\n//</code>', 6),
(80, 9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(81, 9, 'DESCRIPTION', 'textarea', '', 8),
(82, 9, 'COMPONENTTYPE', 'hidden', '9', 9),
(83, 10, 'NAME', 'textbox', '', 1),
(84, 10, 'TEXT', 'textarea', '', 1),
(85, 10, 'COMPONENTTYPE', 'hidden', '10', 9),
(86, 11, 'NAME', 'textbox', '', 1),
(87, 11, 'DEFAULTVALUE', 'textarea', '', 1),
(88, 11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1),
(89, 11, 'COMPONENTTYPE', 'hidden', '11', 9),
(118, 12, 'COMPONENTTYPE', 'hidden', '12', 10),
(117, 12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(144, 3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(115, 12, 'RESETLABEL', 'textbox', '', 7),
(114, 12, 'RESET', 'select', 'NO\r\nYES', 6),
(113, 12, 'IMAGERESET', 'textbox', '', 5),
(112, 12, 'IMAGEBUTTON', 'textbox', '', 4),
(111, 12, 'LABEL', 'textbox', '', 3),
(110, 12, 'CAPTION', 'textbox', '', 2),
(109, 12, 'NAME', 'textbox', '', 1),
(119, 13, 'NAME', 'textbox', '', 1),
(120, 13, 'CAPTION', 'textbox', '', 3),
(121, 13, 'LABEL', 'textbox', '', 2),
(122, 13, 'RESET', 'select', 'NO\r\nYES', 6),
(123, 13, 'RESETLABEL', 'textbox', '', 7),
(125, 13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(126, 13, 'COMPONENTTYPE', 'hidden', '13', 10),
(127, 14, 'NAME', 'textbox', '', 1),
(128, 14, 'CAPTION', 'textbox', '', 2),
(129, 14, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(130, 14, 'SIZE', 'textbox', '', 4),
(131, 14, 'MAXSIZE', 'textbox', '', 5),
(132, 14, 'DEFAULTVALUE', 'textarea', '', 6),
(133, 14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(134, 14, 'COMPONENTTYPE', 'hidden', '14', 8),
(135, 15, 'NAME', 'textbox', '', 1),
(138, 15, 'LENGTH', 'textbox', '8', 4),
(140, 15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(141, 15, 'COMPONENTTYPE', 'hidden', '15', 8),
(142, 14, 'DESCRIPTION', 'textarea', '', 100),
(143, 8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(145, 4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(146, 5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(147, 6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(148, 14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(149, 9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(150, 8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7),
(151, 8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8),
(152, 8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11),
(153, 6, 'READONLY', 'select', 'NO\r\nYES', 6),
(154, 12, 'DESCRIPTION', 'textarea', '', 10),
(155, 6, 'POPUPLABEL', 'textbox', '...', 6),
(157, 15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3),
(160, 2, 'WYSIWYG', 'select', 'NO\r\nYES', 11),
(161, 8, 'SIZE', 'textbox', '15', 12),
(162, 8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3),
(163, 1, 'VALIDATIONEXTRA', 'textbox', '', 6),
(164, 2, 'VALIDATIONEXTRA', 'textbox', '', 6),
(165, 14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9),
(166, 9, 'PREFIX', 'textarea', '', 6),
(167, 13, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 8),
(168, 41, 'NAME', 'textbox', '', 1),
(169, 41, 'COMPONENTTYPE', 'hidden', '41', 5),
(170, 41, 'NEXTBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''NEXT'');\r\n//</code>', 2),
(171, 41, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 3),
(172, 41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4),
(173, 41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', 5),
(174, 6, 'MINDATE', 'textbox', '', 5),
(175, 6, 'MAXDATE', 'textbox', '', 5),
(176, 6, 'DEFAULTVALUE', 'textarea', '', 2),
(177, 9, 'EMAILATTACH', 'emailattach', '', 102),
(178, 41, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 6),
(179, 41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 7),
(180, 0, '', 'hidden', '', 0),
(181, 13, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 8),
(182, 13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 8);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_config`
--

CREATE TABLE `urhc6_rsform_config` (
  `ConfigId` int(11) NOT NULL AUTO_INCREMENT,
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`ConfigId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `urhc6_rsform_config`
--

INSERT INTO `urhc6_rsform_config` (`ConfigId`, `SettingName`, `SettingValue`) VALUES
(1, 'global.register.code', ''),
(2, 'global.debug.mode', '0'),
(3, 'global.iis', '0'),
(4, 'global.editor', '1'),
(100, 'global.codemirror', '0');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_emails`
--

CREATE TABLE `urhc6_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_forms`
--

CREATE TABLE `urhc6_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `urhc6_rsform_forms`
--

INSERT INTO `urhc6_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `CSS`, `JS`, `FormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowThankyou`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ThemeParams`, `Keepdata`, `Backendmenu`, `ConfirmSubmission`) VALUES
(1, 'RSformPro example', '<fieldset class="formFieldset">\n<legend>{global:formtitle}</legend>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_1_page_0">\n	<li class="rsform-block rsform-block-header">\n		<div class="formCaption">{Header:caption}</div>\n		<div class="formBody">{Header:body}<span class="formClr">{Header:validation}</span></div>\n		<div class="formDescription">{Header:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-fullname">\n		<div class="formCaption">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{FullName:body}<span class="formClr">{FullName:validation}</span></div>\n		<div class="formDescription">{FullName:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-email">\n		<div class="formCaption">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Email:body}<span class="formClr">{Email:validation}</span></div>\n		<div class="formDescription">{Email:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactby">\n		<div class="formCaption">{ContactBy:caption}</div>\n		<div class="formBody">{ContactBy:body}<span class="formClr">{ContactBy:validation}</span></div>\n		<div class="formDescription">{ContactBy:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-submit">\n		<div class="formCaption">{Submit:caption}</div>\n		<div class="formBody">{Submit:body}<span class="formClr">{Submit:validation}</span></div>\n		<div class="formDescription">{Submit:description}</div>\n	</li>\n</ol>\n</fieldset>\n', 'inline-xhtml', 1, '', '', 'RSForm! Pro example', 0, 'en-GB', '', 1, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0),
(2, 'RSformPro Multipage example', '<fieldset class="formFieldset">\n<legend>{global:formtitle}</legend>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_0">\n	<li class="rsform-block rsform-block-header">\n		<div class="formCaption">{Header:caption}</div>\n		<div class="formBody">{Header:body}<span class="formClr">{Header:validation}</span></div>\n		<div class="formDescription">{Header:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-fullname">\n		<div class="formCaption">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{FullName:body}<span class="formClr">{FullName:validation}</span></div>\n		<div class="formDescription">{FullName:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-email">\n		<div class="formCaption">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Email:body}<span class="formClr">{Email:validation}</span></div>\n		<div class="formDescription">{Email:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-page1">\n		<div class="formCaption">&nbsp;</div>\n		<div class="formBody">{Page1:body}</div>\n	</li>\n	</ol>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_1">\n	<li class="rsform-block rsform-block-companyheader">\n		<div class="formCaption">{CompanyHeader:caption}</div>\n		<div class="formBody">{CompanyHeader:body}<span class="formClr">{CompanyHeader:validation}</span></div>\n		<div class="formDescription">{CompanyHeader:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-companysize">\n		<div class="formCaption">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{CompanySize:body}<span class="formClr">{CompanySize:validation}</span></div>\n		<div class="formDescription">{CompanySize:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-position">\n		<div class="formCaption">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Position:body}<span class="formClr">{Position:validation}</span></div>\n		<div class="formDescription">{Position:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-page2">\n		<div class="formCaption">&nbsp;</div>\n		<div class="formBody">{Page2:body}</div>\n	</li>\n	</ol>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_2">\n	<li class="rsform-block rsform-block-contactheader">\n		<div class="formCaption">{ContactHeader:caption}</div>\n		<div class="formBody">{ContactHeader:body}<span class="formClr">{ContactHeader:validation}</span></div>\n		<div class="formDescription">{ContactHeader:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactby">\n		<div class="formCaption">{ContactBy:caption}</div>\n		<div class="formBody">{ContactBy:body}<span class="formClr">{ContactBy:validation}</span></div>\n		<div class="formDescription">{ContactBy:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactwhen">\n		<div class="formCaption">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{ContactWhen:body}<span class="formClr">{ContactWhen:validation}</span></div>\n		<div class="formDescription">{ContactWhen:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-submit">\n		<div class="formCaption">{Submit:caption}</div>\n		<div class="formBody">{Submit:body}<span class="formClr">{Submit:validation}</span></div>\n		<div class="formDescription">{Submit:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-footer">\n		<div class="formCaption">{Footer:caption}</div>\n		<div class="formBody">{Footer:body}<span class="formClr">{Footer:validation}</span></div>\n		<div class="formDescription">{Footer:description}</div>\n	</li>\n</ol>\n</fieldset>', 'inline-xhtml', 1, '', '', 'RSForm! Pro Multipage example', 0, '', '', 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0),
(4, '需求建议', '<div class="componentheading">{global:formtitle}</div>\n{error}\n<div>\n	<div class="formField rsform-block rsform-block-title">\n		{Title:caption} (*)<br/>\n		{Title:body}<br/>\n		{Title:validation}\n		{Title:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-content">\n		{content:caption} (*)<br/>\n		{content:body}<br/>\n		{content:validation}\n		{content:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-contact">\n		{contact:caption} (*)<br/>\n		{contact:body}<br/>\n		{contact:validation}\n		{contact:description}<br/>\n	</div>\n	<div class="formField rsform-block rsform-block-submit">\n		{Submit:caption}<br/>\n		{Submit:body}<br/>\n		{Submit:validation}\n		{Submit:description}<br/>\n	</div>\n</div>\n', '2lines', 1, '', '', '需求建议', 1, 'en-GB', '', 1, '<h1>感谢您的建议！</h1>', 1, '<p>Thank you for contacting us. We will get back to you as soon as possible.</p>', '', '', '', 'donhatquang@gmail.com', '', 'SAC SJTU', 'Thank you for your submission!', 1, 0, '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', 0, '', '', '(*)', '<p class="formRed">Please complete all required fields!</p>', '\\n', 1, '', 'userForm', '', '', '', 1, 'name=green\nnum_css=1\ncss0=css/style.css', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_mappings`
--

CREATE TABLE `urhc6_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_properties`
--

CREATE TABLE `urhc6_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=325 ;

--
-- Dumping data for table `urhc6_rsform_properties`
--

INSERT INTO `urhc6_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(1, 1, 'NAME', 'FullName'),
(2, 1, 'CAPTION', 'Full Name'),
(3, 1, 'REQUIRED', 'YES'),
(4, 1, 'SIZE', '20'),
(5, 1, 'MAXSIZE', ''),
(6, 1, 'VALIDATIONRULE', 'none'),
(7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(8, 1, 'ADDITIONALATTRIBUTES', ''),
(9, 1, 'DEFAULTVALUE', ''),
(10, 1, 'DESCRIPTION', ''),
(11, 2, 'NAME', 'Header'),
(12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(13, 3, 'NAME', 'Email'),
(14, 3, 'CAPTION', 'E-mail'),
(15, 3, 'REQUIRED', 'YES'),
(16, 3, 'SIZE', '20'),
(17, 3, 'MAXSIZE', ''),
(18, 3, 'VALIDATIONRULE', 'email'),
(19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(20, 3, 'ADDITIONALATTRIBUTES', ''),
(21, 3, 'DEFAULTVALUE', ''),
(22, 3, 'DESCRIPTION', ''),
(23, 4, 'NAME', 'CompanySize'),
(24, 4, 'CAPTION', 'Number of Employees'),
(25, 4, 'SIZE', ''),
(26, 4, 'MULTIPLE', 'NO'),
(27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(28, 4, 'REQUIRED', 'YES'),
(29, 4, 'ADDITIONALATTRIBUTES', ''),
(30, 4, 'DESCRIPTION', ''),
(31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(32, 5, 'NAME', 'Position'),
(33, 5, 'CAPTION', 'Position'),
(34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(35, 5, 'FLOW', 'HORIZONTAL'),
(36, 5, 'REQUIRED', 'YES'),
(37, 5, 'ADDITIONALATTRIBUTES', ''),
(38, 5, 'DESCRIPTION', ''),
(39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(40, 6, 'NAME', 'ContactBy'),
(41, 6, 'CAPTION', 'How should we contact you?'),
(42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(43, 6, 'FLOW', 'HORIZONTAL'),
(44, 6, 'REQUIRED', 'NO'),
(45, 6, 'ADDITIONALATTRIBUTES', ''),
(46, 6, 'DESCRIPTION', ''),
(47, 6, 'VALIDATIONMESSAGE', ''),
(48, 7, 'NAME', 'ContactWhen'),
(49, 7, 'CAPTION', 'When would you like to be contacted?'),
(50, 7, 'REQUIRED', 'YES'),
(51, 7, 'DATEFORMAT', 'dd.mm.yyyy'),
(52, 7, 'CALENDARLAYOUT', 'POPUP'),
(53, 7, 'ADDITIONALATTRIBUTES', ''),
(54, 7, 'READONLY', 'YES'),
(55, 7, 'POPUPLABEL', '...'),
(56, 7, 'DESCRIPTION', ''),
(57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(58, 8, 'NAME', 'Submit'),
(59, 8, 'LABEL', 'Submit'),
(60, 8, 'CAPTION', ''),
(61, 8, 'RESET', 'YES'),
(62, 8, 'RESETLABEL', 'Reset'),
(63, 8, 'ADDITIONALATTRIBUTES', ''),
(64, 9, 'NAME', 'Footer'),
(65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(68, 10, 'NAME', 'FullName'),
(69, 10, 'CAPTION', 'Full Name'),
(70, 10, 'REQUIRED', 'YES'),
(71, 10, 'SIZE', '20'),
(72, 10, 'MAXSIZE', ''),
(73, 10, 'VALIDATIONRULE', 'none'),
(74, 10, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(75, 10, 'ADDITIONALATTRIBUTES', ''),
(76, 10, 'DEFAULTVALUE', ''),
(77, 10, 'DESCRIPTION', ''),
(78, 10, 'VALIDATIONEXTRA', ''),
(79, 11, 'NAME', 'Header'),
(80, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(81, 12, 'NAME', 'Email'),
(82, 12, 'CAPTION', 'E-mail'),
(83, 12, 'REQUIRED', 'YES'),
(84, 12, 'SIZE', '20'),
(85, 12, 'MAXSIZE', ''),
(86, 12, 'VALIDATIONRULE', 'email'),
(87, 12, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(88, 12, 'ADDITIONALATTRIBUTES', ''),
(89, 12, 'DEFAULTVALUE', ''),
(90, 12, 'DESCRIPTION', ''),
(91, 12, 'VALIDATIONEXTRA', ''),
(92, 13, 'NAME', 'CompanySize'),
(93, 13, 'CAPTION', 'Number of Employees'),
(94, 13, 'SIZE', ''),
(95, 13, 'MULTIPLE', 'NO'),
(96, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(97, 13, 'REQUIRED', 'YES'),
(98, 13, 'ADDITIONALATTRIBUTES', ''),
(99, 13, 'DESCRIPTION', ''),
(100, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(101, 14, 'NAME', 'Position'),
(102, 14, 'CAPTION', 'Position'),
(103, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(104, 14, 'FLOW', 'HORIZONTAL'),
(105, 14, 'REQUIRED', 'YES'),
(106, 14, 'ADDITIONALATTRIBUTES', ''),
(107, 14, 'DESCRIPTION', ''),
(108, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(109, 15, 'NAME', 'ContactBy'),
(110, 15, 'CAPTION', 'How should we contact you?'),
(111, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(112, 15, 'FLOW', 'HORIZONTAL'),
(113, 15, 'REQUIRED', 'NO'),
(114, 15, 'ADDITIONALATTRIBUTES', ''),
(115, 15, 'DESCRIPTION', ''),
(116, 15, 'VALIDATIONMESSAGE', ''),
(117, 16, 'NAME', 'ContactWhen'),
(118, 16, 'CAPTION', 'When would you like to be contacted?'),
(119, 16, 'REQUIRED', 'YES'),
(120, 16, 'DATEFORMAT', 'dd.mm.yyyy'),
(121, 16, 'CALENDARLAYOUT', 'POPUP'),
(122, 16, 'ADDITIONALATTRIBUTES', ''),
(123, 16, 'READONLY', 'YES'),
(124, 16, 'POPUPLABEL', '...'),
(125, 16, 'DESCRIPTION', ''),
(126, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(127, 17, 'NAME', 'Submit'),
(128, 17, 'LABEL', 'Submit'),
(129, 17, 'CAPTION', ''),
(130, 17, 'RESET', 'YES'),
(131, 17, 'RESETLABEL', 'Reset'),
(132, 17, 'ADDITIONALATTRIBUTES', ''),
(133, 18, 'NAME', 'Footer'),
(134, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(135, 19, 'NAME', 'Page1'),
(136, 19, 'NEXTBUTTON', 'Next >'),
(137, 19, 'PREVBUTTON', 'Prev'),
(138, 19, 'ADDITIONALATTRIBUTES', ''),
(139, 20, 'NAME', 'Page2'),
(140, 20, 'NEXTBUTTON', 'Next >'),
(141, 20, 'PREVBUTTON', 'Prev'),
(142, 20, 'ADDITIONALATTRIBUTES', ''),
(143, 21, 'NAME', 'CompanyHeader'),
(144, 21, 'TEXT', 'Please tell us a little about your company.'),
(145, 22, 'NAME', 'ContactHeader'),
(146, 22, 'TEXT', 'Please let us know how and when to contact you.'),
(147, 1, 'VALIDATIONEXTRA', ''),
(148, 3, 'VALIDATIONEXTRA', ''),
(149, 10, 'VALIDATIONEXTRA', ''),
(150, 12, 'VALIDATIONEXTRA', ''),
(151, 8, 'DISPLAYPROGRESS', 'NO'),
(152, 8, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(153, 17, 'DISPLAYPROGRESS', 'NO'),
(154, 17, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(155, 19, 'DISPLAYPROGRESS', 'NO'),
(156, 19, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(157, 20, 'DISPLAYPROGRESS', 'NO'),
(158, 20, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(214, 27, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(213, 27, 'PREVBUTTON', 'PREV'),
(212, 27, 'RESETLABEL', '取消'),
(211, 27, 'RESET', 'YES'),
(320, 37, 'COLS', '50'),
(210, 27, 'CAPTION', ''),
(209, 27, 'LABEL', '提交'),
(208, 27, 'NAME', 'Submit'),
(207, 26, 'EMAILATTACH', ''),
(206, 26, 'ADDITIONALATTRIBUTES', ''),
(205, 26, 'MAXSIZE', ''),
(204, 26, 'SIZE', '20'),
(203, 26, 'VALIDATIONMESSAGE', 'Invalid Input'),
(202, 26, 'VALIDATIONRULE', 'none'),
(201, 26, 'VALIDATIONEXTRA', ''),
(200, 26, 'REQUIRED', 'YES'),
(199, 26, 'DESCRIPTION', ''),
(198, 26, 'DEFAULTVALUE', ''),
(197, 26, 'CAPTION', '主题'),
(196, 26, 'NAME', 'Title'),
(215, 27, 'DISPLAYPROGRESS', 'YES'),
(216, 27, 'ADDITIONALATTRIBUTES', ''),
(217, 27, 'EMAILATTACH', ''),
(319, 37, 'VALIDATIONMESSAGE', 'Invalid Input'),
(318, 37, 'VALIDATIONRULE', 'none'),
(317, 37, 'VALIDATIONEXTRA', ''),
(316, 37, 'REQUIRED', 'YES'),
(315, 37, 'DESCRIPTION', ''),
(314, 37, 'DEFAULTVALUE', ''),
(313, 37, 'CAPTION', '内容'),
(312, 37, 'NAME', 'content'),
(281, 33, 'EMAILATTACH', ''),
(280, 33, 'ADDITIONALATTRIBUTES', ''),
(279, 33, 'MAXSIZE', ''),
(278, 33, 'SIZE', '20'),
(277, 33, 'VALIDATIONMESSAGE', 'Invalid Input'),
(276, 33, 'VALIDATIONRULE', 'numeric'),
(275, 33, 'VALIDATIONEXTRA', ''),
(274, 33, 'REQUIRED', 'YES'),
(273, 33, 'DESCRIPTION', ''),
(272, 33, 'DEFAULTVALUE', ''),
(271, 33, 'CAPTION', '联系电话'),
(270, 33, 'NAME', 'contact'),
(323, 37, 'ADDITIONALATTRIBUTES', ''),
(324, 37, 'EMAILATTACH', ''),
(322, 37, 'WYSIWYG', 'NO'),
(321, 37, 'ROWS', '5');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_submissions`
--

CREATE TABLE `urhc6_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `urhc6_rsform_submissions`
--

INSERT INTO `urhc6_rsform_submissions` (`SubmissionId`, `FormId`, `DateSubmitted`, `UserIp`, `Username`, `UserId`, `Lang`, `confirmed`) VALUES
(1, 1, '2012-10-01 18:31:21', '127.0.0.1', '', '0', 'zh-CN', 1),
(2, 4, '2012-10-01 18:37:36', '127.0.0.1', '', '0', 'zh-CN', 1),
(3, 4, '2012-10-01 19:06:43', '127.0.0.1', '', '0', 'zh-CN', 1),
(4, 4, '2012-10-01 19:07:34', '127.0.0.1', '', '0', 'zh-CN', 1),
(5, 4, '2014-07-30 17:36:03', '127.0.0.1', '', '0', 'zh-CN', 1),
(6, 4, '2014-07-30 17:36:21', '127.0.0.1', '', '0', 'en-GB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_submission_columns`
--

CREATE TABLE `urhc6_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_submission_values`
--

CREATE TABLE `urhc6_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `urhc6_rsform_submission_values`
--

INSERT INTO `urhc6_rsform_submission_values` (`SubmissionValueId`, `FormId`, `SubmissionId`, `FieldName`, `FieldValue`) VALUES
(1, 1, 1, 'FullName', 'do nhat quang'),
(2, 1, 1, 'Email', 'donhatquang@gmail.com'),
(3, 1, 1, 'ContactBy', 'E-mail\nNewsletter'),
(4, 1, 1, 'Submit', 'Submit'),
(5, 1, 1, 'formId', '1'),
(6, 4, 2, 'Title', 'test'),
(7, 4, 2, 'Submit', '提交'),
(8, 4, 2, 'formId', '4'),
(9, 4, 3, 'Title', 'test'),
(10, 4, 3, 'content', 'test'),
(11, 4, 3, 'contact', '54353443'),
(12, 4, 3, 'Submit', '提交'),
(13, 4, 3, 'formId', '4'),
(14, 4, 4, 'Title', 'dsadas'),
(15, 4, 4, 'content', 'dsa'),
(16, 4, 4, 'contact', '53534'),
(17, 4, 4, 'Submit', '提交'),
(18, 4, 4, 'formId', '4'),
(19, 4, 5, 'Title', 'donhatquang'),
(20, 4, 5, 'content', 'quang'),
(21, 4, 5, 'contact', '13661755647'),
(22, 4, 5, 'Submit', '提交'),
(23, 4, 5, 'formId', '4'),
(24, 4, 6, 'Title', 'sdsa'),
(25, 4, 6, 'content', 'sadas'),
(26, 4, 6, 'contact', '343423'),
(27, 4, 6, 'Submit', '提交'),
(28, 4, 6, 'formId', '4');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_rsform_translations`
--

CREATE TABLE `urhc6_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_schemas`
--

CREATE TABLE `urhc6_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_schemas`
--

INSERT INTO `urhc6_schemas` (`extension_id`, `version_id`) VALUES
(700, '1.7.0-2011-06-06-2');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_session`
--

CREATE TABLE `urhc6_session` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` varchar(20480) DEFAULT NULL,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_session`
--

INSERT INTO `urhc6_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('db1acc2e55bc1639fd60add66350f6f3', 0, 1, '1412051189', '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1412051188;s:18:"session.timer.last";i:1412051188;s:17:"session.timer.now";i:1412051189;s:22:"session.client.browser";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"42b6c214d6eacf02f5cf2b364de8a828";}popupWidth|s:3:"400";bar_font_color|s:6:"333333";bar_font_size|s:2:"12";bar_bg_color|s:6:"E4E4E4";bar_padding_lr|s:2:"10";bar_padding_tb|s:1:"6";result1_font_color|s:6:"333333";result2_font_color|s:6:"333333";result1_link_font_color|s:6:"333333";result2_link_font_color|s:6:"333333";result1_readmore_font_color|s:6:"333333";result2_readmore_font_color|s:6:"333333";result_font_size|s:2:"12";result1_bg_color|s:6:"ffffff";result2_bg_color|s:6:"f2f2f2";result1_bg_hover_color|s:6:"ffffff";result2_bg_hover_color|s:6:"ffffff";result_padding_lr|s:2:"14";result_padding_tb|s:1:"6";searchword_color|s:6:"B1B1B1";readmore_text|s:12:"Read More...";icon_ml|s:3:"150";icon_mt|s:3:"-18";icon_height|s:1:"7";popup_ml|s:4:"-210";popup_mb|s:2:"10";popup_mr|s:1:"0";popup_mt|s:2:"13";bar_border_color|s:6:"EDECEC";result1_border_color|s:6:"EDECEC";result2_border_color|s:6:"EDECEC";', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_shoutbox`
--

CREATE TABLE `urhc6_shoutbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sbid` int(2) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8,
  `url` varchar(225) NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `urhc6_shoutbox`
--

INSERT INTO `urhc6_shoutbox` (`id`, `sbid`, `time`, `name`, `avatar`, `text`, `url`, `ip`) VALUES
(1, 0, 1339322183, 'guest_9418', '0', 'dsadsa', '', '202.120.61.141');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_tags`
--

CREATE TABLE `urhc6_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(11) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `tag_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1: Tag 2: Section',
  `title` varchar(255) NOT NULL DEFAULT 'Tag Title',
  `alias` varchar(255) NOT NULL DEFAULT 'Tag Alias',
  `description` mediumtext NOT NULL COMMENT 'Tag Description',
  `state` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'State',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created Date and Time',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Created By User ID, if Member',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'Created By Alias',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modified Date and Time',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Modified By User ID',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Checked Out User ID',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Checked Out Date and Time',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish Up Date and Time',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish Down Date and Time',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if response item is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the response.',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'Ordering within the Content Item.',
  PRIMARY KEY (`id`),
  KEY `idx_type_title` (`tag_type`,`title`),
  KEY `idx_type_alias` (`tag_type`,`alias`),
  KEY `idx_state` (`state`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_tag_content`
--

CREATE TABLE `urhc6_tag_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'Tag to Primary Key for Content',
  `extension` varchar(50) NOT NULL DEFAULT '' COMMENT 'Joomla! Extension associated with this Tag',
  `content_id` int(10) unsigned NOT NULL COMMENT 'Tag to Primary Key for Content',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`tag_id`),
  KEY `idx_extension` (`extension`,`content_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_template_styles`
--

CREATE TABLE `urhc6_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `urhc6_template_styles`
--

INSERT INTO `urhc6_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}'),
(7, 'callie_rush', 0, '1', 'callie_rush', '{"xml_s5_highlight":"036C9E","xml_s5_facebook":"javascript:;","xml_s5_twitter":"javascript:;","xml_s5_google":"javascript:;","xml_s5_rss":"javascript:;","xml_s5_font_resizer":"no","xml_s5_fonts":"Arial","xml_s5_fixed_fluid":"px","xml_s5_body_width":"980","xml_s5_left_width":"240","xml_s5_left_inset_width":"200","xml_s5_right_width":"240","xml_s5_right_inset_width":"200","xml_s5_show_menu":"show","s5_menu_type":"mainmenu","s5_maxdepth":"10","s5_duration":"1000","s5_hide_delay":"500","s5_opacity":"85","s5_orientation":"horizontal","s5_effect":"2","xml_s5_top_row1_calculation":"automatic","xml_s5_top_row1_manual_widths":"15,25,20,10,13,17","xml_s5_top_row2_calculation":"automatic","xml_s5_top_row2_manual_widths":"15,25,20,10,13,17","xml_s5_top_row3_calculation":"automatic","xml_s5_top_row3_manual_widths":"15,25,20,10,13,17","xml_s5_above_columns_calculation":"automatic","xml_above_columns_manual_widths":"15,25,20,10,13,17","xml_s5_middle_top_calculation":"automatic","xml_s5_middle_top_manual_widths":"15,25,20,10,13,17","xml_s5_above_body_calculation":"automatic","xml_s5_above_body_manual_widths":"15,25,20,10,13,17","xml_s5_middle_bottom_calculation":"automatic","xml_s5_middle_bottom_manual_widths":"15,25,20,10,13,17","xml_s5_below_body_calculation":"automatic","xml_s5_below_body_manual_widths":"15,25,20,10,13,17","xml_s5_below_columns_calculation":"automatic","xml_below_columns_manual_widths":"15,25,20,10,13,17","xml_s5_bottom_row1_calculation":"automatic","xml_s5_bottom_row1_manual_widths":"15,25,20,10,13,17","xml_s5_bottom_row2_calculation":"automatic","xml_s5_bottom_row2_manual_widths":"15,25,20,10,13,17","xml_s5_bottom_row3_calculation":"2","xml_s5_bottom_row3_manual_widths":"60,40,0,0,0,0","xml_s5_drop_down_calculation":"automatic","xml_s5_drop_down_manual_widths":"15,25,20,10,13,17","xml_s5_mobile_device_enable_disable":"disabled","xml_s5_mobile_device_menu_subs":"first","xml_s5_mobile_device_menu_title":"Select Menu","xml_s5_mobile_device_login":"enabled","xml_s5_mobile_device_register":"enabled","xml_s5_mobile_device_pc_text":"Show me the PC Version","xml_s5_thirdparty":"enabled","xml_s5_seourl":"","xml_s5_additional_scripts1":"","xml_s5_additional_scripts2":"","xml_s5_hide_component_items":["101"],"xml_s5_ie6plugin":"no","xml_s5_scrolltotop":"yes","xml_s5_login":"Login","xml_s5_loginout":"Logout","xml_s5_register":"Register","xml_s5_multibox":"yes","xml_s5_multioverlay":"yes","xml_s5_multicontrols":"yes","xml_s5_tooltips":"no","xml_s5_lazyload":"all","xml_s5_lr_tab_border":"838383","xml_s5_lr_tab_color":"FFFFFF","xml_s5_lr_tab_font":"323232","xml_s5_lr_tab1_text":"","xml_s5_lr_tab1_vp":"30","xml_s5_lr_tab1_height":"100","xml_s5_lr_tab1_class":"","xml_s5_lr_tab1_click":"","xml_s5_lr_tab1_left_right":"right","xml_s5_lr_tab2_text":"","xml_s5_lr_tab2_vp":"30","xml_s5_lr_tab2_height":"100","xml_s5_lr_tab2_class":"","xml_s5_lr_tab2_click":"","xml_s5_lr_tab2_left_right":"right","xml_s5_drop_down_overlay":"overlay","xml_s5_drop_down_width":"full","xml_s5_drop_down_button_open_text":"Open Panel","xml_s5_drop_down_button_close_text":"Close Panel","xml_s5_drop_down_button_width":"124","xml_s5_drop_down_button_height":"26","xml_s5_drop_down_button_text_color":"1E1E1E","xml_s5_drop_down_button_text_hover_color":"666666","xml_s5_drop_down_button_text_size":"9","xml_s5_drop_down_button_text_weight":"bold","xml_s5_drop_down_button_gradient_start":"FFFFFF","xml_s5_drop_down_button_gradient_stop":"E5E5E5","xml_s5_drop_down_button_border_size":"1","xml_s5_drop_down_button_border_color":"999999","xml_s5_drop_down_button_radius_size":"16","xml_s5_drop_down_button_shadow":"show","xml_s5_drop_down_button_shadow_size":"2","xml_s5_drop_down_button_shadow_opacity":"0.2","xml_s5_drop_down_button_position":"center","xml_s5_drop_down_background":"FFFFFF","xml_s5_drop_down_background_opacity":"0.95","xml_s5_drop_down_border_size":"2","xml_s5_drop_down_border_color":"999999","xml_s5_drop_down_shadow":"show","xml_s5_drop_down_shadow_size":"2","xml_s5_drop_down_shadow_opacity":"0.2"}');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_updates`
--

CREATE TABLE `urhc6_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_update_categories`
--

CREATE TABLE `urhc6_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_update_sites`
--

CREATE TABLE `urhc6_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `urhc6_update_sites`
--

INSERT INTO `urhc6_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_update_sites_extensions`
--

CREATE TABLE `urhc6_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `urhc6_update_sites_extensions`
--

INSERT INTO `urhc6_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_usergroups`
--

CREATE TABLE `urhc6_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `urhc6_usergroups`
--

INSERT INTO `urhc6_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 6, 13, 'Registered'),
(3, 2, 7, 12, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 14, 15, 'Super Users'),
(9, 1, 16, 17, '组长');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_users`
--

CREATE TABLE `urhc6_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `urhc6_users`
--

INSERT INTO `urhc6_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'donhatquang@gmail.com', '8f8f91bd159f6c212d432e0cf9d0d820:jB5WwXYq9jMMAJx372JC35ju5UqRL94C', 'deprecated', 0, 1, '2011-09-21 09:07:55', '2014-09-23 03:17:52', '', '{"editor":"","timezone":"","language":"","admin_style":"","admin_language":"","helpsite":""}'),
(43, '杜日光', 'donhatquang', 'donhatquang12@gmail.com', 'c00a894161d227498d79e00cd9b1d95a:kLuElG0CxUKpJXosXsvLE9CMRoDcYc0i', '', 0, 0, '2012-10-31 13:05:24', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}'),
(44, 'caopei', 'caopei', 'chaopay2006@gmail.com', '8fafb8de4497d310f4079e165e6d9379:g5iO7aDKrYVRRQe0dIqUmLjdmOZ9Bw9G', '', 0, 0, '2013-07-09 05:27:09', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_user_profiles`
--

CREATE TABLE `urhc6_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_user_usergroup_map`
--

CREATE TABLE `urhc6_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urhc6_user_usergroup_map`
--

INSERT INTO `urhc6_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(43, 2),
(44, 2);

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_viewlevels`
--

CREATE TABLE `urhc6_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `urhc6_viewlevels`
--

INSERT INTO `urhc6_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `urhc6_weblinks`
--

CREATE TABLE `urhc6_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `urhc6_weblinks`
--

INSERT INTO `urhc6_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 31, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":0}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 31, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 8, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 31, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, 1, '{}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 31, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":0}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 31, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 1, '{"target":0}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 31, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 1, '{"target":0}', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
