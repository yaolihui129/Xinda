/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-23 11:43:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tc_plan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_plan`;
CREATE TABLE `zt_tc_plan` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dateid` smallint(6) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT '未审批',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_plan
-- ----------------------------
INSERT INTO `zt_tc_plan` VALUES ('9', '53', '9', '111', '未审批', null, null, null, '2017-03-22 15:42:41');
