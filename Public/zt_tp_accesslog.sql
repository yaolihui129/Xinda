/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-04-14 11:32:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_accesslog`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_accesslog`;
CREATE TABLE `zt_tp_accesslog` (
  `logID` char(64) NOT NULL DEFAULT '' COMMENT 'Log编号',
  `webpage` varchar(32) DEFAULT NULL COMMENT '访问网页',
  `prodId` smallint(6) DEFAULT NULL COMMENT '产品编号',
  `ipAdress` varchar(16) DEFAULT NULL COMMENT 'IP地址',
  `userid` char(16) DEFAULT NULL COMMENT '用户ID',
  `ftime` int(11) DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`logID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_accesslog
-- ----------------------------
