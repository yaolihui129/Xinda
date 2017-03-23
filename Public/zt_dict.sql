/*
Navicat MySQL Data Transfer

Source Server         : tuocai
Source Server Version : 50552
Source Host           : hkmysql15.zzidc.ha.cn:3306
Source Database       : tuocai

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-03-23 14:46:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_dict`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dict`;
CREATE TABLE `zt_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `moder` varchar(10) DEFAULT '腰立辉',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dict
-- ----------------------------
INSERT INTO `zt_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '2016-09-17 16:09:23');
INSERT INTO `zt_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '2016-09-17 16:18:30');
INSERT INTO `zt_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:42');
INSERT INTO `zt_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:21');
INSERT INTO `zt_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:27');
INSERT INTO `zt_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '2016-09-17 16:19:34');
INSERT INTO `zt_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:41');
INSERT INTO `zt_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '2016-10-20 15:08:52');
INSERT INTO `zt_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '2016-10-20 16:21:49');
INSERT INTO `zt_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '2016-10-20 16:22:03');
INSERT INTO `zt_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '2016-11-11 16:50:05');
INSERT INTO `zt_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '2016-11-11 16:50:15');
INSERT INTO `zt_dict` VALUES ('72', '1', 'PJD', 'testgp', '正常', '腰立辉', '2016-12-17 22:37:50');
INSERT INTO `zt_dict` VALUES ('87', '1', '08:00-10:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:13:21');
INSERT INTO `zt_dict` VALUES ('88', '2', '10:10-12:10', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:22');
INSERT INTO `zt_dict` VALUES ('89', '3', '13:30-15:30', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:29');
INSERT INTO `zt_dict` VALUES ('90', '4', '15:40-17:40', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:37');
INSERT INTO `zt_dict` VALUES ('91', '5', '18:00-20:00', 'sktime', '正常', '腰立辉', '2016-12-17 20:12:45');
INSERT INTO `zt_dict` VALUES ('92', '2', 'Auto', 'testgp', '正常', '腰立辉', '2016-12-17 22:45:19');
INSERT INTO `zt_dict` VALUES ('98', '1', '老师', 'tcType', '正常', '腰立辉', '2017-03-23 14:28:29');
INSERT INTO `zt_dict` VALUES ('99', '2', '助教', 'tcType', '正常', '腰立辉', '2017-03-23 14:28:55');
INSERT INTO `zt_dict` VALUES ('100', '3', '学生', 'tcType', '正常', '腰立辉', '2017-03-23 14:29:06');
