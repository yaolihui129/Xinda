/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-23 11:36:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tc_techclass`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_techclass`;
CREATE TABLE `zt_tc_techclass` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cusid` smallint(6) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_techclass
-- ----------------------------
INSERT INTO `zt_tc_techclass` VALUES ('9', '4', '1', '正常', null, null, null, '2017-03-22 15:38:35');
