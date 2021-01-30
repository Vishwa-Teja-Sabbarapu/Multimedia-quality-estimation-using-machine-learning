-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 12:09 PM
-- Server version: 5.0.45-community-nt
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `estimators`
--
CREATE DATABASE IF NOT EXISTS `estimators` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estimators`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_quality_upload_model`
--

CREATE TABLE IF NOT EXISTS `admin_quality_upload_model` (
  `id` int(11) NOT NULL auto_increment,
  `topic` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `uploads` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `admin_quality_upload_model`
--

INSERT INTO `admin_quality_upload_model` (`id`, `topic`, `date`, `uploads`) VALUES
(5, 'Java', '30/11/2018', 'Java.mp4'),
(6, 'C', '30/11/2018', 'C.mp4'),
(7, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(8, 'Django', '30/11/2018', 'Django.mp4'),
(9, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(10, 'Python', '30/11/2018', 'Python.mp4'),
(11, 'Java', '30/11/2018', 'Java.mp4'),
(12, 'Java', '30/11/2018', 'Java.mp4'),
(13, 'Java', '30/11/2018', 'Java.mp4'),
(14, 'Java', '30/11/2018', 'Java.mp4'),
(15, 'Java', '30/11/2018', 'Java.mp4'),
(16, 'C', '30/11/2018', 'C.mp4'),
(17, 'C', '30/11/2018', 'C.mp4'),
(18, 'C', '30/11/2018', 'C.mp4'),
(19, 'C', '30/11/2018', 'C.mp4'),
(20, 'C', '30/11/2018', 'C.mp4'),
(21, 'C', '30/11/2018', 'C.mp4'),
(22, 'C', '30/11/2018', 'C.mp4'),
(23, 'C', '30/11/2018', 'C.mp4'),
(24, 'C', '30/11/2018', 'C.mp4'),
(25, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(26, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(27, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(28, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(29, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(30, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(31, 'C', '30/11/2018', 'C.mp4'),
(32, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(33, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(34, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(35, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(36, 'DataScience', '30/11/2018', 'DataScience.mp4'),
(37, 'Django', '30/11/2018', 'Django.mp4'),
(38, 'Django', '30/11/2018', 'Django.mp4'),
(39, 'Django', '30/11/2018', 'Django.mp4'),
(40, 'Django', '30/11/2018', 'Django.mp4'),
(41, 'Django', '30/11/2018', 'Django.mp4'),
(42, 'Django', '30/11/2018', 'Django.mp4'),
(43, 'Django', '30/11/2018', 'Django.mp4'),
(44, 'Django', '30/11/2018', 'Django.mp4'),
(45, 'Django', '30/11/2018', 'Django.mp4'),
(46, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(47, 'C', '30/11/2018', 'C.mp4'),
(48, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(49, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(50, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(51, 'Dotnet', '20/11/2018', 'Dotnet.mp4'),
(52, 'Python', '30/11/2018', 'Python.mp4'),
(53, 'Python', '30/11/2018', 'Python.mp4'),
(54, 'Python tutorial', '30/11/2018 5:23PM', 'Python_BupFltx.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add registration model', 7, 'add_registrationmodel'),
(20, 'Can change registration model', 7, 'change_registrationmodel'),
(21, 'Can delete registration model', 7, 'delete_registrationmodel'),
(22, 'Can add upload_ model', 8, 'add_upload_model'),
(23, 'Can change upload_ model', 8, 'change_upload_model'),
(24, 'Can delete upload_ model', 8, 'delete_upload_model'),
(25, 'Can add user requestmodel', 9, 'add_userrequestmodel'),
(26, 'Can change user requestmodel', 9, 'change_userrequestmodel'),
(27, 'Can delete user requestmodel', 9, 'delete_userrequestmodel'),
(28, 'Can add otp model', 10, 'add_otpmodel'),
(29, 'Can change otp model', 10, 'change_otpmodel'),
(30, 'Can delete otp model', 10, 'delete_otpmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime default NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'admin_quality', 'upload_model'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'user_quality', 'otpmodel'),
(7, 'user_quality', 'registrationmodel'),
(9, 'user_quality', 'userrequestmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL auto_increment,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-27 11:57:14'),
(2, 'auth', '0001_initial', '2018-11-27 11:57:18'),
(3, 'admin', '0001_initial', '2018-11-27 11:57:19'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-27 11:57:20'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-11-27 11:57:20'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-11-27 11:57:20'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-11-27 11:57:20'),
(8, 'auth', '0004_alter_user_username_opts', '2018-11-27 11:57:20'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-11-27 11:57:21'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-11-27 11:57:21'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-11-27 11:57:21'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-11-27 11:57:21'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-11-27 11:57:21'),
(14, 'sessions', '0001_initial', '2018-11-27 11:57:22'),
(15, 'admin_quality', '0001_initial', '2018-11-27 11:58:54'),
(16, 'user_quality', '0001_initial', '2018-11-27 11:59:17'),
(17, 'user_quality', '0002_userrequestmodel', '2018-11-28 12:39:43'),
(18, 'user_quality', '0003_otpmodel', '2018-11-29 06:08:33'),
(19, 'user_quality', '0004_auto_20181129_1149', '2018-11-29 06:19:28'),
(20, 'user_quality', '0005_auto_20181129_1210', '2018-11-29 06:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5shvq45vq1wmjm1it6o424z32881s6ax', 'ZDE5YWM3YzkyMGQ5MWNmYzNiYzE3ZGIzYmMyY2QxYmZlMjBlNmQxODp7Im5hbWUiOjF9', '2018-12-12 09:20:10'),
('e0vpxp0efh0b3ft9q3h0cd8oksxgacdz', 'N2M0OGI0ZjlkZGVlYzg5ZDczOTNhMTU2ODNmOWU2MjVjMDliZDFhNjp7Im5hbWUiOjcsIm90cCI6NTA3NH0=', '2018-12-14 06:54:01'),
('fent11d29nijup12ie8jj1n00vi2icdh', 'MmE2ZWViNzUyYzcwNzQwNzJmMjk0Yzk4NzE0MWMyMDhkYTc5YTk3ZTp7Im5hbWUiOjMsIm90cCI6MjAwOH0=', '2018-12-13 09:35:07'),
('k1re8b1v5sv76tnl1t2xjslk5twgyzaz', 'MzU5MmExNWFkYWZjMWZlZmI5NTNiMWZkY2U5NWU2NWU2MTYxYjU1Mjp7Im5hbWUiOjgsIm90cCI6MTM5MH0=', '2018-12-14 12:05:25'),
('pj55praj3eunwokvpqi93u0rhla0t6s1', 'ZDE5YWM3YzkyMGQ5MWNmYzNiYzE3ZGIzYmMyY2QxYmZlMjBlNmQxODp7Im5hbWUiOjF9', '2018-12-12 06:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_quality_otpmodel`
--

CREATE TABLE IF NOT EXISTS `user_quality_otpmodel` (
  `id` int(11) NOT NULL auto_increment,
  `reqstatus` varchar(100) NOT NULL,
  `regid_id` int(11) NOT NULL,
  `reqid_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_quality_otpmode_regid_id_70541990_fk_user_qual` (`regid_id`),
  KEY `user_quality_otpmode_reqid_id_cc388b85_fk_admin_qua` (`reqid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_quality_otpmodel`
--

INSERT INTO `user_quality_otpmodel` (`id`, `reqstatus`, `regid_id`, `reqid_id`) VALUES
(6, 'reject', 8, 5),
(7, 'accept', 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_quality_registrationmodel`
--

CREATE TABLE IF NOT EXISTS `user_quality_registrationmodel` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_quality_registrationmodel`
--

INSERT INTO `user_quality_registrationmodel` (`id`, `name`, `email`, `password`, `phoneno`) VALUES
(8, 'saikarthi', 'chennaisunday.cs0221@gmail.com', '8888888888', '7299216534');

-- --------------------------------------------------------

--
-- Table structure for table `user_quality_userrequestmodel`
--

CREATE TABLE IF NOT EXISTS `user_quality_userrequestmodel` (
  `id` int(11) NOT NULL auto_increment,
  `requeststatus` varchar(500) NOT NULL,
  `quality_id` int(11) NOT NULL,
  `userId_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_quality_userreq_quality_id_493c803c_fk_admin_qua` (`quality_id`),
  KEY `user_quality_userreq_userId_id_98b1f39c_fk_user_qual` (`userId_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_quality_otpmodel`
--
ALTER TABLE `user_quality_otpmodel`
  ADD CONSTRAINT `user_quality_otpmode_regid_id_70541990_fk_user_qual` FOREIGN KEY (`regid_id`) REFERENCES `user_quality_registrationmodel` (`id`),
  ADD CONSTRAINT `user_quality_otpmode_reqid_id_cc388b85_fk_admin_qua` FOREIGN KEY (`reqid_id`) REFERENCES `admin_quality_upload_model` (`id`);

--
-- Constraints for table `user_quality_userrequestmodel`
--
ALTER TABLE `user_quality_userrequestmodel`
  ADD CONSTRAINT `user_quality_userreq_quality_id_493c803c_fk_admin_qua` FOREIGN KEY (`quality_id`) REFERENCES `admin_quality_upload_model` (`id`),
  ADD CONSTRAINT `user_quality_userreq_userId_id_98b1f39c_fk_user_qual` FOREIGN KEY (`userId_id`) REFERENCES `user_quality_registrationmodel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
