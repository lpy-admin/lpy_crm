/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : crm_db

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-03-31 21:53:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(30) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', '路飞', '男', '13800138000', '2020-03-31 19:24:28', '2020-03-31 19:24:30', '0');
INSERT INTO `client` VALUES ('2', '娜美', '女', '13800138000', '2020-03-31 19:24:46', '2020-03-31 19:24:49', '0');
INSERT INTO `client` VALUES ('3', 'test', '男', '13800138000', '2020-03-31 20:57:43', '2020-03-31 20:57:43', '0');

-- ----------------------------
-- Table structure for client_employee
-- ----------------------------
DROP TABLE IF EXISTS `client_employee`;
CREATE TABLE `client_employee` (
  `client_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`client_id`,`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client_employee
-- ----------------------------
INSERT INTO `client_employee` VALUES ('1', '1', '2020-03-31 19:28:03', '2020-03-31 19:28:05', '0');
INSERT INTO `client_employee` VALUES ('2', '35', '2020-03-31 19:35:38', '2020-03-31 19:35:38', '0');
INSERT INTO `client_employee` VALUES ('5', '1', '2020-03-31 21:28:57', '2020-03-31 21:28:57', '0');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '总经办', '2020-03-24 09:34:13', '2020-03-24 09:34:16', '0');
INSERT INTO `department` VALUES ('2', '销售部', '2020-03-29 20:46:36', '2020-03-29 20:46:39', '0');

-- ----------------------------
-- Table structure for dept_role
-- ----------------------------
DROP TABLE IF EXISTS `dept_role`;
CREATE TABLE `dept_role` (
  `dept_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_role
-- ----------------------------
INSERT INTO `dept_role` VALUES ('1', '1', '2020-03-24 09:33:54', '2020-03-24 09:33:56', '0');
INSERT INTO `dept_role` VALUES ('2', '2', '2020-03-29 20:39:39', '2020-03-29 20:39:40', '0');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(3) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'admin', 'ab395f9bcce071deeb8d6a42ccb31082', 'b88ad99e38ec', '18', '男', '13513513511', '广州天河', '2020-03-23 15:34:10', '2020-03-23 15:34:13', '0');
INSERT INTO `employee` VALUES ('35', 'test', '832726b2324e86c27e06e13e5f7198e4', '9868022110aa', '18', '男', '13800138000', '广东', '2020-03-29 23:53:44', '2020-03-31 18:25:50', '0');

-- ----------------------------
-- Table structure for emp_role
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `emp_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_role
-- ----------------------------
INSERT INTO `emp_role` VALUES ('1', '1', '2020-03-24 09:29:38', '2020-03-24 09:29:40', '0');
INSERT INTO `emp_role` VALUES ('32', '2', '2020-03-29 20:43:03', '2020-03-29 20:44:30', '0');
INSERT INTO `emp_role` VALUES ('33', '2', '2020-03-29 23:32:06', '2020-03-29 23:32:06', '0');
INSERT INTO `emp_role` VALUES ('34', '1', '2020-03-29 23:32:20', '2020-03-29 23:32:20', '0');
INSERT INTO `emp_role` VALUES ('35', '2', '2020-03-29 23:53:44', '2020-03-31 18:25:50', '0');
INSERT INTO `emp_role` VALUES ('36', '1', '2020-03-31 21:51:45', '2020-03-31 21:51:45', '0');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '员工查询', '/emp', 'emp:list', '2020-03-24 09:33:28', '2020-03-24 09:33:30', '0');
INSERT INTO `permission` VALUES ('2', '员工删除', '/emp/del', 'emp:del', '2020-03-27 14:48:16', '2020-03-27 14:48:18', '0');
INSERT INTO `permission` VALUES ('5', '123', '123', '156', '2020-03-29 23:32:43', '2020-03-29 23:32:43', '1');
INSERT INTO `permission` VALUES ('10', '156', '156', '156', '2020-03-31 01:13:48', '2020-03-31 01:13:48', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '总经理', '2020-03-24 09:27:40', '2020-03-24 09:27:42', '0');
INSERT INTO `role` VALUES ('10', '发生', '2020-03-31 02:17:14', '2020-03-31 02:17:14', '0');
INSERT INTO `role` VALUES ('11', 'test', '2020-03-31 02:18:06', '2020-03-31 02:18:06', '0');
INSERT INTO `role` VALUES ('12', 'test02', '2020-03-31 02:22:03', '2020-03-31 02:22:03', '1');
INSERT INTO `role` VALUES ('13', 'test', '2020-03-31 02:22:57', '2020-03-31 02:22:57', '0');
INSERT INTO `role` VALUES ('14', 'test', '2020-03-31 02:22:58', '2020-03-31 02:22:58', '0');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`perm_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '2020-03-24 09:34:39', '2020-03-24 09:34:41', '0');
INSERT INTO `role_permission` VALUES ('11', '1', '2020-03-31 02:18:06', '2020-03-31 02:18:06', '0');
INSERT INTO `role_permission` VALUES ('2', '2', '2020-03-27 15:07:18', '2020-03-27 15:07:21', '0');
INSERT INTO `role_permission` VALUES ('12', '2', '2020-03-31 02:22:03', '2020-03-31 02:22:03', '0');
INSERT INTO `role_permission` VALUES ('15', '2', '2020-03-31 02:23:09', '2020-03-31 02:23:09', '0');
