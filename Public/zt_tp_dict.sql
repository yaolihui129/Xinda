/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-04-14 11:09:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_dict`;
CREATE TABLE `zt_tp_dict` (
  `dictId` char(8) NOT NULL DEFAULT '',
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` smallint(2) DEFAULT NULL,
  `moder` varchar(10) DEFAULT '腰立辉',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dictId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_dict
-- ----------------------------
INSERT INTO `zt_tp_dict` VALUES ('utsmkhVp', '1', '正常', 'state', '1', '腰立辉', '2017-04-13 23:22:19');
INSERT INTO `zt_tp_dict` VALUES ('M6ZsJ6uq', '2', '待确认', 'state', '1', '腰立辉', '2017-04-13 23:22:20');
INSERT INTO `zt_tp_dict` VALUES ('20kRAk8V', '3', '已搁置', 'state', '1', '腰立辉', '2017-04-13 23:22:21');
INSERT INTO `zt_tp_dict` VALUES ('MkVUT3Tr', '4', '已作废', 'state', '1', '腰立辉', '2017-04-13 23:48:03');
INSERT INTO `zt_tp_dict` VALUES ('4KgsdBPq', '1', '08:00-10:00', 'sktime', '1', '腰立辉', '2017-04-13 23:51:55');
INSERT INTO `zt_tp_dict` VALUES ('nWf21MjO', '2', '10:10-12:10', 'sktime', '1', '腰立辉', '2017-04-14 00:13:39');
INSERT INTO `zt_tp_dict` VALUES ('YqDTZQsW', '3', '13:30-15:30', 'sktime', '1', '腰立辉', '2017-04-14 00:14:55');
INSERT INTO `zt_tp_dict` VALUES ('KoFi3CKO', '4', '15:40-17:40', 'sktime', '1', '腰立辉', '2017-04-14 00:16:28');
INSERT INTO `zt_tp_dict` VALUES ('3YJ1NXgd', '5', '18:00-20:00', 'sktime', '1', '腰立辉', '2017-04-14 10:38:23');
