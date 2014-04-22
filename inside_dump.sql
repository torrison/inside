-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2014 at 10:35 PM
-- Server version: 5.5.23
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo_inputs`
--

CREATE TABLE IF NOT EXISTS `demo_inputs` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `select_input` int(2) NOT NULL,
  `text` varchar(128) NOT NULL,
  `text_ext` varchar(256) NOT NULL,
  `select_checkbox` int(1) NOT NULL,
  `user_select` int(8) NOT NULL,
  `date` date NOT NULL,
  `ac_select_from_table` int(8) NOT NULL,
  `checkbox` int(1) NOT NULL,
  `html` text NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `ip` varbinary(16) NOT NULL,
  `link` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `text_noedit` varchar(256) NOT NULL,
  `unix_time` int(128) NOT NULL,
  `textarea` varchar(1024) NOT NULL,
  `serialize_arr` varchar(1024) NOT NULL,
  `parent_select_custom` int(8) NOT NULL,
  `select_from_table` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `demo_inputs`
--


-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'content', 'Content Manager'),
(4, 'owner', 'Owner'),
(5, 'partner', 'Partner'),
(6, 'client', 'Client');

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_customs`
--

CREATE TABLE IF NOT EXISTS `inside_access_customs` (
  `access_customs_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_customs_custom_id` int(8) NOT NULL,
  `access_customs_group_id` int(8) NOT NULL,
  `access_customs_view` int(1) NOT NULL,
  `access_customs_edit` int(1) NOT NULL,
  PRIMARY KEY (`access_customs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `inside_access_customs`
--

INSERT INTO `inside_access_customs` (`access_customs_id`, `access_customs_custom_id`, `access_customs_group_id`, `access_customs_view`, `access_customs_edit`) VALUES
(26, 3, 3, 1, 0),
(38, 3, 1, 1, 1),
(37, 2, 1, 1, 1),
(36, 1, 1, 1, 1),
(25, 2, 3, 0, 1),
(24, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_rows`
--

CREATE TABLE IF NOT EXISTS `inside_access_rows` (
  `access_rows_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_rows_table` varchar(32) NOT NULL,
  `access_rows_row_id` int(8) NOT NULL,
  `access_rows_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_rows_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inside_access_rows`
--


-- --------------------------------------------------------

--
-- Table structure for table `inside_access_system_zones`
--

CREATE TABLE IF NOT EXISTS `inside_access_system_zones` (
  `access_system_zones_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_system_zones_zone_id` int(8) NOT NULL,
  `access_system_zones_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_system_zones_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=317 ;

--
-- Dumping data for table `inside_access_system_zones`
--

INSERT INTO `inside_access_system_zones` (`access_system_zones_id`, `access_system_zones_zone_id`, `access_system_zones_group_id`) VALUES
(272, 21, 1),
(271, 4, 1),
(270, 5, 1),
(269, 10, 1),
(268, 12, 1),
(267, 9, 1),
(266, 14, 1),
(265, 8, 1),
(264, 7, 1),
(263, 13, 1),
(262, 11, 1),
(261, 6, 1),
(260, 16, 1),
(259, 3, 1),
(258, 18, 1),
(257, 17, 1),
(256, 22, 1),
(255, 23, 1),
(254, 24, 1),
(253, 1, 1),
(252, 2, 1),
(316, 21, 3),
(315, 4, 3),
(314, 5, 3),
(313, 10, 3),
(312, 12, 3),
(311, 9, 3),
(310, 14, 3),
(309, 8, 3),
(308, 7, 3),
(307, 13, 3),
(306, 11, 3),
(305, 6, 3),
(304, 16, 3),
(303, 3, 3),
(302, 18, 3),
(301, 17, 3),
(300, 22, 3),
(299, 23, 3),
(298, 24, 3),
(297, 1, 3),
(296, 2, 3),
(251, 19, 1),
(295, 19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_tables`
--

CREATE TABLE IF NOT EXISTS `inside_access_tables` (
  `access_tables_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_tables_table_id` int(8) NOT NULL,
  `access_tables_group_id` int(8) NOT NULL,
  `access_tables_view` int(1) NOT NULL,
  `access_tables_edit` int(1) NOT NULL,
  PRIMARY KEY (`access_tables_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=339 ;

--
-- Dumping data for table `inside_access_tables`
--

INSERT INTO `inside_access_tables` (`access_tables_id`, `access_tables_table_id`, `access_tables_group_id`, `access_tables_view`, `access_tables_edit`) VALUES
(338, 4, 1, 0, 0),
(337, 3, 1, 0, 0),
(336, 5, 1, 0, 0),
(335, 16, 1, 0, 0),
(334, 17, 1, 0, 0),
(333, 15, 1, 0, 0),
(332, 14, 1, 0, 0),
(331, 13, 1, 0, 0),
(330, 18, 1, 0, 0),
(329, 20, 1, 0, 0),
(328, 19, 1, 0, 0),
(327, 12, 1, 0, 0),
(326, 11, 1, 0, 0),
(325, 10, 1, 0, 0),
(324, 9, 1, 0, 0),
(323, 8, 1, 0, 0),
(322, 7, 1, 1, 1),
(321, 6, 1, 1, 1),
(320, 2, 1, 1, 1),
(319, 21, 1, 1, 0),
(211, 3, 3, 0, 0),
(210, 5, 3, 0, 0),
(209, 16, 3, 0, 0),
(208, 17, 3, 0, 0),
(207, 15, 3, 0, 0),
(206, 14, 3, 0, 0),
(205, 13, 3, 0, 0),
(204, 18, 3, 0, 0),
(203, 20, 3, 0, 0),
(202, 19, 3, 0, 0),
(201, 12, 3, 0, 0),
(200, 11, 3, 0, 0),
(199, 10, 3, 0, 0),
(198, 9, 3, 0, 0),
(197, 8, 3, 0, 0),
(196, 7, 3, 0, 0),
(195, 6, 3, 0, 0),
(194, 2, 3, 1, 0),
(193, 21, 3, 0, 0),
(192, 1, 3, 1, 1),
(318, 1, 1, 0, 1),
(212, 4, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_tabs`
--

CREATE TABLE IF NOT EXISTS `inside_access_tabs` (
  `access_tabs_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_tabs_tab_id` int(8) NOT NULL,
  `access_tabs_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_tabs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inside_access_tabs`
--


-- --------------------------------------------------------

--
-- Table structure for table `inside_access_top_menu`
--

CREATE TABLE IF NOT EXISTS `inside_access_top_menu` (
  `access_top_menu_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_top_menu_block_id` int(8) NOT NULL,
  `access_top_menu_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_top_menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1317 ;

--
-- Dumping data for table `inside_access_top_menu`
--

INSERT INTO `inside_access_top_menu` (`access_top_menu_id`, `access_top_menu_block_id`, `access_top_menu_group_id`) VALUES
(1315, 49, 1),
(1314, 14, 1),
(1313, 7, 1),
(1312, 30, 1),
(1311, 34, 1),
(1310, 41, 1),
(1309, 28, 1),
(1308, 11, 1),
(1307, 9, 1),
(1306, 17, 1),
(1305, 29, 1),
(1304, 2, 1),
(1303, 45, 1),
(706, 37, 3),
(705, 35, 3),
(1302, 19, 1),
(1301, 46, 1),
(1300, 50, 1),
(1299, 56, 1),
(1298, 52, 1),
(1297, 55, 1),
(1296, 44, 1),
(1295, 47, 1),
(704, 36, 3),
(703, 20, 3),
(1294, 38, 1),
(1293, 3, 1),
(1292, 18, 1),
(1291, 48, 1),
(1290, 5, 1),
(1289, 23, 1),
(1288, 22, 1),
(1287, 21, 1),
(1286, 54, 1),
(702, 40, 3),
(1285, 8, 1),
(1284, 1, 1),
(701, 39, 3),
(1283, 37, 1),
(1282, 35, 1),
(707, 21, 3),
(708, 3, 3),
(709, 38, 3),
(710, 34, 3),
(711, 4, 3),
(1281, 31, 1),
(1280, 36, 1),
(1279, 51, 1),
(1278, 20, 1),
(1277, 42, 1),
(1276, 40, 1),
(1275, 43, 1),
(1274, 39, 1),
(1273, 53, 1),
(1272, 10, 1),
(1271, 26, 1),
(1270, 24, 1),
(1269, 12, 1),
(1268, 16, 1),
(1267, 15, 1),
(1266, 27, 1),
(1265, 25, 1),
(1316, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inside_customs`
--

CREATE TABLE IF NOT EXISTS `inside_customs` (
  `customs_id` int(8) NOT NULL AUTO_INCREMENT,
  `customs_name` varchar(32) NOT NULL,
  `customs_description` varchar(256) NOT NULL,
  PRIMARY KEY (`customs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `inside_customs`
--

INSERT INTO `inside_customs` (`customs_id`, `customs_name`, `customs_description`) VALUES
(1, 'empty_test', 'Test of Custom Interfaces System'),
(2, 'inside_access', 'Interface to add Access Rules for Users Groups'),
(3, 'users_adv', 'Users Add and Change Pass system for IouAuth UserDB');

-- --------------------------------------------------------

--
-- Table structure for table `inside_news`
--

CREATE TABLE IF NOT EXISTS `inside_news` (
  `inside_news_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `inside_news_name` varchar(64) NOT NULL,
  `inside_news_datetime` datetime NOT NULL,
  `inside_news_text` varchar(2048) NOT NULL,
  `inside_news_author` varchar(64) NOT NULL,
  `inside_news_image` varchar(256) NOT NULL,
  PRIMARY KEY (`inside_news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inside_news`
--

INSERT INTO `inside_news` (`inside_news_id`, `inside_news_name`, `inside_news_datetime`, `inside_news_text`, `inside_news_author`, `inside_news_image`) VALUES
(1, 'First Message!', '0000-00-00 00:00:00', '<p><strong>In this panel you could make messages for your teammates. It is to Easy.</strong></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="" src="/files/uploads/images/bs111.png" style="width: 700px; height: 147px;" /></p>\n\n<p>This <strong>Inside BLOG</strong> helps your team know all inside updates.</p>\n', 'Root', 'jb_things_icon.jpg'),
(2, 'Welcome to Inside BackEnd System', '2013-06-11 11:11:11', '<p>This is your Lucky Time.</p>\n\n<p>&nbsp;</p>\n\n<p>You have a chance to use this system. Try it:</p>\n\n<p>- Admin Generator</p>\n\n<p>- Access Fields</p>\n\n<p>- Window System</p>\n\n<p>- Top Menu</p>\n\n<p>- Inside Blog</p>\n\n<p>- Custom programming</p>\n\n<p>&nbsp;</p>\n\n<p>Hava a nice explorering.</p>\n', 'A. Torrison', 'KleinDualInsideOut.gif');

-- --------------------------------------------------------

--
-- Table structure for table `inside_news_comments`
--

CREATE TABLE IF NOT EXISTS `inside_news_comments` (
  `news_comments_id` int(8) NOT NULL AUTO_INCREMENT,
  `news_comments_new_id` int(6) NOT NULL,
  `news_comments_user_id` int(8) NOT NULL,
  `news_comments_user_name` varchar(32) NOT NULL,
  `news_comments_content` varchar(2048) NOT NULL,
  `news_comments_datetime` datetime NOT NULL,
  `news_comments_invisible` int(11) NOT NULL,
  PRIMARY KEY (`news_comments_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `inside_news_comments`
--

INSERT INTO `inside_news_comments` (`news_comments_id`, `news_comments_new_id`, `news_comments_user_id`, `news_comments_user_name`, `news_comments_content`, `news_comments_datetime`, `news_comments_invisible`) VALUES
(8, 1, 1, 'root ', 'Hi to All !!!', '2013-06-10 18:52:26', 0),
(7, 1, 1, 'root ', 'First Test Comment. And ... Its Works!<br /><br /><br />And &lt;br /&gt; works =)', '2013-06-10 18:51:21', 0),
(9, 1, 1, 'root ', 'More Comments ... More !!!', '2013-06-10 18:52:40', 0),
(10, 1, 1, 'root ', 'And Comments are counting. Nice.', '2013-06-10 19:04:12', 0),
(11, 2, 2, ' ', 'First Comment Here =)', '2013-06-11 18:24:20', 0),
(12, 2, 1, 'root ', '333 =)', '2013-07-11 17:07:47', 0),
(13, 2, 1, 'root ', '0)', '2013-07-11 17:43:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inside_row_chat`
--

CREATE TABLE IF NOT EXISTS `inside_row_chat` (
  `row_chat_id` int(8) NOT NULL AUTO_INCREMENT,
  `row_chat_table` varchar(32) NOT NULL,
  `row_chat_row_id` int(8) NOT NULL,
  `row_chat_user_id` int(8) NOT NULL,
  `row_chat_user_name` varchar(32) NOT NULL,
  `row_chat_content` varchar(2048) NOT NULL,
  `row_chat_datetime` datetime NOT NULL,
  `row_chat_invisible` int(1) NOT NULL,
  PRIMARY KEY (`row_chat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inside_row_chat`
--


-- --------------------------------------------------------

--
-- Table structure for table `inside_system_zones`
--

CREATE TABLE IF NOT EXISTS `inside_system_zones` (
  `system_zones_id` int(8) NOT NULL AUTO_INCREMENT,
  `system_zones_name` varchar(32) NOT NULL,
  `system_zones_description` varchar(256) NOT NULL,
  PRIMARY KEY (`system_zones_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `inside_system_zones`
--

INSERT INTO `inside_system_zones` (`system_zones_id`, `system_zones_name`, `system_zones_description`) VALUES
(1, 'inside_index', 'Index Inside Page'),
(2, 'inside_custom', 'Custom Interface any page'),
(3, 'inside_table', 'Table CRUD any'),
(4, 'pdg_view', 'Inside View Form'),
(5, 'pdg_edit', 'Inside Edit Form'),
(6, 'pdg_add', 'Inside Add Form'),
(7, 'pdg_ajax_crud', 'AJAX View Get data any'),
(10, 'pdg_ajax_view', 'AJAX Get Inside View Form'),
(8, 'pdg_ajax_crud_custom', 'Get AJAX View for Custom Interface'),
(9, 'pdg_ajax_edit', 'AJAX Get Inside Edit Form'),
(11, 'pdg_ajax_add', 'AJAX Get Inside Add Form'),
(12, 'pdg_ajax_edit_request', 'AJAX Edit Update Request'),
(13, 'pdg_ajax_add_request', 'AJAX Add Insert Request'),
(14, 'pdg_ajax_del_request', 'AJAX Delete Request'),
(22, 'inside_news_comments', 'News Comments'),
(16, 'inside_test', 'Inside Test Page'),
(17, 'inside_page_graph', 'Test Page Graph'),
(18, 'inside_page_news', 'News Page'),
(19, 'ajax_inside_pages_news', 'News with Pages'),
(21, 'root_system_zone', 'Root zone'),
(23, 'inside_news_add_comment', 'Add News Comments'),
(24, 'inside_load_model', 'URL For Load Models via AJAX');

-- --------------------------------------------------------

--
-- Table structure for table `inside_tables`
--

CREATE TABLE IF NOT EXISTS `inside_tables` (
  `tables_id` int(8) NOT NULL AUTO_INCREMENT,
  `tables_name` varchar(32) NOT NULL,
  `tables_description` varchar(256) NOT NULL,
  PRIMARY KEY (`tables_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `inside_tables`
--

INSERT INTO `inside_tables` (`tables_id`, `tables_name`, `tables_description`) VALUES
(1, 'content', 'CMS Content'),
(2, 'groups', 'Ion Auth Table'),
(3, 'users', 'Ion Auth Table'),
(4, 'users_groups', 'Ion Auth Table (Hide)'),
(5, 'login_attempts', 'Ion Auth Table (Hide)'),
(6, 'inside_access_customs', 'Customs-Groups Access Rel (System)'),
(7, 'inside_access_rows', 'Rows-Groups Access Rel (System)'),
(8, 'inside_access_system_zones', 'System_Zones-Groups Access Rel (System)'),
(9, 'inside_access_tables', 'Tables-Groups Access Rel (System)'),
(10, 'inside_access_tabs', 'Tables_Tabs-Groups Access Rel (System)'),
(11, 'inside_access_top_menu', 'Top_Menu-Groups Access Rel (System)'),
(12, 'inside_customs', 'System parts (System)'),
(13, 'inside_system_zones', 'System parts (System)'),
(14, 'inside_tables', 'System parts (System)'),
(15, 'inside_tabs', 'System parts (System)'),
(16, 'inside_top_menu', 'Inside Top-Menu'),
(17, 'inside_tasks', 'Task Manager (ERP)'),
(18, 'inside_row_chat', 'Every Row loging and user chat'),
(19, 'inside_news', 'Inside Blog'),
(20, 'inside_news_comments', 'Inside Blog Comments'),
(21, 'demo_parfums', 'Demo table from Flower.Net.Ua');

-- --------------------------------------------------------

--
-- Table structure for table `inside_tabs`
--

CREATE TABLE IF NOT EXISTS `inside_tabs` (
  `tabs_id` int(8) NOT NULL AUTO_INCREMENT,
  `tabs_table` varchar(32) NOT NULL,
  `tabs_sysname` varchar(32) NOT NULL,
  `tabs_name` varchar(32) NOT NULL,
  `tabs_description` varchar(256) NOT NULL,
  `tabs_priority` int(2) NOT NULL,
  PRIMARY KEY (`tabs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inside_tabs`
--


-- --------------------------------------------------------

--
-- Table structure for table `inside_tasks`
--

CREATE TABLE IF NOT EXISTS `inside_tasks` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `pdg_color` varchar(32) NOT NULL,
  `fio` varchar(128) NOT NULL,
  `tel` varchar(128) NOT NULL,
  `datetime` datetime NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `hot` int(1) NOT NULL,
  `email` varchar(128) NOT NULL,
  `orgs` varchar(2048) NOT NULL,
  `people` varchar(2048) NOT NULL,
  `content` varchar(4096) NOT NULL,
  `chat` text NOT NULL,
  `user_id` int(7) NOT NULL,
  `performer` int(7) NOT NULL,
  `status` int(2) NOT NULL,
  `priority` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `income` int(8) NOT NULL,
  `dotime` int(8) NOT NULL,
  `creator` int(10) NOT NULL,
  `create_time` datetime NOT NULL,
  `updator` int(10) NOT NULL,
  `update_time` datetime NOT NULL,
  `user_read` varchar(1024) NOT NULL,
  `user_write` varchar(1024) NOT NULL,
  `parent_id` int(8) NOT NULL,
  `haschild` int(1) NOT NULL,
  `file1` varchar(256) NOT NULL,
  `file2` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inside_tasks`
--


-- --------------------------------------------------------

--
-- Table structure for table `inside_top_menu`
--

CREATE TABLE IF NOT EXISTS `inside_top_menu` (
  `top_menu_id` int(8) NOT NULL AUTO_INCREMENT,
  `top_menu_parent_id` int(8) NOT NULL,
  `top_menu_haschild` int(1) NOT NULL,
  `top_menu_name` varchar(64) NOT NULL,
  `top_menu_url` varchar(128) NOT NULL,
  `top_menu_invisible` int(1) NOT NULL COMMENT '=1 invisible',
  `top_menu_priority` int(3) NOT NULL,
  `top_menu_width` int(8) NOT NULL,
  `top_menu_widthchild` int(8) NOT NULL,
  PRIMARY KEY (`top_menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `inside_top_menu`
--

INSERT INTO `inside_top_menu` (`top_menu_id`, `top_menu_parent_id`, `top_menu_haschild`, `top_menu_name`, `top_menu_url`, `top_menu_invisible`, `top_menu_priority`, `top_menu_width`, `top_menu_widthchild`) VALUES
(1, 2, 0, 'Groups', '/inside/table/groups', 0, 51, 0, 0),
(2, 0, 1, 'Settings', '', 0, 2, 0, 0),
(3, 0, 0, 'LogOut', '/inside_auth/logout', 0, 70, 0, 0),
(4, 0, 1, 'Web-Site CMS', '', 0, 4, 0, 0),
(5, 2, 1, 'Inside-menu', '/inside/table/inside_top_menu', 0, 1, 0, 0),
(7, 2, 0, 'Users', '/inside/table/users', 0, 2, 0, 0),
(8, 2, 0, 'Import / Export', '/inside/custom/import_export', 0, 190, 0, 200),
(9, 17, 1, 'System Tables', '/inside/table/inside_tables', 0, 0, 0, 200),
(10, 16, 0, 'Access Top-Menu', '/inside/table/inside_access_top_menu', 0, 0, 0, 0),
(11, 17, 0, 'System Zones', '/inside/table/inside_system_zones', 0, 0, 0, 0),
(12, 16, 0, 'Access System Zones', '/inside/table/inside_access_system_zones', 0, 0, 0, 0),
(14, 2, 0, 'Users works', '/inside/custom/users_adv', 0, 5, 0, 0),
(15, 2, 0, 'Access Rules', '/inside/custom/inside_access', 0, 40, 0, 0),
(16, 8, 1, 'Access System', '', 0, 200, 0, 200),
(17, 8, 1, 'System Parts', '', 0, -1, 0, 200),
(18, 8, 1, 'LOGing System', '', 0, 210, 0, 200),
(19, 18, 0, 'Rows Chat log', '/inside/table/inside_row_chat', 0, 0, 0, 0),
(20, 2, 1, 'Company Inside', '', 0, -1, 0, 190),
(21, 20, 0, 'Inside BLOG', '/inside/custom/news/', 0, -1, 0, 0),
(22, 20, 0, 'Inside News CMS', '/inside/table/inside_news/', 0, 2, 0, 0),
(23, 20, 0, 'Inside News Comments', '/inside/table/inside_news_comments/', 0, 5, 0, 0),
(24, 16, 0, 'Access Tables', '/inside/table/inside_access_tables', 0, 0, 0, 0),
(25, 16, 0, 'Access Customs', '/inside/table/inside_access_customs', 0, 0, 0, 0),
(26, 16, 0, 'Access Tabs', '/inside/table/inside_access_tabs', 0, 0, 0, 0),
(27, 16, 0, 'Access Rows', '/inside/table/inside_access_rows', 0, 0, 0, 0),
(28, 17, 1, 'Tables Tabs', '/inside/table/inside_tabs', 0, 0, 0, 200),
(29, 17, 1, 'System Customs', '/inside/table/inside_customs', 0, 0, 0, 200),
(30, 8, 1, 'Tests', '', 0, 500, 0, 0),
(31, 30, 0, 'Customs test page', '/inside/custom/empty_test', 0, 0, 0, 0),
(35, 8, 0, 'Demo Inside Inputs', '/inside/table/demo_inputs', 0, 0, 0, 0),
(36, 4, 1, 'Content', '/inside/table/it_content', 0, 5, 0, 0),
(37, 0, 0, 'Exit', '/', 0, 6, 0, 0),
(40, 4, 0, 'Categories', '/inside/table/it_categories', 0, 7, 0, 0),
(41, 4, 0, 'Tags', '/inside/table/it_tags', 0, 4, 0, 0),
(42, 4, 0, 'Comments', '/inside/table/it_comments', 0, 8, 0, 0),
(48, 4, 0, 'Languages', '/inside/table/it_lang', 0, 11, 0, 0),
(49, 4, 0, 'Vocabulary', '/inside/table/it_vocabulary', 0, 12, 0, 0),
(56, 53, 0, 'Project Plans Tree', '/inside/table_tree/it_tree_plans', 0, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_categories`
--

CREATE TABLE IF NOT EXISTS `it_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(128) NOT NULL,
  `categories_alias` varchar(128) NOT NULL,
  `categories_img` varchar(256) NOT NULL,
  `categories_small_img` varchar(256) NOT NULL,
  `categories_desc` varchar(2048) NOT NULL,
  `categories_html` text,
  `categories_landing` int(1) NOT NULL,
  `categories_invisible` int(1) NOT NULL,
  `categories_priority` int(2) NOT NULL,
  `categories_seo_title` varchar(512) NOT NULL,
  `categories_seo_description` varchar(512) NOT NULL,
  `categories_seo_keywords` varchar(512) NOT NULL,
  `categories_pid` int(8) NOT NULL,
  `categories_haschild` int(1) NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `it_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_categories_translate`
--

CREATE TABLE IF NOT EXISTS `it_categories_translate` (
  `categories_id` int(8) NOT NULL,
  `categories_name` varchar(128) NOT NULL,
  `categories_alias` varchar(128) NOT NULL,
  `categories_img` varchar(256) NOT NULL,
  `categories_desc` varchar(2048) NOT NULL,
  `categories_html` text NOT NULL,
  `categories_lang_alias` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it_categories_translate`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_comments`
--

CREATE TABLE IF NOT EXISTS `it_comments` (
  `comments_id` int(8) NOT NULL AUTO_INCREMENT,
  `comments_fio` varchar(128) NOT NULL,
  `comments_email` varchar(64) NOT NULL,
  `comments_link` varchar(512) NOT NULL,
  `comments_user_id` int(8) NOT NULL,
  `comments_text` varchar(2048) NOT NULL,
  `comments_date` date NOT NULL,
  `comments_time` varchar(256) NOT NULL,
  `comments_datetime` int(16) NOT NULL,
  `comments_source` varchar(64) NOT NULL,
  `comments_source_id` int(8) NOT NULL,
  `comments_invisible` int(1) NOT NULL,
  `comments_parent_id` int(8) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `it_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_content`
--

CREATE TABLE IF NOT EXISTS `it_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_alias` varchar(255) DEFAULT NULL COMMENT 'URL alias',
  `content_priority` int(11) DEFAULT NULL COMMENT 'Sorting rank',
  `content_invisible` int(1) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `content_user_id` int(8) NOT NULL,
  `content_create_date` date NOT NULL,
  `content_type` int(11) DEFAULT NULL COMMENT 'Content type from $config[''page_cats'']',
  `content_lang` varchar(4) DEFAULT NULL COMMENT 'Content language',
  `content_desc` text COMMENT 'Short description',
  `content_html` text COMMENT 'HTML data',
  `content_img` varchar(45) DEFAULT NULL COMMENT 'Image filename',
  `content_seo_title` varchar(255) NOT NULL COMMENT '1',
  `content_seo_description` varchar(255) NOT NULL COMMENT '1',
  `content_seo_keywords` varchar(255) NOT NULL COMMENT '1',
  PRIMARY KEY (`content_id`),
  KEY `fk_nravo_page_nravo_pcat` (`content_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `it_content`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_content_translate`
--

CREATE TABLE IF NOT EXISTS `it_content_translate` (
  `content_id` int(8) NOT NULL,
  `content_name` varchar(512) NOT NULL,
  `content_desc` varchar(1024) NOT NULL,
  `content_html` text NOT NULL,
  `content_lang_alias` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it_content_translate`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_lang`
--

CREATE TABLE IF NOT EXISTS `it_lang` (
  `lang_id` int(4) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_alias` varchar(64) NOT NULL,
  `lang_img` varchar(246) NOT NULL,
  `lang_priority` int(2) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `it_lang`
--

INSERT INTO `it_lang` (`lang_id`, `lang_name`, `lang_alias`, `lang_img`, `lang_priority`) VALUES
(1, 'lang_ru', 'ru', 'russian.png', 0),
(2, 'lang_en', 'en', 'en_flag.png', 0),
(3, 'lang_fr', 'fr', 'fr_flag.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_categories`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_categories` (
  `content_id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it_rel_content_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_tags`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_tags` (
  `content_id` int(8) NOT NULL,
  `tags_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it_rel_content_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_tags`
--

CREATE TABLE IF NOT EXISTS `it_tags` (
  `tags_id` int(8) NOT NULL AUTO_INCREMENT,
  `tags_pid` int(8) NOT NULL,
  `tags_haschild` int(1) NOT NULL,
  `tags_invisible` int(1) NOT NULL,
  `tags_name` varchar(64) NOT NULL,
  `tags_desc` varchar(2048) NOT NULL,
  `tags_html` text NOT NULL,
  `tags_landing` int(1) NOT NULL,
  `tags_create_time` datetime NOT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `it_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `it_tree_plans`
--

CREATE TABLE IF NOT EXISTS `it_tree_plans` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `pdg_color` varchar(32) NOT NULL,
  `content` varchar(4096) NOT NULL,
  `user_id` int(7) NOT NULL,
  `priority` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `profit` int(8) NOT NULL,
  `worktime` int(8) NOT NULL,
  `parent_id` int(8) NOT NULL,
  `haschild` int(1) NOT NULL,
  `file1` varchar(256) NOT NULL,
  `file2` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `it_tree_plans`
--

INSERT INTO `it_tree_plans` (`id`, `name`, `pdg_color`, `content`, `user_id`, `priority`, `price`, `profit`, `worktime`, `parent_id`, `haschild`, `file1`, `file2`) VALUES
(1, 'Basic Web-Site Plan', '1', '', 0, 0, 0, 0, 0, 0, 1, '', ''),
(2, 'DataBase', '1', '', 0, 0, 0, 0, 0, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_tree_plans_translate`
--

CREATE TABLE IF NOT EXISTS `it_tree_plans_translate` (
  `id` int(8) NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `lang_alias` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it_tree_plans_translate`
--

INSERT INTO `it_tree_plans_translate` (`id`, `name`, `content`, `lang_alias`) VALUES
(1, 'Site', '\r\n', 'ru'),
(2, 'DB', '', 'ru');

-- --------------------------------------------------------

--
-- Table structure for table `it_vocabulary`
--

CREATE TABLE IF NOT EXISTS `it_vocabulary` (
  `vocabulary_id` int(8) NOT NULL AUTO_INCREMENT,
  `vocabulary_name` varchar(2048) NOT NULL,
  `vocabulary_alias` varchar(64) NOT NULL,
  `vocabulary_lang` varchar(8) NOT NULL,
  PRIMARY KEY (`vocabulary_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=355 ;

--
-- Dumping data for table `it_vocabulary`
--

INSERT INTO `it_vocabulary` (`vocabulary_id`, `vocabulary_name`, `vocabulary_alias`, `vocabulary_lang`) VALUES
(2, 'RU', 'language', 'ru'),
(3, 'EN', 'lang_en', 'ru'),
(4, 'FR', 'lang_fr', 'ru');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `adv_info` varchar(1024) NOT NULL,
  `img` varchar(256) NOT NULL,
  `full_address` varchar(512) NOT NULL,
  `street` varchar(512) NOT NULL,
  `h_number` varchar(32) NOT NULL,
  `city` varchar(256) NOT NULL,
  `district` varchar(64) NOT NULL,
  `country` varchar(128) NOT NULL,
  `country_code` varchar(8) NOT NULL,
  `admin_area` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `adv_info`, `img`, `full_address`, `street`, `h_number`, `city`, `district`, `country`, `country_code`, `admin_area`) VALUES
(1, '4278255872', 'Admin', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '9462e8eee0', 'root', '', NULL, NULL, '10bd3f40a4ebb18c8e7165019d352680f5f34bc7', 931338000, 1396809063, 1, 'root', '', 'Apple', '+38 093 155 29 70', 'Bla bla bla', '1.jpg', '', '', '', '', '', '', 'UA', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
