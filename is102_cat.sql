-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2017 at 09:12 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `is102_cat`
--

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 90, 0, 1),
(1, 0, 99, 0, 1),
(1, 0, 117, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(7, 0, 0, 23, 0),
(7, 3, 0, 15, 0),
(2, 3, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_announce_global', 0, 1, 0),
(4, 'f_attach', 0, 1, 0),
(5, 'f_bbcode', 0, 1, 0),
(6, 'f_bump', 0, 1, 0),
(7, 'f_delete', 0, 1, 0),
(8, 'f_download', 0, 1, 0),
(9, 'f_edit', 0, 1, 0),
(10, 'f_email', 0, 1, 0),
(11, 'f_flash', 0, 1, 0),
(12, 'f_icons', 0, 1, 0),
(13, 'f_ignoreflood', 0, 1, 0),
(14, 'f_img', 0, 1, 0),
(15, 'f_list', 0, 1, 0),
(16, 'f_noapprove', 0, 1, 0),
(17, 'f_poll', 0, 1, 0),
(18, 'f_post', 0, 1, 0),
(19, 'f_postcount', 0, 1, 0),
(20, 'f_print', 0, 1, 0),
(21, 'f_read', 0, 1, 0),
(22, 'f_reply', 0, 1, 0),
(23, 'f_report', 0, 1, 0),
(24, 'f_search', 0, 1, 0),
(25, 'f_sigs', 0, 1, 0),
(26, 'f_smilies', 0, 1, 0),
(27, 'f_sticky', 0, 1, 0),
(28, 'f_subscribe', 0, 1, 0),
(29, 'f_user_lock', 0, 1, 0),
(30, 'f_vote', 0, 1, 0),
(31, 'f_votechg', 0, 1, 0),
(32, 'f_softdelete', 0, 1, 0),
(33, 'm_', 1, 1, 0),
(34, 'm_approve', 1, 1, 0),
(35, 'm_chgposter', 1, 1, 0),
(36, 'm_delete', 1, 1, 0),
(37, 'm_edit', 1, 1, 0),
(38, 'm_info', 1, 1, 0),
(39, 'm_lock', 1, 1, 0),
(40, 'm_merge', 1, 1, 0),
(41, 'm_move', 1, 1, 0),
(42, 'm_report', 1, 1, 0),
(43, 'm_split', 1, 1, 0),
(44, 'm_softdelete', 1, 1, 0),
(45, 'm_ban', 1, 0, 0),
(46, 'm_pm_report', 1, 0, 0),
(47, 'm_warn', 1, 0, 0),
(48, 'a_', 1, 0, 0),
(49, 'a_aauth', 1, 0, 0),
(50, 'a_attach', 1, 0, 0),
(51, 'a_authgroups', 1, 0, 0),
(52, 'a_authusers', 1, 0, 0),
(53, 'a_backup', 1, 0, 0),
(54, 'a_ban', 1, 0, 0),
(55, 'a_bbcode', 1, 0, 0),
(56, 'a_board', 1, 0, 0),
(57, 'a_bots', 1, 0, 0),
(58, 'a_clearlogs', 1, 0, 0),
(59, 'a_email', 1, 0, 0),
(60, 'a_extensions', 1, 0, 0),
(61, 'a_fauth', 1, 0, 0),
(62, 'a_forum', 1, 0, 0),
(63, 'a_forumadd', 1, 0, 0),
(64, 'a_forumdel', 1, 0, 0),
(65, 'a_group', 1, 0, 0),
(66, 'a_groupadd', 1, 0, 0),
(67, 'a_groupdel', 1, 0, 0),
(68, 'a_icons', 1, 0, 0),
(69, 'a_jabber', 1, 0, 0),
(70, 'a_language', 1, 0, 0),
(71, 'a_mauth', 1, 0, 0),
(72, 'a_modules', 1, 0, 0),
(73, 'a_names', 1, 0, 0),
(74, 'a_phpinfo', 1, 0, 0),
(75, 'a_profile', 1, 0, 0),
(76, 'a_prune', 1, 0, 0),
(77, 'a_ranks', 1, 0, 0),
(78, 'a_reasons', 1, 0, 0),
(79, 'a_roles', 1, 0, 0),
(80, 'a_search', 1, 0, 0),
(81, 'a_server', 1, 0, 0),
(82, 'a_styles', 1, 0, 0),
(83, 'a_switchperm', 1, 0, 0),
(84, 'a_uauth', 1, 0, 0),
(85, 'a_user', 1, 0, 0),
(86, 'a_userdel', 1, 0, 0),
(87, 'a_viewauth', 1, 0, 0),
(88, 'a_viewlogs', 1, 0, 0),
(89, 'a_words', 1, 0, 0),
(90, 'u_', 1, 0, 0),
(91, 'u_attach', 1, 0, 0),
(92, 'u_chgavatar', 1, 0, 0),
(93, 'u_chgcensors', 1, 0, 0),
(94, 'u_chgemail', 1, 0, 0),
(95, 'u_chggrp', 1, 0, 0),
(96, 'u_chgname', 1, 0, 0),
(97, 'u_chgpasswd', 1, 0, 0),
(98, 'u_chgprofileinfo', 1, 0, 0),
(99, 'u_download', 1, 0, 0),
(100, 'u_hideonline', 1, 0, 0),
(101, 'u_ignoreflood', 1, 0, 0),
(102, 'u_masspm', 1, 0, 0),
(103, 'u_masspm_group', 1, 0, 0),
(104, 'u_pm_attach', 1, 0, 0),
(105, 'u_pm_bbcode', 1, 0, 0),
(106, 'u_pm_delete', 1, 0, 0),
(107, 'u_pm_download', 1, 0, 0),
(108, 'u_pm_edit', 1, 0, 0),
(109, 'u_pm_emailpm', 1, 0, 0),
(110, 'u_pm_flash', 1, 0, 0),
(111, 'u_pm_forward', 1, 0, 0),
(112, 'u_pm_img', 1, 0, 0),
(113, 'u_pm_printpm', 1, 0, 0),
(114, 'u_pm_smilies', 1, 0, 0),
(115, 'u_readpm', 1, 0, 0),
(116, 'u_savedrafts', 1, 0, 0),
(117, 'u_search', 1, 0, 0),
(118, 'u_sendemail', 1, 0, 0),
(119, 'u_sendim', 1, 0, 0),
(120, 'u_sendpm', 1, 0, 0),
(121, 'u_sig', 1, 0, 0),
(122, 'u_viewonline', 1, 0, 0),
(123, 'u_viewprofile', 1, 0, 0),
(124, 'a_rhtopictags_edit_tags', 1, 0, 0),
(125, 'm_rhtopictags_edit_tags', 1, 0, 0),
(126, 'u_rhtopictags_use_tags', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 54, 1),
(1, 55, 1),
(1, 56, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 71, 1),
(1, 73, 1),
(1, 75, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 84, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(2, 48, 1),
(2, 51, 1),
(2, 52, 1),
(2, 61, 1),
(2, 62, 1),
(2, 63, 1),
(2, 64, 1),
(2, 71, 1),
(2, 76, 1),
(2, 84, 1),
(2, 87, 1),
(2, 88, 1),
(3, 48, 1),
(3, 51, 1),
(3, 52, 1),
(3, 54, 1),
(3, 65, 1),
(3, 66, 1),
(3, 67, 1),
(3, 77, 1),
(3, 84, 1),
(3, 85, 1),
(3, 87, 1),
(3, 88, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(4, 88, 1),
(4, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(5, 122, 1),
(5, 123, 1),
(6, 90, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 102, 1),
(6, 103, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 123, 1),
(7, 90, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 97, 1),
(7, 98, 1),
(7, 99, 1),
(7, 100, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 111, 1),
(7, 112, 1),
(7, 113, 1),
(7, 114, 1),
(7, 115, 1),
(7, 120, 1),
(7, 121, 1),
(7, 123, 1),
(8, 90, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 97, 1),
(8, 99, 1),
(8, 100, 1),
(8, 121, 1),
(8, 123, 1),
(8, 102, 0),
(8, 103, 0),
(8, 115, 0),
(8, 120, 0),
(9, 90, 1),
(9, 93, 1),
(9, 94, 1),
(9, 97, 1),
(9, 98, 1),
(9, 99, 1),
(9, 100, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 111, 1),
(9, 112, 1),
(9, 113, 1),
(9, 114, 1),
(9, 115, 1),
(9, 120, 1),
(9, 121, 1),
(9, 123, 1),
(9, 92, 0),
(10, 33, 1),
(10, 34, 1),
(10, 45, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 46, 1),
(10, 42, 1),
(10, 44, 1),
(10, 43, 1),
(10, 47, 1),
(11, 33, 1),
(11, 34, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 46, 1),
(11, 42, 1),
(11, 44, 1),
(11, 43, 1),
(11, 47, 1),
(12, 33, 1),
(12, 36, 1),
(12, 37, 1),
(12, 38, 1),
(12, 46, 1),
(12, 42, 1),
(12, 44, 1),
(13, 33, 1),
(13, 34, 1),
(13, 37, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 32, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(15, 1, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 12, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 28, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(16, 1, 0),
(17, 1, 1),
(17, 8, 1),
(17, 15, 1),
(17, 20, 1),
(17, 21, 1),
(17, 24, 1),
(17, 28, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 28, 1),
(18, 30, 1),
(18, 32, 1),
(19, 1, 1),
(19, 8, 1),
(19, 15, 1),
(19, 20, 1),
(19, 21, 1),
(20, 1, 1),
(20, 4, 1),
(20, 5, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 14, 1),
(20, 15, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 28, 1),
(20, 30, 1),
(20, 32, 1),
(20, 16, 0),
(21, 1, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 12, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 28, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(22, 1, 1),
(22, 5, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 28, 1),
(22, 30, 1),
(22, 32, 1),
(23, 98, 0),
(23, 102, 0),
(23, 103, 0),
(23, 120, 0),
(24, 16, 0),
(4, 124, 1),
(10, 125, 1),
(11, 125, 1),
(5, 126, 1),
(6, 126, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE `phpbb_acl_users` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0),
(2, 3, 0, 14, 0),
(48, 3, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE `phpbb_attachments` (
  `attach_id` int(10) UNSIGNED NOT NULL,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE `phpbb_banlist` (
  `ban_id` int(10) UNSIGNED NOT NULL,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE `phpbb_bookmarks` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE `phpbb_bots` (
  `bot_id` int(10) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '0', 0),
('allow_autologin', '1', 0),
('allow_avatar', '0', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_upload', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_bbcode', '0', 0),
('allow_birthdays', '0', 0),
('allow_bookmarks', '0', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_password_reset', '1', 0),
('allow_forum_notify', '0', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '0', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '0', 0),
('allow_post_flash', '0', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '0', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '0', 0),
('allow_sig_bbcode', '0', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '0', 0),
('allow_sig_links', '0', 0),
('allow_sig_pm', '0', 0),
('allow_sig_smilies', '0', 0),
('allow_smilies', '0', 0),
('allow_topic_notify', '1', 0),
('allowed_schemes_links', 'http,https,ftp', 0),
('assets_version', '4', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '0', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '0', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '0', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '5b1f40141d9867003a0a8bc4eddf58c4', 0),
('board_contact', 'mq.wang.2014@sis.smu.edu.sg', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'mq.wang.2014@sis.smu.edu.sg', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_timezone', 'Asia/Singapore', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('captcha_gd', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('confirm_refresh', '0', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('contact_admin_form_enable', '', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_6strh', 0),
('cookie_path', '/', 0),
('cookie_secure', '', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('database_gc', '604800', 0),
('dbms_version', '5.7.14', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_style', '3', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('extension_force_unstable', '0', 0),
('delete_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_confirm', '0', 0),
('enable_mod_rewrite', '0', 0),
('allow_board_notifications', '1', 0),
('enable_pm_icons', '0', 0),
('enable_post_confirm', '0', 0),
('feed_enable', '0', 0),
('feed_http_auth', '0', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall_forums', '0', 0),
('feed_overall', '0', 0),
('feed_forum', '0', 0),
('feed_topic', '0', 0),
('feed_topics_new', '0', 0),
('feed_topics_active', '0', 0),
('feed_item_statistics', '0', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '0', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('help_send_statistics', '1', 0),
('help_send_statistics_time', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_password', '', 0),
('jab_package_size', '20', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '0', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_pm', '0', 0),
('load_cpf_viewprofile', '0', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0),
('load_jumpbox', '0', 0),
('load_moderators', '0', 0),
('load_notifications', '1', 0),
('load_online', '0', 0),
('load_online_guests', '0', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '0', 0),
('load_search', '1', 0),
('load_tplcompile', '1', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('new_member_post_limit', '3', 0),
('new_member_group_default', '0', 0),
('override_user_style', '1', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('plupload_salt', '1cd9ae43083f37251741a3ac65ac5f3b', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '0', 0),
('queue_interval', '60', 0),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('remote_upload_verify', '0', 0),
('require_activation', '0', 0),
('referer_validation', '0', 0),
('script_path', '/phpBB3', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_interval', '0', 0),
('search_anonymous_interval', '0', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('search_store_results', '1800', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_length', '3600', 0),
('site_desc', '', 0),
('site_home_url', '', 0),
('site_home_text', '', 0),
('sitename', 'CAT Discussion Forum', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '', 0),
('smtp_username', '', 0),
('teampage_memberships', '1', 0),
('teampage_forums', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.2.0', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('cache_last_gc', '1502962449', 1),
('cron_lock', '0', 1),
('database_last_gc', '1502873521', 1),
('last_queue_run', '0', 1),
('newest_user_colour', '', 1),
('newest_user_id', '90', 1),
('newest_username', 'prof9user', 1),
('num_files', '0', 1),
('num_posts', '33', 1),
('num_topics', '14', 1),
('num_users', '44', 1),
('plupload_last_gc', '0', 1),
('rand_seed', 'ee5162782430ed00c5ea23a7361d545c', 1),
('rand_seed_last_update', '1502965804', 1),
('read_notification_last_gc', '1502955173', 1),
('record_online_date', '1499165993', 1),
('record_online_users', '2', 1),
('search_indexing_state', '', 1),
('search_last_gc', '1502962454', 1),
('session_last_gc', '1502965805', 1),
('upload_dir_size', '0', 1),
('warnings_last_gc', '1502955162', 1),
('board_startdate', '1499165855', 0),
('default_lang', 'en', 0),
('allow_viglink_phpbb', '1', 0),
('viglink_last_gc', '1502875161', 1),
('viglink_enabled', '0', 0),
('questionnaire_unique_id', '869e93f0efb4828b', 0),
('viglink_ask_admin', '', 0),
('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0),
('viglink_convert_account_url', 'https://www.viglink.com/users/convertAccount?key=e4fd14f5d7f2bb6d80b8f8da1354718c&amp;subId=c2da33fa739be3ff53d515e560d8689c&amp;expiration=1530791332&amp;signature=77edb56847343159a22c658f295a9f56', 0),
('viglink_api_siteid', '421aa90e079fa326b6494f812ad13e79', 0),
('fulltext_sphinx_id', '8a4185eb3f490fc6', 0),
('auth_oauth_bitly_key', '', 0),
('auth_oauth_bitly_secret', '', 0),
('auth_oauth_facebook_key', '', 0),
('auth_oauth_facebook_secret', '', 0),
('auth_oauth_google_key', '', 0),
('auth_oauth_google_secret', '', 0),
('auth_oauth_twitter_key', '', 0),
('auth_oauth_twitter_secret', '', 0),
('postlove_version', '1.0.0', 0),
('robertheim_topictags_version', '1.0.2', 0),
('postlove_show_likes', '0', 0),
('postlove_show_liked', '0', 0),
('postlove_installed_theme', 'default', 0),
('postlove_author_like', '1', 0),
('robertheim_topictags_allowed_tags_regex', '/^\\b(IF|LOOKUP|VLOOKUP|MAX|MIN)$/', 0),
('robertheim_topictags_allowed_tags_exp_for_users', 'Allowed tags: IF, LOOKUP, VLOOKUP,MAX,MIN', 0),
('robertheim_topictags_display_tags_in_viewforum', '1', 0),
('robertheim_topictags_display_tagcloud_on_index', '1', 0),
('robertheim_topictags_max_tags_in_tagcloud', '20', 0),
('robertheim_topictags_display_tagcount_in_tagcloud', '1', 0),
('robertheim_topictags_convert_space_to_minus', '1', 0),
('robertheim_topictags_whitelist_enabled', '0', 0),
('robertheim_topictags_blacklist_enabled', '0', 0),
('kasimi.logoutredirect.enabled', '1', 0),
('kasimi.logoutredirect.url', 'http://ec2-54-255-137-4.ap-southeast-1.compute.amazonaws.com/ISE/login.jsp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config_text`
--

CREATE TABLE `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
('contact_admin_info', ''),
('contact_admin_info_uid', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '6'),
('robertheim_topictags_whitelist', '[]'),
('robertheim_topictags_blacklist', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE `phpbb_drafts` (
  `draft_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ext`
--

CREATE TABLE `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_ext`
--

INSERT INTO `phpbb_ext` (`ext_name`, `ext_active`, `ext_state`) VALUES
('phpbb/viglink', 1, 'b:0;'),
('anavaro/postlove', 0, 'b:0;'),
('robertheim/topictags', 1, 'b:0;');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'swf'),
(51, 6, 'mp3'),
(52, 6, 'mpeg'),
(53, 6, 'mpg'),
(54, 6, 'ogg'),
(55, 6, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(6, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  `rh_topictags_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`, `rh_topictags_enabled`) VALUES
(3, 0, 1, 2, '', 'CAT Forum', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 53, 90, 'Re: test question', 1502965935, 'prof9user', '', 112, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 32, 0, 0, 14, 0, 0, 0, 7, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE `phpbb_forums_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 3, 1499256553),
(48, 3, 1501911170),
(51, 3, 1502365740),
(56, 3, 1502470172),
(49, 3, 1502508517),
(61, 3, 1502511700),
(65, 3, 1502512319),
(67, 3, 1502514068),
(85, 3, 1502881309),
(74, 3, 1502955221),
(83, 3, 1502956119),
(87, 3, 1502955595),
(89, 3, 1502962492),
(90, 3, 1502965935);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_alt`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, '', 1, 1),
(2, 'smile/redface.gif', 16, 16, '', 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, '', 10, 1),
(4, 'misc/heart.gif', 16, 16, '', 4, 1),
(5, 'misc/star.gif', 16, 16, '', 2, 1),
(6, 'misc/radioactive.gif', 16, 16, '', 3, 1),
(7, 'misc/thinking.gif', 16, 16, '', 5, 1),
(8, 'smile/info.gif', 16, 16, '', 8, 1),
(9, 'smile/question.gif', 16, 16, '', 6, 1),
(10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE `phpbb_log` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `post_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 1, 0, 0, 0, 0, '::1', 1499165874, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),
(2, 0, 1, 0, 0, 0, 0, '', 1499165874, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(3, 2, 1, 0, 0, 0, 0, '::1', 1499165875, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:323:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/install/app.php/install</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1799<br />\";}'),
(4, 0, 2, 0, 0, 0, 0, '::1', 1499165875, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.2.0\";}'),
(5, 0, 2, 0, 0, 0, 0, '::1', 1499253070, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(6, 2, 1, 0, 0, 0, 0, '::1', 1499253143, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:307:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1799<br />\";}'),
(7, 0, 2, 0, 0, 0, 0, '::1', 1499253702, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(8, 0, 2, 0, 0, 0, 0, '::1', 1499254067, 'LOG_CONFIG_FEATURES', ''),
(9, 0, 2, 0, 0, 0, 0, '::1', 1499254198, 'LOG_CONFIG_FEATURES', ''),
(10, 0, 2, 0, 0, 0, 0, '::1', 1499254273, 'LOG_CONFIG_SETTINGS', ''),
(11, 0, 2, 0, 0, 0, 0, '::1', 1499254485, 'LOG_CONFIG_LOAD', ''),
(12, 0, 2, 0, 0, 0, 0, '::1', 1499254551, 'LOG_CONFIG_LOAD', ''),
(13, 0, 2, 0, 0, 0, 0, '::1', 1499254678, 'LOG_CONFIG_AVATAR', ''),
(14, 0, 2, 0, 0, 0, 0, '::1', 1499254955, 'LOG_CONFIG_FEED', ''),
(15, 0, 2, 0, 0, 0, 0, '::1', 1499255163, 'LOG_CONFIG_FEED', ''),
(16, 0, 2, 0, 0, 0, 0, '::1', 1499255267, 'LOG_CONFIG_REGISTRATION', ''),
(17, 0, 2, 0, 0, 0, 0, '::1', 1499255286, 'LOG_CONFIG_FEATURES', ''),
(18, 0, 2, 0, 0, 0, 0, '::1', 1499255391, 'LOG_CONFIG_POST', ''),
(19, 0, 2, 0, 0, 0, 0, '::1', 1499255454, 'LOG_CONFIG_LOAD', ''),
(20, 0, 2, 0, 0, 0, 0, '::1', 1499255626, 'LOG_CONFIG_LOAD', ''),
(21, 0, 2, 0, 0, 0, 0, '::1', 1499255824, 'LOG_CONFIG_SETTINGS', ''),
(22, 0, 2, 0, 0, 0, 0, '::1', 1499256040, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(23, 0, 2, 0, 0, 0, 0, '::1', 1499256140, 'LOG_FORUM_DEL_POSTS_FORUMS', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(24, 0, 2, 0, 0, 0, 0, '::1', 1499256219, 'LOG_FORUM_ADD', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(25, 0, 2, 0, 0, 0, 0, '::1', 1499256452, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:9:\"CAT Forum\";i:1;s:5:\"admin\";}'),
(26, 0, 2, 0, 0, 0, 0, '::1', 1499256617, 'LOG_ACL_ADD_USER_LOCAL_F_', 'a:2:{i:0;s:9:\"CAT Forum\";i:1;s:4:\"user\";}'),
(27, 0, 2, 0, 0, 0, 0, '::1', 1499257387, 'LOG_CONFIG_FEATURES', ''),
(28, 0, 2, 0, 0, 0, 0, '::1', 1499339620, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(29, 0, 2, 0, 0, 0, 0, '::1', 1499340416, 'LOG_CONFIG_FEATURES', ''),
(30, 0, 2, 0, 0, 0, 0, '::1', 1499340805, 'LOG_CONFIG_SECURITY', ''),
(31, 0, 2, 0, 0, 0, 0, '::1', 1499340888, 'LOG_CONFIG_LOAD', ''),
(32, 0, 2, 0, 0, 0, 0, '::1', 1499341956, 'LOG_CONFIG_POST', ''),
(33, 0, 2, 0, 0, 0, 0, '::1', 1499342014, 'LOG_CONFIG_POST', ''),
(34, 0, 2, 0, 0, 0, 0, '::1', 1499342628, 'LOG_CONFIG_FEATURES', ''),
(35, 0, 2, 0, 0, 0, 0, '::1', 1499343737, 'LOG_CONFIG_SIGNATURE', ''),
(36, 0, 2, 0, 0, 0, 0, '::1', 1499344755, 'LOG_CONFIG_LOAD', ''),
(37, 0, 2, 0, 0, 0, 0, '::1', 1499685399, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(38, 0, 2, 0, 0, 0, 0, '::1', 1499685444, 'LOG_STYLE_ADD', 'a:1:{i:0;s:10:\"Flat Style\";}'),
(39, 0, 2, 0, 0, 0, 0, '::1', 1499685458, 'LOG_STYLE_ADD', 'a:1:{i:0;s:15:\"Flat Style Blue\";}'),
(40, 0, 2, 0, 0, 0, 0, '::1', 1499685644, 'LOG_CONFIG_SETTINGS', ''),
(41, 0, 2, 0, 0, 0, 0, '::1', 1499685704, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(42, 0, 2, 0, 0, 0, 0, '::1', 1499685781, 'LOG_CONFIG_SETTINGS', ''),
(43, 0, 2, 0, 0, 0, 0, '::1', 1499685866, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(44, 0, 2, 0, 0, 0, 0, '::1', 1499686047, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(45, 0, 2, 0, 0, 0, 0, '::1', 1499686108, 'LOG_CONFIG_SETTINGS', ''),
(46, 0, 2, 0, 0, 0, 0, '::1', 1499686138, 'LOG_CONFIG_FEATURES', ''),
(47, 0, 2, 0, 0, 0, 0, '::1', 1499686149, 'LOG_CONFIG_AVATAR', ''),
(48, 0, 2, 0, 0, 0, 0, '::1', 1499686180, 'LOG_CONFIG_MESSAGE', ''),
(49, 0, 2, 0, 0, 0, 0, '::1', 1499686218, 'LOG_CONFIG_POST', ''),
(50, 0, 2, 0, 0, 0, 0, '::1', 1499686231, 'LOG_CONFIG_SIGNATURE', ''),
(51, 0, 2, 0, 0, 0, 0, '::1', 1499686299, 'LOG_CONFIG_LOAD', ''),
(52, 0, 2, 0, 0, 0, 0, '::1', 1499686598, 'LOG_CONFIG_LOAD', ''),
(53, 0, 2, 0, 0, 0, 0, '::1', 1499777307, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(54, 0, 2, 0, 0, 0, 0, '::1', 1499777374, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:\"ACP_POSTLOVE_GRP\";}'),
(55, 0, 2, 0, 0, 0, 0, '::1', 1499777374, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:\"ACP_POSTLOVE\";}'),
(56, 0, 2, 0, 0, 0, 0, '::1', 1499777375, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:16:\"anavaro/postlove\";}'),
(57, 0, 2, 0, 0, 0, 0, '::1', 1499777599, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:\"ACP_TOPICTAGS_TITLE\";}'),
(58, 0, 2, 0, 0, 0, 0, '::1', 1499777599, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:\"ACP_TOPICTAGS_SETTINGS\";}'),
(59, 0, 2, 0, 0, 0, 0, '::1', 1499777600, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:\"ACP_TOPICTAGS_WHITELIST\";}'),
(60, 0, 2, 0, 0, 0, 0, '::1', 1499777600, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:\"ACP_TOPICTAGS_BLACKLIST\";}'),
(61, 0, 2, 0, 0, 0, 0, '::1', 1499777600, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:\"ACP_TOPICTAGS_MANAGE_TAGS\";}'),
(62, 0, 2, 0, 0, 0, 0, '::1', 1499777600, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:20:\"robertheim/topictags\";}'),
(63, 0, 2, 0, 0, 0, 0, '::1', 1499777627, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:9:\"CAT Forum\";}'),
(64, 0, 2, 0, 0, 0, 0, '::1', 1499863254, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(65, 0, 2, 0, 0, 0, 0, '::1', 1500178504, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(66, 0, 2, 0, 0, 0, 0, '::1', 1500292597, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(67, 1, 48, 3, 10, 0, 0, '::1', 1500513771, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:4:\"dddd\";i:1;s:4:\"user\";i:2;s:0:\"\";}'),
(68, 0, 2, 0, 0, 0, 0, '::1', 1500799953, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(69, 0, 2, 0, 0, 0, 0, '::1', 1500962024, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(70, 0, 2, 0, 0, 0, 0, '::1', 1500962138, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:16:\"anavaro/postlove\";}'),
(71, 0, 2, 0, 0, 0, 0, '::1', 1500969488, 'LOG_CONFIG_FEATURES', ''),
(72, 0, 2, 0, 0, 0, 0, '::1', 1500970097, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:9:\"CAT Forum\";i:1;s:4:\"user\";}'),
(73, 0, 2, 0, 0, 0, 0, '::1', 1502206071, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(74, 0, 2, 0, 0, 0, 0, '::1', 1502206298, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:9:\"CAT Forum\";i:1;s:47:\"<span class=\"sep\">Newly registered users</span>\";}'),
(75, 0, 2, 0, 0, 0, 0, '::1', 1502206317, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:9:\"CAT Forum\";i:1;s:41:\"<span class=\"sep\">Registered users</span>\";}'),
(76, 0, 2, 0, 0, 0, 0, '202.161.33.32', 1502501771, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(77, 1, 2, 3, 2, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:10:\"First Post\";i:1;s:5:\"admin\";i:2;s:9:\"dumy data\";}'),
(78, 1, 2, 3, 3, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:6:\"11 Jul\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(79, 1, 2, 3, 4, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:5:\"sssss\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(80, 1, 2, 3, 5, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:9:\"test tags\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(81, 1, 2, 3, 6, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:3:\"fff\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(82, 1, 2, 3, 7, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:15:\"second question\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(83, 1, 2, 3, 8, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:12:\"test tags V2\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(84, 1, 2, 3, 9, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:5:\"abcde\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(85, 1, 2, 3, 12, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:12:\"test tags V4\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(86, 1, 2, 3, 11, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:12:\"test tags V3\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(87, 1, 2, 3, 13, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:8:\"new post\";i:1;s:4:\"user\";i:2;s:9:\"dumy data\";}'),
(88, 1, 2, 3, 14, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:10:\"admin post\";i:1;s:5:\"admin\";i:2;s:9:\"dumy data\";}'),
(89, 1, 2, 3, 15, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:30:\"new question with correct tags\";i:1;s:10:\"lauren2014\";i:2;s:9:\"dumy data\";}'),
(90, 1, 2, 3, 16, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:16:\"hahahahahahahaha\";i:1;s:10:\"lauren2014\";i:2;s:9:\"dumy data\";}'),
(91, 1, 2, 3, 17, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:32:\"new question with incorrect tags\";i:1;s:10:\"lauren2014\";i:2;s:9:\"dumy data\";}'),
(92, 1, 2, 3, 18, 0, 0, '172.31.21.222', 1502503151, 'LOG_DELETE_TOPIC', 'a:3:{i:0;s:39:\"Query regarding VLOOKUP – testinguser\";i:1;s:11:\"testinguser\";i:2;s:9:\"dumy data\";}'),
(93, 2, 1, 0, 0, 0, 0, '202.161.33.32', 1502512109, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:310:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/CAT/forum/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1799<br />\";}'),
(94, 2, 1, 0, 0, 0, 0, '202.161.33.32', 1502512217, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:310:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/CAT/forum/ucp.php</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1799<br />\";}'),
(95, 0, 2, 0, 0, 0, 0, '202.161.33.32', 1502875158, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(96, 0, 2, 0, 0, 0, 0, '202.161.33.32', 1502875200, 'LOGOUTREDIRECT_CONFIG_UPDATED', ''),
(97, 0, 2, 0, 0, 0, 0, '202.161.33.32', 1502876068, 'LOG_ADMIN_AUTH_SUCCESS', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_login_attempts`
--

CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_migrations`
--

CREATE TABLE `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1499165865, 1499165865),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:0:{}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1499165866, 1499165866),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1499165867, 1499165867),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1499165868, 1499165868),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1499165869, 1499165869),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165870, 1499165870),
('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1499165871, 1499165871),
('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1499165873, 1499165874),
('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1499165874, 1499165874),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1499165874, 1499165874),
('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0),
('\\anavaro\\postlove\\migrations\\release_1_0_0', 'a:0:{}', 1, 1, '', 1499777374, 1499777374),
('\\anavaro\\postlove\\migrations\\release_1_0_1', 'a:1:{i:0;s:42:\"\\anavaro\\postlove\\migrations\\release_1_0_0\";}', 1, 1, '', 1499777374, 1499777374),
('\\anavaro\\postlove\\migrations\\release_1_1_0', 'a:1:{i:0;s:42:\"\\anavaro\\postlove\\migrations\\release_1_0_1\";}', 1, 1, '', 1499777374, 1499777374),
('\\robertheim\\topictags\\migrations\\release_0_0_1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1499777597, 1499777598),
('\\robertheim\\topictags\\migrations\\release_0_0_2', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_1\";}', 1, 1, '', 1499777598, 1499777598),
('\\robertheim\\topictags\\migrations\\release_0_0_3', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_2\";}', 1, 1, '', 1499777598, 1499777598),
('\\robertheim\\topictags\\migrations\\release_0_0_4', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_3\";}', 1, 1, '', 1499777598, 1499777599),
('\\robertheim\\topictags\\migrations\\release_0_0_5', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_4\";}', 1, 1, '', 1499777599, 1499777599),
('\\robertheim\\topictags\\migrations\\release_0_0_6', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_5\";}', 1, 1, '', 1499777599, 1499777599),
('\\robertheim\\topictags\\migrations\\release_0_0_7', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_6\";}', 1, 1, '', 1499777599, 1499777599),
('\\robertheim\\topictags\\migrations\\release_0_0_8', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_7\";}', 1, 1, '', 1499777599, 1499777599),
('\\robertheim\\topictags\\migrations\\release_0_0_9', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_8\";}', 1, 1, '', 1499777599, 1499777600),
('\\robertheim\\topictags\\migrations\\release_0_0_10', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_0_0_9\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_0_0_11', 'a:1:{i:0;s:47:\"\\robertheim\\topictags\\migrations\\release_0_0_10\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_0_0_12', 'a:1:{i:0;s:47:\"\\robertheim\\topictags\\migrations\\release_0_0_11\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_0_0_13', 'a:1:{i:0;s:47:\"\\robertheim\\topictags\\migrations\\release_0_0_12\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_0_0_14', 'a:1:{i:0;s:47:\"\\robertheim\\topictags\\migrations\\release_0_0_13\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_1_0_0', 'a:1:{i:0;s:47:\"\\robertheim\\topictags\\migrations\\release_0_0_14\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_1_0_1', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_1_0_0\";}', 1, 1, '', 1499777600, 1499777600),
('\\robertheim\\topictags\\migrations\\release_1_0_2', 'a:1:{i:0;s:46:\"\\robertheim\\topictags\\migrations\\release_1_0_1\";}', 1, 1, '', 1499777600, 1499777600);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 89, 116, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 104, 115, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 117, 174, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 118, 153, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 154, 163, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 164, 173, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 175, 224, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 178, 187, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 188, 199, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 200, 209, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 210, 223, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 225, 240, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 230, 235, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 226, 229, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 236, 239, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 241, 260, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 242, 251, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 252, 259, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 285, 300, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 169, 170, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 255, 256, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 171, 172, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 227, 228, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 157, 158, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(74, 1, 1, 'acp_inactive', 'acp', 13, 119, 120, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(76, 1, 1, 'acp_language', 'acp', 24, 237, 238, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules'),
(84, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(88, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(89, 1, 1, 'acp_permissions', 'acp', 16, 176, 177, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(90, 1, 0, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(93, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 13, 125, 126, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 14, 161, 162, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(109, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(110, 1, 1, 'acp_profile', 'acp', 13, 127, 128, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(112, 1, 1, 'acp_prune', 'acp', 13, 129, 130, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(113, 1, 1, 'acp_ranks', 'acp', 13, 131, 132, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(114, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(116, 1, 1, 'acp_search', 'acp', 27, 257, 258, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(117, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 233, 234, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 121, 122, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications'),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board'),
(208, 1, 1, '', 'acp', 32, 286, 289, 'ACP_POSTLOVE_GRP', '', ''),
(209, 1, 1, '\\anavaro\\postlove\\acp\\acp_postlove_module', 'acp', 208, 287, 288, 'ACP_POSTLOVE', 'main', 'ext_anavaro/postlove && acl_a_user'),
(210, 1, 1, '', 'acp', 32, 290, 299, 'ACP_TOPICTAGS_TITLE', '', ''),
(211, 1, 1, '\\robertheim\\topictags\\acp\\topictags_module', 'acp', 210, 291, 292, 'ACP_TOPICTAGS_SETTINGS', 'settings', 'ext_robertheim/topictags && acl_a_board'),
(212, 1, 1, '\\robertheim\\topictags\\acp\\topictags_module', 'acp', 210, 293, 294, 'ACP_TOPICTAGS_WHITELIST', 'whitelist', 'ext_robertheim/topictags && acl_a_board'),
(213, 1, 1, '\\robertheim\\topictags\\acp\\topictags_module', 'acp', 210, 295, 296, 'ACP_TOPICTAGS_BLACKLIST', 'blacklist', 'ext_robertheim/topictags && acl_a_board'),
(214, 1, 1, '\\robertheim\\topictags\\acp\\topictags_module', 'acp', 210, 297, 298, 'ACP_TOPICTAGS_MANAGE_TAGS', 'tags', 'ext_robertheim/topictags && acl_a_board');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notifications`
--

CREATE TABLE `phpbb_notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notification_types`
--

CREATE TABLE `phpbb_notification_types` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_notification_types`
--

INSERT INTO `phpbb_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
(1, 'notification.type.admin_activate_user', 1),
(2, 'notification.type.approve_post', 1),
(3, 'notification.type.approve_topic', 1),
(4, 'notification.type.bookmark', 1),
(5, 'notification.type.disapprove_post', 1),
(6, 'notification.type.disapprove_topic', 1),
(7, 'notification.type.group_request', 1),
(8, 'notification.type.group_request_approved', 1),
(9, 'notification.type.pm', 1),
(10, 'notification.type.post', 1),
(11, 'notification.type.post_in_queue', 1),
(12, 'notification.type.quote', 1),
(13, 'notification.type.report_pm', 1),
(14, 'notification.type.report_pm_closed', 1),
(15, 'notification.type.report_post', 1),
(16, 'notification.type.report_post_closed', 1),
(17, 'notification.type.topic', 1),
(18, 'notification.type.topic_in_queue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_accounts`
--

CREATE TABLE `phpbb_oauth_accounts` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_states`
--

CREATE TABLE `phpbb_oauth_states` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_tokens`
--

CREATE TABLE `phpbb_oauth_tokens` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE `phpbb_poll_votes` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE `phpbb_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(1, 24, 3, 67, 0, '202.161.33.32', 1502514068, 0, 0, 0, 1, 0, '', '“Query regarding VLOOKUP – wkliaw.2015', '<t>Creating Question subject and inputting this message for testing purposes</t>', '38204002b21679134c5057f10f7f2a6e', 0, '', '27b29904', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(2, 19, 3, 66, 0, '202.161.33.32', 1502512461, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes.</t>', '3e5d489dd760c040c7ae49bac878602f', 0, '', '3u70vaa8', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(3, 23, 3, 66, 0, '202.161.33.32', 1502512331, 0, 0, 0, 1, 0, '', 'Query regarding VLOOKUP - thomasthetrain', '<t>Creating Question subject and inputting this message for testing purposes</t>', '38204002b21679134c5057f10f7f2a6e', 0, '', '6ls3xja3', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(30, 19, 3, 65, 0, '202.161.33.28', 1502512319, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', '312ybp7h', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(29, 22, 3, 65, 0, '202.161.33.28', 1502512283, 0, 0, 0, 1, 0, '', 'Query regarding VLOOKUP_Hello', '<t>CHleloo</t>', '2abf1bdd5ce7fcf9373a3a9c9767f91e', 0, '', '28djcxot', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(28, 19, 3, 61, 0, '202.161.33.32', 1502511839, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', '2rypfssp', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(27, 19, 3, 59, 0, '202.161.33.32', 1502511823, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', '9luo0eb4', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(26, 19, 3, 60, 0, '202.161.33.32', 1502511803, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', 'wbrsn2qq', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(25, 21, 3, 60, 0, '202.161.33.32', 1502511703, 0, 0, 0, 1, 0, '', 'Query regarding VLOOPUP _ user123', '<t>Creating Question subject and inputting this message for testing purposes</t>', '38204002b21679134c5057f10f7f2a6e', 0, '', '2uj5l3sl', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(24, 20, 3, 61, 0, '202.161.33.32', 1502511700, 0, 0, 0, 1, 0, '', 'Query regarding VLOOKUP – testuser', '<t>Creating Question subject and inputting this message for testing purposes</t>', '38204002b21679134c5057f10f7f2a6e', 0, '', '3isw90dh', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(22, 19, 3, 56, 0, '116.87.28.25', 1502470016, 0, 0, 0, 1, 0, '', 'Clarifying class concepts regarding LOOKUP', '<t>TESTING PURPOSES</t>', '15a1b0f6bb6262069bbf4cdd79cce100', 0, '', '2kp30qub', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(23, 19, 3, 56, 0, '116.87.28.25', 1502470172, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', '4a5afwzd', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(34, 25, 3, 68, 0, '202.161.33.28', 1502514105, 0, 0, 0, 1, 0, '', 'Query regarding VLOOKUP- min quan', '<t>Creating question subject and inputting this message for testing purposes</t>', 'b0af04b4f15b4cfba46c0873e2d8cb93', 0, '', '1vbuvrg0', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(35, 19, 3, 67, 0, '202.161.33.32', 1502514147, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes</t>', '1923f882561f5952a904fb0cc930be30', 0, '', 'o164f6bi', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(36, 19, 3, 68, 0, '202.161.33.28', 1502514199, 0, 0, 0, 1, 0, '', 'Re: Clarifying class concepts regarding LOOKUP', '<t>This is the reply message to this question for user testing purposes.</t>', '3e5d489dd760c040c7ae49bac878602f', 0, '', 'at25whv7', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(44, 29, 3, 83, 0, '202.161.33.32', 1502955454, 0, 0, 0, 1, 0, '', 'Re: post a new question jq', '<t>sssss</t>', '2d02e669731cbade6a64b58d602cf2a4', 0, '', '2gzao4vo', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(43, 29, 3, 74, 0, '202.161.33.32', 1502955221, 0, 0, 0, 1, 0, '', 'Re: post a new question jq', '<t>haha</t>', '4e4d6c332b6fe62a63afe56171fd3725', 0, '', '2bki6vxl', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(42, 29, 3, 74, 0, '202.161.33.32', 1502955196, 0, 0, 0, 1, 0, '', 'post a new question jq', '<t>test message</t>', 'c72b9698fa1927e1dd12d3cf26ed84b2', 0, '', '1rz4wldl', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(40, 28, 3, 74, 0, '202.161.33.32', 1502888655, 0, 0, 0, 1, 0, '', 'testing demo MQ', '<t>MQ testing message</t>', '59f091ab5ef9faa329e3e659be9ef62a', 0, '', '1lsv88kf', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(41, 28, 3, 74, 0, '202.161.33.32', 1502888682, 0, 0, 0, 1, 0, '', 'Re: testing demo MQ', '<t>hahahaha</t>', '4f0b36a34946153c358f8b243428a1eb', 0, '', '2yfhjhtp', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(45, 29, 3, 83, 0, '202.161.33.32', 1502955519, 0, 0, 0, 1, 0, '', 'Re: post a new question jq', '<t>dddddddddddd</t>', '18ab01ae328631617e8f06ddc99fd525', 0, '', '1uqbs6v3', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(46, 29, 3, 87, 0, '202.161.33.32', 1502955595, 0, 0, 0, 1, 0, '', 'Re: post a new question jq', '<t>ssssssssss</t>', '033c91317f9b6795106a825cf8ef773d', 0, '', '3mcqi88h', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(47, 29, 3, 83, 0, '202.161.33.32', 1502956065, 0, 0, 0, 1, 0, '', 'Re: post a new question jq', '<t>1234567890</t>', 'e807f1fcf82d132f9bb018ca6738a19f', 0, '', '38444tls', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(48, 30, 3, 83, 0, '202.161.33.32', 1502956119, 0, 0, 0, 1, 0, '', 'sfa', '<t>HI</t>', 'bf8c144140b15befb8ce662632a7b76e', 0, '', '6xalcrs9', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(49, 30, 3, 74, 0, '202.161.33.32', 1502959244, 0, 0, 0, 1, 0, '', 'Re: sfa', '<t>reply to sfa</t>', '275a83db493d916a71466ba9d0e9c8a1', 0, '', '22ei8e7x', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(50, 31, 3, 89, 0, '202.161.33.32', 1502962474, 0, 0, 0, 1, 0, '', 'test post by prof', '<t>TESTING MSG</t>', '026bea616644f4b26ff5227854643f35', 0, '', '2ed1vsyi', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(51, 31, 3, 89, 0, '202.161.33.32', 1502962492, 0, 0, 0, 1, 0, '', 'Re: test post by prof', '<t>REPLY TO MSG</t>', 'b76be6d49804f952ef03fc991532032c', 0, '', 'xoid2gjj', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(52, 32, 3, 90, 0, '202.161.33.32', 1502965896, 0, 0, 0, 1, 0, '', 'test question', '<t>TESTING MSG</t>', '026bea616644f4b26ff5227854643f35', 0, '', 'cw45acql', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
(53, 32, 3, 90, 0, '202.161.33.32', 1502965935, 0, 0, 0, 1, 0, '', 'Re: test question', '<t>REPLY TO DMSG</t>', 'aa3a281839f055b7943d6fce7a5a98d3', 0, '', '2hsevjml', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts_likes`
--

CREATE TABLE `phpbb_posts_likes` (
  `post_id` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT 'post',
  `timestamp` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_posts_likes`
--

INSERT INTO `phpbb_posts_likes` (`post_id`, `user_id`, `type`, `timestamp`) VALUES
(4, 48, 'post', '1499777972');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE `phpbb_privmsgs` (
  `msg_id` int(10) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
(8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
(12, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(7, 1, 'YAHOO', '', ''),
(8, 1, 'FACEBOOK', '', ''),
(9, 1, 'TWITTER', '', ''),
(10, 1, 'SKYPE', '', ''),
(11, 1, 'YOUTUBE', '', ''),
(12, 1, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE `phpbb_reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_rh_topictags`
--

CREATE TABLE `phpbb_rh_topictags` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tag_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_rh_topictags`
--

INSERT INTO `phpbb_rh_topictags` (`id`, `topic_id`, `tag_id`) VALUES
(35, 31, 8),
(34, 30, 8),
(33, 29, 8),
(32, 28, 8),
(31, 26, 8),
(30, 25, 7),
(29, 24, 7),
(28, 23, 7),
(27, 22, 7),
(26, 21, 7),
(25, 20, 7),
(24, 19, 6),
(36, 32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_rh_topictags_tag`
--

CREATE TABLE `phpbb_rh_topictags_tag` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `tag` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tag_lowercase` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_rh_topictags_tag`
--

INSERT INTO `phpbb_rh_topictags_tag` (`id`, `tag`, `count`, `tag_lowercase`) VALUES
(6, 'LOOKUP', 1, 'lookup'),
(8, 'IF', 4, 'if'),
(7, 'VLOOKUP', 6, 'vlookup');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE `phpbb_search_wordlist` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'first', 0, 1),
(2, 'post', 0, 12),
(3, 'hahahah', 0, 2),
(4, 'jul', 0, 0),
(5, 'ssss', 0, 1),
(6, 'sssss', 0, 1),
(7, 'hahaha', 0, 1),
(8, 'test', 0, 11),
(9, 'tags', 0, 5),
(10, 'ffff', 0, 0),
(11, 'fff', 0, 0),
(12, 'dddd', 0, 0),
(13, 'second', 0, 1),
(14, 'question', 0, 26),
(15, 'regarding', 0, 15),
(16, 'sss', 0, 0),
(17, 'abcde', 0, 0),
(18, 'ajdjd', 0, 0),
(19, 'sssssssssss', 0, 0),
(20, 'ssssssssssssssssssssss', 0, 1),
(21, 'new', 0, 9),
(22, 'admin', 0, 0),
(23, 'dddddddddddd', 0, 1),
(24, 'here', 0, 0),
(25, 'the', 0, 8),
(26, 'content', 0, 0),
(27, 'with', 0, 1),
(28, 'correct', 0, 0),
(29, 'ddddddddddddddddddddddddddddddddddd', 0, 0),
(30, 'hahahahahahahaha', 0, 0),
(31, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, 0),
(32, 'incorrect', 0, 0),
(33, 'creating', 0, 5),
(34, 'subject', 0, 5),
(35, 'and', 0, 5),
(36, 'inputting', 0, 5),
(37, 'this', 0, 14),
(38, 'message', 0, 16),
(39, 'for', 0, 13),
(40, 'testing', 0, 21),
(41, 'purposes', 0, 14),
(42, 'query', 0, 6),
(43, 'vlookup', 0, 5),
(44, 'testinguser', 0, 0),
(51, 'testuser', 0, 1),
(45, 'clarifying', 0, 9),
(46, 'class', 0, 9),
(47, 'concepts', 0, 9),
(48, 'lookup', 0, 9),
(49, 'reply', 0, 11),
(50, 'user', 0, 8),
(52, 'vloopup', 0, 1),
(53, 'user123', 0, 1),
(54, 'chleloo', 0, 1),
(55, 'hello', 0, 1),
(56, 'thomasthetrain', 0, 1),
(57, 'wkliaw', 0, 1),
(58, '2015', 0, 1),
(59, 'min', 0, 1),
(60, 'quan', 0, 1),
(61, 'pull', 0, 3),
(62, 'function', 0, 3),
(63, 'msg', 0, 4),
(64, 'jqii', 0, 2),
(65, 'demo', 0, 2),
(66, 'hahahaha', 0, 1),
(67, 'haha', 0, 1),
(68, 'ssssssssss', 0, 1),
(69, '1234567890', 0, 1),
(70, 'sfa', 0, 3),
(71, 'prof', 0, 2),
(72, 'dmsg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(42, 2, 1),
(43, 2, 1),
(44, 2, 1),
(45, 2, 1),
(46, 2, 1),
(47, 2, 1),
(50, 2, 1),
(51, 2, 1),
(44, 6, 0),
(39, 7, 0),
(37, 8, 1),
(38, 8, 1),
(39, 8, 1),
(42, 8, 0),
(50, 8, 1),
(51, 8, 1),
(52, 8, 1),
(53, 8, 1),
(23, 14, 0),
(24, 14, 0),
(25, 14, 0),
(26, 14, 0),
(27, 14, 0),
(28, 14, 0),
(30, 14, 0),
(31, 14, 0),
(32, 14, 0),
(33, 14, 0),
(34, 14, 0),
(35, 14, 0),
(36, 14, 0),
(42, 14, 1),
(43, 14, 1),
(44, 14, 1),
(45, 14, 1),
(46, 14, 1),
(47, 14, 1),
(52, 14, 1),
(53, 14, 1),
(22, 15, 1),
(23, 15, 1),
(24, 15, 1),
(25, 15, 1),
(26, 15, 1),
(27, 15, 1),
(28, 15, 1),
(29, 15, 1),
(30, 15, 1),
(31, 15, 1),
(32, 15, 1),
(33, 15, 1),
(34, 15, 1),
(35, 15, 1),
(36, 15, 1),
(42, 21, 1),
(43, 21, 1),
(44, 21, 1),
(45, 21, 1),
(46, 21, 1),
(47, 21, 1),
(45, 23, 0),
(23, 25, 0),
(26, 25, 0),
(27, 25, 0),
(28, 25, 0),
(30, 25, 0),
(32, 25, 0),
(35, 25, 0),
(36, 25, 0),
(24, 33, 0),
(25, 33, 0),
(31, 33, 0),
(33, 33, 0),
(34, 33, 0),
(24, 34, 0),
(25, 34, 0),
(31, 34, 0),
(33, 34, 0),
(34, 34, 0),
(24, 35, 0),
(25, 35, 0),
(31, 35, 0),
(33, 35, 0),
(34, 35, 0),
(24, 36, 0),
(25, 36, 0),
(31, 36, 0),
(33, 36, 0),
(34, 36, 0),
(23, 37, 0),
(24, 37, 0),
(25, 37, 0),
(26, 37, 0),
(27, 37, 0),
(28, 37, 0),
(30, 37, 0),
(31, 37, 0),
(32, 37, 0),
(33, 37, 0),
(34, 37, 0),
(35, 37, 0),
(36, 37, 0),
(37, 37, 0),
(23, 38, 0),
(24, 38, 0),
(25, 38, 0),
(26, 38, 0),
(27, 38, 0),
(28, 38, 0),
(30, 38, 0),
(31, 38, 0),
(32, 38, 0),
(33, 38, 0),
(34, 38, 0),
(35, 38, 0),
(36, 38, 0),
(37, 38, 0),
(40, 38, 0),
(42, 38, 0),
(23, 39, 0),
(24, 39, 0),
(25, 39, 0),
(26, 39, 0),
(27, 39, 0),
(28, 39, 0),
(30, 39, 0),
(31, 39, 0),
(32, 39, 0),
(33, 39, 0),
(34, 39, 0),
(35, 39, 0),
(36, 39, 0),
(22, 40, 0),
(23, 40, 0),
(24, 40, 0),
(25, 40, 0),
(26, 40, 0),
(27, 40, 0),
(28, 40, 0),
(30, 40, 0),
(31, 40, 0),
(32, 40, 0),
(33, 40, 0),
(34, 40, 0),
(35, 40, 0),
(36, 40, 0),
(37, 40, 0),
(38, 40, 0),
(40, 40, 0),
(40, 40, 1),
(41, 40, 1),
(50, 40, 0),
(52, 40, 0),
(22, 41, 0),
(23, 41, 0),
(24, 41, 0),
(25, 41, 0),
(26, 41, 0),
(27, 41, 0),
(28, 41, 0),
(30, 41, 0),
(31, 41, 0),
(32, 41, 0),
(33, 41, 0),
(34, 41, 0),
(35, 41, 0),
(36, 41, 0),
(24, 42, 1),
(25, 42, 1),
(29, 42, 1),
(31, 42, 1),
(33, 42, 1),
(34, 42, 1),
(24, 43, 1),
(29, 43, 1),
(31, 43, 1),
(33, 43, 1),
(34, 43, 1),
(22, 45, 1),
(23, 45, 1),
(26, 45, 1),
(27, 45, 1),
(28, 45, 1),
(30, 45, 1),
(32, 45, 1),
(35, 45, 1),
(36, 45, 1),
(22, 46, 1),
(23, 46, 1),
(26, 46, 1),
(27, 46, 1),
(28, 46, 1),
(30, 46, 1),
(32, 46, 1),
(35, 46, 1),
(36, 46, 1),
(22, 47, 1),
(23, 47, 1),
(26, 47, 1),
(27, 47, 1),
(28, 47, 1),
(30, 47, 1),
(32, 47, 1),
(35, 47, 1),
(36, 47, 1),
(22, 48, 1),
(23, 48, 1),
(26, 48, 1),
(27, 48, 1),
(28, 48, 1),
(30, 48, 1),
(32, 48, 1),
(35, 48, 1),
(36, 48, 1),
(23, 49, 0),
(26, 49, 0),
(27, 49, 0),
(28, 49, 0),
(30, 49, 0),
(32, 49, 0),
(35, 49, 0),
(36, 49, 0),
(49, 49, 0),
(51, 49, 0),
(53, 49, 0),
(23, 50, 0),
(26, 50, 0),
(27, 50, 0),
(28, 50, 0),
(30, 50, 0),
(32, 50, 0),
(35, 50, 0),
(36, 50, 0),
(24, 51, 1),
(25, 52, 1),
(25, 53, 1),
(29, 54, 0),
(29, 55, 1),
(31, 56, 1),
(33, 57, 1),
(33, 58, 1),
(34, 59, 1),
(34, 60, 1),
(37, 61, 1),
(38, 61, 1),
(39, 61, 1),
(37, 62, 1),
(38, 62, 1),
(39, 62, 1),
(38, 63, 0),
(50, 63, 0),
(51, 63, 0),
(52, 63, 0),
(38, 64, 1),
(39, 64, 1),
(40, 65, 1),
(41, 65, 1),
(41, 66, 0),
(43, 67, 0),
(46, 68, 0),
(47, 69, 0),
(48, 70, 1),
(49, 70, 0),
(49, 70, 1),
(50, 71, 1),
(51, 71, 1),
(53, 72, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('6fc2a85f813cc4a07323d2be5deed350', 90, 1502965804, 1502965804, 1502965936, '202.161.33.32', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '', 'viewtopic.php?f=3&p=53&t=32', 1, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions_keys`
--

INSERT INTO `phpbb_sessions_keys` (`key_id`, `user_id`, `last_ip`, `last_login`) VALUES
('fc45c2ad415a1c341e2a47225bb390b7', 2, '::1', 1501911423);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', 'kNg=', 0, ''),
(2, 'Flat Style', '© Ian Bradley 2017', 1, 'flat-style', '+Ng=', 1, 'prosilver'),
(3, 'Flat Style Blue', '© Ian Bradley 2017', 1, 'flat-style-blue', '+Ng=', 2, 'prosilver/flat-style');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_teampage`
--

CREATE TABLE `phpbb_teampage` (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE `phpbb_topics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
(32, 3, 0, 0, 0, 'test question', 90, 1502965896, 0, 1, 0, 0, 52, 'prof9user', '', 53, 90, 'prof9user', '', 'Re: test question', 1502965935, 1502965935, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 2, 0, 0),
(31, 3, 0, 0, 0, 'test post by prof', 89, 1502962474, 0, 1, 0, 0, 50, 'prof7user', '', 51, 89, 'prof7user', '', 'Re: test post by prof', 1502962492, 1502962492, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 2, 0, 0),
(29, 3, 0, 0, 0, 'post a new question jq', 74, 1502955196, 0, 5, 0, 0, 42, 'haprof', '', 47, 83, 'prof1user', '', 'Re: post a new question jq', 1502956065, 1502956065, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 6, 0, 0),
(25, 3, 0, 0, 0, 'Query regarding VLOOKUP- min quan', 68, 1502514105, 0, 1, 0, 0, 34, 'minquan', '', 34, 68, 'minquan', '', 'Query regarding VLOOKUP- min quan', 1502514105, 1502514105, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(30, 3, 0, 0, 0, 'sfa', 83, 1502956119, 0, 2, 0, 0, 48, 'prof1user', '', 49, 74, 'haprof', '', 'Re: sfa', 1502959244, 1502959244, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 2, 0, 0),
(24, 3, 0, 0, 0, '“Query regarding VLOOKUP – wkliaw.2015', 67, 1502514068, 0, 2, 0, 0, 33, 'wkliaw.2015', '', 33, 67, 'wkliaw.2015', '', '“Query regarding VLOOKUP – wkliaw.2015', 1502514068, 1502888755, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(23, 3, 0, 0, 0, 'Query regarding VLOOKUP - thomasthetrain', 66, 1502512331, 0, 3, 0, 0, 31, 'thomasthetrain', '', 31, 66, 'thomasthetrain', '', 'Query regarding VLOOKUP - thomasthetrain', 1502512331, 1502512668, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(22, 3, 0, 0, 0, 'Query regarding VLOOKUP_Hello', 65, 1502512283, 0, 1, 0, 0, 29, 'Hello', '', 29, 65, 'Hello', '', 'Query regarding VLOOKUP_Hello', 1502512283, 1502512283, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(21, 3, 0, 0, 0, 'Query regarding VLOOPUP _ user123', 60, 1502511703, 0, 2, 0, 0, 25, 'user123', '', 25, 60, 'user123', '', 'Query regarding VLOOPUP _ user123', 1502511703, 1502514149, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(20, 3, 0, 0, 0, 'Query regarding VLOOKUP – testuser', 61, 1502511700, 0, 1, 0, 0, 24, 'testuser', '', 24, 61, 'testuser', '', 'Query regarding VLOOKUP – testuser', 1502511700, 1502511700, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
(19, 3, 0, 0, 0, 'Clarifying class concepts regarding LOOKUP', 56, 1502470016, 0, 21, 0, 0, 22, 'testinguser', '', 36, 68, 'minquan', '', 'Re: Clarifying class concepts regarding LOOKUP', 1502514199, 1502514712, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE `phpbb_topics_posted` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(83, 30, 1),
(87, 29, 1),
(74, 28, 1),
(83, 29, 1),
(74, 29, 1),
(68, 19, 1),
(67, 19, 1),
(68, 25, 1),
(67, 24, 1),
(66, 19, 1),
(66, 23, 1),
(65, 19, 1),
(65, 22, 1),
(61, 19, 1),
(59, 19, 1),
(60, 19, 1),
(60, 21, 1),
(61, 20, 1),
(56, 19, 1),
(74, 30, 1),
(89, 31, 1),
(90, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE `phpbb_topics_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_track`
--

INSERT INTO `phpbb_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(65, 19, 3, 1502512319),
(66, 23, 3, 1502512331),
(61, 19, 3, 1502511839),
(59, 19, 3, 1502511823),
(60, 19, 3, 1502511803),
(61, 20, 3, 1502511700),
(56, 19, 3, 1502470172),
(60, 21, 3, 1502511703),
(66, 19, 3, 1502512461),
(67, 24, 3, 1502514068),
(68, 25, 3, 1502514105),
(67, 19, 3, 1502514147),
(49, 21, 3, 1502511703),
(68, 19, 3, 1502514199),
(49, 19, 3, 1502514199),
(74, 29, 3, 1502955221),
(85, 27, 3, 1502881309),
(74, 30, 3, 1502959244),
(87, 29, 3, 1502955595),
(83, 30, 3, 1502956119),
(89, 31, 3, 1502962492),
(90, 32, 3, 1502965935);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE `phpbb_topics_watch` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE `phpbb_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000000g13ydq8000000', 0, '', 1499165855, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'da5fca5b3ff740ec', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zjhra0hs\n\n\nzik0zjhra0hs', 0, '::1', 1499165855, 'admin', 'admin', '$2y$10$TTk6qcOS996mRRUT8XDeJemrG0gzU8jOqjMNV.ykwuaRnA8mU3WR.', 0, 'mq.wang.2014@sis.smu.edu.sg', 25318042227, '', 1502876222, 0, 1501911531, 'mcp.php?f=3&forum_action=&i=main&mode=forum_view&start=0', '', 1500292568, 0, 0, 0, 0, 0, 0, 'en', '', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 229925, '', '', 0, 0, '', '', '', '', '', '', 'a2701106b96f8a8e', 0, 0, 0),
(3, 2, 6, '', 0, '', 1499165856, 'AdsBot [Google]', 'adsbot [google]', '', 1499165856, '', 0, '', 0, 1499165856, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '912cbd9afb9488bb', 0, 0, 0),
(4, 2, 6, '', 0, '', 1499165857, 'Alexa [Bot]', 'alexa [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f9804b8e5bf9a4a6', 0, 0, 0),
(5, 2, 6, '', 0, '', 1499165857, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7a1759edd92730f9', 0, 0, 0),
(6, 2, 6, '', 0, '', 1499165857, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5ae0eb165ea17733', 0, 0, 0),
(7, 2, 6, '', 0, '', 1499165857, 'Baidu [Spider]', 'baidu [spider]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ced237f91ec0aa0c', 0, 0, 0),
(8, 2, 6, '', 0, '', 1499165857, 'Bing [Bot]', 'bing [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '24f4cac081dcaf89', 0, 0, 0),
(9, 2, 6, '', 0, '', 1499165857, 'Exabot [Bot]', 'exabot [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e6667b51052ec05b', 0, 0, 0),
(10, 2, 6, '', 0, '', 1499165857, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f6ee44917772b131', 0, 0, 0),
(11, 2, 6, '', 0, '', 1499165857, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ceeb25f32211a4f', 0, 0, 0),
(12, 2, 6, '', 0, '', 1499165857, 'Francis [Bot]', 'francis [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd1051aa1dd021320', 0, 0, 0),
(13, 2, 6, '', 0, '', 1499165857, 'Gigabot [Bot]', 'gigabot [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '97f8592a40242072', 0, 0, 0),
(14, 2, 6, '', 0, '', 1499165857, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'caee250c5f342006', 0, 0, 0),
(15, 2, 6, '', 0, '', 1499165857, 'Google Desktop', 'google desktop', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '53a35437354ecfc6', 0, 0, 0),
(16, 2, 6, '', 0, '', 1499165857, 'Google Feedfetcher', 'google feedfetcher', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f6070d3d06388191', 0, 0, 0),
(17, 2, 6, '', 0, '', 1499165857, 'Google [Bot]', 'google [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4bf8aac215da2d9a', 0, 0, 0),
(18, 2, 6, '', 0, '', 1499165857, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '51efdb735f6c192a', 0, 0, 0),
(19, 2, 6, '', 0, '', 1499165857, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fd7762b1e0cac1a4', 0, 0, 0),
(20, 2, 6, '', 0, '', 1499165857, 'IBM Research [Bot]', 'ibm research [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c1de66df79f4f5a7', 0, 0, 0),
(21, 2, 6, '', 0, '', 1499165857, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '685b73aecf6fdbbe', 0, 0, 0),
(22, 2, 6, '', 0, '', 1499165857, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ac910b4cdff6b91f', 0, 0, 0),
(23, 2, 6, '', 0, '', 1499165857, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9e7ada610539592b', 0, 0, 0),
(24, 2, 6, '', 0, '', 1499165857, 'Metager [Bot]', 'metager [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0b2164bdd2e07881', 0, 0, 0),
(25, 2, 6, '', 0, '', 1499165857, 'MSN NewsBlogs', 'msn newsblogs', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '86f86173c80c5cef', 0, 0, 0),
(26, 2, 6, '', 0, '', 1499165857, 'MSN [Bot]', 'msn [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'dbd9d3577e0c149f', 0, 0, 0),
(27, 2, 6, '', 0, '', 1499165857, 'MSNbot Media', 'msnbot media', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '451a460f4a323d68', 0, 0, 0),
(28, 2, 6, '', 0, '', 1499165857, 'Nutch [Bot]', 'nutch [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7835b89c43950c1a', 0, 0, 0),
(29, 2, 6, '', 0, '', 1499165857, 'Online link [Validator]', 'online link [validator]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3305c548520849f9', 0, 0, 0),
(30, 2, 6, '', 0, '', 1499165857, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '810a6f3f87c4c757', 0, 0, 0),
(31, 2, 6, '', 0, '', 1499165857, 'Sensis [Crawler]', 'sensis [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '64e2da6dfb5035bd', 0, 0, 0),
(32, 2, 6, '', 0, '', 1499165857, 'SEO Crawler', 'seo crawler', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4dc94582c7d4c723', 0, 0, 0),
(33, 2, 6, '', 0, '', 1499165857, 'Seoma [Crawler]', 'seoma [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fa1efa43fd8ab99d', 0, 0, 0),
(34, 2, 6, '', 0, '', 1499165857, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0f13070b3ee19007', 0, 0, 0),
(35, 2, 6, '', 0, '', 1499165857, 'Snappy [Bot]', 'snappy [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e18ed1e94d578fe1', 0, 0, 0),
(36, 2, 6, '', 0, '', 1499165857, 'Steeler [Crawler]', 'steeler [crawler]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '44314eb450266b3d', 0, 0, 0),
(37, 2, 6, '', 0, '', 1499165857, 'Telekom [Bot]', 'telekom [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3343e07642a27e30', 0, 0, 0),
(38, 2, 6, '', 0, '', 1499165857, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8e0c5d77e6d6077f', 0, 0, 0),
(39, 2, 6, '', 0, '', 1499165857, 'Voyager [Bot]', 'voyager [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cd26e7af18b284a9', 0, 0, 0),
(40, 2, 6, '', 0, '', 1499165857, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd4cb2d081e2319a2', 0, 0, 0),
(41, 2, 6, '', 0, '', 1499165857, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd3abedc4d2dd54c0', 0, 0, 0),
(42, 2, 6, '', 0, '', 1499165857, 'W3C [Validator]', 'w3c [validator]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '21ccd555cb0d4747', 0, 0, 0),
(43, 2, 6, '', 0, '', 1499165857, 'YaCy [Bot]', 'yacy [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ca37b8a171451fbf', 0, 0, 0),
(44, 2, 6, '', 0, '', 1499165857, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1428def226ecb7fa', 0, 0, 0),
(45, 2, 6, '', 0, '', 1499165857, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9598c0d2715543bd', 0, 0, 0),
(46, 2, 6, '', 0, '', 1499165857, 'Yahoo [Bot]', 'yahoo [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '324a5663926788fc', 0, 0, 0),
(47, 2, 6, '', 0, '', 1499165857, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1499165857, '', 0, '', 0, 1499165857, 0, '', '', 0, 0, 0, 1, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '986950f6671ad71b', 0, 0, 0),
(48, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '::1', 1499253141, 'user', 'user', '$2y$10$9z5SNJuKP9BO3L7..U8GzeVNVeChCOiH.8aTEzpOZfis82SUVKnOy', 1499253141, 'miaoqiong@live.com', 170532770718, '', 1502261678, 1499253141, 1501911170, 'viewforum.php?f=3', '', 1501926625, 0, 0, 0, 0, 0, 0, 'en', 'Antarctica/Casey', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'aacd6755eb400d9f', 0, 0, 0),
(49, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502202224, 'forumuser', 'forumuser', '$2y$10$vIS0BmFnIU.sDrbxFooC5uyLDG/Qhecm/s3IsodVwDbXuhPKls9H2', 1502202224, 'forumuser@gmail.com', 217383442119, '', 1502878740, 1502202224, 0, 'viewforum.php?f=3', '', 1502508590, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '8450d623cf7da281', 0, 0, 0),
(50, 0, 2, '', 0, '', 1502203545, 'miao2014', 'miao2014', '$2y$10$lHqeXCIsWpy/OQq.CJ2LYO9ZuXNVKg14yvZINn2uMRytVk5YBl9kS', 1502203545, 'miao2014@gmail.com', 353984214318, '', 1502204397, 1502203545, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bfd483829cae9457', 0, 0, 0),
(51, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502203994, 'lauren2014', 'lauren2014', '$2y$10$qSCRMkfOm01AD1dMR4i/7./I0u87898zhxSHPwumiin0fppmgvl6u', 1502203994, 'lauren2014@gmail.com', 21055873720, '', 1502366097, 1502203994, 1502365740, 'search.php?fid%5B0%5D=3&keywords=post', '', 1502366058, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3e0f49a6873ac532', 0, 0, 0),
(52, 0, 2, '', 0, '', 1502363956, 'prof', 'prof', '5f4dcc3b5aa765d61d8327deb882cf99', 1502363956, 'professor@smu.edu.sg', 313057172220, '', 0, 1502363956, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '7bf248c031f96759', 0, 0, 0),
(53, 0, 2, '', 0, '', 1502364079, 'andy', 'andy', '5f4dcc3b5aa765d61d8327deb882cf99', 1502364079, 'andy@gmail.smu.edu.sg', 94488111021, '', 0, 1502364079, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cbfa704d38d201e7', 0, 0, 0),
(54, 0, 2, '', 0, '', 1502364812, 'tom', 'tom', '202cb962ac59075b964b07152d234b70', 1502364812, 'tom@gmail.com', 369173351113, '', 0, 1502364812, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '71b93d1917d166b2', 0, 0, 0),
(55, 0, 2, '', 0, '', 1502369027, 'haha2014', 'haha2014', '96e79218965eb72c92a549dd5a330112', 1502369027, 'haha2014@gmail.com', 376016398118, '', 0, 1502369027, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5d8f000eaad18078', 0, 0, 0),
(56, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502455253, 'testinguser', 'testinguser', '$2y$10$Oho6ECZ60QjzkleOBcbnou3F9.QZp3N8qgXGbCfEZTS/REaRXTRmm', 1502455253, 'testinguser@outlook.com', 293730003723, '', 1502503224, 1502455253, 1502470172, 'search.php?search_id=egosearch', '', 1502503217, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c39f56035ec62dd3', 0, 0, 0),
(57, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502501201, 'testinguser1', 'testinguser1', '$2y$10$ibcbJi7RQMqFR6e0cpTXQuIAWcyaVXidXFtjL1m2/dlfSYEPLzIr.', 1502501201, 'testinguser1@outlook.com', 229868634524, '', 1502501211, 1502501201, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ab3975460be3cbc9', 0, 0, 0),
(58, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502507623, 'alvin.toh.2014', 'alvin.toh.2014', '$2y$10$.KcJgv9Qp/G2iHVgPKtdEewK2/W6wVlUnpWOyOcQHTmz2rnurkkk.', 1502507623, 'alvin.toh.2014@sis.smu.edu.sg', 75686950629, '', 1502507743, 1502507623, 0, 'posting.php?f=3&mode=post', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e141416165003713', 0, 0, 0),
(59, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502511531, 'tzj', 'tzj', '$2y$10$7G0H.ENMYM2j4TDfZNT6seYZES7kUi2nbROd33d3S3ODnhjSHp2Qe', 1502511531, 'zijie.toh.2016@sis.smu.edu.sg', 329802271729, '', 1502512195, 1502511531, 1502511823, 'search.php?search_id=egosearch', '', 1502511882, 0, 0, 0, 0, 0, 1, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f82adadc7a4d3ab0', 0, 0, 0),
(60, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502511535, 'user123', 'user123', '$2y$10$0mwFu/S/yxe2j.skEql6D.EkXbEQQmySYyjadF2TplX8vsO1Icdg6', 1502511535, 'aldric.bek.2016@sis.smu.edu.sg', 376271458630, '', 1502511841, 1502511535, 1502511803, 'search.php?search_id=newposts', '', 1502511824, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '34207a0a711547a7', 0, 0, 0),
(61, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502511552, 'testuser', 'testuser', '$2y$10$K7qOFIX7IOpblkKdxmMGduBbc2PaWnXTyZwKo/gstspMTEpptoSyq', 1502511552, 'chijao.foo.2016@sis.smu.edu.sg', 159356956530, '', 1502512054, 1502511552, 1502511839, 'search.php?search_id=newposts', '', 1502511853, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '25ccf6737eb2bbc4', 0, 0, 0),
(62, 0, 2, '', 0, '', 1502511700, 'mbeh', 'mbeh', '07787964a1e74335c923a46348e1e865', 1502511700, 'minyan.beh.2014@sis.smu.edu.sg', 311443172330, '', 0, 1502511700, 0, '', '', 0, 0, 0, 3, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c27cf109a80a8785', 0, 0, 0),
(63, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502511971, 'teletubbies', 'teletubbies', '07787964a1e74335c923a46348e1e865', 1502511971, 'behminyan@gmail.com', 410132956219, '', 0, 1502511971, 0, '', '', 0, 0, 0, 3, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '21VQ98B', '$2y$10$dfjKAOJ4J3en60chsGxTV.R2tprc6MESxsdaoMG62iv7pHE6Stx4i', 'f0b850ac54d17266', 0, 0, 0),
(64, 0, 2, '', 0, '', 1502512128, 'testinggg', 'testinggg', '5f4dcc3b5aa765d61d8327deb882cf99', 1502512128, 'abc@123.com', 42790866611, '', 0, 1502512128, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a6c5acf138a8e1cd', 0, 0, 0),
(65, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502512160, 'Hello', 'hello', '$2y$10$4Gw8opaaCDiukawOXI1RBu4MXf.vWzd7qlOoIW1s7DoPHsoVXPKQW', 1502512160, 'jwwong.2015@economics.smu.edu.sg', 295585530432, '', 1502512656, 1502512160, 1502512319, 'index.php', '', 1502512354, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '00ba18cb9d685dca', 0, 0, 0),
(66, 0, 2, '00000000000v667wt0hra0hs\n\n\nm6b2lnhra0hs', 0, '202.161.33.32', 1502512216, 'thomasthetrain', 'thomasthetrain', '$2y$10$MgGtMgniYAifD51zve63LeWtENEwkIfQApB.jJ3kqbSsjpLAqIofe', 1502512216, 'minyan.beh.2014@smu.edu.sg', 32437953026, '', 1502512740, 1502512216, 1502512461, 'search.php?search_id=egosearch', '', 1502512472, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '9bd50d25cc4f21c4', 1, 0, 0),
(67, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502513910, 'wkliaw.2015', 'wkliaw.2015', '$2y$10$vyGfi6/12eWOFPX1p.uAyeBbuzMo3pIJvk.yr1OsiXPtzitbq/9O6', 1502513910, 'wkliaw.2015@sis.smu.edu.sg', 214054597926, '', 1502514191, 1502513910, 1502514147, 'search.php?search_id=newposts', '', 1502514167, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'da568c3b73bc0cba', 0, 0, 0),
(68, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502514000, 'minquan', 'minquan', '$2y$10$HAKPCAdpQN3f/zocBLuhuORtFvk37FsCXVXGG/fObTMVGpK2/W2vm', 1502514000, 'mqyeow.2015@smu.edu.sg', 279693259722, '', 1502514230, 1502514000, 1502514199, 'search.php?search_id=newposts', '', 1502514165, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e8299b6a5900ded9', 0, 0, 0),
(72, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502873416, 'testuserProf', 'testuserprof', '$2y$10$3m865hXgK0JGY8KL2E/DE.iaqiS9zU9WgYjvnV8/Q59z2pGm.ysk2', 1502873416, 'testuserprof@smu.edu.sg', 172425560523, '', 1502873542, 1502873416, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3f7ec9b28ede71c7', 0, 0, 0),
(79, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502877570, '1234Prof', '1234prof', '$2y$10$O29hg5yWjLgxfHUMPg3tz.G2YYsW.afdoa3SI.mQm01LFXUeqqDCK', 1502877570, '1234prof@smu.edu.sg', 192467340619, '', 1502877594, 1502877570, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '6d9a3b0553704485', 0, 0, 0),
(74, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502875123, 'haprof', 'haprof', '$2y$10$s1H65iFzcWUqrqDh/DJ1t.0rtHgNaqCuTb1r190dofSnSupWLELoe', 1502875123, 'haprof@smu.edu.sg', 310114115217, '', 1502959261, 1502875123, 1502959244, '', '', 1502888744, 0, 0, 0, 0, 0, 5, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '8b81c7d95e755167', 0, 0, 0),
(75, 0, 2, '', 0, '', 1502875370, 'aaProf', 'aaprof', '5f4dcc3b5aa765d61d8327deb882cf99', 1502875370, 'aaprof@smu.edu.sg', 364702425317, '', 0, 1502875370, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '0fba628ca950194c', 0, 0, 0),
(76, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502875489, 'ewsProf', 'ewsprof', '$2y$10$Ii2QwgHva5HxxYKOOrODGe03CSWYoNuwL5DG7b1msXEvCMj1R/5DC', 1502875489, 'ewsprof@smu.edu.sg', 277286469018, '', 1502876486, 1502875489, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e61f7fc1ad5a0f59', 0, 0, 0),
(77, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502875778, 'ahProf', 'ahprof', '$2y$10$Qn2lSa9czA.Rkr0J3zWhx.sH2iSVty4tljSLzMsF3NlEZJaFPxz8e', 1502875778, 'ahprof@smu.edu.sg', 6882166717, '', 1502875919, 1502875778, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ac272a79a3b9dcf', 0, 0, 0),
(78, 0, 2, '', 0, '', 1502876028, '16Prof', '16prof', '5f4dcc3b5aa765d61d8327deb882cf99', 1502876028, '16prof@smu.edu.sg', 279910013317, '', 0, 1502876028, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '346a2e89e01d2ee5', 0, 0, 0),
(80, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502878002, 'kprof', 'kprof', '$2y$10$eA/rSXKaTLhs7dTUOdKYue3PDxVgRhfQDRij6naOxDGy3u9GdIWcK', 1502878002, 'kprof@smu.edu.sg', 424081432416, '', 1502878009, 1502878002, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e6916e889cbe6657', 0, 0, 0),
(81, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502878048, 'hprof', 'hprof', '$2y$10$gBNFVyW2l8gfawmNwzMWrOfIW/FbuDUGbEuWC.PGXymAYzQNcfVwq', 1502878048, 'hprof@smu.edu.sg', 357440000616, '', 1502878391, 1502878048, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5089328f1de8c60c', 0, 0, 0),
(82, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502878383, 'lprof', 'lprof', '$2y$10$pzeWOF1Mz1EjwHwfJhyiCu.5PIPAZqUHCnwBBWz1.o51TFDUg9PzO', 1502878383, 'lprof@smu.edu.sg', 2072793716, '', 1502878409, 1502878383, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '7c7117b238dad8bb', 0, 0, 0),
(83, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502878774, 'prof1user', 'prof1user', '$2y$10$Hp4Lp9dbYTJ357fafhIbTOD2AzIgmYCAEIMzaiE4cSkUHRbJUQGc.', 1502878774, 'prof1user@smu.edu.sg', 319327794920, '', 1502956119, 1502878774, 1502956119, 'viewtopic.php?f=3&t=30', '', 0, 0, 0, 0, 0, 0, 4, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd45f92dcd9832edb', 0, 0, 0),
(84, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502878850, 'prof2user', 'prof2user', '$2y$10$yjvBgR0E7U3PVF3TlXv60OJ0m5YpihrZaoqVfsgbc9eeYWplM/M7K', 1502878850, 'prof2user@smu.edu.sg', 254366337520, '', 1502878872, 1502878850, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '2d9a19d6e4b55eb2', 0, 0, 0),
(87, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502955568, 'prof4user', 'prof4user', '$2y$10$ZC0Zt3SOsBFBfIa0dimwauJH.D3CtKsfk7kE.IlRvdNWWkmurFzYu', 1502955568, 'prof4user@smu.edu.sg', 328914148320, '', 1502956005, 1502955568, 1502955595, '', '', 0, 0, 0, 0, 0, 0, 1, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '2853927d941df448', 0, 0, 0),
(86, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502888895, 'prof3user', 'prof3user', '$2y$10$L81rj/vvTmhWCQfdUNyOM.Wbfx5.wMaBOFoQZJsiMrTkqHGlSe2b6', 1502888895, 'prof3user@smu.edu.sg', 97240079820, '', 1502888911, 1502888895, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '4384b2695d54f96c', 0, 0, 0),
(88, 0, 2, '', 0, '', 1502959308, 'prof5user', 'prof5user', 'e10adc3949ba59abbe56e057f20f883e', 1502959308, 'prof5user@smu.edu.sg', 178498802620, '', 0, 1502959308, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd9f48f8fd352dc60', 0, 0, 0),
(89, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502962377, 'prof7user', 'prof7user', '$2y$10$zohtLUUgJUhQAzogch5Ue.VsTVV2F897Jf.8kzB6MtIqzGczTfKum', 1502962377, 'prof7user@smu.edu.sg', 398910364120, '', 1502962492, 1502962377, 1502962492, '', '', 0, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c69bd15ccc66273a', 0, 0, 0),
(90, 0, 2, '00000000000v8lmcxghra0hs\n\n\nm6b2lnhra0hs', 0, '', 1502965673, 'prof9user', 'prof9user', '$2y$10$tDZk9ASxyWgTHz9s5emBgOZnfhTynYuhqmdLByrIlb9jU5J.ZFjFO', 1502965673, 'prof9user@smu.edu.sg', 344392158620, '', 0, 1502965673, 1502965935, '', '', 0, 0, 0, 0, 0, 0, 2, 'en', 'Asia/Singapore', 'D M d, Y g:i a', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3be46bb0b8e5aa05', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(2, 48, 0, 0),
(2, 49, 0, 0),
(2, 50, 0, 0),
(2, 51, 0, 0),
(2, 52, 0, 0),
(2, 53, 0, 0),
(2, 54, 0, 0),
(2, 55, 0, 0),
(2, 56, 0, 0),
(2, 57, 0, 0),
(2, 58, 0, 0),
(2, 59, 0, 0),
(2, 60, 0, 0),
(2, 61, 0, 0),
(2, 62, 0, 0),
(2, 63, 0, 0),
(2, 64, 0, 0),
(2, 65, 0, 0),
(2, 66, 0, 0),
(7, 66, 0, 0),
(2, 67, 0, 0),
(2, 68, 0, 0),
(2, 69, 0, 0),
(2, 70, 0, 0),
(2, 71, 0, 0),
(2, 72, 0, 0),
(2, 73, 0, 0),
(2, 74, 0, 0),
(2, 75, 0, 0),
(2, 76, 0, 0),
(2, 77, 0, 0),
(2, 78, 0, 0),
(2, 79, 0, 0),
(2, 80, 0, 0),
(2, 81, 0, 0),
(2, 82, 0, 0),
(2, 83, 0, 0),
(2, 84, 0, 0),
(2, 85, 0, 0),
(2, 86, 0, 0),
(2, 87, 0, 0),
(2, 88, 0, 0),
(2, 89, 0, 0),
(2, 90, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_notifications`
--

CREATE TABLE `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('notification.type.post', 0, 2, 'notification.method.board', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 2, 'notification.method.board', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1),
('notification.type.post', 0, 48, 'notification.method.email', 1),
('notification.type.topic', 0, 48, 'notification.method.email', 1),
('notification.type.needs_approval', 0, 2, 'notification.method.board', 0),
('notification.type.group_request', 0, 2, 'notification.method.board', 0),
('notification.type.quote', 0, 2, 'notification.method.board', 0),
('notification.type.post', 0, 49, 'notification.method.email', 1),
('notification.type.topic', 0, 49, 'notification.method.email', 1),
('notification.type.post', 0, 50, 'notification.method.email', 1),
('notification.type.topic', 0, 50, 'notification.method.email', 1),
('notification.type.post', 0, 51, 'notification.method.email', 1),
('notification.type.topic', 0, 51, 'notification.method.email', 1),
('notification.type.post', 0, 52, 'notification.method.email', 1),
('notification.type.topic', 0, 52, 'notification.method.email', 1),
('notification.type.post', 0, 53, 'notification.method.email', 1),
('notification.type.topic', 0, 53, 'notification.method.email', 1),
('notification.type.post', 0, 54, 'notification.method.email', 1),
('notification.type.topic', 0, 54, 'notification.method.email', 1),
('notification.type.post', 0, 55, 'notification.method.email', 1),
('notification.type.topic', 0, 55, 'notification.method.email', 1),
('notification.type.post', 0, 56, 'notification.method.email', 1),
('notification.type.topic', 0, 56, 'notification.method.email', 1),
('notification.type.post', 0, 57, 'notification.method.email', 1),
('notification.type.topic', 0, 57, 'notification.method.email', 1),
('notification.type.post', 0, 58, 'notification.method.email', 1),
('notification.type.topic', 0, 58, 'notification.method.email', 1),
('notification.type.post', 0, 59, 'notification.method.email', 1),
('notification.type.topic', 0, 59, 'notification.method.email', 1),
('notification.type.post', 0, 60, 'notification.method.email', 1),
('notification.type.topic', 0, 60, 'notification.method.email', 1),
('notification.type.post', 0, 61, 'notification.method.email', 1),
('notification.type.topic', 0, 61, 'notification.method.email', 1),
('notification.type.post', 0, 62, 'notification.method.email', 1),
('notification.type.topic', 0, 62, 'notification.method.email', 1),
('notification.type.post', 0, 63, 'notification.method.email', 1),
('notification.type.topic', 0, 63, 'notification.method.email', 1),
('notification.type.post', 0, 64, 'notification.method.email', 1),
('notification.type.topic', 0, 64, 'notification.method.email', 1),
('notification.type.post', 0, 65, 'notification.method.email', 1),
('notification.type.topic', 0, 65, 'notification.method.email', 1),
('notification.type.post', 0, 66, 'notification.method.email', 1),
('notification.type.topic', 0, 66, 'notification.method.email', 1),
('notification.type.post', 0, 67, 'notification.method.email', 1),
('notification.type.topic', 0, 67, 'notification.method.email', 1),
('notification.type.post', 0, 68, 'notification.method.email', 1),
('notification.type.topic', 0, 68, 'notification.method.email', 1),
('notification.type.post', 0, 69, 'notification.method.email', 1),
('notification.type.topic', 0, 69, 'notification.method.email', 1),
('notification.type.post', 0, 70, 'notification.method.email', 1),
('notification.type.topic', 0, 70, 'notification.method.email', 1),
('notification.type.post', 0, 71, 'notification.method.email', 1),
('notification.type.topic', 0, 71, 'notification.method.email', 1),
('notification.type.post', 0, 72, 'notification.method.email', 1),
('notification.type.topic', 0, 72, 'notification.method.email', 1),
('notification.type.post', 0, 73, 'notification.method.email', 1),
('notification.type.topic', 0, 73, 'notification.method.email', 1),
('notification.type.post', 0, 74, 'notification.method.email', 1),
('notification.type.topic', 0, 74, 'notification.method.email', 1),
('notification.type.post', 0, 75, 'notification.method.email', 1),
('notification.type.topic', 0, 75, 'notification.method.email', 1),
('notification.type.post', 0, 76, 'notification.method.email', 1),
('notification.type.topic', 0, 76, 'notification.method.email', 1),
('notification.type.post', 0, 77, 'notification.method.email', 1),
('notification.type.topic', 0, 77, 'notification.method.email', 1),
('notification.type.post', 0, 78, 'notification.method.email', 1),
('notification.type.topic', 0, 78, 'notification.method.email', 1),
('notification.type.post', 0, 79, 'notification.method.email', 1),
('notification.type.topic', 0, 79, 'notification.method.email', 1),
('notification.type.post', 0, 80, 'notification.method.email', 1),
('notification.type.topic', 0, 80, 'notification.method.email', 1),
('notification.type.post', 0, 81, 'notification.method.email', 1),
('notification.type.topic', 0, 81, 'notification.method.email', 1),
('notification.type.post', 0, 82, 'notification.method.email', 1),
('notification.type.topic', 0, 82, 'notification.method.email', 1),
('notification.type.post', 0, 83, 'notification.method.email', 1),
('notification.type.topic', 0, 83, 'notification.method.email', 1),
('notification.type.post', 0, 84, 'notification.method.email', 1),
('notification.type.topic', 0, 84, 'notification.method.email', 1),
('notification.type.post', 0, 85, 'notification.method.email', 1),
('notification.type.topic', 0, 85, 'notification.method.email', 1),
('notification.type.post', 0, 86, 'notification.method.email', 1),
('notification.type.topic', 0, 86, 'notification.method.email', 1),
('notification.type.post', 0, 87, 'notification.method.email', 1),
('notification.type.topic', 0, 87, 'notification.method.email', 1),
('notification.type.post', 0, 88, 'notification.method.email', 1),
('notification.type.topic', 0, 88, 'notification.method.email', 1),
('notification.type.post', 0, 89, 'notification.method.email', 1),
('notification.type.topic', 0, 89, 'notification.method.email', 1),
('notification.type.post', 0, 90, 'notification.method.email', 1),
('notification.type.topic', 0, 90, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE `phpbb_words` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE `phpbb_zebra` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `post_class_summary`
--

CREATE TABLE `post_class_summary` (
  `rf_id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `QA_coins` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `smu_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_class_summary`
--

INSERT INTO `post_class_summary` (`rf_id`, `question`, `answer`, `QA_coins`, `week`, `smu_id`) VALUES
(1, 'Looks up 4.19 in column A, and returns the value from column B?', 'LOOKUP(4.19, A2:A6, B2:B6)', 1, 1, 'maoqi.huang.2015'),
(2, 'Looks up 7.66 in column A, matches the nearest smaller value (6.39), and returns the value from column B that is in the same row.', 'LOOKUP(5.75, A2:A6, B2:B6)', 2, 1, 'sw.ang.2015'),
(3, 'Question for RF3', 'Answer for RF3', 2, 1, 'duncan.koh.2013'),
(4, 'Question for RF4', 'Answer for RF4', 1, 1, 'andy.aw.2014'),
(5, 'Question for RF5', 'Answer for RF5', 1, 1, 'lauren.chee.2016'),
(6, 'Question for RF6', 'Answer for RF6', 2, 1, 'shirong.ng.2013'),
(7, 'Question for RF7', 'Answer for RF7', 2, 1, 'yg.tan.2013');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `smu_email` varchar(255) NOT NULL,
  `smu_email_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`smu_email`, `smu_email_id`, `password`) VALUES
('1234Prof@smu.edu.sg', '1234Prof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('16Prof@smu.edu.sg', '16Prof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('aaProf@smu.edu.sg', 'aaProf', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('abc@123.com', 'abc', 'password'),
('ahProf@smu.edu.sg', 'ahProf', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('an@gmail.com.sg', 'an', '123456'),
('andy@gmail.smu.edu.sg', 'andy', 'password'),
('behminyan@gmail.com', 'behminyan', '!@#$%^&*'),
('ewsProf@smu.edu.sg', 'ewsProf', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('forumuser@gmail.com', 'forumuser', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('haprof@smu.edu.sg', 'haprof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('hprof@smu.edu.sg', 'hprof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('kprof@smu.edu.sg', 'kprof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('lprof@smu.edu.sg', 'lprof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('', 'michcheong', '23415678'),
('prof1user@smu.edu.sg', 'prof1user', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('prof2user@smu.edu.sg', 'prof2user', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('prof3user@smu.edu.sg', 'prof3user', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('prof4user@smu.edu.sg', 'prof4user', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('prof5user@smu.edu.sg', 'prof5user', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('prof7user@smu.edu.sg', 'prof7user', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('prof9user@smu.edu.sg', 'prof9user', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('testinguser@outlook.com', 'testinguser', 'testinguser'),
('testuser1Prof@smu.edu.sg', 'testuser1Prof', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('testuserProf@smu.edu.sg', 'testuserProf', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
('tom@gmail.com', 'tom', '123'),
('user', 'user', 'password'),
('', 'wllee', '34125678');

-- --------------------------------------------------------

--
-- Table structure for table `qrauthentication`
--

CREATE TABLE `qrauthentication` (
  `id` int(11) NOT NULL,
  `week` int(2) NOT NULL,
  `teaching_group` int(2) NOT NULL,
  `time` datetime NOT NULL,
  `qrcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qrauthentication`
--

INSERT INTO `qrauthentication` (`id`, `week`, `teaching_group`, `time`, `qrcode`) VALUES
(951, 1, 1, '2017-08-12 13:09:31', 'bR3oLarF'),
(952, 1, 1, '2017-08-12 13:09:56', 'YJKkBSmg'),
(953, 7, 2, '2017-08-16 16:50:49', 'sqyzsunn'),
(954, 7, 2, '2017-08-16 16:51:15', 'humgbopy'),
(955, 7, 2, '2017-08-16 16:51:49', 'aozqnqhc'),
(956, 9, 2, '2017-08-16 17:13:47', 'zzicamas'),
(957, 9, 2, '2017-08-16 17:13:47', 'awymblgh'),
(958, 9, 2, '2017-08-16 17:14:13', 'ceqgtmvk'),
(959, 9, 2, '2017-08-16 17:14:39', 'nfbzffsj'),
(960, 9, 2, '2017-08-16 17:15:02', 'xzsxxxnr'),
(961, 10, 4, '2017-08-16 17:21:10', 'puruopqk'),
(962, 10, 4, '2017-08-16 17:21:36', 'orabocxq'),
(963, 4, 3, '2017-08-16 17:37:57', 'ooajlkfj'),
(964, 4, 2, '2017-08-16 18:09:25', 'dkqpthbm'),
(965, 4, 2, '2017-08-16 18:09:43', 'lvkxwpqe'),
(966, 9, 4, '2017-08-16 18:31:15', 'zsxfsnre'),
(967, 9, 4, '2017-08-16 18:31:41', 'gxnclipf'),
(968, 9, 4, '2017-08-16 18:32:07', 'armwfsni'),
(969, 7, 3, '2017-08-16 21:02:16', 'jtfksili'),
(970, 10, 3, '2017-08-16 21:03:06', 'cqyczykn'),
(971, 10, 3, '2017-08-16 21:03:31', 'lhnfacuc'),
(972, 10, 4, '2017-08-16 21:08:41', 'htucvpur'),
(973, 5, 2, '2017-08-17 15:31:39', 'zikgevmw'),
(974, 5, 2, '2017-08-17 15:32:04', 'gqavceod'),
(975, 5, 2, '2017-08-17 15:32:30', 'yxfzqsty'),
(976, 5, 3, '2017-08-17 15:36:49', 'bdumyqys'),
(977, 5, 3, '2017-08-17 15:36:52', 'axbjkvdr'),
(978, 5, 3, '2017-08-17 15:37:17', 'wrhfpjls'),
(979, 7, 2, '2017-08-17 16:39:32', 'ywiqqtjm'),
(980, 7, 2, '2017-08-17 16:39:58', 'tdamezsu'),
(981, 8, 2, '2017-08-17 17:33:30', 'oeemjrut'),
(982, 8, 2, '2017-08-17 17:33:56', 'qailtvie'),
(983, 8, 2, '2017-08-17 18:29:08', 'mnkrsnft'),
(984, 8, 2, '2017-08-17 18:29:34', 'ddpdeuui'),
(985, 8, 2, '2017-08-17 18:29:59', 'rqgvbaol');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `smu_email` varchar(255) DEFAULT NULL,
  `smu_email_id` varchar(255) NOT NULL,
  `tele_username` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `chat_id` int(10) NOT NULL,
  `veri_code` varchar(6) DEFAULT NULL,
  `temp_smu_email_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`smu_email`, `smu_email_id`, `tele_username`, `group_id`, `password`, `chat_id`, `veri_code`, `temp_smu_email_address`) VALUES
('andy.aw.2014@mail.com', 'andy.aw.2014', '8756 5678', 'G2', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 0, '0', NULL),
('', 'duncan.koh.2013', '9294 4466', 'G2', 'Tele!@34', 0, '0', NULL),
('jiaqi.yuan.2015@sis.smu.edu.sg', 'jiaqi.yuan.2015', 'yuanjiaqi', 'G10', '7c4a8d09ca3762af61e59520943dc26494f8941b', 118396938, 'uwedoz', 'jiaqi.yuan.2015@sis.smu.edu.sg'),
('jj.zheng.2013@sis.smu.edu.sg', 'jj.zheng.2013', 'ZJianjian', 'G9', 'bdaf6af1334acec52b7150a3fc5ecae34b4fc315', 60291832, 'kkmtic', 'jj.zheng.2013@sis.smu.edu.sg'),
('lauren2014@gmail.com', 'lauren.chee.2016', '8245 6810', 'G2', 'Tele!@34', 0, '0', NULL),
('maoqi.huang.2015@gmail.com', 'maoqi.huang.2015', '9123 6778', 'G1', 'password', 0, '0', NULL),
('', 'shirong.ng.2013', '9125 1352', 'G3', 'Tele!@34', 0, '0', NULL),
('', 'sw.ang.2015', '8423 2346', 'G1', 'Tele!@34', 0, '0', NULL),
('', 'userrr', '58102326', '1', 'password', 0, '11111', NULL),
('', 'yg.tan.2013', '9345 6810', 'G3', 'Tele!@34', 0, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_class_participation`
--

CREATE TABLE `weekly_class_participation` (
  `student_id` varchar(255) NOT NULL,
  `week` int(20) NOT NULL,
  `attendance` tinyint(1) DEFAULT NULL,
  `QA_Coins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_class_participation`
--

INSERT INTO `weekly_class_participation` (`student_id`, `week`, `attendance`, `QA_Coins`) VALUES
('jiaqi.yuan.2015', 8, 1, 0),
('jj.zheng.2013', 8, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phpbb_acl_groups`
--
ALTER TABLE `phpbb_acl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Indexes for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Indexes for table `phpbb_acl_roles_data`
--
ALTER TABLE `phpbb_acl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Indexes for table `phpbb_acl_users`
--
ALTER TABLE `phpbb_acl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Indexes for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Indexes for table `phpbb_bbcodes`
--
ALTER TABLE `phpbb_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_bookmarks`
--
ALTER TABLE `phpbb_bookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indexes for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Indexes for table `phpbb_config`
--
ALTER TABLE `phpbb_config`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `phpbb_config_text`
--
ALTER TABLE `phpbb_config_text`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `phpbb_confirm`
--
ALTER TABLE `phpbb_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Indexes for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indexes for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Indexes for table `phpbb_ext`
--
ALTER TABLE `phpbb_ext`
  ADD UNIQUE KEY `ext_name` (`ext_name`);

--
-- Indexes for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Indexes for table `phpbb_forums_access`
--
ALTER TABLE `phpbb_forums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Indexes for table `phpbb_forums_track`
--
ALTER TABLE `phpbb_forums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Indexes for table `phpbb_forums_watch`
--
ALTER TABLE `phpbb_forums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Indexes for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Indexes for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Indexes for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_time` (`log_time`);

--
-- Indexes for table `phpbb_login_attempts`
--
ALTER TABLE `phpbb_login_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_migrations`
--
ALTER TABLE `phpbb_migrations`
  ADD PRIMARY KEY (`migration_name`);

--
-- Indexes for table `phpbb_moderator_cache`
--
ALTER TABLE `phpbb_moderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Indexes for table `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `item_ident` (`notification_type_id`,`item_id`),
  ADD KEY `user` (`user_id`,`notification_read`);

--
-- Indexes for table `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  ADD PRIMARY KEY (`notification_type_id`),
  ADD UNIQUE KEY `type` (`notification_type_name`);

--
-- Indexes for table `phpbb_oauth_accounts`
--
ALTER TABLE `phpbb_oauth_accounts`
  ADD PRIMARY KEY (`user_id`,`provider`);

--
-- Indexes for table `phpbb_oauth_states`
--
ALTER TABLE `phpbb_oauth_states`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbb_oauth_tokens`
--
ALTER TABLE `phpbb_oauth_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbb_poll_options`
--
ALTER TABLE `phpbb_poll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbb_poll_votes`
--
ALTER TABLE `phpbb_poll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Indexes for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `post_visibility` (`post_visibility`);

--
-- Indexes for table `phpbb_posts_likes`
--
ALTER TABLE `phpbb_posts_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`);

--
-- Indexes for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Indexes for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_to`
--
ALTER TABLE `phpbb_privmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Indexes for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Indexes for table `phpbb_profile_fields_data`
--
ALTER TABLE `phpbb_profile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `phpbb_profile_fields_lang`
--
ALTER TABLE `phpbb_profile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Indexes for table `phpbb_profile_lang`
--
ALTER TABLE `phpbb_profile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Indexes for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indexes for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `phpbb_rh_topictags`
--
ALTER TABLE `phpbb_rh_topictags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_topic` (`topic_id`),
  ADD KEY `idx_tag` (`tag_id`);

--
-- Indexes for table `phpbb_rh_topictags_tag`
--
ALTER TABLE `phpbb_rh_topictags_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_tag` (`tag`);

--
-- Indexes for table `phpbb_search_results`
--
ALTER TABLE `phpbb_search_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Indexes for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Indexes for table `phpbb_search_wordmatch`
--
ALTER TABLE `phpbb_search_wordmatch`
  ADD UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `phpbb_sessions`
--
ALTER TABLE `phpbb_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Indexes for table `phpbb_sessions_keys`
--
ALTER TABLE `phpbb_sessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indexes for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`);

--
-- Indexes for table `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  ADD PRIMARY KEY (`teampage_id`);

--
-- Indexes for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  ADD KEY `topic_visibility` (`topic_visibility`),
  ADD KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`);

--
-- Indexes for table `phpbb_topics_posted`
--
ALTER TABLE `phpbb_topics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `phpbb_topics_track`
--
ALTER TABLE `phpbb_topics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbb_topics_watch`
--
ALTER TABLE `phpbb_topics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_email_hash` (`user_email_hash`),
  ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `phpbb_user_group`
--
ALTER TABLE `phpbb_user_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Indexes for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indexes for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `phpbb_zebra`
--
ALTER TABLE `phpbb_zebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- Indexes for table `post_class_summary`
--
ALTER TABLE `post_class_summary`
  ADD PRIMARY KEY (`rf_id`),
  ADD KEY `smu_id` (`smu_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`smu_email_id`);

--
-- Indexes for table `qrauthentication`
--
ALTER TABLE `qrauthentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`smu_email_id`);

--
-- Indexes for table `weekly_class_participation`
--
ALTER TABLE `weekly_class_participation`
  ADD PRIMARY KEY (`student_id`,`week`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  MODIFY `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  MODIFY `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  MODIFY `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  MODIFY `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  MODIFY `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  MODIFY `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phpbb_rh_topictags`
--
ALTER TABLE `phpbb_rh_topictags`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `phpbb_rh_topictags_tag`
--
ALTER TABLE `phpbb_rh_topictags_tag`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  MODIFY `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_class_summary`
--
ALTER TABLE `post_class_summary`
  MODIFY `rf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `qrauthentication`
--
ALTER TABLE `qrauthentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_class_summary`
--
ALTER TABLE `post_class_summary`
  ADD CONSTRAINT `post_class_summary_ibfk_1` FOREIGN KEY (`smu_id`) REFERENCES `student` (`smu_email_id`);

--
-- Constraints for table `weekly_class_participation`
--
ALTER TABLE `weekly_class_participation`
  ADD CONSTRAINT `FK_weeklyClassPar` FOREIGN KEY (`student_id`) REFERENCES `student` (`smu_email_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
