-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db2696.perfora.net
-- Generation Time: May 08, 2013 at 04:06 AM
-- Server version: 5.1.67
-- PHP Version: 5.3.3-7+squeeze15
-- 
-- Database: `db349465707`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `comments`
-- 

CREATE TABLE `comments` (
  `Comment_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Commenter_Id` int(11) NOT NULL,
  `Task_Id` int(100) NOT NULL,
  `Comment` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `Comment_Create_Time` datetime NOT NULL,
  `Comment_Update_Time` datetime NOT NULL,
  PRIMARY KEY (`Comment_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `comments`
-- 

INSERT INTO `comments` VALUES (1, 0, 56546, 'gfhf gh', 0, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (2, 0, 56546, 'gfhf gh', 0, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (3, 0, 56546, 'gfhf gh', 0, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (4, 0, 56546, 'gfhf gh', 0, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (5, 0, 56546, 'gfhf gh', 0, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (6, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (7, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (8, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (9, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (10, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (11, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (12, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (13, 22, 47, 'gdfdfdjhm ghj', 1, 0, '2013-05-04 07:51:47', '2013-05-04 07:51:47');
INSERT INTO `comments` VALUES (14, 22, 47, 'gdfdfdjhm ghj', 1, 0, '2013-05-04 07:51:47', '2013-05-04 07:51:47');
INSERT INTO `comments` VALUES (15, 22, 47, 'gdfdfdjhm ghj', 1, 0, '2013-05-04 07:51:47', '2013-05-04 07:51:47');
INSERT INTO `comments` VALUES (16, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (17, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (18, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (19, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (20, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (21, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (22, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');
INSERT INTO `comments` VALUES (23, 56, 67, 'ggfh', 1, 0, '2013-05-04 08:00:32', '2013-05-04 08:00:32');
INSERT INTO `comments` VALUES (24, 55, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:39:57', '2013-05-06 01:39:57');
INSERT INTO `comments` VALUES (25, 555, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:40:13', '2013-05-06 01:40:13');
INSERT INTO `comments` VALUES (26, 0, 56546, 'gfhf gh', 1, 0, '2013-05-06 01:41:27', '2013-05-06 01:41:27');

-- --------------------------------------------------------

-- 
-- Table structure for table `notification`
-- 

CREATE TABLE `notification` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notification text` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `deleted` int(11) NOT NULL,
  `no_created_time` datetime NOT NULL,
  `no_updated_time` datetime NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `notification`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `splash`
-- 

CREATE TABLE `splash` (
  `splash_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_location` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  `splash_created_time` datetime NOT NULL,
  `splash_updated_time` datetime NOT NULL,
  PRIMARY KEY (`splash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `splash`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `task`
-- 

CREATE TABLE `task` (
  `Task_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(200) NOT NULL,
  `TaskName` varchar(200) NOT NULL,
  `TaskPoint` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `TaskPriority` varchar(200) NOT NULL,
  `Mission_List_Name` varchar(20) NOT NULL,
  `viewable_By` varchar(200) NOT NULL,
  `Status` int(10) NOT NULL DEFAULT '1',
  `Scheduled_date` datetime NOT NULL,
  `Recurring_Date` datetime NOT NULL,
  `Task_Created_Time` datetime NOT NULL,
  `Task_Updated_Time` datetime NOT NULL,
  PRIMARY KEY (`Task_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

-- 
-- Dumping data for table `task`
-- 

INSERT INTO `task` VALUES (19, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '2013-05-09 04:12:49', '0000-00-00 00:00:00', '2013-05-04 04:12:49', '2013-05-04 04:12:49');
INSERT INTO `task` VALUES (20, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:14:14', '2013-05-04 04:14:14');
INSERT INTO `task` VALUES (21, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:14:46', '2013-05-04 04:14:46');
INSERT INTO `task` VALUES (22, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:16:58', '2013-05-04 04:16:58');
INSERT INTO `task` VALUES (23, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:18:56', '2013-05-04 04:18:56');
INSERT INTO `task` VALUES (24, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:22:44', '2013-05-04 04:22:44');
INSERT INTO `task` VALUES (25, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:23:59', '2013-05-04 04:23:59');
INSERT INTO `task` VALUES (26, 12, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:25:34', '2013-05-04 04:25:34');
INSERT INTO `task` VALUES (27, 34, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:25:50', '2013-05-04 04:25:50');
INSERT INTO `task` VALUES (28, 34, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:26:36', '2013-05-04 04:26:36');
INSERT INTO `task` VALUES (29, 15, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:27:19', '2013-05-04 04:27:19');
INSERT INTO `task` VALUES (30, 67, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:27:38', '2013-05-04 04:27:38');
INSERT INTO `task` VALUES (31, 68, 'asd dsf adf', '56', 'd df dsdfs dsf sd', 'd', 'fsdfsdf', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 04:27:50', '2013-05-04 04:27:50');
INSERT INTO `task` VALUES (52, 95, 'TaskName', '1', 'Description', 'High priority', '', 'view all', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 05:31:00', '2013-05-04 05:31:00');
INSERT INTO `task` VALUES (53, 45, 'fg', 'dfgfd', 'dfgdg', 'dfgdg', 'dfgd', 'Private', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 05:37:35', '2013-05-04 05:37:35');
INSERT INTO `task` VALUES (54, 95, 'TaskName', '1', 'Description', 'High priority', '', 'view all', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 05:41:49', '2013-05-04 05:41:49');
INSERT INTO `task` VALUES (55, 9, 'gf', 'ghfg', '', 'd', '', 'Private', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 05:53:58', '2013-05-04 05:53:58');
INSERT INTO `task` VALUES (56, 21, 'gf', 'ghfg', '', 'd', '', 'Private', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 06:04:19', '2013-05-04 06:04:19');
INSERT INTO `task` VALUES (57, 21, 'gf', 'ghfg', '', 'd', '', 'Private', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 06:04:42', '2013-05-04 06:04:42');
INSERT INTO `task` VALUES (58, 21, 'gf', 'ghfg', '', 'd', '', 'Private', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 06:08:49', '2013-05-04 06:08:49');
INSERT INTO `task` VALUES (59, 95, 'TaskName', '1', 'Description', 'High priority', '', 'view all', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 06:42:30', '2013-05-04 06:42:30');
INSERT INTO `task` VALUES (60, 202, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 06:52:03', '2013-05-04 06:52:03');
INSERT INTO `task` VALUES (61, 95, 'TaskName', '1', 'Description', 'High priority', '', 'view all', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:18:50', '2013-05-04 08:18:50');
INSERT INTO `task` VALUES (62, 56, 'task2', '2', 'sdfkljf', '1', '2', 'Public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:21:06', '2013-05-04 08:21:06');
INSERT INTO `task` VALUES (63, 95, 'TaskName', '1', 'Description', 'Highpriority', '', 'viewall', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:31:09', '2013-05-04 08:31:09');
INSERT INTO `task` VALUES (64, 95, 'demo', '1', 'Detail', 'Highpriority', '', 'viewall', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:38:05', '2013-05-04 08:38:05');
INSERT INTO `task` VALUES (65, 95, 'demo', '1', 'Detail', 'Highpriority', 'name', 'viewall', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:43:05', '2013-05-04 08:43:05');
INSERT INTO `task` VALUES (66, 95, 'demo', '1', 'Detail', 'Highpriority', 'name', 'viewall', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:47:51', '2013-05-04 08:47:51');
INSERT INTO `task` VALUES (67, 95, 'demo', '1', 'Detail', 'Highpriority', 'name', 'viewall', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 08:48:42', '2013-05-04 08:48:42');
INSERT INTO `task` VALUES (68, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:34:15', '2013-05-04 09:34:15');
INSERT INTO `task` VALUES (69, 95, '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:45:04', '2013-05-04 09:45:04');
INSERT INTO `task` VALUES (70, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:50:21', '2013-05-04 09:50:21');
INSERT INTO `task` VALUES (71, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:53:45', '2013-05-04 09:53:45');
INSERT INTO `task` VALUES (72, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:55:07', '2013-05-04 09:55:07');
INSERT INTO `task` VALUES (73, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 09:58:22', '2013-05-04 09:58:22');
INSERT INTO `task` VALUES (74, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 10:07:12', '2013-05-04 10:07:12');
INSERT INTO `task` VALUES (75, 205, 'Medical', '5', 'Medical Emergency', 'low', '', 'public', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-04 10:08:53', '2013-05-04 10:08:53');
INSERT INTO `task` VALUES (76, 95, 'mytask1', '1', 'MytaskDescription', 'first', 'sdfs', 'sdfsd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-06 01:54:36', '2013-05-06 01:54:36');
INSERT INTO `task` VALUES (77, 95, 'mytask2', '6', '2', 'first', 'sdfs', 'sdfsd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-05-06 01:55:12', '2013-05-06 01:55:12');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `password` int(20) NOT NULL,
  `age` int(20) NOT NULL,
  `parentalstatus` varchar(20) NOT NULL,
  `martialstatus` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zipcode` int(20) NOT NULL,
  `aboutme` varchar(20) NOT NULL,
  `profile_access` varchar(200) NOT NULL,
  `pain_scale` int(200) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `user_created_time` datetime NOT NULL,
  `user_updated_time` datetime NOT NULL,
  `device_id` varchar(40) NOT NULL,
  `pn_when_task_assign_to_me` tinyint(1) NOT NULL,
  `pn_when_task_update_assign_to_me` tinyint(1) NOT NULL,
  `pn_when_any_one_comment_on_my_task` tinyint(1) NOT NULL,
  `pn_when_any_one_like_my_comment` tinyint(1) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (17, '', '', 'nilesh', '', 0, 22, 'ffg', 'non', 'india', 34, 'cgh ', '', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (18, '', '', 'vikas', '', 0, 22, 'ffg', 'non', 'india', 34, 'cgh ', '', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (19, '', '', 'vikas', '', 0, 22, 'ffg', 'non', 'india', 34, 'cgh ', '', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (20, '', '', 'vikas', '', 0, 22, 'ffg', 'non', 'india', 34, 'cgh ', '', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (21, '', '', 'vikas', '', 0, 22, 'ffg', 'non', 'india', 34, 'cgh ', '', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (22, '', '', 'arpit', '', 0, 50, 'gfh', 'gfh', 'gjk', 0, 'hjf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ghj', 0, 0, 0, 0);
INSERT INTO `user` VALUES (23, '', '', 'farid', '', 0, 50, 'gfh', 'gfh', 'gjk', 0, 'hjf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ghj', 0, 0, 0, 0);
INSERT INTO `user` VALUES (24, '', '', 'aswin', '', 0, 50, 'gfh', 'gfh', 'gjk', 0, 'hjf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ghj', 0, 0, 0, 0);
INSERT INTO `user` VALUES (25, '', '', 'aswin', '', 0, 45, 'gfh', 'gfh', 'gjk', 0, 'hjf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ghj', 0, 0, 0, 0);
INSERT INTO `user` VALUES (26, '', '', 'ritesh', '', 0, 12, 'dffg', 'fd', 'gs', 0, 'dfsg', '', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dsfdsf', 0, 0, 0, 0);
INSERT INTO `user` VALUES (27, '', '', 'ritesh', '', 0, 12, 'dffg', 'fd', 'gs', 0, 'dfsg', '', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dsfdsf', 0, 0, 0, 0);
INSERT INTO `user` VALUES (28, '', '', 'banti', '', 0, 22, 'dfg', 'fg', 'india', 456798, 'dfg fg gh ', '', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'kj', 0, 0, 0, 0);
INSERT INTO `user` VALUES (29, '', '', 'banti', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (30, '', '', 'banti', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (31, '', '', 'banti', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (32, '', '', 'banti', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (33, '', '', 'banti', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (34, '', '', 'as', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (35, '', '', 'as', '', 0, 33, 'sda', 'dsfs', 'dfssdf', 0, 'dfsfsf', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hjhk', 0, 0, 0, 0);
INSERT INTO `user` VALUES (36, '', '', 'banti', '', 0, 0, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (37, '', '', 'cat', '', 0, 0, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (38, '', '', 'sd', '', 0, 0, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (39, '', '', 'banti', '', 0, 0, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (40, '', '', 'sohan', '', 0, 0, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (41, '', '', 'karan', '', 0, 46, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (42, '', '', 'hii', '', 0, 46, 'sdf', 'df', 'dsfs', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (43, '', '', 'fg', '', 0, 46, 'sdf', 'df', 'dsfs', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (44, 'ed', 'sharm', 'ddx', 'dsfd dfg ', 234, 32, '', '', 'india', 9870, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (45, '', '', 'll', '', 0, 46, 'sdf', 'df', 'dsfs', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (46, '', '', 'need', '', 0, 55, 'df', 'n', 'gfdf', 0, 'fgdfd', '', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, 1, 1);
INSERT INTO `user` VALUES (47, 'sx', 'siron', 'sx', 'dsfd dfg ', 123, 33, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (48, 'sx', 'sharm', 'dd', 'dsfd dfg ', 234, 32, '', '', '', 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (49, 'ajay', 'sharm', 'ajay', 'ajay@gmail.com', 234, 32, '', '', 'india', 9870, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (50, 'govind', 'sharma', 'govind', 'govind@gmail.com', 234, 32, '', '', 'india', 9870, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (51, 'govind', 'sharma', 'bg', 'govind@gmail.com', 234, 32, '', '', 'india', 9870, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (52, 'rahul', 'ra', 'xccd', 'bghg@gmail.com', 123, 23, '45', 'Yes', 'e', 0, 'df', 'Private', 0, 0, 0, '2013-05-03 07:30:31', '2013-05-03 07:30:31', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (53, '', '', 'vinod', 'vinod@gmail.com', 123, 21, '2', 'No', 'japan', 34567, 'hry df fg ', 'Public', 23, 0, 0, '2013-05-02 02:45:17', '2013-05-02 02:45:17', '3', 0, 0, 0, 0);
INSERT INTO `user` VALUES (54, 'kapil', 'verma', '', 'kapil@gmail.com', 123, 33, '3', '', 'india', 0, '', 'Private', 23, 0, 0, '2013-05-01 06:27:41', '2013-05-01 06:27:41', '3', 0, 0, 0, 0);
INSERT INTO `user` VALUES (55, 'as', 'cvd', 'ic', 'rg@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 0, 0, '2013-05-03 06:00:48', '2013-05-03 06:00:48', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (56, 'asfd', 'cvd', 'ytr', 'rfgd@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 06:16:37', '2013-05-03 06:16:37', '4', 0, 0, 0, 0);
INSERT INTO `user` VALUES (57, 'vinod', 'sharma', 'vinod', 'vinod@gmail.com', 123, 21, '2', 'No', 'japan', 34567, 'hry df fg ', 'Public', 23, 1, 0, '2013-05-02 00:45:05', '2013-05-02 00:45:05', '6', 0, 0, 0, 0);
INSERT INTO `user` VALUES (58, '', '', '', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 02:07:59', '2013-05-02 02:07:59', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (59, 'jiya', 'sharma', 'jiyaJi', 'vijay@techvalens.com', 123, 28, '1', '', 'india', 0, '', '', 0, 1, 0, '2013-05-02 02:18:41', '2013-05-02 02:18:41', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (60, 'jiya', 'sharma', 'break', 'vijay@techvalens.com', 123, 28, '1', '', 'india', 0, '', '', 0, 1, 0, '2013-05-02 02:21:14', '2013-05-02 02:21:14', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (61, '', '', 'jiya', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 02:23:42', '2013-05-02 02:23:42', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (62, 'qa2', 'qa', '', 'qa@gmail.com', 0, 21, '2', 'No', 'india', 34567, 'hry df fg ', '', 0, 1, 0, '2013-05-04 01:15:00', '2013-05-04 01:15:00', '6', 0, 0, 0, 0);
INSERT INTO `user` VALUES (63, 'yy', 'yy', 'yy', 'yy@gmail.com', 666666, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 05:15:09', '2013-05-02 05:15:09', '6', 0, 0, 0, 0);
INSERT INTO `user` VALUES (64, 'qqqq', 'qqqqqq', 'qqqqqq', 'qqqqqq@gmail.com', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 05:24:26', '2013-05-02 05:24:26', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (65, '', '', 'kite', 'kite@gmail.com', 123456, 12, '1', 'Yes', 'india', 452011, '', 'Private', 0, 1, 0, '2013-05-02 05:34:26', '2013-05-02 05:34:26', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (66, '', '', 'kite2', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 05:40:24', '2013-05-02 05:40:24', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (67, '', '', 'milal', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-02 06:27:00', '2013-05-02 06:27:00', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (68, 'jiya', 'sharma', 'ravi123', 'vijay@techvalens.com', 123, 28, '1', '', 'india', 0, '', '', 0, 1, 0, '2013-05-02 06:47:05', '2013-05-02 06:47:05', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (69, 'priti', 'sharma', 'priti', 'pr@gmail.com', 123, 12, '', 'sdf', 'sdfds', 452011, '', '', 0, 1, 0, '2013-05-02 10:25:50', '2013-05-02 10:25:50', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (70, 'priya', 'sharma', 'priya', 'p@gmail.com', 123, 12, '', 'sdf', 'india', 452011, '', '', 0, 1, 0, '2013-05-02 10:27:23', '2013-05-02 10:27:23', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (71, 'mahi', 'sharma', 'mahi', 'mahi@gmai.com', 123, 12, '', 'sdsd', 'india', 452011, '', '', 0, 1, 0, '2013-05-03 05:14:19', '2013-05-03 05:14:19', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (72, 'asaa', 'dfdsfdf ', 'abc', 'abc@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 05:36:12', '2013-05-03 05:36:12', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (73, 'asaa', 'dfdsfdf ', 'luck', 'luck@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 05:41:30', '2013-05-03 05:41:30', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (74, 'vvv', 'vvv', 'vv', 'vv@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 05:56:30', '2013-05-03 05:56:30', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (75, 'vvv', 'vvv', 'iii', 'vvii@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 05:58:20', '2013-05-03 05:58:20', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (76, 'asfd', 'cvd', 'icssd', 'rzg@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 06:05:40', '2013-05-03 06:05:40', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (77, 'asfd', 'cvd', 'ytr', 'rfgd@gmail.com', 123, 12, '2', 'Yes', 'df', 34567, 'dfdfdf', 'Private', 4, 1, 0, '2013-05-03 06:16:25', '2013-05-03 06:16:25', '5', 0, 0, 0, 0);
INSERT INTO `user` VALUES (78, 'asda', 'sdas', 'amo', 'amo@gmail.com', 123, 23, '45', 'Yes', 'e', 0, 'df', 'Private', 0, 1, 0, '2013-05-03 07:04:29', '2013-05-03 07:04:29', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (79, 'rahul', 'ra', 'rahul', 'rahul@gmail.com', 123, 23, '45', 'Yes', 'e', 0, 'df', 'Private', 0, 1, 0, '2013-05-03 07:16:33', '2013-05-03 07:16:33', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (80, 'Ravi', 'malviya', 'Ravi', 'ravi@gmail.com', 0, 22, 'what', 'n', 'India', 0, 'India', 'India', 0, 1, 0, '2013-05-03 07:18:57', '2013-05-03 07:18:57', 'India', 0, 0, 0, 0);
INSERT INTO `user` VALUES (81, 'adf', 'hgk', 'co;pip', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-03 07:37:32', '2013-05-03 07:37:32', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (82, 'zz', 'zz', 'dfsdf', '', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-03 07:38:44', '2013-05-03 07:38:44', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (83, 'lllllll', '', 'salman', 'salman@gmail.com', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-03 08:05:59', '2013-05-03 08:05:59', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (84, 'sohail', 'khan', 'sahil', 'sahil@gmail.com', 0, 22, 'what', 'n', 'India', 0, 'India', 'India', 0, 1, 0, '2013-05-04 01:42:08', '2013-05-04 01:42:08', 'India', 0, 0, 0, 0);
INSERT INTO `user` VALUES (85, 'vinay', '', 'vinay', 'vinay@gmail.com', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-03 09:22:29', '2013-05-03 09:22:29', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (86, 'salman', 'khan', 'salman', 'sal', 123, 12, '', 'dfjkdsh', 'sdjkfhs', 452011, '', '', 0, 1, 0, '2013-05-04 00:43:50', '2013-05-04 00:43:50', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (87, 'jit', 'sharma', '', 'jit', 0, 12, '', 'sdsds', 'sdssds', 452012, '', '', 0, 1, 0, '2013-05-04 01:19:59', '2013-05-04 01:19:59', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (88, 'user1Firstname', 'user1Lastname', 'user1Firstname', 'user1@gmail.com', 123, 12, '', 'sdflj', 'india', 452011, '', '', 0, 1, 0, '2013-05-04 01:27:20', '2013-05-04 01:27:20', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (89, 'nitinFN', 'patil', 'nitinFN', 'nitin@gmail.com', 123, 12, '', 'marital', 'india', 452011, '', '', 0, 1, 0, '2013-05-04 01:34:07', '2013-05-04 01:34:07', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (90, 'deepFN', 'JADOUN', 'deepFN', 'deep@gmail.com', 123, 12, '', 'mar', 'india', 452011, '', '', 0, 1, 0, '2013-05-04 01:38:39', '2013-05-04 01:38:39', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (91, 'atulFN', 'atulLN', 'atulFN', 'ATUL@GMAIL.COM', 123, 12, '', 'MAR', 'india', 452011, '', '', 0, 1, 0, '2013-05-04 01:43:31', '2013-05-04 01:43:31', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (92, 'kapilFN', 'kapilLN', 'kapilFN', 'kapil@gmail.com', 123, 12, '', 'mar', 'india', 452011, '', '', 0, 1, 0, '2013-05-04 01:45:47', '2013-05-04 01:45:47', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (93, 'priyanka', 'SHARMA', '', 'priya@gmail.com', 0, 12, '', 'marital', 'indian', 452011, '', '', 0, 1, 0, '2013-05-04 01:49:25', '2013-05-04 01:49:25', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (94, 'umeshFN', 'umeshLN', 'umesh123', 'umesh@gmail.com', 0, 12, '', 'mart', 'india', 452012, '', 'Public', 0, 1, 0, '2013-05-04 04:06:46', '2013-05-04 04:06:46', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (95, 'raviFN12345', 'ravitLN', 'ravi123', 'ravi@gmail.com', 123, 12, '', 'martial', 'Pak', 45201356, 'Ajit is mca student.', 'Private', 0, 1, 0, '2013-05-06 00:49:59', '2013-05-06 00:49:59', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (96, 'jiyaFN', 'jiyaLN', 'jiya123', 'jiya@gmail.com', 123, 12, '', 'marital status', 'india', 452011, '', 'Public', 0, 1, 0, '2013-05-04 04:53:25', '2013-05-04 04:53:25', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (97, 'vijendra ', 'patidar', 'viju', 'akhilesh.sironja@techvalens.com', 786, 23, '2', 'No', 'india', 56757567, 'ghfh klgh', 'Private', 7, 1, 0, '2013-05-06 06:37:43', '2013-05-06 06:37:43', '2', 0, 0, 0, 0);
INSERT INTO `user` VALUES (98, 'rwr', '', 'dfsdf', 'sfdfsdf', 0, 0, '', 'Yes', '', 0, '', 'Private', 0, 1, 0, '2013-05-06 10:12:12', '2013-05-06 10:12:12', '', 0, 0, 0, 0);
