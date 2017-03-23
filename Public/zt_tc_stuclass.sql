/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-23 11:47:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tc_stuclass`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_stuclass`;
CREATE TABLE `zt_tc_stuclass` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cusid` smallint(6) DEFAULT NULL COMMENT '客户编号',
  `techclassid` smallint(6) DEFAULT NULL COMMENT '课程编号',
  `state` varchar(5) DEFAULT '报名' COMMENT '状态',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_stuclass
-- ----------------------------
INSERT INTO `zt_tc_stuclass` VALUES ('4', '6', '9', null, '腰立辉', '腰立辉', '1479043222', '2017-03-22 16:06:32');
