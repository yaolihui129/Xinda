/*
Navicat MySQL Data Transfer

Source Server         : xiuli
Source Server Version : 50535
Source Host           : 2lbrknae.2248.dnstoo.com:5503
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2017-03-22 18:22:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_action`
-- ----------------------------
DROP TABLE IF EXISTS `zt_action`;
CREATE TABLE `zt_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `project` mediumint(9) NOT NULL,
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` text NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`objectID`,`product`,`project`,`action`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_action
-- ----------------------------
INSERT INTO `zt_action` VALUES ('1', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-06 23:43:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('2', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-06 23:53:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('3', 'user', '1', ',0,', '0', 'admin', 'login', '2016-07-16 17:06:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('4', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-08 21:51:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('5', 'product', '1', ',1,', '0', 'admin', 'opened', '2017-01-08 22:23:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('6', 'product', '2', ',2,', '0', 'admin', 'opened', '2017-01-08 22:24:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('7', 'product', '3', ',3,', '0', 'admin', 'opened', '2017-01-08 22:24:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('8', 'product', '4', ',4,', '0', 'admin', 'opened', '2017-01-08 22:25:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('9', 'user', '1', ',0,', '0', 'admin', 'logout', '2017-01-08 22:28:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('10', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-08 22:29:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('11', 'product', '5', ',5,', '0', 'yaolh', 'opened', '2017-01-08 22:29:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('12', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-08 22:31:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('13', 'user', '12', ',0,', '0', 'yangyh', 'login', '2017-01-08 22:31:47', '', '', '0');
INSERT INTO `zt_action` VALUES ('14', 'user', '12', ',0,', '0', 'yangyh', 'logout', '2017-01-08 22:33:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('15', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-08 22:33:16', '', '', '0');
INSERT INTO `zt_action` VALUES ('16', 'project', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:38:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('17', 'story', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:39:56', '', '', '0');
INSERT INTO `zt_action` VALUES ('18', 'build', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:42:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('19', 'bug', '1', ',5,', '1', 'admin', 'opened', '2017-01-08 22:43:06', '', '', '1');
INSERT INTO `zt_action` VALUES ('20', 'bug', '1', ',5,', '1', 'admin', 'bugconfirmed', '2017-01-08 22:43:27', '', '', '1');
INSERT INTO `zt_action` VALUES ('21', 'bug', '1', ',5,', '1', 'admin', 'assigned', '2017-01-08 22:43:38', '', 'liangxw', '1');
INSERT INTO `zt_action` VALUES ('22', 'bug', '1', ',5,', '1', 'admin', 'resolved', '2017-01-08 22:44:51', '', 'fixed', '1');
INSERT INTO `zt_action` VALUES ('23', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-08 23:50:46', '', '', '0');
INSERT INTO `zt_action` VALUES ('24', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-09 09:19:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('25', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-12 09:22:13', '', '', '0');
INSERT INTO `zt_action` VALUES ('26', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-12 09:59:35', '', '', '0');
INSERT INTO `zt_action` VALUES ('27', 'user', '2', ',0,', '0', 'yaolh', 'login', '2017-01-12 09:59:39', '', '', '0');
INSERT INTO `zt_action` VALUES ('28', 'user', '2', ',0,', '0', 'yaolh', 'logout', '2017-01-12 10:05:32', '', '', '0');
INSERT INTO `zt_action` VALUES ('29', 'user', '1', ',0,', '0', 'admin', 'login', '2017-01-12 10:06:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('30', 'user', '1', ',0,', '0', 'admin', 'logout', '2017-01-12 11:53:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('31', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-12 11:53:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('32', 'product', '10', ',10,', '0', 'yao', 'edited', '2017-01-12 12:34:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('33', 'product', '4', ',4,', '0', 'yao', 'edited', '2017-01-12 12:35:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('34', 'product', '3', ',3,', '0', 'yao', 'edited', '2017-01-12 12:35:41', '', '', '0');
INSERT INTO `zt_action` VALUES ('35', 'product', '2', ',2,', '0', 'yao', 'edited', '2017-01-12 12:36:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('36', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-01-12 12:36:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('37', 'product', '5', ',5,', '0', 'yao', 'edited', '2017-01-12 12:41:26', '', '', '0');
INSERT INTO `zt_action` VALUES ('38', 'product', '5', ',5,', '0', 'yao', 'edited', '2017-01-12 12:43:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('39', 'product', '12', ',12,', '0', 'yao', 'opened', '2017-01-12 12:44:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('40', 'product', '12', ',12,', '0', 'yao', 'edited', '2017-01-12 12:46:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('41', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-12 14:00:56', '', '', '0');
INSERT INTO `zt_action` VALUES ('42', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-26 08:31:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('43', 'productplan', '1', ',1,', '0', 'yao', 'opened', '2017-01-26 08:35:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('44', 'project', '14', ',1,', '14', 'yao', 'opened', '2017-01-26 08:38:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('45', 'project', '14', ',1,', '14', 'yao', 'edited', '2017-01-26 08:40:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('46', 'user', '2', ',0,', '0', 'yao', 'login', '2017-01-26 09:51:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('47', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-04 09:19:31', '', '', '0');
INSERT INTO `zt_action` VALUES ('48', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-04 09:23:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('49', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-04 09:41:46', '', '', '0');
INSERT INTO `zt_action` VALUES ('50', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-04 09:45:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('51', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-04 09:47:16', '', '', '0');
INSERT INTO `zt_action` VALUES ('52', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-04 09:52:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('53', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-04 14:37:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('54', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-06 10:27:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('55', 'user', '4', ',0,', '0', 'zhangxl', 'login', '2017-02-06 10:47:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('56', 'productplan', '1', ',1,', '0', 'zhangxl', 'edited', '2017-02-06 10:55:15', '', '', '0');
INSERT INTO `zt_action` VALUES ('57', 'productplan', '2', ',1,', '0', 'zhangxl', 'opened', '2017-02-06 10:56:44', '', '', '0');
INSERT INTO `zt_action` VALUES ('58', 'project', '14', ',1,', '14', 'zhangxl', 'edited', '2017-02-06 10:58:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('59', 'project', '15', ',1,', '15', 'zhangxl', 'opened', '2017-02-06 11:00:15', '', '', '0');
INSERT INTO `zt_action` VALUES ('60', 'story', '2', ',1,', '14', 'yao', 'opened', '2017-02-06 11:03:19', '', '', '0');
INSERT INTO `zt_action` VALUES ('61', 'story', '3', ',1,', '14', 'yao', 'opened', '2017-02-06 11:04:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('62', 'story', '4', ',1,', '14', 'yao', 'opened', '2017-02-06 11:05:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('63', 'story', '2', ',1,', '14', 'yao', 'edited', '2017-02-06 11:05:21', '', '', '0');
INSERT INTO `zt_action` VALUES ('64', 'story', '3', ',1,', '14', 'yao', 'edited', '2017-02-06 11:05:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('65', 'story', '2', ',1,', '14', 'yao', 'edited', '2017-02-06 11:11:15', '', '', '0');
INSERT INTO `zt_action` VALUES ('66', 'story', '2', ',1,', '14', 'yao', 'deleted', '2017-02-06 11:14:50', '', '1', '0');
INSERT INTO `zt_action` VALUES ('67', 'story', '4', ',1,', '14', 'yao', 'deleted', '2017-02-06 11:14:58', '', '1', '0');
INSERT INTO `zt_action` VALUES ('68', 'story', '3', ',1,', '14', 'yao', 'deleted', '2017-02-06 11:15:02', '', '1', '0');
INSERT INTO `zt_action` VALUES ('69', 'story', '5', ',1,', '0', 'yao', 'opened', '2017-02-06 11:18:55', '', '', '0');
INSERT INTO `zt_action` VALUES ('70', 'story', '6', ',1,', '0', 'yao', 'opened', '2017-02-06 11:23:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('71', 'story', '7', ',1,', '0', 'yao', 'opened', '2017-02-06 11:23:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('72', 'story', '8', ',1,', '0', 'yao', 'opened', '2017-02-06 11:23:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('73', 'story', '9', ',1,', '0', 'yao', 'opened', '2017-02-06 11:41:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('74', 'story', '10', ',1,', '0', 'yao', 'opened', '2017-02-06 11:48:32', '', '', '0');
INSERT INTO `zt_action` VALUES ('75', 'story', '11', ',1,', '0', 'yao', 'opened', '2017-02-06 12:38:41', '', '', '0');
INSERT INTO `zt_action` VALUES ('76', 'story', '11', ',1,', '0', 'yao', 'edited', '2017-02-06 12:39:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('77', 'story', '12', ',1,', '0', 'yao', 'opened', '2017-02-06 12:50:45', '', '', '0');
INSERT INTO `zt_action` VALUES ('78', 'story', '13', ',1,', '0', 'yao', 'opened', '2017-02-06 12:56:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('79', 'story', '14', ',1,', '0', 'yao', 'opened', '2017-02-06 13:01:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('80', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-02-06 14:37:26', '', '', '0');
INSERT INTO `zt_action` VALUES ('81', 'project', '15', ',1,', '15', 'zhangxl', 'edited', '2017-02-06 16:26:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('82', 'story', '11', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:27:12', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('83', 'story', '8', ',1,', '14', 'yao', 'linked2project', '2017-02-06 16:27:37', '', '14', '0');
INSERT INTO `zt_action` VALUES ('84', 'story', '11', ',1,', '14', 'yao', 'linked2project', '2017-02-06 16:27:37', '', '14', '0');
INSERT INTO `zt_action` VALUES ('85', 'story', '8', ',1,', '14', 'yao', 'edited', '2017-02-06 16:28:20', '', '', '0');
INSERT INTO `zt_action` VALUES ('86', 'story', '5', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:28:50', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('87', 'story', '7', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:29:08', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('88', 'story', '9', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:29:23', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('89', 'story', '10', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:29:34', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('90', 'story', '12', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:29:45', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('91', 'story', '13', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:30:00', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('92', 'story', '14', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:30:12', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('93', 'productplan', '2', ',1,', '0', 'yao', 'edited', '2017-02-06 16:31:20', '', '', '0');
INSERT INTO `zt_action` VALUES ('94', 'story', '15', ',1,', '0', 'yao', 'opened', '2017-02-06 16:33:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('95', 'story', '15', ',1,', '0', 'yao', 'edited', '2017-02-06 16:35:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('96', 'story', '15', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:35:52', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('97', 'story', '6', ',1,', '0', 'yao', 'edited', '2017-02-06 16:36:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('98', 'story', '16', ',1,', '0', 'yao', 'opened', '2017-02-06 16:38:32', '', '', '0');
INSERT INTO `zt_action` VALUES ('99', 'story', '16', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:38:39', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('100', 'story', '17', ',1,', '0', 'yao', 'opened', '2017-02-06 16:40:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('101', 'story', '18', ',1,', '0', 'yao', 'opened', '2017-02-06 16:43:37', '', '', '0');
INSERT INTO `zt_action` VALUES ('102', 'story', '18', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:43:42', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('103', 'story', '19', ',1,', '0', 'yao', 'opened', '2017-02-06 16:46:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('104', 'story', '19', ',1,', '0', 'yao', 'reviewed', '2017-02-06 16:47:04', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('105', 'product', '3', ',3,', '0', 'yao', 'edited', '2017-02-06 17:31:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('106', 'project', '15', ',1,', '15', 'yao', 'edited', '2017-02-06 17:33:16', '', '', '0');
INSERT INTO `zt_action` VALUES ('107', 'story', '5', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('108', 'story', '7', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('109', 'story', '9', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('110', 'story', '10', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('111', 'story', '12', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('112', 'story', '13', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('113', 'story', '14', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('114', 'story', '15', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('115', 'story', '16', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('116', 'story', '18', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('117', 'story', '19', ',1,', '14', 'yao', 'linked2project', '2017-02-06 17:49:23', '', '14', '0');
INSERT INTO `zt_action` VALUES ('118', 'story', '20', ',1,', '0', 'yao', 'opened', '2017-02-06 17:53:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('119', 'story', '20', ',1,', '0', 'yao', 'reviewed', '2017-02-06 17:53:20', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('120', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-12 16:54:14', '', '', '0');
INSERT INTO `zt_action` VALUES ('121', 'project', '16', ',4,', '16', 'yao', 'opened', '2017-02-12 16:55:53', '', '', '0');
INSERT INTO `zt_action` VALUES ('122', 'project', '17', ',4,', '17', 'yao', 'opened', '2017-02-12 16:57:16', '', '', '0');
INSERT INTO `zt_action` VALUES ('123', 'story', '21', ',1,', '0', 'yao', 'opened', '2017-02-12 16:59:49', '', '', '0');
INSERT INTO `zt_action` VALUES ('124', 'story', '22', ',1,', '0', 'yao', 'opened', '2017-02-12 17:01:56', '', '', '0');
INSERT INTO `zt_action` VALUES ('125', 'story', '17', ',1,', '0', 'yao', 'reviewed', '2017-02-12 17:03:46', '', 'Clarify', '0');
INSERT INTO `zt_action` VALUES ('126', 'story', '20', ',1,', '14', 'yao', 'linked2project', '2017-02-12 17:05:11', '', '14', '0');
INSERT INTO `zt_action` VALUES ('127', 'story', '22', ',1,', '0', 'yao', 'reviewed', '2017-02-12 17:05:45', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('128', 'story', '21', ',1,', '0', 'yao', 'edited', '2017-02-12 17:06:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('129', 'story', '21', ',1,', '0', 'yao', 'reviewed', '2017-02-12 17:06:11', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('130', 'story', '22', ',1,', '0', 'yao', 'edited', '2017-02-12 17:06:31', '', '', '0');
INSERT INTO `zt_action` VALUES ('131', 'task', '54', ',1,', '14', 'yao', 'opened', '2017-02-12 17:07:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('132', 'task', '55', ',1,', '14', 'yao', 'opened', '2017-02-12 17:07:59', '', '', '0');
INSERT INTO `zt_action` VALUES ('133', 'story', '22', ',1,', '14', 'yao', 'linked2project', '2017-02-12 17:08:30', '', '14', '0');
INSERT INTO `zt_action` VALUES ('134', 'story', '21', ',1,', '14', 'yao', 'linked2project', '2017-02-12 17:08:30', '', '14', '0');
INSERT INTO `zt_action` VALUES ('135', 'task', '56', ',1,', '14', 'yao', 'opened', '2017-02-12 17:08:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('136', 'task', '57', ',1,', '14', 'yao', 'opened', '2017-02-12 17:12:03', '', '', '0');
INSERT INTO `zt_action` VALUES ('137', 'task', '58', ',1,', '14', 'yao', 'opened', '2017-02-12 17:12:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('138', 'task', '59', ',1,', '14', 'yao', 'opened', '2017-02-12 17:13:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('139', 'story', '7', ',1,', '14', 'yao', 'changed', '2017-02-12 17:14:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('140', 'task', '60', ',1,', '14', 'yao', 'opened', '2017-02-12 17:15:20', '', '', '0');
INSERT INTO `zt_action` VALUES ('141', 'task', '61', ',1,', '14', 'yao', 'opened', '2017-02-12 17:17:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('142', 'task', '62', ',1,', '14', 'yao', 'opened', '2017-02-12 17:17:32', '', '', '0');
INSERT INTO `zt_action` VALUES ('143', 'task', '63', ',1,', '14', 'yao', 'opened', '2017-02-12 17:18:43', '', '', '0');
INSERT INTO `zt_action` VALUES ('144', 'task', '64', ',1,', '14', 'yao', 'opened', '2017-02-12 17:19:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('145', 'task', '65', ',1,', '14', 'yao', 'opened', '2017-02-12 17:19:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('146', 'task', '66', ',1,', '14', 'yao', 'opened', '2017-02-12 17:19:54', '', '', '1');
INSERT INTO `zt_action` VALUES ('147', 'task', '67', ',1,', '14', 'yao', 'opened', '2017-02-12 17:20:15', '', '', '1');
INSERT INTO `zt_action` VALUES ('148', 'task', '68', ',1,', '14', 'yao', 'opened', '2017-02-12 17:21:00', '', '', '1');
INSERT INTO `zt_action` VALUES ('149', 'task', '69', ',1,', '14', 'yao', 'opened', '2017-02-12 17:21:22', '', '', '0');
INSERT INTO `zt_action` VALUES ('150', 'task', '69', ',1,', '14', 'yao', 'started', '2017-02-12 17:21:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('151', 'task', '69', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:22:43', '', '2', '0');
INSERT INTO `zt_action` VALUES ('152', 'task', '69', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:22:43', '', '5', '0');
INSERT INTO `zt_action` VALUES ('153', 'task', '69', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:22:43', '', '4', '0');
INSERT INTO `zt_action` VALUES ('154', 'task', '69', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:22:43', '', '6', '0');
INSERT INTO `zt_action` VALUES ('155', 'task', '69', ',1,', '14', 'yao', 'closed', '2017-02-12 17:22:51', '', '', '0');
INSERT INTO `zt_action` VALUES ('156', 'task', '68', ',1,', '14', 'yao', 'started', '2017-02-12 17:23:39', '程序已经写好，需要秀丽提供付款用的QQ和支付宝的二维码', '', '1');
INSERT INTO `zt_action` VALUES ('157', 'task', '67', ',1,', '14', 'yao', 'started', '2017-02-12 17:23:48', '', '', '1');
INSERT INTO `zt_action` VALUES ('158', 'task', '67', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:24:02', '', '4', '1');
INSERT INTO `zt_action` VALUES ('159', 'task', '67', ',1,', '14', 'yao', 'closed', '2017-02-12 17:24:15', '', '', '0');
INSERT INTO `zt_action` VALUES ('160', 'task', '65', ',1,', '14', 'yao', 'started', '2017-02-12 17:24:35', '', '', '0');
INSERT INTO `zt_action` VALUES ('161', 'task', '65', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:24:49', '', '12', '0');
INSERT INTO `zt_action` VALUES ('162', 'task', '65', ',1,', '14', 'yao', 'closed', '2017-02-12 17:24:55', '', '', '0');
INSERT INTO `zt_action` VALUES ('163', 'task', '63', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('164', 'task', '64', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('165', 'task', '62', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('166', 'task', '61', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('167', 'task', '60', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('168', 'task', '59', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:44', '', '', '0');
INSERT INTO `zt_action` VALUES ('169', 'task', '58', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:49', '', '', '0');
INSERT INTO `zt_action` VALUES ('170', 'task', '56', ',1,', '14', 'yao', 'started', '2017-02-12 17:25:59', '', '', '0');
INSERT INTO `zt_action` VALUES ('171', 'task', '55', ',1,', '14', 'yao', 'started', '2017-02-12 17:26:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('172', 'task', '54', ',1,', '14', 'yao', 'started', '2017-02-12 17:26:12', '', '', '0');
INSERT INTO `zt_action` VALUES ('173', 'task', '64', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:26:27', '', '32', '0');
INSERT INTO `zt_action` VALUES ('174', 'task', '64', ',1,', '14', 'yao', 'closed', '2017-02-12 17:26:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('175', 'task', '63', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:26:47', '', '8', '0');
INSERT INTO `zt_action` VALUES ('176', 'task', '63', ',1,', '14', 'yao', 'closed', '2017-02-12 17:26:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('177', 'task', '62', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:27:07', '', '1', '0');
INSERT INTO `zt_action` VALUES ('178', 'task', '61', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:28:44', '秀丽服务号尚未注册', '1', '0');
INSERT INTO `zt_action` VALUES ('179', 'task', '62', ',1,', '14', 'yao', 'closed', '2017-02-12 17:28:51', '', '', '0');
INSERT INTO `zt_action` VALUES ('180', 'task', '60', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:29:06', '', '4', '0');
INSERT INTO `zt_action` VALUES ('181', 'task', '60', ',1,', '14', 'yao', 'closed', '2017-02-12 17:29:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('182', 'task', '59', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:30:18', '所有网站的用户共用一套用户名密码，只要在一个网站注册，秀丽广告旗下的所有网站都可以登陆', '8', '0');
INSERT INTO `zt_action` VALUES ('183', 'task', '59', ',1,', '14', 'yao', 'closed', '2017-02-12 17:30:24', '', '', '0');
INSERT INTO `zt_action` VALUES ('184', 'task', '58', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:30:37', '', '1', '0');
INSERT INTO `zt_action` VALUES ('185', 'task', '58', ',1,', '14', 'yao', 'closed', '2017-02-12 17:30:43', '', '', '0');
INSERT INTO `zt_action` VALUES ('186', 'task', '56', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:30:58', '', '5', '0');
INSERT INTO `zt_action` VALUES ('187', 'task', '56', ',1,', '14', 'yao', 'closed', '2017-02-12 17:31:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('188', 'task', '55', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:31:20', '', '4', '0');
INSERT INTO `zt_action` VALUES ('189', 'task', '55', ',1,', '14', 'yao', 'closed', '2017-02-12 17:31:26', '', '', '0');
INSERT INTO `zt_action` VALUES ('190', 'task', '54', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 17:31:58', '从禅道产品备注中取值', '8', '0');
INSERT INTO `zt_action` VALUES ('191', 'task', '54', ',1,', '14', 'yao', 'closed', '2017-02-12 17:32:03', '', '', '0');
INSERT INTO `zt_action` VALUES ('192', 'story', '20', ',1,', '14', 'yao', 'closed', '2017-02-12 17:32:51', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('193', 'story', '18', ',1,', '14', 'yao', 'closed', '2017-02-12 17:32:59', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('194', 'story', '16', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:06', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('195', 'story', '15', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:13', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('196', 'story', '13', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:20', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('197', 'story', '12', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:28', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('198', 'story', '11', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:34', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('199', 'story', '10', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:40', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('200', 'story', '8', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:47', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('201', 'story', '7', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:53', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('202', 'story', '5', ',1,', '14', 'yao', 'closed', '2017-02-12 17:33:59', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('203', 'build', '2', ',1,', '14', 'yao', 'opened', '2017-02-12 17:35:54', '', '', '0');
INSERT INTO `zt_action` VALUES ('204', 'release', '1', ',1,', '14', 'yao', 'opened', '2017-02-12 17:36:44', '', '', '0');
INSERT INTO `zt_action` VALUES ('205', 'story', '23', ',1,', '0', 'yao', 'opened', '2017-02-12 20:15:03', '', '', '0');
INSERT INTO `zt_action` VALUES ('206', 'story', '24', ',1,', '0', 'yao', 'opened', '2017-02-12 20:16:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('207', 'story', '25', ',1,', '0', 'yao', 'opened', '2017-02-12 20:18:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('208', 'story', '26', ',1,', '0', 'yao', 'opened', '2017-02-12 20:18:51', '', '', '0');
INSERT INTO `zt_action` VALUES ('209', 'story', '27', ',1,', '0', 'yao', 'opened', '2017-02-12 20:19:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('210', 'story', '28', ',1,', '0', 'yao', 'opened', '2017-02-12 20:25:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('211', 'story', '29', ',1,', '0', 'yao', 'opened', '2017-02-12 20:29:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('212', 'story', '29', ',1,', '0', 'yao', 'edited', '2017-02-12 20:32:42', '', '', '0');
INSERT INTO `zt_action` VALUES ('213', 'story', '29', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:32:59', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('214', 'story', '28', ',1,', '0', 'yao', 'edited', '2017-02-12 20:33:13', '', '', '0');
INSERT INTO `zt_action` VALUES ('215', 'story', '28', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:33:25', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('216', 'story', '27', ',1,', '0', 'yao', 'edited', '2017-02-12 20:33:42', '', '', '0');
INSERT INTO `zt_action` VALUES ('217', 'story', '27', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:33:52', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('218', 'story', '26', ',1,', '0', 'yao', 'edited', '2017-02-12 20:34:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('219', 'story', '26', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:34:12', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('220', 'story', '25', ',1,', '0', 'yao', 'edited', '2017-02-12 20:34:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('221', 'story', '25', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:34:34', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('222', 'story', '24', ',1,', '0', 'yao', 'edited', '2017-02-12 20:34:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('223', 'story', '24', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:35:09', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('224', 'story', '30', ',1,', '0', 'yao', 'opened', '2017-02-12 20:36:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('225', 'story', '30', ',1,', '0', 'yao', 'edited', '2017-02-12 20:36:24', '', '', '0');
INSERT INTO `zt_action` VALUES ('226', 'story', '30', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:36:39', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('227', 'story', '31', ',1,', '0', 'yao', 'opened', '2017-02-12 20:37:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('228', 'story', '31', ',1,', '0', 'yao', 'edited', '2017-02-12 20:37:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('229', 'story', '31', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:37:31', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('230', 'story', '32', ',1,', '0', 'yao', 'opened', '2017-02-12 20:38:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('231', 'story', '32', ',1,', '0', 'yao', 'edited', '2017-02-12 20:38:21', '', '', '0');
INSERT INTO `zt_action` VALUES ('232', 'story', '32', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:38:27', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('233', 'story', '33', ',1,', '0', 'yao', 'opened', '2017-02-12 20:43:39', '', '', '0');
INSERT INTO `zt_action` VALUES ('234', 'story', '34', ',1,', '0', 'yao', 'opened', '2017-02-12 20:43:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('235', 'story', '35', ',1,', '0', 'yao', 'opened', '2017-02-12 20:44:31', '', '', '0');
INSERT INTO `zt_action` VALUES ('236', 'story', '36', ',1,', '0', 'yao', 'opened', '2017-02-12 20:45:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('237', 'story', '37', ',1,', '0', 'yao', 'opened', '2017-02-12 20:45:31', '', '', '0');
INSERT INTO `zt_action` VALUES ('238', 'story', '37', ',1,', '0', 'yao', 'edited', '2017-02-12 20:46:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('239', 'story', '37', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:46:11', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('240', 'story', '36', ',1,', '0', 'yao', 'edited', '2017-02-12 20:46:38', '', '', '0');
INSERT INTO `zt_action` VALUES ('241', 'story', '36', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:46:45', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('242', 'story', '35', ',1,', '0', 'yao', 'edited', '2017-02-12 20:47:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('243', 'story', '36', ',1,', '0', 'yao', 'edited', '2017-02-12 20:47:44', '', '', '0');
INSERT INTO `zt_action` VALUES ('244', 'story', '35', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:47:59', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('245', 'story', '34', ',1,', '0', 'yao', 'edited', '2017-02-12 20:48:13', '', '', '0');
INSERT INTO `zt_action` VALUES ('246', 'story', '34', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:48:21', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('247', 'story', '33', ',1,', '0', 'yao', 'edited', '2017-02-12 20:48:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('248', 'story', '33', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:48:45', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('249', 'story', '38', ',1,', '0', 'yao', 'opened', '2017-02-12 20:51:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('250', 'story', '38', ',1,', '0', 'yao', 'edited', '2017-02-12 20:51:24', '', '', '0');
INSERT INTO `zt_action` VALUES ('251', 'story', '38', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:55:31', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('252', 'story', '39', ',1,', '0', 'yao', 'opened', '2017-02-12 20:56:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('253', 'story', '39', ',1,', '0', 'yao', 'edited', '2017-02-12 20:56:38', '', '', '0');
INSERT INTO `zt_action` VALUES ('254', 'story', '39', ',1,', '0', 'yao', 'reviewed', '2017-02-12 20:56:46', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('255', 'story', '40', ',1,', '0', 'yao', 'opened', '2017-02-12 21:00:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('256', 'story', '40', ',1,', '0', 'yao', 'edited', '2017-02-12 21:00:21', '', '', '0');
INSERT INTO `zt_action` VALUES ('257', 'story', '40', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:00:27', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('258', 'story', '41', ',1,', '0', 'yao', 'opened', '2017-02-12 21:02:39', '', '', '0');
INSERT INTO `zt_action` VALUES ('259', 'story', '41', ',1,', '0', 'yao', 'edited', '2017-02-12 21:02:49', '', '', '0');
INSERT INTO `zt_action` VALUES ('260', 'story', '41', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:02:55', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('261', 'story', '28', ',1,', '0', 'yao', 'edited', '2017-02-12 21:04:24', '', '', '0');
INSERT INTO `zt_action` VALUES ('262', 'story', '27', ',1,', '0', 'yao', 'edited', '2017-02-12 21:04:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('263', 'story', '26', ',1,', '0', 'yao', 'edited', '2017-02-12 21:04:43', '', '', '0');
INSERT INTO `zt_action` VALUES ('264', 'story', '42', ',1,', '0', 'yao', 'opened', '2017-02-12 21:06:49', '', '', '0');
INSERT INTO `zt_action` VALUES ('265', 'story', '42', ',1,', '0', 'yao', 'edited', '2017-02-12 21:06:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('266', 'story', '42', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:07:04', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('267', 'story', '43', ',1,', '0', 'yao', 'opened', '2017-02-12 21:11:20', '', '', '0');
INSERT INTO `zt_action` VALUES ('268', 'story', '44', ',1,', '0', 'yao', 'opened', '2017-02-12 21:11:43', '', '', '0');
INSERT INTO `zt_action` VALUES ('269', 'story', '44', ',1,', '0', 'yao', 'edited', '2017-02-12 21:11:51', '', '', '0');
INSERT INTO `zt_action` VALUES ('270', 'story', '43', ',1,', '0', 'yao', 'edited', '2017-02-12 21:12:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('271', 'story', '45', ',1,', '0', 'yao', 'opened', '2017-02-12 21:13:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('272', 'story', '45', ',1,', '0', 'yao', 'edited', '2017-02-12 21:13:08', '', '', '0');
INSERT INTO `zt_action` VALUES ('273', 'story', '46', ',1,', '0', 'yao', 'opened', '2017-02-12 21:13:38', '', '', '0');
INSERT INTO `zt_action` VALUES ('274', 'story', '47', ',1,', '0', 'yao', 'opened', '2017-02-12 21:14:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('275', 'story', '48', ',1,', '0', 'yao', 'opened', '2017-02-12 21:14:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('276', 'story', '48', ',1,', '0', 'yao', 'edited', '2017-02-12 21:14:38', '', '', '0');
INSERT INTO `zt_action` VALUES ('277', 'story', '48', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:14:56', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('278', 'story', '47', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:15:05', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('279', 'story', '46', ',1,', '0', 'yao', 'edited', '2017-02-12 21:15:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('280', 'story', '46', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:15:22', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('281', 'story', '47', ',1,', '0', 'yao', 'edited', '2017-02-12 21:15:37', '', '', '0');
INSERT INTO `zt_action` VALUES ('282', 'story', '45', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:15:56', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('283', 'story', '44', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:16:06', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('284', 'story', '43', ',1,', '0', 'yao', 'reviewed', '2017-02-12 21:16:16', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('285', 'story', '49', ',1,', '0', 'yao', 'opened', '2017-02-12 21:19:48', '', '', '0');
INSERT INTO `zt_action` VALUES ('286', 'story', '49', ',1,', '0', 'yao', 'edited', '2017-02-12 21:20:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('287', 'story', '48', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('288', 'story', '47', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('289', 'story', '46', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('290', 'story', '45', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('291', 'story', '44', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('292', 'story', '43', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('293', 'story', '42', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('294', 'story', '41', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('295', 'story', '40', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('296', 'story', '39', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('297', 'story', '38', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('298', 'story', '37', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('299', 'story', '36', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('300', 'story', '35', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('301', 'story', '34', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('302', 'story', '33', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('303', 'story', '32', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('304', 'story', '31', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('305', 'story', '30', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('306', 'story', '29', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('307', 'story', '28', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('308', 'story', '27', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:40', '', '14', '0');
INSERT INTO `zt_action` VALUES ('309', 'story', '26', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:41', '', '14', '0');
INSERT INTO `zt_action` VALUES ('310', 'story', '25', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:41', '', '14', '0');
INSERT INTO `zt_action` VALUES ('311', 'story', '24', ',1,', '14', 'yao', 'linked2project', '2017-02-12 21:20:41', '', '14', '0');
INSERT INTO `zt_action` VALUES ('312', 'story', '16', ',1,', '14', 'yao', 'edited', '2017-02-12 21:21:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('313', 'story', '18', ',1,', '14', 'yao', 'edited', '2017-02-12 21:21:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('314', 'story', '21', ',1,', '14', 'yao', 'edited', '2017-02-12 21:21:24', '', '', '0');
INSERT INTO `zt_action` VALUES ('315', 'story', '22', ',1,', '14', 'yao', 'edited', '2017-02-12 21:21:38', '', '', '0');
INSERT INTO `zt_action` VALUES ('316', 'story', '30', ',1,', '14', 'yao', 'edited', '2017-02-12 21:21:54', '', '', '0');
INSERT INTO `zt_action` VALUES ('317', 'task', '70', ',1,', '14', 'yao', 'opened', '2017-02-12 21:31:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('318', 'task', '71', ',1,', '14', 'yao', 'opened', '2017-02-12 21:32:19', '', '', '0');
INSERT INTO `zt_action` VALUES ('319', 'task', '72', ',1,', '14', 'yao', 'opened', '2017-02-12 21:32:45', '', '', '0');
INSERT INTO `zt_action` VALUES ('320', 'task', '73', ',1,', '14', 'yao', 'opened', '2017-02-12 21:33:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('321', 'task', '74', ',1,', '14', 'yao', 'opened', '2017-02-12 21:33:24', '', '', '1');
INSERT INTO `zt_action` VALUES ('322', 'task', '75', ',1,', '14', 'yao', 'opened', '2017-02-12 21:33:47', '', '', '0');
INSERT INTO `zt_action` VALUES ('323', 'task', '76', ',1,', '14', 'yao', 'opened', '2017-02-12 21:34:12', '', '', '0');
INSERT INTO `zt_action` VALUES ('324', 'task', '77', ',1,', '14', 'yao', 'opened', '2017-02-12 21:34:30', '', '', '0');
INSERT INTO `zt_action` VALUES ('325', 'task', '78', ',1,', '14', 'yao', 'opened', '2017-02-12 21:35:02', '', '', '1');
INSERT INTO `zt_action` VALUES ('326', 'task', '79', ',1,', '14', 'yao', 'opened', '2017-02-12 21:35:41', '', '', '0');
INSERT INTO `zt_action` VALUES ('327', 'task', '80', ',1,', '14', 'yao', 'opened', '2017-02-12 21:36:14', '', '', '1');
INSERT INTO `zt_action` VALUES ('328', 'task', '81', ',1,', '14', 'yao', 'opened', '2017-02-12 21:36:34', '', '', '1');
INSERT INTO `zt_action` VALUES ('329', 'task', '82', ',1,', '14', 'yao', 'opened', '2017-02-12 21:37:08', '', '', '1');
INSERT INTO `zt_action` VALUES ('330', 'task', '83', ',1,', '14', 'yao', 'opened', '2017-02-12 21:37:30', '', '', '1');
INSERT INTO `zt_action` VALUES ('331', 'task', '84', ',1,', '14', 'yao', 'opened', '2017-02-12 21:38:22', '', '', '0');
INSERT INTO `zt_action` VALUES ('332', 'task', '85', ',1,', '14', 'yao', 'opened', '2017-02-12 21:38:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('333', 'task', '86', ',1,', '14', 'yao', 'opened', '2017-02-12 21:39:22', '', '', '0');
INSERT INTO `zt_action` VALUES ('334', 'task', '87', ',1,', '14', 'yao', 'opened', '2017-02-12 21:39:43', '', '', '1');
INSERT INTO `zt_action` VALUES ('335', 'task', '88', ',1,', '14', 'yao', 'opened', '2017-02-12 21:40:07', '', '', '0');
INSERT INTO `zt_action` VALUES ('336', 'task', '89', ',1,', '14', 'yao', 'opened', '2017-02-12 21:40:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('337', 'task', '90', ',1,', '14', 'yao', 'opened', '2017-02-12 21:40:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('338', 'task', '91', ',1,', '14', 'yao', 'opened', '2017-02-12 21:41:16', '', '', '1');
INSERT INTO `zt_action` VALUES ('339', 'task', '92', ',1,', '14', 'yao', 'opened', '2017-02-12 21:41:39', '', '', '0');
INSERT INTO `zt_action` VALUES ('340', 'task', '93', ',1,', '14', 'yao', 'opened', '2017-02-12 21:42:01', '', '', '1');
INSERT INTO `zt_action` VALUES ('341', 'task', '94', ',1,', '14', 'yao', 'opened', '2017-02-12 21:42:19', '', '', '0');
INSERT INTO `zt_action` VALUES ('342', 'task', '94', ',1,', '14', 'yao', 'started', '2017-02-12 21:42:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('343', 'task', '94', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:43:03', '', '6', '0');
INSERT INTO `zt_action` VALUES ('344', 'task', '94', ',1,', '14', 'yao', 'closed', '2017-02-12 21:43:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('345', 'task', '93', ',1,', '14', 'yao', 'started', '2017-02-12 21:43:17', '', '', '1');
INSERT INTO `zt_action` VALUES ('346', 'task', '93', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:43:30', '', '8', '1');
INSERT INTO `zt_action` VALUES ('347', 'task', '93', ',1,', '14', 'yao', 'edited', '2017-02-12 21:43:42', '', '', '1');
INSERT INTO `zt_action` VALUES ('348', 'task', '93', ',1,', '14', 'yao', 'closed', '2017-02-12 21:43:48', '', '', '0');
INSERT INTO `zt_action` VALUES ('349', 'task', '92', ',1,', '14', 'yao', 'started', '2017-02-12 21:44:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('350', 'task', '92', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:44:13', '', '8', '0');
INSERT INTO `zt_action` VALUES ('351', 'task', '92', ',1,', '14', 'yao', 'closed', '2017-02-12 21:44:18', '', '', '0');
INSERT INTO `zt_action` VALUES ('352', 'task', '91', ',1,', '14', 'yao', 'started', '2017-02-12 21:44:26', '', '', '1');
INSERT INTO `zt_action` VALUES ('353', 'task', '91', ',1,', '14', 'yao', 'edited', '2017-02-12 21:44:35', '', '', '1');
INSERT INTO `zt_action` VALUES ('354', 'task', '91', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:45:07', '', '8', '1');
INSERT INTO `zt_action` VALUES ('355', 'task', '91', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:45:07', '', '8', '1');
INSERT INTO `zt_action` VALUES ('356', 'task', '91', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:45:07', '', '8', '1');
INSERT INTO `zt_action` VALUES ('357', 'task', '91', ',1,', '14', 'yao', 'closed', '2017-02-12 21:45:17', '', '', '0');
INSERT INTO `zt_action` VALUES ('358', 'task', '90', ',1,', '14', 'yao', 'started', '2017-02-12 21:47:54', '', '', '0');
INSERT INTO `zt_action` VALUES ('359', 'task', '90', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:48:05', '', '6', '0');
INSERT INTO `zt_action` VALUES ('360', 'task', '90', ',1,', '14', 'yao', 'closed', '2017-02-12 21:48:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('361', 'task', '89', ',1,', '14', 'yao', 'started', '2017-02-12 21:48:34', '', '', '0');
INSERT INTO `zt_action` VALUES ('362', 'task', '89', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:48:47', '', '6', '0');
INSERT INTO `zt_action` VALUES ('363', 'task', '89', ',1,', '14', 'yao', 'closed', '2017-02-12 21:48:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('364', 'task', '88', ',1,', '14', 'yao', 'started', '2017-02-12 21:48:59', '', '', '0');
INSERT INTO `zt_action` VALUES ('365', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:49:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('366', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:49:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('367', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:49:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('368', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:49:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('369', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:49:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('370', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:50:28', '', '8', '0');
INSERT INTO `zt_action` VALUES ('371', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:50:28', '', '8', '0');
INSERT INTO `zt_action` VALUES ('372', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:50:28', '', '8', '0');
INSERT INTO `zt_action` VALUES ('373', 'task', '88', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:50:28', '', '8', '0');
INSERT INTO `zt_action` VALUES ('374', 'task', '88', ',1,', '14', 'yao', 'closed', '2017-02-12 21:50:35', '', '', '0');
INSERT INTO `zt_action` VALUES ('375', 'task', '87', ',1,', '14', 'yao', 'edited', '2017-02-12 21:51:07', '', '', '1');
INSERT INTO `zt_action` VALUES ('376', 'task', '87', ',1,', '14', 'yao', 'started', '2017-02-12 21:51:11', '', '', '1');
INSERT INTO `zt_action` VALUES ('377', 'task', '87', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:51:46', '', '8', '1');
INSERT INTO `zt_action` VALUES ('378', 'task', '87', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:51:46', '', '8', '1');
INSERT INTO `zt_action` VALUES ('379', 'task', '87', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:51:47', '', '8', '1');
INSERT INTO `zt_action` VALUES ('380', 'task', '87', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:51:47', '', '8', '1');
INSERT INTO `zt_action` VALUES ('381', 'task', '87', ',1,', '14', 'yao', 'closed', '2017-02-12 21:51:52', '', '', '0');
INSERT INTO `zt_action` VALUES ('382', 'task', '86', ',1,', '14', 'yao', 'started', '2017-02-12 21:52:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('383', 'task', '86', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:52:18', '', '8', '0');
INSERT INTO `zt_action` VALUES ('384', 'task', '86', ',1,', '14', 'yao', 'closed', '2017-02-12 21:52:23', '', '', '0');
INSERT INTO `zt_action` VALUES ('385', 'task', '85', ',1,', '14', 'yao', 'started', '2017-02-12 21:52:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('386', 'task', '85', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:52:40', '', '2', '0');
INSERT INTO `zt_action` VALUES ('387', 'task', '85', ',1,', '14', 'yao', 'closed', '2017-02-12 21:52:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('388', 'task', '84', ',1,', '14', 'yao', 'started', '2017-02-12 21:53:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('389', 'task', '84', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:53:15', '', '8', '0');
INSERT INTO `zt_action` VALUES ('390', 'task', '84', ',1,', '14', 'yao', 'closed', '2017-02-12 21:53:22', '', '', '0');
INSERT INTO `zt_action` VALUES ('391', 'task', '81', ',1,', '14', 'yao', 'started', '2017-02-12 21:53:31', '', '', '1');
INSERT INTO `zt_action` VALUES ('392', 'task', '80', ',1,', '14', 'yao', 'started', '2017-02-12 21:53:40', '', '', '1');
INSERT INTO `zt_action` VALUES ('393', 'task', '79', ',1,', '14', 'yao', 'started', '2017-02-12 21:53:49', '', '', '0');
INSERT INTO `zt_action` VALUES ('394', 'task', '78', ',1,', '14', 'yao', 'started', '2017-02-12 21:54:02', '', '', '1');
INSERT INTO `zt_action` VALUES ('395', 'task', '78', ',1,', '14', 'yao', 'edited', '2017-02-12 21:54:23', '', '', '1');
INSERT INTO `zt_action` VALUES ('396', 'task', '78', ',1,', '14', 'yao', 'deleteestimate', '2017-02-12 21:54:31', '', '', '1');
INSERT INTO `zt_action` VALUES ('397', 'task', '78', ',1,', '14', 'yao', 'editestimate', '2017-02-12 21:54:40', '', '', '1');
INSERT INTO `zt_action` VALUES ('398', 'task', '78', ',1,', '14', 'yao', 'deleteestimate', '2017-02-12 21:54:45', '', '', '1');
INSERT INTO `zt_action` VALUES ('399', 'task', '78', ',1,', '14', 'yao', 'finished', '2017-02-12 21:54:55', '', '', '1');
INSERT INTO `zt_action` VALUES ('400', 'task', '78', ',1,', '14', 'yao', 'closed', '2017-02-12 21:55:00', '', '', '0');
INSERT INTO `zt_action` VALUES ('401', 'task', '77', ',1,', '14', 'yao', 'started', '2017-02-12 21:55:28', '', '', '0');
INSERT INTO `zt_action` VALUES ('402', 'task', '77', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:55:42', '', '8', '0');
INSERT INTO `zt_action` VALUES ('403', 'task', '77', ',1,', '14', 'yao', 'closed', '2017-02-12 21:55:48', '', '', '0');
INSERT INTO `zt_action` VALUES ('404', 'task', '76', ',1,', '14', 'yao', 'started', '2017-02-12 21:55:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('405', 'task', '75', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('406', 'task', '74', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:09', '', '', '1');
INSERT INTO `zt_action` VALUES ('407', 'task', '73', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:15', '', '', '0');
INSERT INTO `zt_action` VALUES ('408', 'task', '72', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:20', '', '', '0');
INSERT INTO `zt_action` VALUES ('409', 'task', '71', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('410', 'task', '70', ',1,', '14', 'yao', 'started', '2017-02-12 21:56:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('411', 'task', '76', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:57:00', '', '8', '0');
INSERT INTO `zt_action` VALUES ('412', 'task', '76', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:57:00', '', '8', '0');
INSERT INTO `zt_action` VALUES ('413', 'task', '76', ',1,', '14', 'yao', 'closed', '2017-02-12 21:57:05', '', '', '0');
INSERT INTO `zt_action` VALUES ('414', 'task', '75', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:57:26', '', '4', '0');
INSERT INTO `zt_action` VALUES ('415', 'task', '75', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:57:26', '', '8', '0');
INSERT INTO `zt_action` VALUES ('416', 'task', '75', ',1,', '14', 'yao', 'closed', '2017-02-12 21:57:36', '', '', '0');
INSERT INTO `zt_action` VALUES ('417', 'task', '74', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:58:14', '', '8', '1');
INSERT INTO `zt_action` VALUES ('418', 'task', '74', ',1,', '14', 'yao', 'closed', '2017-02-12 21:58:33', '', '', '0');
INSERT INTO `zt_action` VALUES ('419', 'task', '73', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:59:03', '', '8', '0');
INSERT INTO `zt_action` VALUES ('420', 'task', '73', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:59:03', '', '8', '0');
INSERT INTO `zt_action` VALUES ('421', 'task', '73', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 21:59:03', '', '8', '0');
INSERT INTO `zt_action` VALUES ('422', 'task', '73', ',1,', '14', 'yao', 'closed', '2017-02-12 21:59:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('423', 'task', '72', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 22:00:04', '需要添加制作周期字段', '6', '0');
INSERT INTO `zt_action` VALUES ('424', 'task', '71', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 22:00:30', '需要添加制作周期字段', '8', '0');
INSERT INTO `zt_action` VALUES ('425', 'task', '70', ',1,', '14', 'yao', 'recordestimate', '2017-02-12 22:00:48', '', '8', '0');
INSERT INTO `zt_action` VALUES ('426', 'task', '70', ',1,', '14', 'yao', 'closed', '2017-02-12 22:00:53', '', '', '0');
INSERT INTO `zt_action` VALUES ('427', 'story', '48', ',1,', '14', 'yao', 'closed', '2017-02-12 22:01:34', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('428', 'story', '47', ',1,', '14', 'yao', 'closed', '2017-02-12 22:01:43', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('429', 'story', '46', ',1,', '14', 'yao', 'closed', '2017-02-12 22:01:51', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('430', 'story', '45', ',1,', '14', 'yao', 'closed', '2017-02-12 22:01:59', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('431', 'story', '43', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:06', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('432', 'story', '42', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:13', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('433', 'story', '41', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:19', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('434', 'story', '40', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:26', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('435', 'story', '39', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:33', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('436', 'story', '38', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:40', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('437', 'story', '32', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:46', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('438', 'story', '31', ',1,', '14', 'yao', 'closed', '2017-02-12 22:02:57', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('439', 'story', '30', ',1,', '14', 'yao', 'closed', '2017-02-12 22:03:04', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('440', 'story', '29', ',1,', '14', 'yao', 'closed', '2017-02-12 22:03:10', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('441', 'story', '28', ',1,', '14', 'yao', 'closed', '2017-02-12 22:03:17', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('442', 'story', '27', ',1,', '14', 'yao', 'closed', '2017-02-12 22:03:24', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('443', 'story', '24', ',1,', '14', 'yao', 'closed', '2017-02-12 22:03:32', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('444', 'story', '44', ',1,', '14', 'yao', 'closed', '2017-02-12 22:05:08', '', 'Done', '0');
INSERT INTO `zt_action` VALUES ('445', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-15 21:13:37', '', '', '0');
INSERT INTO `zt_action` VALUES ('446', 'user', '2', ',0,', '0', 'yao', 'logout', '2017-02-15 21:13:51', '', '', '0');
INSERT INTO `zt_action` VALUES ('447', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-15 21:13:57', '', '', '0');
INSERT INTO `zt_action` VALUES ('448', 'user', '2', ',0,', '0', 'yao', 'logout', '2017-02-15 21:14:45', '', '', '0');
INSERT INTO `zt_action` VALUES ('449', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-15 21:15:02', '', '', '0');
INSERT INTO `zt_action` VALUES ('450', 'task', '72', ',1,', '14', 'yao', 'recordestimate', '2017-02-15 21:15:50', '', '2', '0');
INSERT INTO `zt_action` VALUES ('451', 'task', '72', ',1,', '14', 'yao', 'closed', '2017-02-15 21:16:01', '', '', '0');
INSERT INTO `zt_action` VALUES ('452', 'task', '71', ',1,', '14', 'yao', 'recordestimate', '2017-02-15 21:16:15', '', '4', '0');
INSERT INTO `zt_action` VALUES ('453', 'task', '71', ',1,', '14', 'yao', 'closed', '2017-02-15 21:16:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('454', 'project', '18', ',6,', '18', 'yao', 'opened', '2017-02-15 21:18:27', '', '', '0');
INSERT INTO `zt_action` VALUES ('455', 'product', '8', ',8,', '0', 'yao', 'edited', '2017-02-15 21:31:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('456', 'user', '1', ',0,', '0', 'admin', 'login', '2017-02-17 01:14:31', '', '', '0');
INSERT INTO `zt_action` VALUES ('457', 'user', '1', ',0,', '0', 'admin', 'logout', '2017-02-17 01:17:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('458', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-20 09:31:29', '', '', '0');
INSERT INTO `zt_action` VALUES ('459', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-28 10:25:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('460', 'productplan', '3', ',6,', '0', 'yao', 'opened', '2017-02-28 10:49:06', '', '', '0');
INSERT INTO `zt_action` VALUES ('461', 'story', '50', ',6,', '0', 'yao', 'opened', '2017-02-28 10:53:11', '', '', '0');
INSERT INTO `zt_action` VALUES ('462', 'story', '51', ',6,', '0', 'yao', 'opened', '2017-02-28 10:57:21', '', '', '0');
INSERT INTO `zt_action` VALUES ('463', 'story', '50', ',6,', '0', 'yao', 'edited', '2017-02-28 10:58:10', '', '', '0');
INSERT INTO `zt_action` VALUES ('464', 'story', '52', ',6,', '0', 'yao', 'opened', '2017-02-28 11:01:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('465', 'story', '53', ',6,', '0', 'yao', 'opened', '2017-02-28 11:11:47', '', '', '0');
INSERT INTO `zt_action` VALUES ('466', 'story', '54', ',6,', '0', 'yao', 'opened', '2017-02-28 11:14:53', '', '', '0');
INSERT INTO `zt_action` VALUES ('467', 'story', '53', ',6,', '0', 'yao', 'reviewed', '2017-02-28 11:16:10', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('468', 'story', '52', ',6,', '0', 'yao', 'reviewed', '2017-02-28 11:16:21', '', 'Pass', '0');
INSERT INTO `zt_action` VALUES ('469', 'story', '54', ',6,', '18', 'yao', 'linked2project', '2017-02-28 11:16:52', '', '18', '0');
INSERT INTO `zt_action` VALUES ('470', 'story', '53', ',6,', '18', 'yao', 'linked2project', '2017-02-28 11:16:52', '', '18', '0');
INSERT INTO `zt_action` VALUES ('471', 'story', '52', ',6,', '18', 'yao', 'linked2project', '2017-02-28 11:16:52', '', '18', '0');
INSERT INTO `zt_action` VALUES ('472', 'story', '51', ',6,', '18', 'yao', 'linked2project', '2017-02-28 11:16:53', '', '18', '0');
INSERT INTO `zt_action` VALUES ('473', 'story', '50', ',6,', '18', 'yao', 'linked2project', '2017-02-28 11:16:53', '', '18', '0');
INSERT INTO `zt_action` VALUES ('474', 'task', '95', ',6,', '18', 'yao', 'opened', '2017-02-28 11:18:58', '', '', '0');
INSERT INTO `zt_action` VALUES ('475', 'task', '96', ',6,', '18', 'yao', 'opened', '2017-02-28 11:20:12', '', '', '1');
INSERT INTO `zt_action` VALUES ('476', 'task', '97', ',6,', '18', 'yao', 'opened', '2017-02-28 11:22:25', '', '', '0');
INSERT INTO `zt_action` VALUES ('477', 'task', '98', ',6,', '18', 'yao', 'opened', '2017-02-28 11:24:00', '', '', '1');
INSERT INTO `zt_action` VALUES ('478', 'todo', '1', ',0,', '0', 'yao', 'opened', '2017-02-28 12:04:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('479', 'task', '83', ',1,', '14', 'yao', 'finished', '2017-02-28 12:05:58', '', '', '1');
INSERT INTO `zt_action` VALUES ('480', 'task', '66', ',1,', '14', 'yao', 'finished', '2017-02-28 12:06:33', '', '', '1');
INSERT INTO `zt_action` VALUES ('481', 'task', '83', ',1,', '14', 'yao', 'closed', '2017-02-28 12:06:45', '', '', '0');
INSERT INTO `zt_action` VALUES ('482', 'task', '66', ',1,', '14', 'yao', 'closed', '2017-02-28 12:06:50', '', '', '0');
INSERT INTO `zt_action` VALUES ('483', 'task', '61', ',1,', '14', 'yao', 'finished', '2017-02-28 12:07:04', '', '', '0');
INSERT INTO `zt_action` VALUES ('484', 'task', '61', ',1,', '14', 'yao', 'closed', '2017-02-28 12:07:09', '', '', '0');
INSERT INTO `zt_action` VALUES ('485', 'task', '68', ',1,', '14', 'yao', 'canceled', '2017-02-28 12:07:48', '不需要了', '', '1');
INSERT INTO `zt_action` VALUES ('486', 'task', '68', ',1,', '14', 'yao', 'closed', '2017-02-28 12:07:53', '', '', '0');
INSERT INTO `zt_action` VALUES ('487', 'user', '2', ',0,', '0', 'yao', 'login', '2017-02-28 21:07:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('488', 'user', '2', ',0,', '0', 'yao', 'login', '2017-03-16 10:00:40', '', '', '0');
INSERT INTO `zt_action` VALUES ('489', 'product', '1', ',1,', '0', 'yao', 'edited', '2017-03-16 10:01:12', '', '', '0');
INSERT INTO `zt_action` VALUES ('490', 'product', '4', ',4,', '0', 'yao', 'edited', '2017-03-16 11:34:03', '', '', '0');

-- ----------------------------
-- Table structure for `zt_as_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_as_cate`;
CREATE TABLE `zt_as_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_as_cate
-- ----------------------------
INSERT INTO `zt_as_cate` VALUES ('4', '4', '0', '汽车用品', '已搁置', '4', '贾晓月', '2017-02-18 19:00:36');
INSERT INTO `zt_as_cate` VALUES ('1', '1', '0', '钣金喷漆', '正常', '4', '腰立辉', '2017-02-09 21:47:21');
INSERT INTO `zt_as_cate` VALUES ('2', '3', '0', '汽车维修', '正常', '4', '腰立辉', '2017-02-09 21:47:24');
INSERT INTO `zt_as_cate` VALUES ('3', '2', '0', '汽车保养', '正常', '4', '腰立辉', '2017-02-09 21:47:26');
INSERT INTO `zt_as_cate` VALUES ('5', '5', '4', '保养类', '正常', '4', '贾晓月', '2017-02-18 18:59:50');
INSERT INTO `zt_as_cate` VALUES ('6', '6', '4', '装饰类', '正常', '4', '贾晓月', '2017-02-18 18:59:52');
INSERT INTO `zt_as_cate` VALUES ('7', '3', '4', '清洁类', '正常', '4', '贾晓月', '2017-02-18 19:00:16');

-- ----------------------------
-- Table structure for `zt_as_orderdata`
-- ----------------------------
DROP TABLE IF EXISTS `zt_as_orderdata`;
CREATE TABLE `zt_as_orderdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单数据id',
  `oid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `pname` varchar(50) NOT NULL COMMENT '商品名称',
  `plogo` varchar(200) NOT NULL COMMENT '商品logo',
  `pmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '商品价格',
  `pnum` smallint(5) unsigned NOT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`),
  KEY `orderdata_oid` (`oid`),
  KEY `orderdata_pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_as_orderdata
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_as_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_as_prodservice`;
CREATE TABLE `zt_as_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_as_prodservice
-- ----------------------------
INSERT INTO `zt_as_prodservice` VALUES ('1', '', '大保养', '', '0', null, '正常', '0', '0', '0', '1', null, '0', null, '1', '61', null, null, null, '腰立辉', '2017-01-24 22:03:55');
INSERT INTO `zt_as_prodservice` VALUES ('2', '', '小保养', '', '0', null, '正常', '0', '0', '0', '1', null, '0', null, '1', '61', null, null, null, '腰立辉', '2017-01-24 22:04:13');
INSERT INTO `zt_as_prodservice` VALUES ('3', '', '漆面打磨/车身钣金', '', '0', null, '发布', '0', '0', '0', '999', null, '1', null, '1', '1', null, '/Product/2017-02-18/', '58a8273db1425.jpg', '贾晓月', '2017-02-18 18:51:41');
INSERT INTO `zt_as_prodservice` VALUES ('4', '', '刮腻子找平', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '1', null, '/Product/2017-02-18/', '58a82774636a6.jpg', '贾晓月', '2017-02-18 19:03:11');
INSERT INTO `zt_as_prodservice` VALUES ('5', '', '腻子层打磨、晾干', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '1', null, '/Product/2017-02-18/', '58a8277e76fc7.jpg', '贾晓月', '2017-02-18 19:03:21');
INSERT INTO `zt_as_prodservice` VALUES ('6', '', '漆面防护并喷涂底漆', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '1', null, '/Product/2017-02-18/', '58a827890e951.jpg', '贾晓月', '2017-02-18 19:03:26');
INSERT INTO `zt_as_prodservice` VALUES ('7', '', '漆面整体研磨', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '5', '1', null, '/Product/2017-02-18/', '58a827958bc1b.jpg', '贾晓月', '2017-02-18 19:03:31');
INSERT INTO `zt_as_prodservice` VALUES ('8', '', '漆面防护处理', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '1', null, '/Product/2017-02-18/', '58a827a40b9b2.jpg', '贾晓月', '2017-02-18 19:03:36');
INSERT INTO `zt_as_prodservice` VALUES ('9', '', '根据车身颜色调漆', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '7', '1', null, '/Product/2017-02-18/', '58a827be256d1.jpg', '贾晓月', '2017-02-18 19:03:42');
INSERT INTO `zt_as_prodservice` VALUES ('10', '', '喷涂色漆/面漆', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '8', '1', null, '/Product/2017-02-18/', '58a827c7593ba.jpg', '贾晓月', '2017-02-18 19:04:00');
INSERT INTO `zt_as_prodservice` VALUES ('11', '', '喷涂清漆并晾干', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '9', '1', null, '/Product/2017-02-18/', '58a827d496afb.jpg', '贾晓月', '2017-02-18 19:04:09');
INSERT INTO `zt_as_prodservice` VALUES ('12', '', '漆面晾干/烘烤', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '10', '1', null, '/Product/2017-02-18/', '58a827dc3f74d.jpg', '贾晓月', '2017-02-18 19:04:17');
INSERT INTO `zt_as_prodservice` VALUES ('13', '', '新喷漆面检查、修复', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '11', '1', null, '/Product/2017-02-18/', '58a827e44fa59.jpg', '贾晓月', '2017-02-18 19:04:23');
INSERT INTO `zt_as_prodservice` VALUES ('14', '', '洗车抛光、修复完成', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '12', '1', null, '/Product/2017-02-18/', '58a827ec7b13c.jpg', '贾晓月', '2017-02-18 19:04:28');
INSERT INTO `zt_as_prodservice` VALUES ('15', '', '常规大保养', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '3', null, null, null, '贾晓月', '2017-02-18 18:55:39');
INSERT INTO `zt_as_prodservice` VALUES ('16', '', '常规小保养', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '3', null, '/Product/2017-02-21/', '58abf839edce6.jpg', '贾晓月', '2017-02-21 16:20:21');
INSERT INTO `zt_as_prodservice` VALUES ('17', '', '专项-引擎保养', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '3', null, '/Product/2017-02-21/', '58abf8844ac9b.jpg', '贾晓月', '2017-02-21 16:21:36');
INSERT INTO `zt_as_prodservice` VALUES ('18', '', '专项-变速箱保养', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '4', '3', null, null, null, '贾晓月', '2017-02-18 18:56:55');
INSERT INTO `zt_as_prodservice` VALUES ('19', '', '专项-空调保养', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '5', '3', null, null, null, '贾晓月', '2017-02-18 18:57:07');
INSERT INTO `zt_as_prodservice` VALUES ('20', '', '专项-冷却系统保养', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '6', '3', null, null, null, '贾晓月', '2017-02-18 18:57:33');
INSERT INTO `zt_as_prodservice` VALUES ('21', '', '专项-燃油系统保养', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '7', '3', null, '/Product/2017-02-21/', '58abf8a6aaca4.jpg', '贾晓月', '2017-02-21 16:22:10');
INSERT INTO `zt_as_prodservice` VALUES ('22', '', '专项-动力转向系统保养', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '8', '3', null, '/Product/2017-02-21/', '58abf72ab5c3a.jpg', '贾晓月', '2017-02-21 16:15:51');
INSERT INTO `zt_as_prodservice` VALUES ('23', '', '多级润滑油15W-40-壳牌', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '1', '5', null, '/Product/2017-02-18/', '58a85449c72d2.jpg', '贾晓月', '2017-02-18 22:15:25');
INSERT INTO `zt_as_prodservice` VALUES ('24', '', '防冻液-车喜', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '5', '5', null, '/Product/2017-02-18/', '58a8558945b4b.jpg', '贾晓月', '2017-02-18 22:15:40');
INSERT INTO `zt_as_prodservice` VALUES ('25', '', '刹车油-车喜', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '8', '5', null, '/Product/2017-02-18/', '58a856462b0ea.jpg', '贾晓月', '2017-02-18 22:16:18');
INSERT INTO `zt_as_prodservice` VALUES ('26', '', '挂件', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '6', null, null, null, '贾晓月', '2017-02-18 19:01:43');
INSERT INTO `zt_as_prodservice` VALUES ('27', '', '贴片', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '2', '6', null, null, null, '贾晓月', '2017-02-18 19:01:51');
INSERT INTO `zt_as_prodservice` VALUES ('28', '', '高纯玻璃水-蓝代', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '1', '7', null, '/Product/2017-02-18/', '58a852cd5058a.jpg', '贾晓月', '2017-02-18 22:19:01');
INSERT INTO `zt_as_prodservice` VALUES ('29', '', '水蜡', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '2', '7', null, null, null, '贾晓月', '2017-02-18 19:02:13');
INSERT INTO `zt_as_prodservice` VALUES ('30', '', '洗车神器', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '3', '7', null, null, null, '贾晓月', '2017-02-18 19:02:20');
INSERT INTO `zt_as_prodservice` VALUES ('31', '', '合成技术润滑油10W-40-壳', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '5', null, '/Product/2017-02-18/', '58a85458f1642.jpg', '贾晓月', '2017-02-18 22:15:28');
INSERT INTO `zt_as_prodservice` VALUES ('32', '', '全合成润滑油5W-40-壳牌', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '5', null, '/Product/2017-02-18/', '58a854636660e.jpg', '贾晓月', '2017-02-18 22:15:32');
INSERT INTO `zt_as_prodservice` VALUES ('33', '', '优质多级润滑油10W-40-壳', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '5', null, '/Product/2017-02-18/', '58a854776bb25.jpg', '贾晓月', '2017-02-18 22:15:35');
INSERT INTO `zt_as_prodservice` VALUES ('34', '', '多效防冻液-三木牌', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '5', null, '/Product/2017-02-18/', '58a85596786df.jpg', '贾晓月', '2017-02-18 22:15:47');
INSERT INTO `zt_as_prodservice` VALUES ('35', '', '全效防冻液', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '7', '5', null, '/Product/2017-02-18/', '58a855a54a82e.jpg', '贾晓月', '2017-02-18 22:15:55');
INSERT INTO `zt_as_prodservice` VALUES ('36', '', '刹车油-五菱', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '9', '5', null, '/Product/2017-02-18/', '58a85650ee211.jpg', '贾晓月', '2017-02-18 22:16:35');
INSERT INTO `zt_as_prodservice` VALUES ('37', '', '齿轮油-车喜', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '10', '5', null, '/Product/2017-02-18/', '58a856cca1982.jpg', '贾晓月', '2017-02-18 22:16:11');
INSERT INTO `zt_as_prodservice` VALUES ('38', '', '自动排挡油-车喜', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '11', '5', null, '/Product/2017-02-18/', '58a856db2420f.jpg', '贾晓月', '2017-02-18 22:16:43');
INSERT INTO `zt_as_prodservice` VALUES ('39', '', '手动变速箱润滑油S2G80W-', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '12', '5', null, '/Product/2017-02-18/', '58a856eee2645.jpg', '贾晓月', '2017-02-18 22:16:48');
INSERT INTO `zt_as_prodservice` VALUES ('40', '', '坐垫', '', '', null, '正常', '0', '0', '0', '999', null, '0', null, '3', '6', null, null, null, '贾晓月', '2017-02-18 22:17:10');

-- ----------------------------
-- Table structure for `zt_as_usecar`
-- ----------------------------
DROP TABLE IF EXISTS `zt_as_usecar`;
CREATE TABLE `zt_as_usecar` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_as_usecar
-- ----------------------------
INSERT INTO `zt_as_usecar` VALUES ('3', '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 14:01:15');
INSERT INTO `zt_as_usecar` VALUES ('4', '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class=\"ShuKeyWordLink\" href=\"http://car.autohome.com.cn/shuyu/detail_8_9_555.html\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">发动机</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">在开空调的测试中，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的百公里油耗为6.15升，而</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/694/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">锋范</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', '7', 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 13:49:29');
INSERT INTO `zt_as_usecar` VALUES ('5', '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '7', 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 13:00:58');
INSERT INTO `zt_as_usecar` VALUES ('8', '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 14:16:36');
INSERT INTO `zt_as_usecar` VALUES ('6', '保护漆面从新车做起', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 14:04:12');
INSERT INTO `zt_as_usecar` VALUES ('7', '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 14:07:29');

-- ----------------------------
-- Table structure for `zt_block`
-- ----------------------------
DROP TABLE IF EXISTS `zt_block`;
CREATE TABLE `zt_block` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `params` text NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountModuleOrder` (`account`,`module`,`order`),
  KEY `block` (`account`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_block
-- ----------------------------
INSERT INTO `zt_block` VALUES ('1', 'admin', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('2', 'admin', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('3', 'admin', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('4', 'admin', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('5', 'admin', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('6', 'admin', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('7', 'admin', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('8', 'admin', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('9', 'admin', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('10', 'admin', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('11', 'admin', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('12', 'admin', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('13', 'admin', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('14', 'yaolh', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('15', 'yaolh', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('16', 'yaolh', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('17', 'yaolh', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('18', 'yaolh', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('19', 'yaolh', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('20', 'yaolh', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('21', 'yaolh', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('22', 'yaolh', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('23', 'yaolh', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('24', 'yaolh', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('25', 'yaolh', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('26', 'yaolh', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('27', 'yaolh', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('28', 'yaolh', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('29', 'yaolh', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('30', 'yangyh', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('31', 'yangyh', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('32', 'yangyh', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('33', 'yangyh', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('34', 'yangyh', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('35', 'yangyh', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('36', 'yangyh', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('37', 'yangyh', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('38', 'yangyh', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('39', 'yangyh', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('40', 'yangyh', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('41', 'yangyh', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('42', 'yangyh', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('43', 'yangyh', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('44', 'yangyh', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('45', 'yangyh', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('46', 'admin', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('47', 'admin', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('48', 'admin', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('49', 'yao', 'my', '流程图', '', 'flowchart', '{}', '1', '6', '0');
INSERT INTO `zt_block` VALUES ('50', 'yao', 'my', '最新动态', '', 'dynamic', '{}', '2', '6', '0');
INSERT INTO `zt_block` VALUES ('51', 'yao', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '6', '0');
INSERT INTO `zt_block` VALUES ('52', 'yao', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '6', '0');
INSERT INTO `zt_block` VALUES ('53', 'yao', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '6', '0');
INSERT INTO `zt_block` VALUES ('54', 'yao', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '6', '0');
INSERT INTO `zt_block` VALUES ('55', 'yao', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('56', 'yao', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('57', 'yao', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('58', 'yao', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('59', 'yao', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('60', 'yao', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('61', 'yao', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('62', 'zhangxl', 'my', '流程图', '', 'flowchart', '', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('63', 'zhangxl', 'my', '最新动态', '', 'dynamic', '', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('64', 'zhangxl', 'my', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '3', '8', '0');
INSERT INTO `zt_block` VALUES ('65', 'zhangxl', 'my', '我的待办', 'todo', 'list', '{\"num\":\"20\"}', '4', '4', '0');
INSERT INTO `zt_block` VALUES ('66', 'zhangxl', 'my', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '5', '8', '0');
INSERT INTO `zt_block` VALUES ('67', 'zhangxl', 'my', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '6', '4', '0');
INSERT INTO `zt_block` VALUES ('68', 'zhangxl', 'my', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '7', '4', '0');
INSERT INTO `zt_block` VALUES ('69', 'zhangxl', 'my', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '8', '4', '0');
INSERT INTO `zt_block` VALUES ('70', 'zhangxl', 'my', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '9', '4', '0');
INSERT INTO `zt_block` VALUES ('71', 'zhangxl', 'product', '未关闭的产品', 'product', 'list', '{\"num\":15,\"type\":\"noclosed\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('72', 'zhangxl', 'product', '指派给我的需求', 'product', 'story', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('73', 'zhangxl', 'project', '进行中的项目', 'project', 'list', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"undone\"}', '1', '8', '0');
INSERT INTO `zt_block` VALUES ('74', 'zhangxl', 'project', '指派给我的任务', 'project', 'task', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('75', 'zhangxl', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('76', 'zhangxl', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('77', 'zhangxl', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');
INSERT INTO `zt_block` VALUES ('78', 'yao', 'qa', '指派给我的Bug', 'qa', 'bug', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assignedTo\"}', '1', '4', '0');
INSERT INTO `zt_block` VALUES ('79', 'yao', 'qa', '指派给我的用例', 'qa', 'case', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"assigntome\"}', '2', '4', '0');
INSERT INTO `zt_block` VALUES ('80', 'yao', 'qa', '待测版本列表', 'qa', 'testtask', '{\"num\":15,\"orderBy\":\"id_desc\",\"type\":\"wait\"}', '3', '4', '0');

-- ----------------------------
-- Table structure for `zt_branch`
-- ----------------------------
DROP TABLE IF EXISTS `zt_branch`;
CREATE TABLE `zt_branch` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL COMMENT '所属产品',
  `name` varchar(255) NOT NULL COMMENT '平台',
  `deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '删除标识',
  `sysno` varchar(10) DEFAULT NULL COMMENT '代码',
  `testip` varchar(100) DEFAULT NULL COMMENT '测试环境',
  `sedan` varchar(100) DEFAULT NULL COMMENT '仿真环境',
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_branch
-- ----------------------------
INSERT INTO `zt_branch` VALUES ('41', '6', '信达钉钉', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('42', '3', '麦田服务号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('43', '3', '麦田订阅号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('7', '1', '秀丽广告(Xiuli)', '0', 'Xiuli', null, null);
INSERT INTO `zt_branch` VALUES ('8', '1', '秀丽广告后台(Admin)', '0', 'Admin', null, null);
INSERT INTO `zt_branch` VALUES ('9', '4', '安顺汽修微站', '0', 'Anshun', null, null);
INSERT INTO `zt_branch` VALUES ('11', '3', '麦田双辉微网站', '0', 'Mtsh', null, null);
INSERT INTO `zt_branch` VALUES ('12', '3', '麦田后台', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('13', '2', '拓才教育(Tuocai)', '0', 'Tuocai', null, null);
INSERT INTO `zt_branch` VALUES ('14', '2', '拓才后台(Admin)', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('15', '5', '测试前台(Test)', '0', 'Test', '', '');
INSERT INTO `zt_branch` VALUES ('16', '5', '管理后台(TAdmin)', '0', 'TAdmin', '', '');
INSERT INTO `zt_branch` VALUES ('17', '12', '免费网站（Free）', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('18', '12', '收费模块（Sale）', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('19', '12', '网站后台（Admin）', '0', 'Admin', '', '');
INSERT INTO `zt_branch` VALUES ('20', '12', '微信服务号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('21', '12', '微信订阅号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('22', '12', '微信企业号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('23', '12', '微信小程序', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('24', '12', '钉钉企业管理', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('25', '12', 'QQ电商服务', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('26', '1', '秀丽服务号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('27', '1', '秀丽钉钉', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('28', '6', '智慧信达网站', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('29', '4', '安顺订阅号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('30', '6', '信达服务号', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('31', '7', '润竹茶庄（Runzhu）', '0', null, null, null);
INSERT INTO `zt_branch` VALUES ('33', '7', '润竹订阅号', '0', null, null, null);

-- ----------------------------
-- Table structure for `zt_bug`
-- ----------------------------
DROP TABLE IF EXISTS `zt_bug`;
CREATE TABLE `zt_bug` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toTask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toStory` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(30) NOT NULL DEFAULT '',
  `hardware` varchar(30) NOT NULL,
  `found` varchar(30) NOT NULL DEFAULT '',
  `steps` text NOT NULL,
  `status` enum('active','resolved','closed') NOT NULL DEFAULT 'active',
  `color` char(7) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `activatedCount` smallint(6) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `openedBuild` varchar(255) NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `resolvedBy` varchar(30) NOT NULL DEFAULT '',
  `resolution` varchar(30) NOT NULL DEFAULT '',
  `resolvedBuild` varchar(30) NOT NULL DEFAULT '',
  `resolvedDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `duplicateBug` mediumint(8) unsigned NOT NULL,
  `linkBug` varchar(255) NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `caseVersion` smallint(6) NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL,
  `testtask` mediumint(8) unsigned NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bug` (`product`,`module`,`project`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_bug
-- ----------------------------
INSERT INTO `zt_bug` VALUES ('1', '5', '0', '0', '1', '0', '0', '1', '0', '0', '0', 'qweqw', '', '3', '0', 'codeerror', '', '', '', '', '<p>[步骤]</p>\n<p>[结果]</p>\n<p>[期望]</p>', 'resolved', '', '1', '0', '', 'admin', '2017-01-08 22:43:06', '1', 'admin', '2017-01-08 22:44:51', 'admin', 'fixed', 'trunk', '2017-01-08 22:44:51', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', 'admin', '2017-01-08 22:44:51', '0');

-- ----------------------------
-- Table structure for `zt_build`
-- ----------------------------
DROP TABLE IF EXISTS `zt_build`;
CREATE TABLE `zt_build` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(150) NOT NULL,
  `scmPath` char(255) NOT NULL,
  `filePath` char(255) NOT NULL,
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `builder` char(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`product`,`project`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_build
-- ----------------------------
INSERT INTO `zt_build` VALUES ('1', '5', '0', '1', 'IOS20170108', '', '', '2017-01-08', '', '', 'jiaxn', '', '0');
INSERT INTO `zt_build` VALUES ('2', '1', '7', '14', '秀丽广告V1.0.0_20170212', '', '', '2017-02-12', ',18,16,20,15,13,12,11,10,8,7,5', '', 'yao', '', '0');

-- ----------------------------
-- Table structure for `zt_burn`
-- ----------------------------
DROP TABLE IF EXISTS `zt_burn`;
CREATE TABLE `zt_burn` (
  `project` mediumint(8) unsigned NOT NULL,
  `date` date NOT NULL,
  `left` float NOT NULL,
  `consumed` float NOT NULL,
  PRIMARY KEY (`project`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_burn
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_car`
-- ----------------------------
DROP TABLE IF EXISTS `zt_car`;
CREATE TABLE `zt_car` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `plateno` char(7) DEFAULT NULL,
  `vim` char(17) DEFAULT NULL,
  `brand` varchar(25) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `ccdate` date DEFAULT NULL,
  `color` varchar(5) DEFAULT NULL,
  `owner` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_car
-- ----------------------------
INSERT INTO `zt_car` VALUES ('1', '冀E213B9', 'LDC661240f3331467', '东风雪铁龙', 'C3-XR', '2015-06-11', '白色', null, null, null, null);

-- ----------------------------
-- Table structure for `zt_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_case`;
CREATE TABLE `zt_case` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属产品',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属平台',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属模块',
  `path` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(30) unsigned NOT NULL DEFAULT '0' COMMENT '所属需求',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1' COMMENT '需求版本',
  `title` varchar(255) NOT NULL COMMENT '意图',
  `precondition` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `type` char(30) NOT NULL DEFAULT '1',
  `stage` varchar(255) NOT NULL,
  `howRun` varchar(30) NOT NULL,
  `scriptedBy` varchar(30) NOT NULL,
  `scriptedDate` date NOT NULL,
  `scriptStatus` varchar(30) NOT NULL,
  `scriptLocation` varchar(255) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '1',
  `color` char(7) NOT NULL,
  `frequency` enum('1','2','3') NOT NULL DEFAULT '1',
  `order` tinyint(30) unsigned NOT NULL DEFAULT '0',
  `openedBy` char(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `lastEditedBy` char(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkCase` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`product`,`module`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_case
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_casestep`
-- ----------------------------
DROP TABLE IF EXISTS `zt_casestep`;
CREATE TABLE `zt_casestep` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(3) unsigned NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `expect` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`case`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_casestep
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_company`
-- ----------------------------
DROP TABLE IF EXISTS `zt_company`;
CREATE TABLE `zt_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(120) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `address` char(120) DEFAULT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `website` char(120) DEFAULT NULL,
  `backyard` char(120) DEFAULT NULL,
  `guest` enum('1','0') NOT NULL DEFAULT '0',
  `admins` char(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_company
-- ----------------------------
INSERT INTO `zt_company` VALUES ('1', '信达软件', '', '', '', '', 'http://www.xiuliguanggao.com', '', '0', ',admin,', '0');

-- ----------------------------
-- Table structure for `zt_config`
-- ----------------------------
DROP TABLE IF EXISTS `zt_config`;
CREATE TABLE `zt_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_config
-- ----------------------------
INSERT INTO `zt_config` VALUES ('1', 'system', 'common', 'global', 'version', '8.2.4');
INSERT INTO `zt_config` VALUES ('2', 'system', 'common', 'global', 'flow', 'full');
INSERT INTO `zt_config` VALUES ('3', 'admin', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('7', 'admin', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('8', 'admin', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('9', 'admin', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('10', 'admin', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('11', 'system', 'mail', 'smtp', 'host', 'smtp.sina.com');
INSERT INTO `zt_config` VALUES ('12', 'system', 'mail', 'smtp', 'port', '25');
INSERT INTO `zt_config` VALUES ('13', 'system', 'mail', 'smtp', 'auth', '1');
INSERT INTO `zt_config` VALUES ('14', 'system', 'mail', 'smtp', 'username', 'yaolihui129');
INSERT INTO `zt_config` VALUES ('15', 'system', 'mail', 'smtp', 'password', 'yaolihui0506');
INSERT INTO `zt_config` VALUES ('16', 'system', 'mail', 'smtp', 'secure', '');
INSERT INTO `zt_config` VALUES ('17', 'system', 'mail', 'smtp', 'debug', '1');
INSERT INTO `zt_config` VALUES ('18', 'system', 'mail', 'smtp', 'charset', 'gbk');
INSERT INTO `zt_config` VALUES ('19', 'system', 'mail', '', 'turnon', '1');
INSERT INTO `zt_config` VALUES ('20', 'system', 'mail', '', 'mta', 'smtp');
INSERT INTO `zt_config` VALUES ('21', 'system', 'mail', '', 'async', '');
INSERT INTO `zt_config` VALUES ('22', 'system', 'mail', '', 'fromAddress', 'yaolihui129@sina.com');
INSERT INTO `zt_config` VALUES ('23', 'system', 'mail', '', 'fromName', '禅道');
INSERT INTO `zt_config` VALUES ('24', 'system', 'common', 'global', 'cron', '1');
INSERT INTO `zt_config` VALUES ('25', 'system', 'cron', 'run', 'status', 'running');
INSERT INTO `zt_config` VALUES ('31', 'system', 'custom', '', 'productProject', '0_0');
INSERT INTO `zt_config` VALUES ('27', 'admin', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('28', 'admin', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('32', 'system', 'common', 'global', 'sn', '97c34c68ec3616f3a1370de85ea66b0b');
INSERT INTO `zt_config` VALUES ('36', 'yaolh', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('37', 'yaolh', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('38', 'yaolh', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('39', 'yaolh', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('40', 'yaolh', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('41', 'yaolh', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('42', 'yaolh', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('43', 'yaolh', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('44', 'yangyh', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('45', 'yangyh', 'common', 'global', 'novice', 'false');
INSERT INTO `zt_config` VALUES ('46', 'yangyh', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('47', 'yangyh', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('48', 'yangyh', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('49', 'yangyh', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('50', 'yangyh', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('51', 'yangyh', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('52', 'admin', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('56', 'yao', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('57', 'yao', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('76', 'yao', 'product', '', 'homepage', 'browse');
INSERT INTO `zt_config` VALUES ('59', 'yao', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('77', 'yao', 'project', '', 'homepage', 'browse');
INSERT INTO `zt_config` VALUES ('61', 'yao', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('62', 'zhangxl', 'my', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('65', 'zhangxl', 'common', 'global', 'novice', '');
INSERT INTO `zt_config` VALUES ('66', 'zhangxl', 'product', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('67', 'zhangxl', 'product', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('68', 'zhangxl', 'datatable', 'productBrowse', 'showModule', 'end');
INSERT INTO `zt_config` VALUES ('69', 'zhangxl', 'project', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('70', 'zhangxl', 'project', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('71', 'zhangxl', 'datatable', 'projectTask', 'showModule', 'end');
INSERT INTO `zt_config` VALUES ('72', 'zhangxl', 'qa', '', 'homepage', 'index');
INSERT INTO `zt_config` VALUES ('73', 'zhangxl', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('74', 'yao', 'datatable', 'projectTask', 'showModule', 'end');
INSERT INTO `zt_config` VALUES ('75', 'yao', 'datatable', 'productBrowse', 'showModule', 'end');
INSERT INTO `zt_config` VALUES ('80', 'yao', 'qa', '', 'homepage', 'browse');
INSERT INTO `zt_config` VALUES ('79', 'yao', 'qa', 'common', 'blockInited', '1');
INSERT INTO `zt_config` VALUES ('85', 'yao', 'common', 'customMenu', 'main', '[{\"name\":\"my\",\"order\":0},{\"name\":\"product\",\"order\":1},{\"name\":\"project\",\"order\":2},{\"name\":\"qa\",\"order\":3},{\"name\":\"doc\",\"order\":4},{\"name\":\"company\",\"order\":5},{\"name\":\"admin\",\"order\":6},{\"name\":\"report\",\"order\":7}]');
INSERT INTO `zt_config` VALUES ('86', 'yao', 'common', 'customMenu', 'report', '[{\"name\":\"product\",\"order\":1},{\"name\":\"prj\",\"order\":2},{\"name\":\"test\",\"order\":3},{\"name\":\"staff\",\"order\":4}]');
INSERT INTO `zt_config` VALUES ('87', 'yao', 'common', 'customMenu', 'company', '[{\"name\":\"name\",\"order\":-1},{\"name\":\"browseUser\",\"order\":2},{\"name\":\"dept\",\"order\":3},{\"name\":\"browseGroup\",\"order\":4},{\"name\":\"view\",\"order\":5},{\"name\":\"dynamic\",\"order\":6},{\"name\":\"addGroup\",\"order\":7},{\"name\":\"batchAddUser\",\"order\":8},{\"name\":\"addUser\",\"order\":9}]');
INSERT INTO `zt_config` VALUES ('88', 'yao', 'common', 'customMenu', 'admin', '[{\"name\":\"index\",\"order\":1},{\"name\":\"extension\",\"order\":2},{\"name\":\"mail\",\"order\":4},{\"name\":\"custom\",\"order\":5},{\"name\":\"convert\",\"order\":6},{\"name\":\"cron\",\"order\":7},{\"name\":\"backup\",\"order\":8},{\"name\":\"dev\",\"order\":9},{\"name\":\"safe\",\"order\":10},{\"name\":\"trashes\",\"order\":12}]');

-- ----------------------------
-- Table structure for `zt_cron`
-- ----------------------------
DROP TABLE IF EXISTS `zt_cron`;
CREATE TABLE `zt_cron` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(20) NOT NULL,
  `h` varchar(20) NOT NULL,
  `dom` varchar(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `dow` varchar(20) NOT NULL,
  `command` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `buildin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `lastTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastTime` (`lastTime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_cron
-- ----------------------------
INSERT INTO `zt_cron` VALUES ('1', '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', '1', 'normal', '2017-03-16 11:36:01');
INSERT INTO `zt_cron` VALUES ('2', '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('3', '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('4', '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', '1', 'normal', '2017-03-16 11:35:01');
INSERT INTO `zt_cron` VALUES ('5', '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', '1', 'stop', '0000-00-00 00:00:00');
INSERT INTO `zt_cron` VALUES ('6', '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('7', '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', '1', 'normal', '2017-03-16 11:35:01');

-- ----------------------------
-- Table structure for `zt_dept`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dept`;
CREATE TABLE `zt_dept` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` char(30) NOT NULL DEFAULT '',
  `function` char(255) NOT NULL DEFAULT '',
  `manager` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dept` (`parent`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dept
-- ----------------------------
INSERT INTO `zt_dept` VALUES ('1', '秀丽广告', '0', ',1,', '1', '10', '', '', '');
INSERT INTO `zt_dept` VALUES ('2', '麦田双辉', '0', ',2,', '1', '20', '', '', '');
INSERT INTO `zt_dept` VALUES ('3', '拓才教育', '0', ',3,', '1', '30', '', '', '');
INSERT INTO `zt_dept` VALUES ('4', '智慧信达', '0', ',4,', '1', '40', '', '', '');
INSERT INTO `zt_dept` VALUES ('5', '安顺汽修', '0', ',5,', '1', '50', '', '', '');
INSERT INTO `zt_dept` VALUES ('6', '研发中心', '0', ',6,', '1', '60', '', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `zt_dingding`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dingding`;
CREATE TABLE `zt_dingding` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '钉钉企业名',
  `prodid` smallint(6) DEFAULT NULL,
  `appid` char(36) DEFAULT NULL,
  `CorpSecret` char(66) DEFAULT NULL COMMENT '企业应用',
  `SSOsecret` char(66) DEFAULT NULL,
  `ChannelSecret` char(66) DEFAULT NULL COMMENT '服务窗应用',
  `access_token` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dingding
-- ----------------------------
INSERT INTO `zt_dingding` VALUES ('1', '智慧信达', '6', 'ding2dd7ad30df846b0b35c2f4657eb6378f', 'cWgbhfurGtBdr2ouCXjpAWD6ZrPUg-PY0ZM3nfKCb9APUhwxahyJHl8WC5uL3nwx', 'p3cjWwkYuLmSUYYHxuAZ-VMzMLoBNvvjOtIpPSm3mH-mNp3soxfRaOP9a61e7w_F', 'Jaim9lqysgvJOTWHwIqHJ7tkzVuT0j-mrsS7A559x7wATOUinJIW5lu-PixLOT7w', null);
INSERT INTO `zt_dingding` VALUES ('2', '秀丽广告', '1', 'dingcdc48052b82180c535c2f4657eb6378f', 'JW0SJbXBHaYbYKzFvsrq1dybl8lQv8B0Zkq-FccCefDiQ62AKj2yIwGd0-TKL41m', 'E-alDqzFj9xjBiqZGAfxSV15spVI628LnPYe3NIINPI7G8bssa0unaWGVcpwzw7w', 'pKWRBltMzWxtTVTTlLK6hBk947SrAwXYc5w4AJhTxy2VHq-cWyeS5UIfU-AYapFk', null);
INSERT INTO `zt_dingding` VALUES ('3', '安顺汽修', '4', 'dingad4ed9135608404c35c2f4657eb6378f', 'nU3_6Q5Kbo0Pa3mopwerrogSDre3RfxYDBdth09X1QDVaIyGlWXuogpXBwtlq87D', 'TEBivZ8FfzyrBSkkZIjAXDu1OmamOs3GusPCgmzJXEB-9sb9N00koaqOooeF2EZT', 'tLcNpIxDXkFE0NGbY7srXrrHqI1wL1B6jDpl1NOcy7TlK_yxG6du6yNq4QKair1F', null);
INSERT INTO `zt_dingding` VALUES ('4', '润竹茶庄', '7', null, null, null, null, null);
INSERT INTO `zt_dingding` VALUES ('5', '拓才教育', '2', 'dingde8272bc7b3fd3df35c2f4657eb6378f', 'CTyfwrQkxfrNDrV6twbUVucNJzms1eGf7ScWyuXVX_ZT4Jeso0tyD_JA3oEyJv8S', 'Cp5JMyYi9pplIe4y1Oixu_zez5yclnkNwk6xo11Wiig7TqXliNSZOn-jXuq2F3pz', '_Qft2N3AVCgNwUhnsncGO1spD_sBU3Q2dfnIeLRBZpp6s4hxMvC-wERNC0OX-qpe', null);
INSERT INTO `zt_dingding` VALUES ('6', '麦田双辉', '3', null, null, null, null, null);

-- ----------------------------
-- Table structure for `zt_dm_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dm_cate`;
CREATE TABLE `zt_dm_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dm_cate
-- ----------------------------
INSERT INTO `zt_dm_cate` VALUES ('5', '1', '0', '凉菜', '正常', '12', '腰立辉', '2017-02-11 00:09:24');
INSERT INTO `zt_dm_cate` VALUES ('6', '2', '0', '热菜', '正常', '12', '腰立辉', '2017-02-11 00:09:33');
INSERT INTO `zt_dm_cate` VALUES ('7', '3', '0', '烧烤', '正常', '12', '腰立辉', '2017-02-11 00:09:47');
INSERT INTO `zt_dm_cate` VALUES ('8', '4', '0', '主食', '正常', '12', '腰立辉', '2017-02-11 00:09:57');
INSERT INTO `zt_dm_cate` VALUES ('9', '5', '0', '酒水', '正常', '12', '腰立辉', '2017-02-11 00:10:06');
INSERT INTO `zt_dm_cate` VALUES ('10', '6', '0', '清真', '正常', '12', '腰立辉', '2017-02-11 00:10:26');

-- ----------------------------
-- Table structure for `zt_dm_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_dm_prodservice`;
CREATE TABLE `zt_dm_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_dm_prodservice
-- ----------------------------
INSERT INTO `zt_dm_prodservice` VALUES ('3', '', '拍花瓜', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '5', null, null, null, '腰立辉', '2017-02-11 00:16:10');
INSERT INTO `zt_dm_prodservice` VALUES ('4', '', '二锅头（白瓶）', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '9', null, null, null, '腰立辉', '2017-02-11 00:31:57');
INSERT INTO `zt_dm_prodservice` VALUES ('5', '', '米饭', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '8', null, null, null, '腰立辉', '2017-02-11 00:32:10');
INSERT INTO `zt_dm_prodservice` VALUES ('6', '', '大饼', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '2', '8', null, null, null, '腰立辉', '2017-02-11 00:32:32');
INSERT INTO `zt_dm_prodservice` VALUES ('7', '', '馒头', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '3', '8', null, null, null, '腰立辉', '2017-02-11 00:32:37');
INSERT INTO `zt_dm_prodservice` VALUES ('8', '', '水饺', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '4', '8', null, null, null, '腰立辉', '2017-02-11 00:32:44');

-- ----------------------------
-- Table structure for `zt_doc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doc`;
CREATE TABLE `zt_doc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL,
  `lib` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) unsigned NOT NULL,
  `addedBy` varchar(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doc` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_doc
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_doclib`
-- ----------------------------
DROP TABLE IF EXISTS `zt_doclib`;
CREATE TABLE `zt_doclib` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_doclib
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_effort`
-- ----------------------------
DROP TABLE IF EXISTS `zt_effort`;
CREATE TABLE `zt_effort` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(30) NOT NULL DEFAULT '',
  `todo` enum('1','0') NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `begin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL DEFAULT '1',
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_effort
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_extension`
-- ----------------------------
DROP TABLE IF EXISTS `zt_extension`;
CREATE TABLE `zt_extension` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `zentaoCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `extension` (`name`,`installedTime`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_extension
-- ----------------------------
INSERT INTO `zt_extension` VALUES ('1', '禅道补丁', 'zentaopatch', '8.2.4.1', 'azhi<congzhi@cnezsoft.com>', '禅道8.2.4版本补丁。', 'LGPL', 'patch', 'http://www.zentao.net', '8.2.4', '2016-07-06 23:47:39', '', '[]', '{\"module\\\\dept\\\\view\\/browse.html.php\":\"a6ab93b049a5650700586ffcf7d938cd\"}', 'installed');

-- ----------------------------
-- Table structure for `zt_file`
-- ----------------------------
DROP TABLE IF EXISTS `zt_file`;
CREATE TABLE `zt_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file` (`objectType`,`objectID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_file
-- ----------------------------
INSERT INTO `zt_file` VALUES ('1', '201702/0611174102531dm5.jpg', 'QQ截图20170206111649', 'jpg', '131611', '', '0', 'yao', '2017-02-06 00:00:00', '0', '', '0');
INSERT INTO `zt_file` VALUES ('2', '201702/1217111906003nd3.png', 'QQ截图20170212171021', 'png', '49214', '', '0', 'yao', '2017-02-12 00:00:00', '0', '', '0');
INSERT INTO `zt_file` VALUES ('3', '201702/1217120305553o4k.doc', '在职证明', 'doc', '24064', 'task', '57', 'yao', '2017-02-12 00:00:00', '0', '', '0');
INSERT INTO `zt_file` VALUES ('4', '201702/2811143604770qpv.png', '微信公众号和订阅号', 'png', '257992', '', '0', 'yao', '2017-02-28 00:00:00', '0', '', '0');

-- ----------------------------
-- Table structure for `zt_group`
-- ----------------------------
DROP TABLE IF EXISTS `zt_group`;
CREATE TABLE `zt_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `role` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `acl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_group
-- ----------------------------
INSERT INTO `zt_group` VALUES ('1', '管理员', 'admin', '系统管理员', '');
INSERT INTO `zt_group` VALUES ('2', '研发', 'dev', '研发人员', '');
INSERT INTO `zt_group` VALUES ('3', '测试', 'qa', '测试人员', '');
INSERT INTO `zt_group` VALUES ('4', '项目经理', 'pm', '项目经理', '');
INSERT INTO `zt_group` VALUES ('5', '产品经理', 'po', '产品经理', '');
INSERT INTO `zt_group` VALUES ('6', '研发主管', 'td', '研发主管', '');
INSERT INTO `zt_group` VALUES ('7', '产品主管', 'pd', '产品主管', '');
INSERT INTO `zt_group` VALUES ('8', '测试主管', 'qd', '测试主管', '');
INSERT INTO `zt_group` VALUES ('9', '高层管理', 'top', '高层管理', '');
INSERT INTO `zt_group` VALUES ('10', '其他', '', '其他', '');
INSERT INTO `zt_group` VALUES ('11', 'guest', 'guest', 'For guest', '');

-- ----------------------------
-- Table structure for `zt_grouppriv`
-- ----------------------------
DROP TABLE IF EXISTS `zt_grouppriv`;
CREATE TABLE `zt_grouppriv` (
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT '',
  UNIQUE KEY `group` (`group`,`module`,`method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_grouppriv
-- ----------------------------
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('1', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'checkDB');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'checkWeak');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'admin', 'safe');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'debug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('1', 'api', 'sql');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'backup');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'change');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'backup', 'restore');
INSERT INTO `zt_grouppriv` VALUES ('1', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkBugFree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkConfig');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'checkRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'convertBugFree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'convertRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'execute');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'selectSource');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setBugfree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setConfig');
INSERT INTO `zt_grouppriv` VALUES ('1', 'convert', 'setRedmine');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'toggle');
INSERT INTO `zt_grouppriv` VALUES ('1', 'cron', 'turnon');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'flow');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'restore');
INSERT INTO `zt_grouppriv` VALUES ('1', 'custom', 'set');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dept', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dev', 'api');
INSERT INTO `zt_grouppriv` VALUES ('1', 'dev', 'db');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'extend');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'newPage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'editor', 'save');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'deactivate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'erase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'install');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'uninstall');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'upgrade');
INSERT INTO `zt_grouppriv` VALUES ('1', 'extension', 'upload');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('1', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'copy');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'manageMember');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'managePriv');
INSERT INTO `zt_grouppriv` VALUES ('1', 'group', 'manageView');
INSERT INTO `zt_grouppriv` VALUES ('1', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'detect');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'reset');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'save');
INSERT INTO `zt_grouppriv` VALUES ('1', 'mail', 'test');
INSERT INTO `zt_grouppriv` VALUES ('1', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('1', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('1', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('1', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('1', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('1', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'create');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'unlock');
INSERT INTO `zt_grouppriv` VALUES ('1', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('2', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('2', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('2', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('2', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('2', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('2', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('2', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('2', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('2', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('2', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('2', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('2', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('2', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('2', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('3', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('3', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('3', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('3', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('3', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('3', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('3', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('3', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('3', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('3', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('3', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('3', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('4', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('4', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('4', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('4', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('4', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('4', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('4', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('4', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('4', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('4', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('4', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('4', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('4', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('5', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('5', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('5', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('5', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('5', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('5', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('5', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('5', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('5', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('5', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('5', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('5', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('6', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('6', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('6', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('6', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'batchedit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'manageMembers');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'order');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'putoff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'start');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'suspend');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'unlinkMember');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('6', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('6', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('6', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('6', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('6', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('6', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('6', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('6', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('6', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('7', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('7', 'branch', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'branch', 'manage');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('7', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('7', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('7', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'order');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('7', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'manageProducts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'batchUnlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'batchUnlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'changeStatus');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'linkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('7', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('7', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeBranch');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangePlan');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchChangeStage');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'batchReview');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'change');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'close');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'linkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'unlinkStory');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('7', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('7', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('7', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('7', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('7', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('7', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('8', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchConfirm');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'batchResolve');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'confirmBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'deleteTemplate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'resolve');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'saveTemplate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('8', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('8', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('8', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('8', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'importBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'importtask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('8', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('8', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('8', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('8', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'assignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchAssignTo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchClose');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'cancel');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'pause');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'restart');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'start');
INSERT INTO `zt_grouppriv` VALUES ('8', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchDelete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'confirmChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'confirmStoryChange');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'createBug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'exportTemplet');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'import');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'linkCases');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'showImport');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'unlinkCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'batchAssign');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'batchRun');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'close');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'linkcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'runcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'start');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'unlinkcase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('8', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'browseTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'fix');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('8', 'tree', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('8', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'hideAll');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'hideOne');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'trash');
INSERT INTO `zt_grouppriv` VALUES ('9', 'action', 'undelete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'admin', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'manageChild');
INSERT INTO `zt_grouppriv` VALUES ('9', 'dept', 'updateOrder');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'createLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'deleteLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'editLib');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'obtain');
INSERT INTO `zt_grouppriv` VALUES ('9', 'extension', 'structure');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'file', 'uploadImages');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('9', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('9', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('9', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('9', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'burnData');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'computeBurn');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('9', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('9', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('9', 'search', 'select');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'review');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'story', 'zeroCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'apiSync');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('9', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'report');
INSERT INTO `zt_grouppriv` VALUES ('9', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('9', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('9', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'create');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'deleteContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'manageContacts');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'unlock');
INSERT INTO `zt_grouppriv` VALUES ('9', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'action', 'editComment');
INSERT INTO `zt_grouppriv` VALUES ('10', 'api', 'getModel');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'activate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'batchChangeModule');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'close');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'create');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'linkBugs');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'unlinkBug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('10', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'changePassword');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'editProfile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('10', 'my', 'unbind');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('10', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('10', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('10', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('10', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'deleteQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'search', 'saveQuery');
INSERT INTO `zt_grouppriv` VALUES ('10', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('10', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'deleteEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'editEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchCreate');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchEdit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'batchFinish');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'create');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'delete');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'edit');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'export');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'finish');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'import2Today');
INSERT INTO `zt_grouppriv` VALUES ('10', 'todo', 'view');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('10', 'user', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'report');
INSERT INTO `zt_grouppriv` VALUES ('11', 'bug', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'build', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'company', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'doc', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'file', 'download');
INSERT INTO `zt_grouppriv` VALUES ('11', 'git', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('11', 'git', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('11', 'group', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'index', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'misc', 'ping');
INSERT INTO `zt_grouppriv` VALUES ('11', 'my', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'all');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'roadmap');
INSERT INTO `zt_grouppriv` VALUES ('11', 'product', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'productplan', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'productplan', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'all');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'build');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'burn');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'doc');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'grouptask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'kanban');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'story');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'task');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'team');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'testtask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'tree');
INSERT INTO `zt_grouppriv` VALUES ('11', 'project', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'qa', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'release', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'release', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'bugAssign');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'bugCreate');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'productSummary');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'projectDeviation');
INSERT INTO `zt_grouppriv` VALUES ('11', 'report', 'workload');
INSERT INTO `zt_grouppriv` VALUES ('11', 'search', 'buildForm');
INSERT INTO `zt_grouppriv` VALUES ('11', 'search', 'buildQuery');
INSERT INTO `zt_grouppriv` VALUES ('11', 'story', 'tasks');
INSERT INTO `zt_grouppriv` VALUES ('11', 'story', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'svn', 'cat');
INSERT INTO `zt_grouppriv` VALUES ('11', 'svn', 'diff');
INSERT INTO `zt_grouppriv` VALUES ('11', 'task', 'recordEstimate');
INSERT INTO `zt_grouppriv` VALUES ('11', 'task', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testcase', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'browse');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'cases');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'groupCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'index');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'results');
INSERT INTO `zt_grouppriv` VALUES ('11', 'testtask', 'view');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'bug');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'dynamic');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'profile');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'project');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'story');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'task');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'testCase');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'testTask');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'todo');
INSERT INTO `zt_grouppriv` VALUES ('11', 'user', 'view');

-- ----------------------------
-- Table structure for `zt_history`
-- ----------------------------
DROP TABLE IF EXISTS `zt_history`;
CREATE TABLE `zt_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=680 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_history
-- ----------------------------
INSERT INTO `zt_history` VALUES ('1', '21', 'assignedTo', 'jiaxn', 'liangxw', '');
INSERT INTO `zt_history` VALUES ('2', '32', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('3', '33', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('4', '34', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('5', '35', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('6', '36', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('7', '37', 'type', 'normal', 'platform', '');
INSERT INTO `zt_history` VALUES ('8', '38', 'name', '测试平台', '测试管理', '001- <del>测试平台</del>\n001+ <ins>测试管理</ins>');
INSERT INTO `zt_history` VALUES ('9', '38', 'desc', '', '自主设计的测试管理平台', '001- <del></del>\n001+ <ins>自主设计的测试管理平台</ins>');
INSERT INTO `zt_history` VALUES ('10', '40', 'name', '标准网站(免费版)', '标准网站', '001- <del>标准网站(免费版)</del>\n001+ <ins>标准网站</ins>');
INSERT INTO `zt_history` VALUES ('11', '40', 'code', 'DemoFree', 'Demo', '');
INSERT INTO `zt_history` VALUES ('12', '45', 'PO', '', 'zhangxl', '001- <del></del>\n001+ <ins>zhangxl</ins>');
INSERT INTO `zt_history` VALUES ('13', '45', 'QD', '', 'jiaxn', '');
INSERT INTO `zt_history` VALUES ('14', '45', 'PM', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('15', '45', 'RD', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('16', '48', 'desc', '111', '<p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p>\n<p>&nbsp; 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p>', '001- <del>111</del>\n001+ <ins><p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p></ins>\n002+ <ins><p> 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p></ins>');
INSERT INTO `zt_history` VALUES ('17', '49', 'desc', '<p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p>\n<p>&nbsp; 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p>', '<h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2>', '001- <del><p>主营：大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化</p></del>\n001+ <ins><h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2></ins>\n002- <del><p> 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</p></del>');
INSERT INTO `zt_history` VALUES ('18', '50', 'desc', '<h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2>', '<p><br /></p>\n<ol><li><span style=\"font-size:24px;\">大型户外广告牌</span></li>\n<li><span style=\"font-size:24px;\">写真喷绘</span></li>\n<li><span style=\"font-size:24px;\">展板条幅</span></li>\n<li><span style=\"font-size:24px;\">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li>\n</ol><p><br /></p>', '001- <del><h2><span>大型户外广告牌、写真喷绘、展板条幅、铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></h2></del>\n001+ <ins><p><br /></p></ins>\n002+ <ins><ol><li><span style=\"font-size:24px;\">大型户外广告牌</span></li></ins>\n003+ <ins><li><span style=\"font-size:24px;\">写真喷绘</span></li></ins>\n004+ <ins><li><span style=\"font-size:24px;\">展板条幅</span></li></ins>\n005+ <ins><li><span style=\"font-size:24px;\">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li></ins>\n006+ <ins></ol><p><br /></p></ins>');
INSERT INTO `zt_history` VALUES ('19', '51', 'desc', '<p><br /></p>\n<ol><li><span style=\"font-size:24px;\">大型户外广告牌</span></li>\n<li><span style=\"font-size:24px;\">写真喷绘</span></li>\n<li><span style=\"font-size:24px;\">展板条幅</span></li>\n<li><span style=\"font-size:24px;\">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li>\n</ol><p><br /></p>', '<ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>&nbsp;打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li>\n</ul><p><br /></p>', '001- <del><p><br /></p></del>\n001+ <ins><ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li></ins>\n002- <del><ol><li><span style=\"font-size:24px;\">大型户外广告牌</span></li></del>\n002+ <ins><li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li></ins>\n003- <del><li><span style=\"font-size:24px;\">写真喷绘</span></li></del>\n003+ <ins><li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li></ins>\n004- <del><li><span style=\"font-size:24px;\">展板条幅</span></li></del>\n004+ <ins><li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li></ins>\n005- <del><li><span style=\"font-size:24px;\">铜牌铜字、LED显示屏、发光字、楼体亮化、 打字复印、彩印、快照证卡、菜单、桌牌、PVC卡书本装订</span></li></del>\n005+ <ins><li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li></ins>\n006- <del></ol><p><br /></p></del>\n006+ <ins><li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li></ins>\n007+ <ins><li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li></ins>\n008+ <ins><li><span style=\"font-size:18px;\"><strong>打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li></ins>\n009+ <ins><li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li></ins>\n010+ <ins><li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li></ins>\n011+ <ins></ul><p><br /></p></ins>');
INSERT INTO `zt_history` VALUES ('20', '52', 'desc', '<ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>&nbsp;打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li>\n</ul><p><br /></p>', '<ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>&nbsp;打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li>\n</ul>', '011- <del></ul><p><br /></p></del>\n011+ <ins></ul></ins>');
INSERT INTO `zt_history` VALUES ('21', '56', 'begin', '2017-01-18', '2017-02-06', '');
INSERT INTO `zt_history` VALUES ('22', '56', 'end', '2017-02-05', '2017-03-06', '');
INSERT INTO `zt_history` VALUES ('23', '56', 'desc', '网站平台的搭建', '网站平台的搭建与阿里钉钉内部管理平台的搭建', '001- <del>网站平台的搭建</del>\n001+ <ins>网站平台的搭建与阿里钉钉内部管理平台的搭建</ins>');
INSERT INTO `zt_history` VALUES ('24', '58', 'begin', '2017-01-17', '2017-02-06', '');
INSERT INTO `zt_history` VALUES ('25', '58', 'end', '2017-02-05', '2017-03-05', '');
INSERT INTO `zt_history` VALUES ('26', '58', 'days', '14', '20', '');
INSERT INTO `zt_history` VALUES ('27', '58', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('28', '58', 'desc', '搭建出网站平台', '搭建出网站平台和阿里钉钉的联通，进行内部的管理', '001- <del>搭建出网站平台</del>\n001+ <ins>搭建出网站平台和阿里钉钉的联通，进行内部的管理</ins>');
INSERT INTO `zt_history` VALUES ('29', '63', 'module', '128', '166', '');
INSERT INTO `zt_history` VALUES ('30', '64', 'module', '128', '169', '');
INSERT INTO `zt_history` VALUES ('31', '65', 'assignedTo', 'zhangxl', 'yao', '');
INSERT INTO `zt_history` VALUES ('32', '76', 'color', '', '#388e3c', '');
INSERT INTO `zt_history` VALUES ('33', '76', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('34', '80', 'desc', '<ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>&nbsp;打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li>\n<li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li>\n</ul>', '<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p>\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p>', '001- <del><ul><li><span style=\"font-size:18px;\"><strong>大型户外广告牌</strong></span></li></del>\n001+ <ins><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p></ins>\n002- <del><li><span style=\"font-size:18px;\"><strong>写真喷绘</strong></span></li></del>\n002+ <ins><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\"></span></b></p></ins>\n003- <del><li><span style=\"font-size:18px;\"><strong>展板条幅</strong></span></li></del>\n003+ <ins><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p></ins>\n004- <del><li><span style=\"font-size:18px;\"><strong>铜牌铜字</strong></span></li></del>\n005- <del><li><span style=\"font-size:18px;\"><strong>LED显示屏</strong></span></li></del>\n006- <del><li><span style=\"font-size:18px;\"><strong>发光字</strong></span></li></del>\n007- <del><li><span style=\"font-size:18px;\"><strong>楼体亮化</strong></span></li></del>\n008- <del><li><span style=\"font-size:18px;\"><strong>打字复印、</strong></span><span style=\"font-size:18px;\"><strong>彩印、快照证卡</strong></span></li></del>\n009- <del><li><span style=\"font-size:18px;\"><strong>菜单、桌牌</strong></span></li></del>\n010- <del><li><span style=\"font-size:18px;\"><strong>PVC卡、书本装订</strong></span></li></del>\n011- <del></ul></del>');
INSERT INTO `zt_history` VALUES ('35', '81', 'name', '秀丽广告微信服务号 V1.2.0', '秀丽广告微信服务号 V1.1.0', '001- <del>秀丽广告微信服务号 V1.2.0</del>\n001+ <ins>秀丽广告微信服务号 V1.1.0</ins>');
INSERT INTO `zt_history` VALUES ('36', '85', 'assignedTo', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('37', '93', 'title', '秀丽广告 V1.2.0', '秀丽广告 V1.1.0', '001- <del>秀丽广告 V1.2.0</del>\n001+ <ins>秀丽广告 V1.1.0</ins>');
INSERT INTO `zt_history` VALUES ('38', '95', 'module', '178', '129', '');
INSERT INTO `zt_history` VALUES ('39', '97', 'pri', '1', '2', '');
INSERT INTO `zt_history` VALUES ('40', '105', 'PO', 'yangyh', 'yao', '001- <del>yangyh</del>\n001+ <ins>yao</ins>');
INSERT INTO `zt_history` VALUES ('41', '106', 'code', '腰立辉', 'Xiuli1703.1', '');
INSERT INTO `zt_history` VALUES ('42', '106', 'PO', '', 'zhangxl', '001- <del></del>\n001+ <ins>zhangxl</ins>');
INSERT INTO `zt_history` VALUES ('43', '106', 'QD', '', 'jiaxn', '');
INSERT INTO `zt_history` VALUES ('44', '106', 'PM', '', 'yaojq', '');
INSERT INTO `zt_history` VALUES ('45', '106', 'RD', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('46', '128', 'plan', '2', '1', '');
INSERT INTO `zt_history` VALUES ('47', '130', 'plan', '2', '1', '');
INSERT INTO `zt_history` VALUES ('48', '139', 'title', '模块菜单', '模块菜单（主营业务、诚聘人才、关于我们）', '001- <del>模块菜单</del>\n001+ <ins>模块菜单（主营业务、诚聘人才、关于我们）</ins>');
INSERT INTO `zt_history` VALUES ('49', '139', 'spec', '', '前期先完成（主营业务、诚聘人才、关于我们）三个模块的菜单', '001- <del></del>\n001+ <ins>前期先完成（主营业务、诚聘人才、关于我们）三个模块的菜单</ins>');
INSERT INTO `zt_history` VALUES ('50', '139', 'version', '1', '2', '');
INSERT INTO `zt_history` VALUES ('51', '139', 'status', 'active', 'changed', '');
INSERT INTO `zt_history` VALUES ('52', '139', 'reviewedBy', 'yao', '', '');
INSERT INTO `zt_history` VALUES ('53', '139', 'reviewedDate', '2017-02-06', '0000-00-00', '');
INSERT INTO `zt_history` VALUES ('54', '150', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('55', '150', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('56', '154', 'consumed', '0', '17', '');
INSERT INTO `zt_history` VALUES ('57', '154', 'left', '16', '0', '');
INSERT INTO `zt_history` VALUES ('58', '154', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('59', '155', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('60', '155', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('61', '155', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('62', '155', 'closedDate', '', '2017-02-12 17:22:51', '');
INSERT INTO `zt_history` VALUES ('63', '155', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('64', '156', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('65', '156', 'consumed', '0', '2', '');
INSERT INTO `zt_history` VALUES ('66', '156', 'left', '0', '1', '');
INSERT INTO `zt_history` VALUES ('67', '156', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('68', '157', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('69', '157', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('70', '158', 'consumed', '0', '4', '');
INSERT INTO `zt_history` VALUES ('71', '158', 'left', '4', '0', '');
INSERT INTO `zt_history` VALUES ('72', '158', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('73', '159', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('74', '159', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('75', '159', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('76', '159', 'closedDate', '', '2017-02-12 17:24:15', '');
INSERT INTO `zt_history` VALUES ('77', '159', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('78', '160', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('79', '160', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('80', '161', 'consumed', '0', '12', '');
INSERT INTO `zt_history` VALUES ('81', '161', 'left', '12', '0', '');
INSERT INTO `zt_history` VALUES ('82', '161', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('83', '162', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('84', '162', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('85', '162', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('86', '162', 'closedDate', '', '2017-02-12 17:24:55', '');
INSERT INTO `zt_history` VALUES ('87', '162', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('88', '163', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('89', '163', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('90', '164', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('91', '164', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('92', '165', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('93', '165', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('94', '166', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('95', '166', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('96', '167', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('97', '167', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('98', '168', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('99', '168', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('100', '169', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('101', '169', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('102', '170', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('103', '170', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('104', '171', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('105', '171', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('106', '172', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('107', '172', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('108', '173', 'consumed', '0', '32', '');
INSERT INTO `zt_history` VALUES ('109', '173', 'left', '32', '0', '');
INSERT INTO `zt_history` VALUES ('110', '173', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('111', '174', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('112', '174', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('113', '174', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('114', '174', 'closedDate', '', '2017-02-12 17:26:33', '');
INSERT INTO `zt_history` VALUES ('115', '174', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('116', '175', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('117', '175', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('118', '175', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('119', '176', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('120', '176', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('121', '176', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('122', '176', 'closedDate', '', '2017-02-12 17:26:52', '');
INSERT INTO `zt_history` VALUES ('123', '176', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('124', '177', 'consumed', '0', '1', '');
INSERT INTO `zt_history` VALUES ('125', '177', 'left', '1', '0', '');
INSERT INTO `zt_history` VALUES ('126', '177', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('127', '178', 'consumed', '0', '1', '');
INSERT INTO `zt_history` VALUES ('128', '178', 'left', '2', '1', '');
INSERT INTO `zt_history` VALUES ('129', '179', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('130', '179', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('131', '179', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('132', '179', 'closedDate', '', '2017-02-12 17:28:51', '');
INSERT INTO `zt_history` VALUES ('133', '179', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('134', '180', 'consumed', '0', '4', '');
INSERT INTO `zt_history` VALUES ('135', '180', 'left', '4', '0', '');
INSERT INTO `zt_history` VALUES ('136', '180', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('137', '181', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('138', '181', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('139', '181', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('140', '181', 'closedDate', '', '2017-02-12 17:29:11', '');
INSERT INTO `zt_history` VALUES ('141', '181', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('142', '182', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('143', '182', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('144', '182', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('145', '183', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('146', '183', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('147', '183', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('148', '183', 'closedDate', '', '2017-02-12 17:30:24', '');
INSERT INTO `zt_history` VALUES ('149', '183', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('150', '184', 'consumed', '0', '1', '');
INSERT INTO `zt_history` VALUES ('151', '184', 'left', '1', '0', '');
INSERT INTO `zt_history` VALUES ('152', '184', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('153', '185', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('154', '185', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('155', '185', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('156', '185', 'closedDate', '', '2017-02-12 17:30:43', '');
INSERT INTO `zt_history` VALUES ('157', '185', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('158', '186', 'consumed', '0', '5', '');
INSERT INTO `zt_history` VALUES ('159', '186', 'left', '5', '0', '');
INSERT INTO `zt_history` VALUES ('160', '186', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('161', '187', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('162', '187', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('163', '187', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('164', '187', 'closedDate', '', '2017-02-12 17:31:04', '');
INSERT INTO `zt_history` VALUES ('165', '187', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('166', '188', 'consumed', '0', '4', '');
INSERT INTO `zt_history` VALUES ('167', '188', 'left', '4', '0', '');
INSERT INTO `zt_history` VALUES ('168', '188', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('169', '189', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('170', '189', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('171', '189', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('172', '189', 'closedDate', '', '2017-02-12 17:31:26', '');
INSERT INTO `zt_history` VALUES ('173', '189', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('174', '190', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('175', '190', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('176', '190', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('177', '191', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('178', '191', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('179', '191', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('180', '191', 'closedDate', '', '2017-02-12 17:32:03', '');
INSERT INTO `zt_history` VALUES ('181', '191', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('182', '192', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('183', '192', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:32:51', '');
INSERT INTO `zt_history` VALUES ('184', '192', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('185', '192', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('186', '192', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('187', '192', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('188', '193', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('189', '193', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:32:59', '');
INSERT INTO `zt_history` VALUES ('190', '193', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('191', '193', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('192', '193', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('193', '193', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('194', '194', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('195', '194', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:06', '');
INSERT INTO `zt_history` VALUES ('196', '194', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('197', '194', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('198', '194', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('199', '194', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('200', '195', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('201', '195', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:13', '');
INSERT INTO `zt_history` VALUES ('202', '195', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('203', '195', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('204', '195', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('205', '195', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('206', '196', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('207', '196', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:20', '');
INSERT INTO `zt_history` VALUES ('208', '196', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('209', '196', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('210', '196', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('211', '196', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('212', '197', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('213', '197', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:28', '');
INSERT INTO `zt_history` VALUES ('214', '197', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('215', '197', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('216', '197', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('217', '197', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('218', '198', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('219', '198', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:34', '');
INSERT INTO `zt_history` VALUES ('220', '198', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('221', '198', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('222', '198', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('223', '198', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('224', '199', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('225', '199', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:40', '');
INSERT INTO `zt_history` VALUES ('226', '199', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('227', '199', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('228', '199', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('229', '199', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('230', '200', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('231', '200', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:47', '');
INSERT INTO `zt_history` VALUES ('232', '200', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('233', '200', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('234', '200', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('235', '200', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('236', '201', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('237', '201', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:53', '');
INSERT INTO `zt_history` VALUES ('238', '201', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('239', '201', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('240', '201', 'status', 'changed', 'closed', '');
INSERT INTO `zt_history` VALUES ('241', '201', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('242', '202', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('243', '202', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 17:33:59', '');
INSERT INTO `zt_history` VALUES ('244', '202', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('245', '202', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('246', '202', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('247', '202', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('248', '212', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('249', '212', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('250', '214', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('251', '216', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('252', '218', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('253', '220', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('254', '220', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('255', '222', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('256', '222', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('257', '225', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('258', '228', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('259', '228', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('260', '231', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('261', '231', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('262', '231', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('263', '238', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('264', '238', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('265', '238', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('266', '240', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('267', '240', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('268', '240', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('269', '242', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('270', '242', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('271', '242', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('272', '243', 'estimate', '0', '6', '');
INSERT INTO `zt_history` VALUES ('273', '245', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('274', '245', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('275', '245', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('276', '247', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('277', '247', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('278', '250', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('279', '250', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('280', '253', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('281', '256', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('282', '259', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('283', '261', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('284', '262', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('285', '263', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('286', '265', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('287', '269', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('288', '269', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('289', '270', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('290', '270', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('291', '272', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('292', '272', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('293', '276', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('294', '279', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('295', '281', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('296', '286', 'plan', '', '1', '');
INSERT INTO `zt_history` VALUES ('297', '286', 'source', '', 'support', '');
INSERT INTO `zt_history` VALUES ('298', '286', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('299', '286', 'estimate', '0', '36', '');
INSERT INTO `zt_history` VALUES ('300', '312', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('301', '313', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('302', '314', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('303', '315', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('304', '316', 'pri', '0', '1', '');
INSERT INTO `zt_history` VALUES ('305', '342', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('306', '342', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('307', '343', 'consumed', '0', '6', '');
INSERT INTO `zt_history` VALUES ('308', '343', 'left', '6', '0', '');
INSERT INTO `zt_history` VALUES ('309', '343', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('310', '344', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('311', '344', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('312', '344', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('313', '344', 'closedDate', '', '2017-02-12 21:43:09', '');
INSERT INTO `zt_history` VALUES ('314', '344', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('315', '345', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('316', '345', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('317', '346', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('318', '346', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('319', '346', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('320', '347', 'deadline', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('321', '348', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('322', '348', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('323', '348', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('324', '348', 'closedDate', '', '2017-02-12 21:43:48', '');
INSERT INTO `zt_history` VALUES ('325', '348', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('326', '349', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('327', '349', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('328', '350', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('329', '350', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('330', '350', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('331', '351', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('332', '351', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('333', '351', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('334', '351', 'closedDate', '', '2017-02-12 21:44:18', '');
INSERT INTO `zt_history` VALUES ('335', '351', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('336', '352', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('337', '352', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('338', '353', 'deadline', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('339', '356', 'consumed', '0', '24', '');
INSERT INTO `zt_history` VALUES ('340', '356', 'left', '24', '0', '');
INSERT INTO `zt_history` VALUES ('341', '356', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('342', '357', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('343', '357', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('344', '357', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('345', '357', 'closedDate', '', '2017-02-12 21:45:17', '');
INSERT INTO `zt_history` VALUES ('346', '357', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('347', '358', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('348', '358', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('349', '359', 'consumed', '0', '6', '');
INSERT INTO `zt_history` VALUES ('350', '359', 'left', '6', '0', '');
INSERT INTO `zt_history` VALUES ('351', '359', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('352', '360', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('353', '360', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('354', '360', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('355', '360', 'closedDate', '', '2017-02-12 21:48:11', '');
INSERT INTO `zt_history` VALUES ('356', '360', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('357', '361', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('358', '361', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('359', '362', 'consumed', '0', '6', '');
INSERT INTO `zt_history` VALUES ('360', '362', 'left', '6', '0', '');
INSERT INTO `zt_history` VALUES ('361', '362', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('362', '363', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('363', '363', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('364', '363', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('365', '363', 'closedDate', '', '2017-02-12 21:48:52', '');
INSERT INTO `zt_history` VALUES ('366', '363', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('367', '364', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('368', '364', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('369', '369', 'consumed', '0', '40', '');
INSERT INTO `zt_history` VALUES ('370', '369', 'left', '72', '32', '');
INSERT INTO `zt_history` VALUES ('371', '373', 'consumed', '40', '72', '');
INSERT INTO `zt_history` VALUES ('372', '373', 'left', '32', '0', '');
INSERT INTO `zt_history` VALUES ('373', '373', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('374', '374', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('375', '374', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('376', '374', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('377', '374', 'closedDate', '', '2017-02-12 21:50:34', '');
INSERT INTO `zt_history` VALUES ('378', '374', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('379', '375', 'deadline', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('380', '376', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('381', '376', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('382', '380', 'consumed', '0', '32', '');
INSERT INTO `zt_history` VALUES ('383', '380', 'left', '32', '0', '');
INSERT INTO `zt_history` VALUES ('384', '380', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('385', '381', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('386', '381', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('387', '381', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('388', '381', 'closedDate', '', '2017-02-12 21:51:52', '');
INSERT INTO `zt_history` VALUES ('389', '381', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('390', '382', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('391', '382', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('392', '383', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('393', '383', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('394', '383', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('395', '384', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('396', '384', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('397', '384', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('398', '384', 'closedDate', '', '2017-02-12 21:52:23', '');
INSERT INTO `zt_history` VALUES ('399', '384', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('400', '385', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('401', '385', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('402', '386', 'consumed', '0', '2', '');
INSERT INTO `zt_history` VALUES ('403', '386', 'left', '2', '0', '');
INSERT INTO `zt_history` VALUES ('404', '386', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('405', '387', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('406', '387', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('407', '387', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('408', '387', 'closedDate', '', '2017-02-12 21:52:50', '');
INSERT INTO `zt_history` VALUES ('409', '387', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('410', '388', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('411', '388', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('412', '389', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('413', '389', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('414', '389', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('415', '390', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('416', '390', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('417', '390', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('418', '390', 'closedDate', '', '2017-02-12 21:53:22', '');
INSERT INTO `zt_history` VALUES ('419', '390', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('420', '391', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('421', '391', 'consumed', '0', '3', '');
INSERT INTO `zt_history` VALUES ('422', '391', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('423', '392', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('424', '392', 'consumed', '0', '4', '');
INSERT INTO `zt_history` VALUES ('425', '392', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('426', '393', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('427', '393', 'consumed', '0', '6', '');
INSERT INTO `zt_history` VALUES ('428', '393', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('429', '394', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('430', '394', 'consumed', '0', '12', '');
INSERT INTO `zt_history` VALUES ('431', '394', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('432', '395', 'left', '12', '1', '');
INSERT INTO `zt_history` VALUES ('433', '398', 'left', '1', '0', '');
INSERT INTO `zt_history` VALUES ('434', '398', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('435', '399', 'finishedDate', '', '2017-02-12 21:54:54', '');
INSERT INTO `zt_history` VALUES ('436', '399', 'finishedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('437', '400', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('438', '400', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('439', '400', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('440', '400', 'closedDate', '', '2017-02-12 21:55:00', '');
INSERT INTO `zt_history` VALUES ('441', '400', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('442', '401', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('443', '401', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('444', '402', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('445', '402', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('446', '402', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('447', '403', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('448', '403', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('449', '403', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('450', '403', 'closedDate', '', '2017-02-12 21:55:48', '');
INSERT INTO `zt_history` VALUES ('451', '403', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('452', '404', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('453', '404', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('454', '405', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('455', '405', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('456', '406', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('457', '406', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('458', '407', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('459', '407', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('460', '408', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('461', '408', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('462', '409', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('463', '409', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('464', '410', 'realStarted', '0000-00-00', '2017-02-12', '');
INSERT INTO `zt_history` VALUES ('465', '410', 'status', 'wait', 'doing', '');
INSERT INTO `zt_history` VALUES ('466', '412', 'consumed', '0', '16', '');
INSERT INTO `zt_history` VALUES ('467', '412', 'left', '16', '0', '');
INSERT INTO `zt_history` VALUES ('468', '412', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('469', '413', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('470', '413', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('471', '413', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('472', '413', 'closedDate', '', '2017-02-12 21:57:05', '');
INSERT INTO `zt_history` VALUES ('473', '413', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('474', '415', 'consumed', '0', '12', '');
INSERT INTO `zt_history` VALUES ('475', '415', 'left', '12', '0', '');
INSERT INTO `zt_history` VALUES ('476', '415', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('477', '416', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('478', '416', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('479', '416', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('480', '416', 'closedDate', '', '2017-02-12 21:57:36', '');
INSERT INTO `zt_history` VALUES ('481', '416', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('482', '417', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('483', '417', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('484', '417', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('485', '418', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('486', '418', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('487', '418', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('488', '418', 'closedDate', '', '2017-02-12 21:58:33', '');
INSERT INTO `zt_history` VALUES ('489', '418', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('490', '421', 'consumed', '0', '24', '');
INSERT INTO `zt_history` VALUES ('491', '421', 'left', '24', '0', '');
INSERT INTO `zt_history` VALUES ('492', '421', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('493', '422', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('494', '422', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('495', '422', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('496', '422', 'closedDate', '', '2017-02-12 21:59:10', '');
INSERT INTO `zt_history` VALUES ('497', '422', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('498', '423', 'consumed', '0', '6', '');
INSERT INTO `zt_history` VALUES ('499', '423', 'left', '8', '2', '');
INSERT INTO `zt_history` VALUES ('500', '424', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('501', '424', 'left', '12', '4', '');
INSERT INTO `zt_history` VALUES ('502', '425', 'consumed', '0', '8', '');
INSERT INTO `zt_history` VALUES ('503', '425', 'left', '8', '0', '');
INSERT INTO `zt_history` VALUES ('504', '425', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('505', '426', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('506', '426', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('507', '426', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('508', '426', 'closedDate', '', '2017-02-12 22:00:53', '');
INSERT INTO `zt_history` VALUES ('509', '426', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('510', '427', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('511', '427', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:01:34', '');
INSERT INTO `zt_history` VALUES ('512', '427', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('513', '427', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('514', '427', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('515', '427', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('516', '428', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('517', '428', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:01:43', '');
INSERT INTO `zt_history` VALUES ('518', '428', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('519', '428', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('520', '428', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('521', '428', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('522', '429', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('523', '429', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:01:51', '');
INSERT INTO `zt_history` VALUES ('524', '429', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('525', '429', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('526', '429', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('527', '429', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('528', '430', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('529', '430', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:01:59', '');
INSERT INTO `zt_history` VALUES ('530', '430', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('531', '430', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('532', '430', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('533', '430', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('534', '431', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('535', '431', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:06', '');
INSERT INTO `zt_history` VALUES ('536', '431', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('537', '431', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('538', '431', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('539', '431', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('540', '432', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('541', '432', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:13', '');
INSERT INTO `zt_history` VALUES ('542', '432', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('543', '432', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('544', '432', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('545', '432', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('546', '433', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('547', '433', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:19', '');
INSERT INTO `zt_history` VALUES ('548', '433', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('549', '433', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('550', '433', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('551', '433', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('552', '434', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('553', '434', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:26', '');
INSERT INTO `zt_history` VALUES ('554', '434', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('555', '434', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('556', '434', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('557', '434', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('558', '435', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('559', '435', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:33', '');
INSERT INTO `zt_history` VALUES ('560', '435', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('561', '435', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('562', '435', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('563', '435', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('564', '436', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('565', '436', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:40', '');
INSERT INTO `zt_history` VALUES ('566', '436', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('567', '436', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('568', '436', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('569', '436', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('570', '437', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('571', '437', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:46', '');
INSERT INTO `zt_history` VALUES ('572', '437', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('573', '437', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('574', '437', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('575', '437', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('576', '438', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('577', '438', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:02:57', '');
INSERT INTO `zt_history` VALUES ('578', '438', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('579', '438', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('580', '438', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('581', '438', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('582', '439', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('583', '439', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:03:04', '');
INSERT INTO `zt_history` VALUES ('584', '439', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('585', '439', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('586', '439', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('587', '439', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('588', '440', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('589', '440', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:03:10', '');
INSERT INTO `zt_history` VALUES ('590', '440', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('591', '440', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('592', '440', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('593', '440', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('594', '441', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('595', '441', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:03:17', '');
INSERT INTO `zt_history` VALUES ('596', '441', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('597', '441', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('598', '441', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('599', '441', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('600', '442', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('601', '442', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:03:24', '');
INSERT INTO `zt_history` VALUES ('602', '442', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('603', '442', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('604', '442', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('605', '442', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('606', '443', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('607', '443', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:03:32', '');
INSERT INTO `zt_history` VALUES ('608', '443', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('609', '443', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('610', '443', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('611', '443', 'stage', 'developed', 'released', '');
INSERT INTO `zt_history` VALUES ('612', '444', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('613', '444', 'closedDate', '0000-00-00 00:00:00', '2017-02-12 22:05:08', '');
INSERT INTO `zt_history` VALUES ('614', '444', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('615', '444', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('616', '444', 'status', 'active', 'closed', '');
INSERT INTO `zt_history` VALUES ('617', '444', 'stage', 'testing', 'released', '');
INSERT INTO `zt_history` VALUES ('618', '450', 'consumed', '6', '8', '');
INSERT INTO `zt_history` VALUES ('619', '450', 'left', '2', '0', '');
INSERT INTO `zt_history` VALUES ('620', '450', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('621', '451', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('622', '451', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('623', '451', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('624', '451', 'closedDate', '', '2017-02-15 21:16:01', '');
INSERT INTO `zt_history` VALUES ('625', '451', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('626', '452', 'consumed', '8', '12', '');
INSERT INTO `zt_history` VALUES ('627', '452', 'left', '4', '0', '');
INSERT INTO `zt_history` VALUES ('628', '452', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('629', '453', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('630', '453', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('631', '453', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('632', '453', 'closedDate', '', '2017-02-15 21:16:40', '');
INSERT INTO `zt_history` VALUES ('633', '453', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('634', '455', 'PO', 'yaolh', '', '001- <del>yaolh</del>\n001+ <ins></ins>');
INSERT INTO `zt_history` VALUES ('635', '455', 'type', 'platform', 'branch', '');
INSERT INTO `zt_history` VALUES ('636', '463', 'branch', '28', '41', '');
INSERT INTO `zt_history` VALUES ('637', '479', 'realStarted', '0000-00-00', '2017-02-28', '');
INSERT INTO `zt_history` VALUES ('638', '479', 'consumed', '0', '12', '');
INSERT INTO `zt_history` VALUES ('639', '479', 'left', '36', '0', '');
INSERT INTO `zt_history` VALUES ('640', '479', 'status', 'wait', 'done', '');
INSERT INTO `zt_history` VALUES ('641', '479', 'finishedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('642', '479', 'finishedDate', '', '2017-02-28 12:05:58', '');
INSERT INTO `zt_history` VALUES ('643', '480', 'realStarted', '0000-00-00', '2017-02-28', '');
INSERT INTO `zt_history` VALUES ('644', '480', 'consumed', '0', '12', '');
INSERT INTO `zt_history` VALUES ('645', '480', 'left', '24', '0', '');
INSERT INTO `zt_history` VALUES ('646', '480', 'status', 'wait', 'done', '');
INSERT INTO `zt_history` VALUES ('647', '480', 'finishedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('648', '480', 'finishedDate', '', '2017-02-28 12:06:33', '');
INSERT INTO `zt_history` VALUES ('649', '481', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('650', '481', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('651', '481', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('652', '481', 'closedDate', '', '2017-02-28 12:06:45', '');
INSERT INTO `zt_history` VALUES ('653', '481', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('654', '482', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('655', '482', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('656', '482', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('657', '482', 'closedDate', '', '2017-02-28 12:06:50', '');
INSERT INTO `zt_history` VALUES ('658', '482', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('659', '483', 'finishedDate', '', '2017-02-28 12:07:04', '');
INSERT INTO `zt_history` VALUES ('660', '483', 'left', '1', '0', '');
INSERT INTO `zt_history` VALUES ('661', '483', 'status', 'doing', 'done', '');
INSERT INTO `zt_history` VALUES ('662', '483', 'finishedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('663', '484', 'status', 'done', 'closed', '');
INSERT INTO `zt_history` VALUES ('664', '484', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('665', '484', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('666', '484', 'closedDate', '', '2017-02-28 12:07:09', '');
INSERT INTO `zt_history` VALUES ('667', '484', 'closedReason', '', 'done', '');
INSERT INTO `zt_history` VALUES ('668', '485', 'status', 'doing', 'cancel', '');
INSERT INTO `zt_history` VALUES ('669', '485', 'finishedDate', '', '0000-00-00', '');
INSERT INTO `zt_history` VALUES ('670', '485', 'canceledBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('671', '485', 'canceledDate', '', '2017-02-28 12:07:48', '');
INSERT INTO `zt_history` VALUES ('672', '486', 'status', 'cancel', 'closed', '');
INSERT INTO `zt_history` VALUES ('673', '486', 'assignedTo', 'yao', 'closed', '');
INSERT INTO `zt_history` VALUES ('674', '486', 'closedBy', '', 'yao', '');
INSERT INTO `zt_history` VALUES ('675', '486', 'closedDate', '', '2017-02-28 12:07:53', '');
INSERT INTO `zt_history` VALUES ('676', '486', 'closedReason', '', 'cancel', '');
INSERT INTO `zt_history` VALUES ('677', '489', 'desc', '<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p>\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">&nbsp;</span></b></p>\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p>', '<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p>\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p>', '001- <del><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p></del>\n001+ <ins><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p></ins>\n002- <del><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\"></span></b></p></del>\n002+ <ins><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p></ins>\n003- <del><p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p></del>');
INSERT INTO `zt_history` VALUES ('678', '490', 'PO', 'wangxl', 'jiaxy', '001- <del>wangxl</del>\n001+ <ins>jiaxy</ins>');
INSERT INTO `zt_history` VALUES ('679', '490', 'desc', '', '主营业务：钣金喷漆、汽车维修、汽车保养、汽车用品<br />', '001- <del></del>\n001+ <ins>主营业务：钣金喷漆、汽车维修、汽车保养、汽车用品<br /></ins>');

-- ----------------------------
-- Table structure for `zt_lang`
-- ----------------------------
DROP TABLE IF EXISTS `zt_lang`;
CREATE TABLE `zt_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_lang
-- ----------------------------
INSERT INTO `zt_lang` VALUES ('1', 'zh-cn', 'task', 'priList', '3', 'C', '1');
INSERT INTO `zt_lang` VALUES ('2', 'zh-cn', 'task', 'priList', '1', 'A', '1');
INSERT INTO `zt_lang` VALUES ('3', 'zh-cn', 'task', 'priList', '2', 'B', '1');
INSERT INTO `zt_lang` VALUES ('4', 'zh-cn', 'task', 'priList', '4', 'D', '1');
INSERT INTO `zt_lang` VALUES ('5', 'zh-cn', 'bug', 'severityList', '3', 'C', '1');
INSERT INTO `zt_lang` VALUES ('6', 'zh-cn', 'bug', 'severityList', '1', 'A', '1');
INSERT INTO `zt_lang` VALUES ('7', 'zh-cn', 'bug', 'severityList', '2', 'B', '1');
INSERT INTO `zt_lang` VALUES ('8', 'zh-cn', 'bug', 'severityList', '4', 'D', '1');

-- ----------------------------
-- Table structure for `zt_mailqueue`
-- ----------------------------
DROP TABLE IF EXISTS `zt_mailqueue`;
CREATE TABLE `zt_mailqueue` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `toList` varchar(255) NOT NULL,
  `ccList` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `addedBy` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `sendTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `failReason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sendTime` (`sendTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_module`
-- ----------------------------
DROP TABLE IF EXISTS `zt_module`;
CREATE TABLE `zt_module` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) NOT NULL,
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '平台',
  `name` char(60) NOT NULL DEFAULT '' COMMENT '模块',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级',
  `path` char(255) NOT NULL DEFAULT '' COMMENT '路径',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `type` char(30) NOT NULL COMMENT '类型',
  `owner` varchar(30) NOT NULL COMMENT '修改',
  `short` varchar(30) NOT NULL COMMENT '简称',
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`root`,`type`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_module
-- ----------------------------
INSERT INTO `zt_module` VALUES ('12', '0', '12', '17', '关于我们', '0', ',12,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('11', '0', '12', '17', '产品详情', '0', ',11,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('10', '0', '12', '17', '产品分类', '0', ',10,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('9', '0', '12', '17', '首页', '0', ',9,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('233', '0', '8', '34', '诚聘人才', '0', ',233,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('231', '0', '8', '34', '产品详情', '0', ',231,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('232', '0', '8', '34', '关于我们', '0', ',232,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('229', '0', '8', '34', '首页', '0', ',229,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('228', '0', '8', '34', '导航', '0', ',228,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('21', '0', '12', '19', '登陆模块', '0', ',21,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('22', '0', '12', '19', '服务器信息', '0', ',22,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('23', '0', '12', '19', '后台入口', '0', ',23,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('24', '0', '12', '19', '需求管理入口', '0', ',24,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('25', '0', '12', '19', '网站设置', '0', ',25,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('26', '0', '12', '19', '商品信息管理', '23', ',23,26,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('27', '0', '12', '19', '基本信息设置', '25', ',25,27,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('28', '0', '12', '19', '广告图设置', '25', ',25,28,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('29', '0', '12', '19', '用户管理', '25', ',25,29,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('30', '0', '12', '19', '个人信息管理', '23', ',23,30,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('41', '0', '12', '18', '微信小程序关联', '0', ',41,', '1', '80', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('230', '0', '8', '34', '产品列表', '0', ',230,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('43', '0', '12', '19', '资讯新闻管理', '23', ',23,43,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('44', '0', '12', '20', '协助申请', '0', ',44,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('45', '0', '12', '20', '运维托管', '0', ',45,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('46', '0', '12', '22', '企业号协助申请', '0', ',46,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('47', '0', '12', '22', '企业号运维托管', '0', ',47,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('48', '0', '12', '24', '阿里钉钉协助申请', '0', ',48,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('49', '0', '12', '24', '阿里钉钉运维托管', '0', ',49,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('50', '0', '12', '25', 'QQ电商协助申请', '0', ',50,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('51', '0', '12', '25', 'QQ电商运维托管', '0', ',51,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('52', '0', '12', '17', '诚聘人才', '0', ',52,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('53', '0', '12', '17', '成功案例', '0', ',53,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('54', '0', '12', '21', '(个人)订阅号协助申请', '0', ',54,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('55', '0', '12', '21', '(企业)订阅号协助申请', '0', ',55,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('56', '0', '12', '21', '订阅号运维托管', '0', ',56,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('57', '0', '2', '13', '首页', '0', ',57,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('58', '0', '2', '13', '前台登录', '0', ',58,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('59', '0', '2', '13', '个人中心', '0', ',59,', '1', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('60', '0', '2', '13', '关于我们', '0', ',60,', '1', '80', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('61', '0', '2', '13', '诚聘人才', '0', ',61,', '1', '90', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('72', '0', '2', '13', '导航', '0', ',72,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('81', '0', '2', '13', '课程分类', '0', ',81,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('82', '0', '2', '13', '师资力量', '0', ',82,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('227', '0', '2', '13', '课程详情', '0', ',227,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('100', '0', '4', '9', '首页', '0', ',100,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('101', '0', '4', '9', '导航', '0', ',101,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('102', '0', '4', '9', '关于我们', '0', ',102,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('103', '0', '4', '9', '诚聘人才', '0', ',103,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('225', '0', '4', '9', '服务列表', '0', ',225,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('226', '0', '4', '9', '服务详情', '0', ',226,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('128', '0', '1', '7', '首页', '0', ',128,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('129', '0', '1', '7', '关于我们', '0', ',129,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('130', '0', '1', '7', '分类列表', '0', ',130,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('131', '0', '1', '7', '产品详情', '0', ',131,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('132', '0', '1', '8', '登录模块', '0', ',132,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('133', '0', '1', '8', '配置信息（管理员）', '0', ',133,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('134', '0', '1', '8', '需求管理（管理员）', '0', ',134,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('135', '0', '1', '8', '分类管理（管理员）', '0', ',135,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('136', '0', '1', '8', '业务后台', '0', ',136,', '1', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('137', '0', '1', '8', '产品&服务管理', '136', ',136,137,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('138', '0', '1', '8', '客户管理', '136', ',136,138,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('139', '0', '1', '8', '轮播广告', '136', ',136,139,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('140', '0', '1', '26', '订阅号', '0', ',140,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('141', '0', '1', '26', '服务号', '0', ',141,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('142', '0', '1', '26', '企业号', '0', ',142,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('200', '0', '1', '27', '通讯录', '0', ',200,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('199', '0', '1', '27', '工作', '0', ',199,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('198', '0', '1', '27', 'DING', '0', ',198,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('197', '0', '1', '27', '消息', '0', ',197,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('196', '0', '1', '8', '诚聘人才（管理员）', '0', ',196,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('195', '0', '1', '8', '订单管理', '136', ',136,195,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('160', '0', '1', '8', '客户列表', '138', ',136,138,160,', '3', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('161', '0', '1', '8', '客户详情', '138', ',136,138,161,', '3', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('162', '0', '1', '8', '客户查询', '138', ',136,138,162,', '3', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('163', '0', '1', '8', '客户添加', '138', ',136,138,163,', '3', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('164', '0', '1', '8', '客户编辑', '138', ',136,138,164,', '3', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('165', '0', '1', '8', '客户删除', '138', ',136,138,165,', '3', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('166', '0', '1', '7', '宣传二维码', '128', ',128,166,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('167', '0', '1', '7', '联系电话', '128', ',128,167,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('168', '0', '1', '7', 'QQ号码', '128', ',128,168,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('169', '0', '1', '7', '广告轮播', '128', ',128,169,', '2', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('170', '0', '1', '7', '推荐产品&服务', '128', ',128,170,', '2', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('171', '0', '1', '7', '导航栏', '128', ',128,171,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('187', '0', '1', '7', '产品信息', '131', ',131,187,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('182', '0', '1', '7', '推荐成功案例', '128', ',128,182,', '2', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('191', '0', '6', '28', '关于我们', '0', ',191,', '1', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('184', '0', '1', '7', '分类清单', '130', ',130,184,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('185', '0', '1', '7', '分类下产品列表', '130', ',130,185,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('194', '0', '1', '7', '检索下产品列表', '130', ',130,194,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('193', '0', '6', '28', '产品详情', '0', ',193,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('192', '0', '6', '28', '产品列表', '0', ',192,', '1', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('190', '0', '6', '28', '首页', '0', ',190,', '1', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('189', '0', '6', '28', '导航', '0', ',189,', '1', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('188', '0', '1', '7', '成功案例', '131', ',131,188,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('201', '0', '1', '27', '我的钉钉', '0', ',201,', '1', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('202', '0', '1', '27', '文件助手', '197', ',197,202,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('203', '0', '1', '27', '钉钉电话', '197', ',197,203,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('204', '0', '1', '27', '视频会议', '197', ',197,204,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('205', '0', '1', '27', '部门联系群', '197', ',197,205,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('206', '0', '1', '27', '工作通知', '197', ',197,206,', '2', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('207', '0', '1', '27', '好友推荐', '197', ',197,207,', '2', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('208', '0', '1', '27', '钉钉邮件', '197', ',197,208,', '2', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('209', '0', '1', '27', '部门信息', '199', ',199,209,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('210', '0', '1', '27', '签到', '199', ',199,210,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('211', '0', '1', '27', '考勤打卡', '199', ',199,211,', '2', '30', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('212', '0', '1', '27', '日志', '199', ',199,212,', '2', '40', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('213', '0', '1', '27', '公告', '199', ',199,213,', '2', '50', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('214', '0', '1', '27', '审批', '199', ',199,214,', '2', '60', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('215', '0', '1', '27', '钉钉邮件', '199', ',199,215,', '2', '70', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('216', '0', '1', '27', '钉盘', '199', ',199,216,', '2', '80', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('217', '0', '1', '27', '智能报表', '199', ',199,217,', '2', '90', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('218', '0', '1', '27', '客户管理', '199', ',199,218,', '2', '100', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('219', '0', '1', '27', '办公电话', '199', ',199,219,', '2', '110', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('220', '0', '1', '27', '秀丽广告', '199', ',199,220,', '2', '120', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('221', '0', '1', '27', '标准演示', '199', ',199,221,', '2', '130', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('222', '0', '1', '27', '组织机构', '200', ',200,222,', '2', '10', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('223', '0', '1', '27', '部门名单', '200', ',200,223,', '2', '20', 'story', '', '', null);
INSERT INTO `zt_module` VALUES ('224', '0', '1', '27', '外部联系人', '200', ',200,224,', '2', '30', 'story', '', '', null);

-- ----------------------------
-- Table structure for `zt_mt_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_mt_cate`;
CREATE TABLE `zt_mt_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_mt_cate
-- ----------------------------
INSERT INTO `zt_mt_cate` VALUES ('1', '1', '0', '人力中介', '正常', '3', '腰立辉', '2017-02-09 21:49:37');
INSERT INTO `zt_mt_cate` VALUES ('2', '2', '0', '健康体检', '正常', '3', '腰立辉', '2017-02-09 21:49:44');
INSERT INTO `zt_mt_cate` VALUES ('3', '3', '0', '职业培训', '正常', '3', '腰立辉', '2017-02-09 21:49:51');

-- ----------------------------
-- Table structure for `zt_mt_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_mt_prodservice`;
CREATE TABLE `zt_mt_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '商品尺寸',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_mt_prodservice
-- ----------------------------
INSERT INTO `zt_mt_prodservice` VALUES ('1', '', '找保姆', '', '0', null, '0', '0', '0', '1', null, '1', null, '1', '1', null, '/Product/2017-01-24/', '588727aae0a5d.png', '腰立辉', '2017-02-09 21:50:08');
INSERT INTO `zt_mt_prodservice` VALUES ('2', '', '聘月嫂', '', '0', null, '0', '0', '0', '1', null, '1', null, '1', '1', null, '/Product/2017-01-24/', '5887249e7ed61.png', '腰立辉', '2017-02-09 21:50:10');
INSERT INTO `zt_mt_prodservice` VALUES ('3', '', '钟点工', '', '0', null, '0', '0', '0', '1', null, '1', null, '1', '1', null, '/Product/2017-01-24/', '5887250ec196f.png', '腰立辉', '2017-02-09 21:50:11');
INSERT INTO `zt_mt_prodservice` VALUES ('4', '', '拼家政', '', '0', null, '0', '0', '0', '1', null, '1', null, '1', '1', null, '/Product/2017-01-24/', '588724199cb81.png', '腰立辉', '2017-02-09 21:50:16');

-- ----------------------------
-- Table structure for `zt_order_serviccar`
-- ----------------------------
DROP TABLE IF EXISTS `zt_order_serviccar`;
CREATE TABLE `zt_order_serviccar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `money` decimal(10,1) unsigned DEFAULT '0.0' COMMENT '订单金额',
  `productmoney` decimal(10,1) unsigned DEFAULT '0.0' COMMENT '商品总额',
  `yydate` date DEFAULT NULL,
  `state` varchar(6) DEFAULT '待维修' COMMENT '订单状态',
  `uid` smallint(6) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL COMMENT '用户手机',
  `carid` smallint(6) DEFAULT NULL COMMENT '车辆ID',
  `plateno` char(7) DEFAULT NULL,
  `pathfront` varchar(32) DEFAULT '/',
  `imgfront` varchar(255) DEFAULT 'imgfront.jpeg' COMMENT '车前',
  `textfront` varchar(255) DEFAULT NULL,
  `pathback` varchar(255) DEFAULT '/',
  `imgback` varchar(255) DEFAULT 'imgback.jpeg' COMMENT '车后',
  `textback` varchar(255) DEFAULT NULL,
  `pathleft` varchar(255) DEFAULT '/',
  `imgleft` varchar(255) DEFAULT 'imgleft.jpeg' COMMENT '车左',
  `textleft` varchar(255) DEFAULT NULL,
  `pathright` varchar(255) DEFAULT '/',
  `imgright` varchar(255) DEFAULT 'imgright.jpeg' COMMENT '车右',
  `textright` varchar(255) DEFAULT NULL,
  `pathservice` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '/',
  `imgservice` varchar(255) DEFAULT 'imgservice.jpeg' COMMENT '维修处',
  `textservice` varchar(255) DEFAULT NULL,
  `odograph` int(11) DEFAULT NULL COMMENT '里程数',
  `pathoil` varchar(255) DEFAULT '/',
  `imgoil` varchar(255) DEFAULT 'imgoil.jpeg' COMMENT '油量表图片',
  `oilgauge` int(11) DEFAULT NULL COMMENT '油量',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  `prodid` smallint(6) DEFAULT NULL COMMENT '服务机构',
  `sdate` date DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '收车时间',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_order_serviccar
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_product`
-- ----------------------------
DROP TABLE IF EXISTS `zt_product`;
CREATE TABLE `zt_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL COMMENT '产品名称',
  `code` varchar(45) NOT NULL COMMENT '代码',
  `type` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '类型',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `desc` text NOT NULL COMMENT '描述',
  `PO` varchar(30) NOT NULL COMMENT '产品经理',
  `QD` varchar(30) NOT NULL COMMENT '测试负责人',
  `RD` varchar(30) NOT NULL COMMENT '研发负责人',
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL COMMENT '创建时间',
  `createdVersion` varchar(20) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL COMMENT '顺序',
  `deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '删除标识',
  `short` varchar(10) DEFAULT NULL COMMENT '简称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `tel` varchar(13) DEFAULT NULL COMMENT '座机',
  `qq` varchar(13) DEFAULT NULL COMMENT 'QQ',
  `qz` varchar(10) DEFAULT NULL,
  `db` varchar(10) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL COMMENT '网站名',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键字',
  `adress` varchar(300) DEFAULT NULL COMMENT '地址',
  `url` varchar(200) DEFAULT NULL COMMENT '网址',
  `path` varchar(200) DEFAULT NULL COMMENT '图标路径',
  `img` varchar(48) DEFAULT NULL COMMENT '图标',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `record` varchar(15) DEFAULT NULL COMMENT '备案号',
  `version` varchar(15) DEFAULT 'V1.0.0' COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_product
-- ----------------------------
INSERT INTO `zt_product` VALUES ('1', '秀丽广告', 'Xiuli', 'platform', 'normal', '<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">广告类：大型室外广告牌、楼体亮化工程、<span>LED</span>显示屏、展板展架、条幅吊旗、锦旗授带、写真喷绘、铜牌铜字、钛金字、发光字、<span>PVC</span>字<span></span></span></b></p>\n<p class=\"MsoNormal\"><b><span style=\"font-size:16pt;font-family:\'宋体\';\">文印类：打字复印、彩喷彩页、快照证书、书本装订、中高档胸卡、桌牌菜单、名片、充值卡、印制单据<span></span></span></b></p>', 'zhangxl', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:23:39', '8.2.4', '5', '0', '秀丽', '13463925200', '0319-7186126', '2830690782', 'Xiuli', 'xl_', '临城-秀丽广告', '临城秀丽广告,秀丽广告,临城广告', '临城兴临街转盘北200米路西', 'www.xiuliguanggao.com', '/Setting/2017-01-24/', '588706de454f9.png', '2017-03-16 10:54:52', '冀ICP备17001594号', 'V1.0.0');
INSERT INTO `zt_product` VALUES ('2', '拓才教育', 'Tuocai', 'platform', 'normal', '', 'liangxw', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:09', '8.2.4', '10', '0', '拓才', '13426179579', '0311-89849355', '285981407', 'Tuocai', 'tc_', '石家庄-拓才教育', '石家庄拓才教育,石家庄课外辅导,石家庄一对一辅导', '河北省石家庄市裕华区大马庄园6号楼3单元402室', 'www.xiuliguanggao.com/index.php/Tuocai', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '2017-03-21 10:39:52', null, 'V1.0.0');
INSERT INTO `zt_product` VALUES ('3', '麦田双辉', 'Mtsh', 'platform', 'normal', '', 'yao', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:24:52', '8.2.4', '15', '0', '双辉', '18801043607', '0319-7167618', '83000892', 'Mtsh', 'mt_', '麦田双辉-服务中心', null, '临城', 'www.xiuliguanggao.com/index.php/Mtsh', '/Setting/2017-01-19/', '58805b69780c6.png', '2017-03-16 10:55:05', '', 'V1.0.0');
INSERT INTO `zt_product` VALUES ('4', '安顺汽修', 'Anshun', 'platform', 'normal', '主营业务：钣金喷漆、汽车维修、汽车保养、汽车用品<br />', 'jiaxy', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-08 22:25:22', '8.2.4', '20', '0', '安顺', '13785900902', null, '1058793920', 'Anshun', 'as_', '安顺汽车服务中心', '临城安顺汽修,安顺汽修,临城汽修', '临城镇府前街射兽村中学东200米', 'www.xiuliguanggao.com/index.php/Anshun', '/Setting/2017-02-21/', '58abf9b696c71.jpg', '2017-03-16 11:53:44', null, 'V1.0.0');
INSERT INTO `zt_product` VALUES ('5', '测试管理', 'Test', 'platform', 'normal', '自主设计的测试管理平台', 'yao', 'jiaxn', 'yao', 'private', '', 'jeff', '2017-01-08 22:29:58', '8.2.4', '25', '0', 'Test', '18801043607', null, null, 'Test', 'tt_', '测试管理平台', null, '虚拟网络世界', 'www.xiuliguanggao.com/index.php/Test', null, null, '2017-02-10 22:23:58', null, 'V1.0.0');
INSERT INTO `zt_product` VALUES ('12', '示例网站', 'Demo', 'platform', 'normal', '标准产品', 'yao', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-12 12:44:28', '8.2.4', '60', '0', 'Demo', '18801043607', '7168888', '83000892', 'Demo', 'dm_', '标准演示', '', '示例网站暂无地址', 'www.xiuliguanggao.com/index.php/Demo', null, null, '2017-02-10 14:08:18', '', 'V1.0.0');
INSERT INTO `zt_product` VALUES ('6', '智慧信达', 'Xinda', 'platform', 'normal', '', 'liuyj', 'jiaxn', 'yao', 'private', '', 'yao', '2017-01-19 12:26:42', '8.2.4', '70', '0', '信达', '18801043607', '010-86466481-', '', 'Xinda', 'xd_', '智慧信达', '', '北京市昌平区', 'www.xiuliguanggao.com/index.php/Xinda', '/Setting/2017-03-02/', '58b8145cb02b5.jpg', '2017-03-02 20:47:24', '京ICP备17001594号', 'V1.0.0');
INSERT INTO `zt_product` VALUES ('7', '润竹茶业', 'Runzhu', 'platform', 'normal', '', 'suzb', 'jiaxn', 'yao', 'private', '', 'yao', '2017-02-09 21:32:13', '8.2.4', '35', '0', '润竹', '15732091766', '15732091766', '9182547', 'Runzhu', 'rz_', '唐山-润竹茶业', '', '唐山市丰润区', 'www.xiuliguanggao.com/index.php/Runzhu', '/Setting/2017-02-10/', '589d1b121a9e9.jpg', '2017-02-10 22:22:03', '', 'V1.0.0');
INSERT INTO `zt_product` VALUES ('8', '小厮科技', 'Small', 'branch', 'normal', '', '', 'jiaxn', 'yao', 'private', '', 'yao', '2017-02-10 22:30:32', '8.2.4', '55', '0', '小厮', '18801043607', '18518708335', '83000892', 'Small', 'sl_', '北京-小厮科技', null, null, 'www.xiuliguanggao.com/index.php/Small', null, null, '2017-02-15 21:31:58', null, 'V1.0.0');

-- ----------------------------
-- Table structure for `zt_productplan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_productplan`;
CREATE TABLE `zt_productplan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `title` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plan` (`product`,`end`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_productplan
-- ----------------------------
INSERT INTO `zt_productplan` VALUES ('1', '1', '7', '秀丽广告 V1.0.0', '网站平台的搭建与阿里钉钉内部管理平台的搭建', '2017-02-06', '2017-03-06', '0');
INSERT INTO `zt_productplan` VALUES ('2', '1', '0', '秀丽广告 V1.1.0', '秀丽广告宣传页和微信服务号联通可以对外宣传', '2017-03-07', '2017-04-06', '0');
INSERT INTO `zt_productplan` VALUES ('3', '6', '28', 'V1.0.0网站初建', '<p>1.筹备：申请域名，租赁服务器，网站备案</p>\n<p>2.网站内容规划：网站布局，硬件产品介绍，软件服务介绍，公司简介和宗旨</p>\n<p>3.熟悉软件的研发流程和常用工具的使用如：钉钉和禅道</p>\n<p>4.和微信服务号、阿里钉钉、QQ号、QQ空间等社交平台打通</p>', '2017-02-27', '2017-03-31', '0');

-- ----------------------------
-- Table structure for `zt_project`
-- ----------------------------
DROP TABLE IF EXISTS `zt_project`;
CREATE TABLE `zt_project` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isCat` enum('1','0') NOT NULL DEFAULT '0',
  `catID` mediumint(8) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sprint',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(90) NOT NULL COMMENT '项目',
  `code` varchar(45) NOT NULL COMMENT '代码',
  `begin` date NOT NULL COMMENT '开始',
  `end` date NOT NULL COMMENT '结束',
  `days` smallint(5) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `statge` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `pri` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `openedVersion` varchar(20) NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `canceledBy` varchar(30) NOT NULL DEFAULT '',
  `canceledDate` int(10) unsigned NOT NULL DEFAULT '0',
  `PO` varchar(30) NOT NULL DEFAULT '' COMMENT '产品经理',
  `PM` varchar(30) NOT NULL DEFAULT '' COMMENT '项目经理',
  `QD` varchar(30) NOT NULL DEFAULT '' COMMENT '测试',
  `RD` varchar(30) DEFAULT '' COMMENT '研发',
  `team` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `testgp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project` (`parent`,`begin`,`end`,`status`,`order`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_project
-- ----------------------------
INSERT INTO `zt_project` VALUES ('2', '0', '0', 'sprint', '0', '测试平台 V1.0.0', 'Auto1701.1', '2017-01-08', '2017-01-15', '5', 'wait', '1', '1', 'qwuyequiwyeiqu', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'qwewq', 'private', '', '15', '0', 'Auto');
INSERT INTO `zt_project` VALUES ('15', '0', '0', 'sprint', '0', '秀丽广告微信服务号 V1.1.0', 'Xiuli1703.1', '2017-03-06', '2017-04-06', '24', 'wait', '1', '1', '注册并维护好一个微信公众账号，利用它可以对外宣传', '', '0', '8.2.4', '', '0', '', '0', 'zhangxl', 'yaojq', 'jiaxn', 'yao', '秀丽广告', 'private', '', '75', '0', null);
INSERT INTO `zt_project` VALUES ('14', '0', '0', 'sprint', '0', '秀丽广告网站 V1.0.0', 'Xiuli1701.1', '2017-02-06', '2017-03-05', '20', 'doing', '1', '1', '搭建出网站平台和阿里钉钉的联通，进行内部的管理', '', '0', '8.2.4', '', '0', '', '0', 'zhangxl', 'yao', 'jiaxn', 'yao', 'yaolh', 'private', '', '70', '0', null);
INSERT INTO `zt_project` VALUES ('16', '0', '0', 'sprint', '0', '安顺汽修订阅号V1.0.0', 'Anshun1701.1', '2017-02-11', '2017-02-28', '12', 'wait', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'yaolh', 'private', '', '80', '0', null);
INSERT INTO `zt_project` VALUES ('17', '0', '0', 'sprint', '0', '安顺汽修微网站', 'Anshun1702.2', '2017-02-12', '2017-02-28', '12', 'wait', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'yaolh', 'private', '', '85', '0', null);
INSERT INTO `zt_project` VALUES ('18', '0', '0', 'sprint', '0', '智慧信达网站初建', 'Xinda1702.1', '2017-02-15', '2017-03-18', '23', 'wait', '1', '1', '智慧信达网站初建', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'yaolh', 'private', '', '90', '0', null);

-- ----------------------------
-- Table structure for `zt_projectproduct`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectproduct`;
CREATE TABLE `zt_projectproduct` (
  `project` mediumint(8) unsigned NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`project`,`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_projectproduct
-- ----------------------------
INSERT INTO `zt_projectproduct` VALUES ('8', '10', '0');
INSERT INTO `zt_projectproduct` VALUES ('9', '10', '0');
INSERT INTO `zt_projectproduct` VALUES ('2', '5', '0');
INSERT INTO `zt_projectproduct` VALUES ('14', '1', '0');
INSERT INTO `zt_projectproduct` VALUES ('15', '1', '0');
INSERT INTO `zt_projectproduct` VALUES ('16', '4', '0');
INSERT INTO `zt_projectproduct` VALUES ('17', '4', '0');
INSERT INTO `zt_projectproduct` VALUES ('18', '6', '0');

-- ----------------------------
-- Table structure for `zt_projectstory`
-- ----------------------------
DROP TABLE IF EXISTS `zt_projectstory`;
CREATE TABLE `zt_projectstory` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` mediumint(8) unsigned NOT NULL,
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '1',
  UNIQUE KEY `project` (`project`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_projectstory
-- ----------------------------
INSERT INTO `zt_projectstory` VALUES ('1', '5', '1', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '2', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '3', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '4', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '8', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '11', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '5', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '7', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '9', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '10', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '12', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '13', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '14', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '15', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '16', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '18', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '19', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '20', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '22', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '21', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '48', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '47', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '46', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '45', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '44', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '43', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '42', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '41', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '40', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '39', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '38', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '37', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '36', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '35', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '34', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '33', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '32', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '31', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '30', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '29', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '28', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '27', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '26', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '25', '1');
INSERT INTO `zt_projectstory` VALUES ('14', '1', '24', '1');
INSERT INTO `zt_projectstory` VALUES ('18', '6', '54', '1');
INSERT INTO `zt_projectstory` VALUES ('18', '6', '53', '1');
INSERT INTO `zt_projectstory` VALUES ('18', '6', '52', '1');
INSERT INTO `zt_projectstory` VALUES ('18', '6', '51', '1');
INSERT INTO `zt_projectstory` VALUES ('18', '6', '50', '1');

-- ----------------------------
-- Table structure for `zt_qq_connect`
-- ----------------------------
DROP TABLE IF EXISTS `zt_qq_connect`;
CREATE TABLE `zt_qq_connect` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `webapp` varchar(30) NOT NULL COMMENT '分类名称',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `appid` char(9) DEFAULT NULL,
  `appkey` char(32) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `access_token` char(138) DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL COMMENT '过期时间',
  `otime` int(11) DEFAULT NULL,
  `errcode` int(11) DEFAULT NULL,
  `errmsg` varchar(255) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_qq_connect
-- ----------------------------
INSERT INTO `zt_qq_connect` VALUES ('1', '临城-秀丽广告', '1', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', 'http://localhost/Xiuli/index.php/Xiuli/Login/qq_callback', 'get_user_info', null, null, null, null, null, '2017-02-25 22:17:15');
INSERT INTO `zt_qq_connect` VALUES ('2', '北京-智慧信达', '0', null, null, null, null, null, null, null, null, null, '2017-02-25 15:15:48');
INSERT INTO `zt_qq_connect` VALUES ('3', '唐山-润竹茶业', '0', null, null, null, null, null, null, null, null, null, '2017-02-25 15:15:51');
INSERT INTO `zt_qq_connect` VALUES ('4', '临城-安顺汽修', '0', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', null, 'get_user_info', null, null, null, null, null, '2017-03-16 09:40:04');

-- ----------------------------
-- Table structure for `zt_release`
-- ----------------------------
DROP TABLE IF EXISTS `zt_release`;
CREATE TABLE `zt_release` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` mediumint(8) unsigned NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `leftBugs` text NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_release
-- ----------------------------
INSERT INTO `zt_release` VALUES ('1', '1', '7', '2', '秀丽广告V1.0.0', '2017-02-12', ',18,16,20,15,13,12,11,10,8,7,5,48,47,46,45,43,42,41,40,39,38,32,31,30,29,28,27,24,44', '', '', '', 'normal', '0');

-- ----------------------------
-- Table structure for `zt_rz_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_rz_cate`;
CREATE TABLE `zt_rz_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_rz_cate
-- ----------------------------
INSERT INTO `zt_rz_cate` VALUES ('1', '1', '0', '老茶', '正常', '7', '腰立辉', '2017-02-10 09:46:50');
INSERT INTO `zt_rz_cate` VALUES ('2', '2', '0', '云南普洱', '正常', '7', '腰立辉', '2017-02-10 09:52:16');
INSERT INTO `zt_rz_cate` VALUES ('3', '3', '0', '武夷红茶', '正常', '7', '腰立辉', '2017-02-10 09:52:28');
INSERT INTO `zt_rz_cate` VALUES ('4', '4', '0', '红茶', '正常', '7', '腰立辉', '2017-02-10 09:52:42');
INSERT INTO `zt_rz_cate` VALUES ('5', '5', '0', '白茶', '正常', '7', '腰立辉', '2017-02-10 09:52:50');
INSERT INTO `zt_rz_cate` VALUES ('6', '6', '0', '绿茶', '正常', '7', '腰立辉', '2017-02-10 09:52:59');
INSERT INTO `zt_rz_cate` VALUES ('7', '7', '0', '茶具', '正常', '7', '腰立辉', '2017-02-10 09:53:09');
INSERT INTO `zt_rz_cate` VALUES ('8', '8', '0', '其他', '正常', '7', '腰立辉', '2017-02-10 09:53:16');

-- ----------------------------
-- Table structure for `zt_rz_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_rz_prodservice`;
CREATE TABLE `zt_rz_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` float(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` float(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` float(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '推荐首页',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_rz_prodservice
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_sl_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_sl_cate`;
CREATE TABLE `zt_sl_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_sl_cate
-- ----------------------------
INSERT INTO `zt_sl_cate` VALUES ('5', '1', '0', '微网站', '正常', '8', '腰立辉', '2017-02-11 00:05:41');
INSERT INTO `zt_sl_cate` VALUES ('6', '2', '0', '公众号', '正常', '8', '腰立辉', '2017-02-11 00:05:50');

-- ----------------------------
-- Table structure for `zt_sl_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_sl_prodservice`;
CREATE TABLE `zt_sl_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_sl_prodservice
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_story`
-- ----------------------------
DROP TABLE IF EXISTS `zt_story`;
CREATE TABLE `zt_story` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `sourceNote` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `estimate` float unsigned NOT NULL,
  `status` enum('','changed','active','draft','closed') NOT NULL DEFAULT '',
  `color` char(7) NOT NULL,
  `stage` enum('','wait','planned','projected','developing','developed','testing','tested','verified','released') NOT NULL DEFAULT 'wait',
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `reviewedBy` varchar(255) NOT NULL,
  `reviewedDate` date NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `toBug` mediumint(9) NOT NULL,
  `childStories` varchar(255) NOT NULL,
  `linkStories` varchar(255) NOT NULL,
  `duplicateStory` mediumint(8) unsigned NOT NULL,
  `version` smallint(6) NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `story` (`product`,`module`,`status`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_story
-- ----------------------------
INSERT INTO `zt_story` VALUES ('5', '1', '7', '171', '1', 'support', '', '0', '导航-网站名称', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 11:18:55', 'closed', '2017-02-12 17:33:59', 'yao', '2017-02-12 17:33:59', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:59', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('6', '1', '7', '171', '1', '', '', '0', '导航-产品检索', '', '', '2', '0', 'draft', '', 'planned', '', 'yao', '2017-02-06 11:23:11', '', '0000-00-00 00:00:00', 'yao', '2017-02-06 16:36:29', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('7', '1', '7', '171', '1', '', '', '0', '模块菜单（主营业务、诚聘人才、关于我们）', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 11:23:11', 'closed', '2017-02-12 17:33:53', 'yao', '2017-02-12 17:33:53', '', '0000-00-00', 'yao', '2017-02-12 17:33:53', 'done', '0', '', '', '0', '2', '0');
INSERT INTO `zt_story` VALUES ('8', '1', '7', '171', '1', '', '', '0', '用户登录及注销', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 11:23:11', 'closed', '2017-02-12 17:33:47', 'yao', '2017-02-12 17:33:47', '', '0000-00-00', 'yao', '2017-02-12 17:33:47', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('9', '1', '7', '166', '1', '', '', '0', '首页-宣传二维码', '', '', '1', '0', 'active', '', 'developed', '', 'yao', '2017-02-06 11:41:36', 'yao', '2017-02-06 11:41:36', 'yao', '2017-02-06 16:29:23', 'yao', '2017-02-06', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('10', '1', '7', '167', '1', 'support', '', '0', '首页-联系电话', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 11:48:32', 'closed', '2017-02-12 17:33:40', 'yao', '2017-02-12 17:33:40', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:40', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('11', '1', '7', '168', '1', 'support', '', '0', '首页-QQ号', '', '', '1', '0', 'closed', '#388e3c', 'developed', '', 'yao', '2017-02-06 12:38:41', 'closed', '2017-02-12 17:33:34', 'yao', '2017-02-12 17:33:34', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:34', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('12', '1', '7', '169', '1', 'support', '', '0', '首页-轮播广告', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 12:50:45', 'closed', '2017-02-12 17:33:28', 'yao', '2017-02-12 17:33:28', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:28', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('13', '1', '7', '170', '1', 'support', '', '0', '首页-推荐产品和服务', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 12:56:29', 'closed', '2017-02-12 17:33:20', 'yao', '2017-02-12 17:33:20', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:20', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('14', '1', '7', '182', '1', 'support', '', '0', '首页-成功案例', '', '', '1', '0', 'active', '', 'developed', '', 'yao', '2017-02-06 13:01:23', 'yao', '2017-02-06 13:01:23', 'yao', '2017-02-06 16:30:12', 'yao', '2017-02-06', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('15', '1', '7', '129', '1', 'support', '', '0', '关于我们-企业形象照片', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 16:33:50', 'closed', '2017-02-12 17:33:13', 'yao', '2017-02-12 17:33:13', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:13', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('16', '1', '7', '129', '1', 'support', '', '0', '关于我们-主营业务', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 16:38:32', 'closed', '2017-02-12 17:33:06', 'yao', '2017-02-12 21:21:00', 'yao', '2017-02-06', 'yao', '2017-02-12 17:33:06', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('17', '1', '7', '129', '1', 'support', '', '0', '关于我们-企业宗旨', '', '', '0', '0', 'draft', '', 'planned', '', 'yao', '2017-02-06 16:40:06', 'yao', '2017-02-06 16:40:06', 'yao', '2017-02-12 17:03:46', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('18', '1', '7', '129', '1', 'support', '', '0', '关于我们-联系方式', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 16:43:37', 'closed', '2017-02-12 17:32:59', 'yao', '2017-02-12 21:21:10', 'yao', '2017-02-06', 'yao', '2017-02-12 17:32:59', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('19', '1', '7', '129', '1', 'support', '', '0', '关于我们-付款二维码', '', '', '1', '0', 'active', '', 'projected', '', 'yao', '2017-02-06 16:46:58', 'yao', '2017-02-06 16:46:58', 'yao', '2017-02-06 16:47:04', 'yao', '2017-02-06', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('20', '1', '7', '184', '1', 'support', '', '0', '分类列表-产品分类', '', '', '1', '0', 'closed', '', 'developed', '', 'yao', '2017-02-06 17:53:05', 'closed', '2017-02-12 17:32:51', 'yao', '2017-02-12 17:32:51', 'yao', '2017-02-06', 'yao', '2017-02-12 17:32:51', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('21', '1', '27', '0', '1', 'support', '', '0', '在钉钉官网申请注册秀丽广告的企业号', '', '', '1', '0', 'active', '', 'projected', '', 'yao', '2017-02-12 16:59:49', 'yao', '2017-02-12 16:59:49', 'yao', '2017-02-12 21:21:24', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('22', '1', '27', '0', '1', 'support', '', '0', '对秀丽广告的钉钉企业进行实名认证，用于开通更多的接口和服务用于内部和客户沟通', '', '', '1', '0', 'active', '', 'projected', '', 'yao', '2017-02-12 17:01:56', 'yao', '2017-02-12 17:01:56', 'yao', '2017-02-12 21:21:38', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('23', '1', '8', '0', '2', 'po', '', '0', '诚聘人才', '', '', '0', '8', 'draft', '', 'planned', '', 'yao', '2017-02-12 20:15:02', 'zhangxl', '2017-02-12 20:15:02', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('24', '1', '8', '137', '1', 'support', '', '0', '产品分类列表', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:16:36', 'closed', '2017-02-12 22:03:32', 'yao', '2017-02-12 22:03:32', 'yao', '2017-02-12', 'yao', '2017-02-12 22:03:32', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('25', '1', '8', '137', '1', 'support', '', '0', '产品&amp;服务-新增', '', '', '1', '12', 'active', '', 'developed', '', 'yao', '2017-02-12 20:18:05', 'yao', '2017-02-12 20:18:05', 'yao', '2017-02-12 20:34:34', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('26', '1', '8', '137', '1', 'support', '', '0', '产品&amp;服务-编辑', '', '', '1', '8', 'active', '', 'developed', '', 'yao', '2017-02-12 20:18:51', 'yao', '2017-02-12 20:18:51', 'yao', '2017-02-12 21:04:43', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('27', '1', '8', '137', '1', 'support', '', '0', '上传&amp;替换图片，要求尺寸为300X200', '', '', '1', '24', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:19:57', 'closed', '2017-02-12 22:03:24', 'yao', '2017-02-12 22:03:24', 'yao', '2017-02-12', 'yao', '2017-02-12 22:03:24', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('28', '1', '8', '137', '1', 'support', '', '0', '发布&amp;下线', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:25:40', 'closed', '2017-02-12 22:03:17', 'yao', '2017-02-12 22:03:17', 'yao', '2017-02-12', 'yao', '2017-02-12 22:03:17', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('29', '1', '8', '137', '1', 'support', '', '0', '推荐&amp;非推荐', '', '', '1', '12', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:29:40', 'closed', '2017-02-12 22:03:10', 'yao', '2017-02-12 22:03:10', 'yao', '2017-02-12', 'yao', '2017-02-12 22:03:10', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('30', '1', '8', '139', '1', 'support', '', '0', '轮播图列表', '', '', '1', '16', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:36:01', 'closed', '2017-02-12 22:03:04', 'yao', '2017-02-12 22:03:04', 'yao', '2017-02-12', 'yao', '2017-02-12 22:03:04', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('31', '1', '8', '139', '1', 'support', '', '0', '广告信息-编辑', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:37:09', 'closed', '2017-02-12 22:02:57', 'yao', '2017-02-12 22:02:57', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:57', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('32', '1', '8', '139', '1', 'support', '', '0', '替换广告图，限定尺寸为900X500', '', '', '1', '12', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:38:08', 'closed', '2017-02-12 22:02:46', 'yao', '2017-02-12 22:02:46', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:46', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('33', '1', '8', '196', '1', 'support', '', '0', '职位-列表', '', '', '1', '8', 'active', '', 'developing', '', 'yao', '2017-02-12 20:43:39', 'yao', '2017-02-12 20:43:39', 'yao', '2017-02-12 20:48:45', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('34', '1', '8', '196', '1', 'support', '', '0', '职位-添加', '', '', '1', '8', 'active', '', 'developing', '', 'yao', '2017-02-12 20:43:58', 'yao', '2017-02-12 20:43:58', 'yao', '2017-02-12 20:48:21', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('35', '1', '8', '196', '1', 'support', '', '0', '职位-编辑', '', '', '1', '8', 'active', '', 'developing', '', 'yao', '2017-02-12 20:44:31', 'yao', '2017-02-12 20:44:31', 'yao', '2017-02-12 20:47:59', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('36', '1', '8', '196', '1', 'support', '', '0', '职位-发布&amp;下线', '', '', '1', '6', 'active', '', 'projected', '', 'yao', '2017-02-12 20:45:00', 'yao', '2017-02-12 20:45:00', 'yao', '2017-02-12 20:47:44', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('37', '1', '8', '196', '1', 'support', '', '0', '职位-推荐悬赏', '', '', '1', '36', 'active', '', 'developed', '', 'yao', '2017-02-12 20:45:31', 'yao', '2017-02-12 20:45:31', 'yao', '2017-02-12 20:46:11', 'yao', '2017-02-12', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('38', '1', '8', '133', '1', 'support', '', '0', '形象图替换', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:51:08', 'closed', '2017-02-12 22:02:40', 'yao', '2017-02-12 22:02:40', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:40', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('39', '1', '8', '133', '1', 'support', '', '0', '宣传二维码展示', '', '', '1', '2', 'closed', '', 'developed', '', 'yao', '2017-02-12 20:56:29', 'closed', '2017-02-12 22:02:33', 'yao', '2017-02-12 22:02:33', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:33', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('40', '1', '8', '133', '1', 'support', '', '0', '网站基础信息配置', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:00:02', 'closed', '2017-02-12 22:02:26', 'yao', '2017-02-12 22:02:26', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:26', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('41', '1', '8', '137', '1', 'support', '', '0', '产品&amp;服务-查询', '', '', '1', '32', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:02:39', 'closed', '2017-02-12 22:02:19', 'yao', '2017-02-12 22:02:19', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:19', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('42', '1', '8', '134', '1', 'support', '', '0', '禅道管理工具的入口，用网站管理员的账号和密码登录', '', '', '1', '72', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:06:49', 'closed', '2017-02-12 22:02:13', 'yao', '2017-02-12 22:02:13', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:13', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('43', '1', '8', '135', '1', 'support', '', '0', '一级分类列表', '', '', '1', '6', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:11:20', 'closed', '2017-02-12 22:02:06', 'yao', '2017-02-12 22:02:06', 'yao', '2017-02-12', 'yao', '2017-02-12 22:02:06', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('44', '1', '8', '135', '1', 'support', '', '0', '子分类列表', '', '', '1', '6', 'closed', '', 'released', '', 'yao', '2017-02-12 21:11:43', 'closed', '2017-02-12 22:05:08', 'yao', '2017-02-12 22:05:08', 'yao', '2017-02-12', 'yao', '2017-02-12 22:05:08', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('45', '1', '8', '135', '1', 'support', '', '0', '面包屑分类导航及返回上一级列表', '', '', '1', '24', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:13:00', 'closed', '2017-02-12 22:01:59', 'yao', '2017-02-12 22:01:59', 'yao', '2017-02-12', 'yao', '2017-02-12 22:01:59', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('46', '1', '8', '135', '1', 'support', '', '0', '分类-添加', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:13:38', 'closed', '2017-02-12 22:01:51', 'yao', '2017-02-12 22:01:51', 'yao', '2017-02-12', 'yao', '2017-02-12 22:01:51', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('47', '1', '8', '135', '1', 'support', '', '0', '分类-编辑', '', '', '1', '8', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:14:01', 'closed', '2017-02-12 22:01:43', 'yao', '2017-02-12 22:01:43', 'yao', '2017-02-12', 'yao', '2017-02-12 22:01:43', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('48', '1', '8', '135', '1', 'support', '', '0', '分类-删除', '', '', '1', '6', 'closed', '', 'developed', '', 'yao', '2017-02-12 21:14:30', 'closed', '2017-02-12 22:01:34', 'yao', '2017-02-12 22:01:34', 'yao', '2017-02-12', 'yao', '2017-02-12 22:01:34', 'done', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('49', '1', '8', '132', '1', 'support', '', '0', '管理员和普通职员登录', '', '', '1', '36', 'draft', '', 'wait', '', 'yao', '2017-02-12 21:19:47', 'zhangxl', '2017-02-12 21:19:47', 'yao', '2017-02-12 21:20:05', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('50', '6', '41', '0', '3', 'support', '', '0', '开通钉钉对智慧信达的实名认证（费用情况：目前免费）', '', '', '1', '5', 'active', '', 'projected', '', 'yao', '2017-02-28 10:53:10', '', '0000-00-00 00:00:00', 'yao', '2017-02-28 10:58:10', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('51', '6', '28', '192', '3', 'operation', '', '0', '网站主体内容的硬件体系分类产品展示', '', '', '1', '8', 'active', '', 'projected', '', 'yao', '2017-02-28 10:57:21', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('52', '6', '28', '191', '3', 'support', '', '0', '网站展示关于我们页面的内容', '', '', '0', '0', 'active', '', 'projected', '', 'yao', '2017-02-28 11:01:04', 'yao', '2017-02-28 11:01:04', 'yao', '2017-02-28 11:16:21', 'yao', '2017-02-28', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('53', '6', '28', '190', '3', 'support', '', '0', '网站备案', '', '', '1', '64', 'active', '', 'projected', '', 'yao', '2017-02-28 11:11:47', 'yao', '2017-02-28 11:11:47', 'yao', '2017-02-28 11:16:10', 'yao', '2017-02-28', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');
INSERT INTO `zt_story` VALUES ('54', '6', '30', '0', '3', 'support', '', '0', '微信服务号进行实名认证，开通高级接口', '', '', '2', '3', 'active', '', 'projected', '', 'yao', '2017-02-28 11:14:53', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');

-- ----------------------------
-- Table structure for `zt_storyspec`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storyspec`;
CREATE TABLE `zt_storyspec` (
  `story` mediumint(9) NOT NULL,
  `version` smallint(6) NOT NULL,
  `title` varchar(90) NOT NULL,
  `spec` text NOT NULL,
  `verify` text NOT NULL,
  UNIQUE KEY `story` (`story`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_storyspec
-- ----------------------------
INSERT INTO `zt_storyspec` VALUES ('1', '1', 'asdadsa', 'zxcz', '');
INSERT INTO `zt_storyspec` VALUES ('2', '1', '首页-企业信息及宣传二维码', '', '');
INSERT INTO `zt_storyspec` VALUES ('3', '1', '首页-广告轮播图', '', '');
INSERT INTO `zt_storyspec` VALUES ('4', '1', '首页-联系方式', '', '');
INSERT INTO `zt_storyspec` VALUES ('5', '1', '导航-网站名称', '<p>1.显示企业网站的备案名称</p>\r\n<p>2.任何位置点击，都可以跳转到网站的首页</p>', '');
INSERT INTO `zt_storyspec` VALUES ('6', '1', '导航-产品检索', '', '');
INSERT INTO `zt_storyspec` VALUES ('7', '1', '模块菜单', '', '');
INSERT INTO `zt_storyspec` VALUES ('8', '1', '用户登录及注销', '', '');
INSERT INTO `zt_storyspec` VALUES ('9', '1', '首页-宣传二维码', '<p>1.前台写死不允许修改（要想替换就得修改代码）</p>\r\n<p>2.使用微信订阅号或服务号，便于对外宣传的二维码（不建议使用企业号或钉钉）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('10', '1', '首页-联系电话', '<p>1.首页展示联系电话</p>\r\n<p>2.电话号码由后台配置，管理员可以随时修改</p>\r\n<p>3.在手机端，点击电话可以直接拨号（用手机自己的电话费）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('11', '1', '首页-QQ号', '<p>1.展示企业联系用的QQ号码</p>\r\n<p>2.这个号码由后台配置</p>\r\n<p>3.在PC端点击QQ号码，本机登录的QQ可以自动建立与该QQ的聊天窗口（非好友关系为临时聊天窗口）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('12', '1', '首页-轮播广告', '<p>1.首页显示固定5张轮播广告（自动轮播，速度不可调整）</p>\r\n<p>2.图片和图片上的标题和文字由后台轮播广告模块设置</p>\r\n<p>3.点击广告图片，跳转到指定的URL页面（URL地址由后台轮播广告模块设置）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('13', '1', '首页-推荐产品和服务', '<p>1.首页显示热推的产品&amp;服务</p>\r\n<p>2.展示到首页的条件是产品必须是【发布】状态且标记为【推荐】，否则不可以再首页显示</p>\r\n<p>3.点击产品或服务的图片，进入产品详情页</p>\r\n<p>4.点击右上角 的【更多】，进入产品列表页</p>', '');
INSERT INTO `zt_storyspec` VALUES ('14', '1', '首页-成功案例', '<p>1.展示企业比较成功的产品或服务案例</p>\r\n<p>2.展示条件：</p>\r\n<p>&nbsp;1）订单必须是【完成】</p>\r\n<p>&nbsp;2）订单必须标记为【首页推荐】</p>\r\n<p>3.展示的形式为散列照片墙的形式（以最新更新时间为准，展列最新的10条，少于10条全部显示）</p>\r\n<p>4.点击照片，旋转正常且放大，移开则恢复原状</p>', '');
INSERT INTO `zt_storyspec` VALUES ('15', '1', '关于我们-企业形象照片', '<p>1.照片通过后台设置上传</p>\r\n<p>2.可以展示门脸招牌，亦可以展示电子地图信息</p>\r\n<p><br /></p>', '');
INSERT INTO `zt_storyspec` VALUES ('16', '1', '关于我们-主营业务', '<p>1.信息由需求管理平台在网站建设之初录入，不允许随意修改</p>\r\n<p>2.展示企业的主要业务和产品服务</p>', '');
INSERT INTO `zt_storyspec` VALUES ('17', '1', '关于我们-企业宗旨', '<p>1.在代码中写死，不允许随意更改</p>\r\n<p>2.展示企业的宗旨</p>', '');
INSERT INTO `zt_storyspec` VALUES ('18', '1', '关于我们-联系方式', '<p>1.在后台配置信息录入，管理员可以维护</p>\r\n<p>2.展示网站名称（已备案，不可改）</p>\r\n<p>3.热线电话（手机端可以直播）</p>\r\n<p>4.手机（手机端可以直播）</p>\r\n<p>5.联系QQ（PC端可以快速建立聊天窗口）</p>\r\n<p>6.公司地址</p>\r\n<p>7.网站网址（点击后，在新页打开网站首页，已备案，不可以改）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('19', '1', '关于我们-付款二维码', '<p>1.微信或支付宝的付款二维码（写死，不可改）</p>\r\n<p>2.主人信息的核对（写死，不可改）</p>\r\n<p>3.提示输入规范的备注信息（提示语后台配置）</p>\r\n<p>4.方便客户在不到店的情况下交付订金和支付尾款</p>', '');
INSERT INTO `zt_storyspec` VALUES ('20', '1', '分类列表-产品分类', '<p>1.展示后台标记为“正常”状态的分类</p>\r\n<p>2.按后台“sn”字段的数值大小正序排列</p>\r\n<p>3.点击分类，展示该分类下【发布】状态的产品列表</p>', '');
INSERT INTO `zt_storyspec` VALUES ('21', '1', '在钉钉官网申请注册秀丽广告的企业号', '', '');
INSERT INTO `zt_storyspec` VALUES ('22', '1', '对秀丽广告的钉钉企业进行实名认证，用于开通更多的接口和服务用于内部和客户沟通', '由于个体工商户只能开通中级认证，需要手写的在职证明加盖公司公章', '');
INSERT INTO `zt_storyspec` VALUES ('7', '2', '模块菜单（主营业务、诚聘人才、关于我们）', '前期先完成（主营业务、诚聘人才、关于我们）三个模块的菜单', '');
INSERT INTO `zt_storyspec` VALUES ('23', '1', '诚聘人才', '', '');
INSERT INTO `zt_storyspec` VALUES ('24', '1', '产品分类列表', '选择分类展示对应分类下的产品&amp;服务', '');
INSERT INTO `zt_storyspec` VALUES ('25', '1', '产品&amp;服务-新增', '秀丽广告，需要加入制作周期字段', '');
INSERT INTO `zt_storyspec` VALUES ('26', '1', '产品&amp;服务-编辑', '秀丽广告需要加入制作周期字段', '');
INSERT INTO `zt_storyspec` VALUES ('27', '1', '上传&amp;替换蹄片，要求尺寸为300X200', '', '');
INSERT INTO `zt_storyspec` VALUES ('28', '1', '发布&amp;下线', '<p>按钮显示为【发布】，其状态为“正常”或“<span>下线</span>”状态；在前台的任何位置不显示该产品&amp;服务</p>\n<p>按钮显示为【下线】，其状态为“发布”状态，前台只显示该状态下的产品&amp;服务</p>', '');
INSERT INTO `zt_storyspec` VALUES ('29', '1', '推荐&amp;非推荐', '<p>显示【推荐】的，在首页推荐区展示</p>\n<p>显示【非推荐】的，不在首页推荐区展示</p>', '');
INSERT INTO `zt_storyspec` VALUES ('30', '1', '轮播图列表', '', '');
INSERT INTO `zt_storyspec` VALUES ('31', '1', '广告信息-编辑', '', '');
INSERT INTO `zt_storyspec` VALUES ('32', '1', '替换广告图，限定尺寸为900X500', '', '');
INSERT INTO `zt_storyspec` VALUES ('33', '1', '职位-列表', '', '');
INSERT INTO `zt_storyspec` VALUES ('34', '1', '职位-添加', '', '');
INSERT INTO `zt_storyspec` VALUES ('35', '1', '职位-编辑', '', '');
INSERT INTO `zt_storyspec` VALUES ('36', '1', '职位-发布&amp;下线', '', '');
INSERT INTO `zt_storyspec` VALUES ('37', '1', '职位-推荐悬赏', '', '');
INSERT INTO `zt_storyspec` VALUES ('38', '1', '形象图替换', '', '');
INSERT INTO `zt_storyspec` VALUES ('39', '1', '宣传二维码展示', '', '');
INSERT INTO `zt_storyspec` VALUES ('40', '1', '网站基础信息配置', '<p>1.网站（展示）</p>\n<p>2.版本（展示）</p>\n<p>3.网址（展示）</p>\n<p>4.备案号（展示）</p>\n<p>5.关键字（展示）</p>\n<p>6.手机（可配置）</p>\n<p>7.电话<span>（可配置）</span></p>\n<p>8.QQ<span>（可配置）</span></p>\n<p>9.地址<span>（可配置）</span></p>', '');
INSERT INTO `zt_storyspec` VALUES ('41', '1', '产品&amp;服务-查询', '<p>关键字模糊查询，支持</p>\n<p>1.编号</p>\n<p>2.名称</p>\n<p>3.描述</p>\n<p>4.优惠价</p>\n<p>5.规格</p>\n<p>6.制作周期</p>', '');
INSERT INTO `zt_storyspec` VALUES ('42', '1', '禅道管理工具的入口，用网站管理员的账号和密码登录', '网站管理员和禅道用户是用的同一用户体系，无论从哪个系统修改了密码，两个系统以后都用新密码登陆', '');
INSERT INTO `zt_storyspec` VALUES ('43', '1', '一级分类列表', '', '');
INSERT INTO `zt_storyspec` VALUES ('44', '1', '子分类列表', '', '');
INSERT INTO `zt_storyspec` VALUES ('45', '1', '面包屑分类导航及返回上一级列表', '', '');
INSERT INTO `zt_storyspec` VALUES ('46', '1', '分类-添加', '', '');
INSERT INTO `zt_storyspec` VALUES ('47', '1', '分类-编辑', '', '');
INSERT INTO `zt_storyspec` VALUES ('48', '1', '分类-删除', '', '');
INSERT INTO `zt_storyspec` VALUES ('49', '1', '管理员和普通职员登录', '<p>管理员登录，默认进网站配置信息页，有网站配置权限；无论走到后台的任何界面，点击做上角的XXXX网站后台，可返回到网站配置信息页面</p>\n<p>普通职员登录，默认进入网站信息页，无网站配置权限；<span>无论走到后台的任何界面，点击做上角的XXXX网站后台，可返回到网站信息页面</span></p>', '');
INSERT INTO `zt_storyspec` VALUES ('50', '1', '开通钉钉对智慧信达的实名认证（费用情况：目前免费）', '<p>1.需要打印出管理员刘燕军的在职证明，并签字加盖公司公章后以备用</p>\n<p>2.需要营业执照副本照片和在职证明在钉钉官网认证</p>', '实名认证完成，开通钉钉的高级服务端口');
INSERT INTO `zt_storyspec` VALUES ('51', '1', '网站主体内容的硬件体系分类产品展示', '<p>1.整理硬件产品的分类及规格列表，最好附有产品的图片</p>\n<p>2.设计产品的展示样式</p>\n<p>3.对代码进行调优到达最终的实现效果</p>', '');
INSERT INTO `zt_storyspec` VALUES ('52', '1', '网站展示关于我们页面的内容', '<p>1.整理公司简介和企业宗旨</p>\n<p>2.设计页面布局，除简介，宗旨外还要有联系方式，和各类终端的入口（如微站二维码，友情链接，在线QQ等）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('53', '1', '网站备案', '<p>1.申请域名</p>\n<p>2.租赁服务器</p>\n<p>3.准备所用材料（1.营业执照副本，2.法人代表的身份证正反两面照片，3法人代表手机号，4.运营者身份证正反两面照片，5.法人对运营者的委托书加盖公司公章，6.运营者在专用幕布前的照片，7备案登记表）</p>', '');
INSERT INTO `zt_storyspec` VALUES ('54', '1', '微信服务号进行实名认证，开通高级接口', '<img src=\"data/upload/1/201702/2811143604770qpv.png\" alt=\"\" />', '');

-- ----------------------------
-- Table structure for `zt_storystage`
-- ----------------------------
DROP TABLE IF EXISTS `zt_storystage`;
CREATE TABLE `zt_storystage` (
  `story` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `stage` varchar(50) NOT NULL,
  KEY `story` (`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_storystage
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_task`
-- ----------------------------
DROP TABLE IF EXISTS `zt_task`;
CREATE TABLE `zt_task` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estimate` float unsigned NOT NULL,
  `consumed` float unsigned NOT NULL,
  `left` float unsigned NOT NULL,
  `deadline` date NOT NULL,
  `status` enum('wait','doing','done','pause','cancel','closed') NOT NULL DEFAULT 'wait',
  `color` char(7) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL,
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `estStarted` date NOT NULL,
  `realStarted` date NOT NULL,
  `finishedBy` varchar(30) NOT NULL,
  `finishedDate` datetime NOT NULL,
  `canceledBy` varchar(30) NOT NULL,
  `canceledDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL,
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task` (`project`,`module`,`story`,`assignedTo`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_task
-- ----------------------------
INSERT INTO `zt_task` VALUES ('54', '14', '129', '16', '1', '0', '关于我们-主营业务', 'devel', '0', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:07:25', 'closed', '2017-02-12 17:32:03', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:31:58', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:32:03', 'done', 'yao', '2017-02-12 17:32:03', '0');
INSERT INTO `zt_task` VALUES ('55', '14', '129', '18', '1', '0', '关于我们-联系方式', 'devel', '0', '4', '4', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:07:59', 'closed', '2017-02-12 17:31:26', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:31:20', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:31:26', 'done', 'yao', '2017-02-12 17:31:26', '0');
INSERT INTO `zt_task` VALUES ('56', '14', '0', '21', '1', '0', '在钉钉官网申请注册秀丽广告的企业号', 'affair', '0', '5', '5', '0', '2017-02-11', 'closed', '', '', '', 'yao', '2017-02-12 17:08:57', 'closed', '2017-02-12 17:31:04', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:30:58', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:31:04', 'done', 'yao', '2017-02-12 17:31:04', '0');
INSERT INTO `zt_task` VALUES ('57', '14', '0', '22', '1', '0', '对秀丽广告的钉钉企业进行实名认证，用于开通更多的接口和服务用于内部和客户沟通', 'affair', '0', '1', '0', '1', '2017-02-19', 'wait', '', ',zhangxl', '<img src=\"data/upload/1/201702/1217111906003nd3.png\" alt=\"\" />', 'yao', '2017-02-12 17:12:03', 'zhangxl', '2017-02-12 17:12:03', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('58', '14', '171', '5', '1', '0', '导航-网站名称', 'devel', '0', '1', '1', '0', '2017-02-12', 'closed', '', '', '网站名称从禅道数据库中取', 'yao', '2017-02-12 17:12:50', 'closed', '2017-02-12 17:30:43', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:30:37', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:30:43', 'done', 'yao', '2017-02-12 17:30:43', '0');
INSERT INTO `zt_task` VALUES ('59', '14', '171', '8', '1', '0', '用户登录及注销', 'devel', '0', '8', '8', '0', '2017-02-12', 'closed', '', '', '网站前台的登陆注销基本功能', 'yao', '2017-02-12 17:13:30', 'closed', '2017-02-12 17:30:24', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:30:18', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:30:24', 'done', 'yao', '2017-02-12 17:30:24', '0');
INSERT INTO `zt_task` VALUES ('60', '14', '171', '7', '2', '0', '模块菜单（主营业务、诚聘人才、关于我们）', 'devel', '0', '4', '4', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:15:20', 'closed', '2017-02-12 17:29:11', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:29:06', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:29:11', 'done', 'yao', '2017-02-12 17:29:11', '0');
INSERT INTO `zt_task` VALUES ('61', '14', '166', '9', '1', '0', '首页-宣传二维码', 'devel', '0', '2', '1', '0', '2017-02-12', 'closed', '', '', '由于还没有注册秀丽广告的公众服务号，暂时先用我的那个“个人订阅号的二维码”等有企业服务号二维码后再行替换', 'yao', '2017-02-12 17:17:10', 'closed', '2017-02-28 12:07:09', '0000-00-00', '2017-02-12', 'yao', '2017-02-28 12:07:04', '', '0000-00-00 00:00:00', 'yao', '2017-02-28 12:07:09', 'done', 'yao', '2017-02-28 12:07:09', '0');
INSERT INTO `zt_task` VALUES ('62', '14', '167', '10', '1', '0', '首页-联系电话', 'devel', '0', '1', '1', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:17:32', 'closed', '2017-02-12 17:28:51', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:27:07', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:28:51', 'done', 'yao', '2017-02-12 17:28:51', '0');
INSERT INTO `zt_task` VALUES ('63', '14', '168', '11', '1', '0', '首页-QQ号', 'devel', '0', '8', '8', '0', '2017-02-12', 'closed', '', '', '由于QQ号在手机上点击不能直接使用，所以在手机上打开页面上，QQ联系图标将会被隐藏', 'yao', '2017-02-12 17:18:43', 'closed', '2017-02-12 17:26:52', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:26:47', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:26:52', 'done', 'yao', '2017-02-12 17:26:52', '0');
INSERT INTO `zt_task` VALUES ('64', '14', '169', '12', '1', '0', '首页-轮播广告', 'devel', '0', '32', '32', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:19:10', 'closed', '2017-02-12 17:26:33', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:26:27', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:26:33', 'done', 'yao', '2017-02-12 17:26:33', '0');
INSERT INTO `zt_task` VALUES ('65', '14', '170', '13', '1', '0', '首页-推荐产品和服务', 'devel', '0', '12', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:19:30', 'closed', '2017-02-12 17:24:55', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:24:49', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:24:55', 'done', 'yao', '2017-02-12 17:24:55', '0');
INSERT INTO `zt_task` VALUES ('66', '14', '182', '14', '1', '0', '首页-成功案例', 'devel', '0', '24', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:19:54', 'closed', '2017-02-28 12:06:50', '0000-00-00', '2017-02-28', 'yao', '2017-02-28 12:06:33', '', '0000-00-00 00:00:00', 'yao', '2017-02-28 12:06:50', 'done', 'yao', '2017-02-28 12:06:50', '0');
INSERT INTO `zt_task` VALUES ('67', '14', '129', '15', '1', '0', '关于我们-企业形象照片', 'devel', '0', '4', '4', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:20:15', 'closed', '2017-02-12 17:24:15', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:24:02', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:24:15', 'done', 'yao', '2017-02-12 17:24:15', '0');
INSERT INTO `zt_task` VALUES ('68', '14', '129', '19', '1', '0', '关于我们-付款二维码', 'devel', '0', '0', '2', '1', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:21:00', 'closed', '2017-02-28 12:07:53', '0000-00-00', '2017-02-12', '', '0000-00-00 00:00:00', 'yao', '2017-02-28 12:07:48', 'yao', '2017-02-28 12:07:53', 'cancel', 'yao', '2017-02-28 12:07:53', '0');
INSERT INTO `zt_task` VALUES ('69', '14', '184', '20', '1', '0', '分类列表-产品分类', 'devel', '0', '16', '17', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 17:21:22', 'closed', '2017-02-12 17:22:51', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 17:22:43', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 17:22:51', 'done', 'yao', '2017-02-12 17:22:51', '0');
INSERT INTO `zt_task` VALUES ('70', '14', '137', '24', '1', '0', '产品分类列表', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:31:40', 'closed', '2017-02-12 22:00:53', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 22:00:48', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 22:00:53', 'done', 'yao', '2017-02-12 22:00:53', '0');
INSERT INTO `zt_task` VALUES ('71', '14', '137', '25', '1', '0', '产品&amp;服务-新增', 'devel', '1', '12', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:32:18', 'closed', '2017-02-15 21:16:40', '0000-00-00', '2017-02-12', 'yao', '2017-02-15 21:16:15', '', '0000-00-00 00:00:00', 'yao', '2017-02-15 21:16:40', 'done', 'yao', '2017-02-15 21:16:40', '0');
INSERT INTO `zt_task` VALUES ('72', '14', '137', '26', '1', '0', '产品&amp;服务-编辑', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:32:45', 'closed', '2017-02-15 21:16:01', '0000-00-00', '2017-02-12', 'yao', '2017-02-15 21:15:50', '', '0000-00-00 00:00:00', 'yao', '2017-02-15 21:16:01', 'done', 'yao', '2017-02-15 21:16:01', '0');
INSERT INTO `zt_task` VALUES ('73', '14', '137', '27', '1', '0', '上传&amp;替换图片，要求尺寸为300X200', 'devel', '3', '24', '24', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:33:05', 'closed', '2017-02-12 21:59:10', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:59:03', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:59:10', 'done', 'yao', '2017-02-12 21:59:10', '0');
INSERT INTO `zt_task` VALUES ('74', '14', '137', '28', '1', '0', '发布&amp;下线', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:33:23', 'closed', '2017-02-12 21:58:33', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:58:14', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:58:33', 'done', 'yao', '2017-02-12 21:58:33', '0');
INSERT INTO `zt_task` VALUES ('75', '14', '137', '29', '1', '0', '推荐&amp;非推荐', 'devel', '1', '12', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:33:47', 'closed', '2017-02-12 21:57:36', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:57:26', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:57:36', 'done', 'yao', '2017-02-12 21:57:36', '0');
INSERT INTO `zt_task` VALUES ('76', '14', '139', '30', '1', '0', '轮播图列表', 'devel', '1', '16', '16', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:34:12', 'closed', '2017-02-12 21:57:05', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:57:00', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:57:05', 'done', 'yao', '2017-02-12 21:57:05', '0');
INSERT INTO `zt_task` VALUES ('77', '14', '139', '31', '1', '0', '广告信息-编辑', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:34:30', 'closed', '2017-02-12 21:55:48', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:55:42', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:55:48', 'done', 'yao', '2017-02-12 21:55:48', '0');
INSERT INTO `zt_task` VALUES ('78', '14', '139', '32', '1', '0', '替换广告图，限定尺寸为900X500', 'devel', '1', '12', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:35:02', 'closed', '2017-02-12 21:55:00', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:54:54', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:55:00', 'done', 'yao', '2017-02-12 21:55:00', '0');
INSERT INTO `zt_task` VALUES ('79', '14', '196', '33', '1', '0', '职位-列表', 'devel', '1', '8', '6', '8', '2017-02-12', 'doing', '', '', '', 'yao', '2017-02-12 21:35:40', 'yao', '2017-02-12 21:35:41', '0000-00-00', '2017-02-12', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-02-12 21:53:49', '0');
INSERT INTO `zt_task` VALUES ('80', '14', '196', '34', '1', '0', '职位-添加', 'devel', '1', '8', '4', '8', '2017-02-12', 'doing', '', '', '', 'yao', '2017-02-12 21:36:14', 'yao', '2017-02-12 21:36:14', '0000-00-00', '2017-02-12', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-02-12 21:53:40', '0');
INSERT INTO `zt_task` VALUES ('81', '14', '196', '35', '1', '0', '职位-编辑', 'devel', '1', '8', '3', '8', '2017-02-12', 'doing', '', '', '', 'yao', '2017-02-12 21:36:34', 'yao', '2017-02-12 21:36:34', '0000-00-00', '2017-02-12', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'yao', '2017-02-12 21:53:31', '0');
INSERT INTO `zt_task` VALUES ('82', '14', '196', '36', '1', '0', '职位-发布&amp;下线', 'devel', '1', '6', '0', '6', '2017-02-12', 'wait', '', '', '', 'yao', '2017-02-12 21:37:08', 'yao', '2017-02-12 21:37:08', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('83', '14', '196', '37', '1', '0', '职位-推荐悬赏', 'devel', '1', '36', '12', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:37:30', 'closed', '2017-02-28 12:06:45', '0000-00-00', '2017-02-28', 'yao', '2017-02-28 12:05:58', '', '0000-00-00 00:00:00', 'yao', '2017-02-28 12:06:45', 'done', 'yao', '2017-02-28 12:06:45', '0');
INSERT INTO `zt_task` VALUES ('84', '14', '133', '38', '1', '0', '形象图替换', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:38:21', 'closed', '2017-02-12 21:53:22', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:53:15', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:53:22', 'done', 'yao', '2017-02-12 21:53:22', '0');
INSERT INTO `zt_task` VALUES ('85', '14', '133', '39', '1', '0', '宣传二维码展示', 'devel', '1', '2', '2', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:38:51', 'closed', '2017-02-12 21:52:50', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:52:40', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:52:50', 'done', 'yao', '2017-02-12 21:52:50', '0');
INSERT INTO `zt_task` VALUES ('86', '14', '133', '40', '1', '0', '网站基础信息配置', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:39:22', 'closed', '2017-02-12 21:52:23', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:52:17', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:52:23', 'done', 'yao', '2017-02-12 21:52:23', '0');
INSERT INTO `zt_task` VALUES ('87', '14', '137', '41', '1', '0', '产品&amp;服务-查询', 'devel', '1', '32', '32', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:39:43', 'closed', '2017-02-12 21:51:52', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:51:46', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:51:52', 'done', 'yao', '2017-02-12 21:51:52', '0');
INSERT INTO `zt_task` VALUES ('88', '14', '134', '42', '1', '0', '禅道管理工具的入口，用网站管理员的账号和密码登录', 'devel', '1', '72', '72', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:40:07', 'closed', '2017-02-12 21:50:34', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:50:28', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:50:34', 'done', 'yao', '2017-02-12 21:50:34', '0');
INSERT INTO `zt_task` VALUES ('89', '14', '135', '43', '1', '0', '一级分类列表', 'devel', '1', '6', '6', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:40:27', 'closed', '2017-02-12 21:48:52', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:48:47', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:48:52', 'done', 'yao', '2017-02-12 21:48:52', '0');
INSERT INTO `zt_task` VALUES ('90', '14', '135', '44', '1', '0', '子分类列表', 'test', '1', '6', '6', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:40:58', 'closed', '2017-02-12 21:48:11', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:48:05', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:48:11', 'done', 'yao', '2017-02-12 21:48:11', '0');
INSERT INTO `zt_task` VALUES ('91', '14', '135', '45', '1', '0', '面包屑分类导航及返回上一级列表', 'devel', '1', '24', '24', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:41:16', 'closed', '2017-02-12 21:45:17', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:45:07', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:45:17', 'done', 'yao', '2017-02-12 21:45:17', '0');
INSERT INTO `zt_task` VALUES ('92', '14', '135', '46', '1', '0', '分类-添加', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:41:39', 'closed', '2017-02-12 21:44:18', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:44:13', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:44:18', 'done', 'yao', '2017-02-12 21:44:18', '0');
INSERT INTO `zt_task` VALUES ('93', '14', '135', '47', '1', '0', '分类-编辑', 'devel', '1', '8', '8', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:42:01', 'closed', '2017-02-12 21:43:48', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:43:30', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:43:48', 'done', 'yao', '2017-02-12 21:43:48', '0');
INSERT INTO `zt_task` VALUES ('94', '14', '135', '48', '1', '0', '分类-删除', 'devel', '1', '6', '6', '0', '2017-02-12', 'closed', '', '', '', 'yao', '2017-02-12 21:42:19', 'closed', '2017-02-12 21:43:09', '0000-00-00', '2017-02-12', 'yao', '2017-02-12 21:43:03', '', '0000-00-00 00:00:00', 'yao', '2017-02-12 21:43:09', 'done', 'yao', '2017-02-12 21:43:09', '0');
INSERT INTO `zt_task` VALUES ('95', '18', '191', '52', '1', '0', '整理网站展示关于我们页面的内容（智慧信达的简介和服务宗旨）', 'affair', '1', '4', '0', '4', '2017-03-02', 'wait', '', '', '', 'yao', '2017-02-28 11:18:58', 'liuyj', '2017-02-28 11:18:58', '2017-02-28', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('96', '18', '191', '52', '1', '0', '网站展示关于我们页面的内容', 'devel', '1', '2', '0', '2', '2017-03-04', 'wait', '', '', '将刘燕军整理的内容初步放到智慧信达官网的关于我们页面', 'yao', '2017-02-28 11:20:11', 'yao', '2017-02-28 11:20:12', '2017-03-02', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('97', '18', '0', '50', '1', '0', '打印在职证明模板，相关位置签名（刘燕军的名字哈），盖上公司公章后拍成照片备用', 'affair', '1', '2', '0', '2', '2017-03-01', 'wait', '', '', '', 'yao', '2017-02-28 11:22:25', 'liuyj', '2017-02-28 11:22:25', '2017-02-28', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `zt_task` VALUES ('98', '18', '0', '50', '1', '0', '开通钉钉对智慧信达的实名认证（费用情况：目前免费）', 'affair', '1', '1', '0', '1', '2017-03-04', 'wait', '', '', '用公司的营业执照副本和管理员的在职证明对智慧信达的钉钉账号进行高级的实名认证', 'yao', '2017-02-28 11:24:00', 'yao', '2017-02-28 11:24:00', '0000-00-00', '0000-00-00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `zt_taskestimate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_taskestimate`;
CREATE TABLE `zt_taskestimate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `left` float unsigned NOT NULL DEFAULT '0',
  `consumed` float unsigned NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task` (`task`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_taskestimate
-- ----------------------------
INSERT INTO `zt_taskestimate` VALUES ('35', '69', '2017-02-12', '16', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('36', '69', '2017-02-01', '14', '2', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('37', '69', '2017-02-04', '10', '5', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('38', '69', '2017-02-16', '6', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('39', '69', '2017-02-12', '0', '6', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('40', '68', '2017-02-12', '1', '2', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('41', '67', '2017-02-12', '4', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('42', '67', '2017-02-07', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('43', '65', '2017-02-12', '12', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('44', '65', '2017-02-08', '0', '12', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('45', '63', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('46', '64', '2017-02-12', '32', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('47', '62', '2017-02-12', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('48', '61', '2017-02-12', '2', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('49', '60', '2017-02-12', '4', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('50', '59', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('51', '58', '2017-02-12', '1', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('52', '56', '2017-02-12', '5', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('53', '55', '2017-02-12', '4', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('54', '54', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('55', '64', '2017-01-31', '0', '32', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('56', '63', '2017-02-01', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('57', '62', '2017-02-10', '0', '1', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('58', '61', '2017-02-09', '1', '1', 'yao', '秀丽服务号尚未注册');
INSERT INTO `zt_taskestimate` VALUES ('59', '60', '2017-02-10', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('60', '59', '2017-02-11', '0', '8', 'yao', '所有网站的用户共用一套用户名密码，只要在一个网站注册，秀丽广告旗下的所有网站都可以登陆');
INSERT INTO `zt_taskestimate` VALUES ('61', '58', '2017-02-11', '0', '1', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('62', '56', '2017-02-11', '0', '5', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('63', '55', '2017-02-12', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('64', '54', '2017-02-12', '0', '8', 'yao', '从禅道产品备注中取值');
INSERT INTO `zt_taskestimate` VALUES ('65', '94', '2017-02-12', '6', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('66', '94', '2017-02-12', '0', '6', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('67', '93', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('68', '93', '2017-02-11', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('69', '92', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('70', '92', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('71', '91', '2017-02-12', '24', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('72', '91', '2017-02-09', '16', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('73', '91', '2017-02-10', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('74', '91', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('75', '90', '2017-02-12', '6', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('76', '90', '2017-02-12', '0', '6', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('77', '89', '2017-02-12', '6', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('78', '89', '2017-02-12', '0', '6', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('79', '88', '2017-02-12', '72', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('80', '88', '2017-02-01', '64', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('81', '88', '2017-02-02', '56', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('82', '88', '2017-02-03', '48', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('83', '88', '2017-02-07', '40', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('84', '88', '2017-02-08', '32', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('85', '88', '2017-02-09', '24', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('86', '88', '2017-02-10', '16', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('87', '88', '2017-02-11', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('88', '88', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('89', '87', '2017-02-12', '32', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('90', '87', '2017-02-08', '24', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('91', '87', '2017-02-09', '16', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('92', '87', '2017-02-11', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('93', '87', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('94', '86', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('95', '86', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('96', '85', '2017-02-12', '2', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('97', '85', '2017-02-12', '0', '2', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('98', '84', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('99', '84', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('100', '81', '2017-02-12', '8', '3', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('101', '80', '2017-02-12', '8', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('102', '79', '2017-02-12', '8', '6', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('103', '78', '2017-02-12', '0', '12', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('107', '77', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('106', '77', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('108', '76', '2017-02-12', '16', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('109', '75', '2017-02-12', '12', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('110', '74', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('111', '73', '2017-02-12', '24', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('112', '72', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('113', '71', '2017-02-12', '12', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('114', '70', '2017-02-12', '8', '0', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('115', '76', '2017-02-11', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('116', '76', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('117', '75', '2017-02-11', '8', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('118', '75', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('119', '74', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('120', '73', '2017-02-10', '16', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('121', '73', '2017-02-11', '8', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('122', '73', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('123', '72', '2017-02-12', '2', '6', 'yao', '需要添加制作周期字段');
INSERT INTO `zt_taskestimate` VALUES ('124', '71', '2017-02-12', '4', '8', 'yao', '需要添加制作周期字段');
INSERT INTO `zt_taskestimate` VALUES ('125', '70', '2017-02-12', '0', '8', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('126', '72', '2017-02-15', '0', '2', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('127', '71', '2017-02-15', '0', '4', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('128', '83', '2017-02-28', '0', '12', 'yao', '');
INSERT INTO `zt_taskestimate` VALUES ('129', '66', '2017-02-28', '0', '12', 'yao', '');

-- ----------------------------
-- Table structure for `zt_tc_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_cate`;
CREATE TABLE `zt_tc_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_cate
-- ----------------------------
INSERT INTO `zt_tc_cate` VALUES ('1', '1', '0', '学前少儿', '正常', '2', '腰立辉', '2017-02-09 21:51:43');
INSERT INTO `zt_tc_cate` VALUES ('2', '2', '0', '小学课程', '正常', '2', '腰立辉', '2017-02-09 21:51:44');
INSERT INTO `zt_tc_cate` VALUES ('3', '3', '0', '中学课程', '正常', '2', '腰立辉', '2017-02-09 21:51:49');
INSERT INTO `zt_tc_cate` VALUES ('4', '4', '0', '作业托管', '正常', '2', '腰立辉', '2017-02-09 21:51:51');
INSERT INTO `zt_tc_cate` VALUES ('5', '5', '0', '兴趣拓展', '正常', '2', '腰立辉', '2017-02-09 21:51:53');
INSERT INTO `zt_tc_cate` VALUES ('6', '1', '2', '一年级', '正常', '2', '腰立辉', '2017-02-09 21:52:29');
INSERT INTO `zt_tc_cate` VALUES ('7', '2', '2', '二年级', '正常', '2', '腰立辉', '2017-02-09 21:52:31');
INSERT INTO `zt_tc_cate` VALUES ('8', '3', '2', '三年级', '正常', '2', '腰立辉', '2017-02-09 21:52:32');
INSERT INTO `zt_tc_cate` VALUES ('9', '4', '2', '四年级', '正常', '2', '腰立辉', '2017-02-09 21:52:35');
INSERT INTO `zt_tc_cate` VALUES ('10', '5', '2', '五年级', '正常', '2', '腰立辉', '2017-02-09 21:52:36');
INSERT INTO `zt_tc_cate` VALUES ('11', '6', '2', '六年级', '正常', '2', '腰立辉', '2017-02-09 21:52:39');
INSERT INTO `zt_tc_cate` VALUES ('12', '1', '3', '七年级(初中)', '正常', '2', '腰立辉', '2017-02-09 21:52:41');
INSERT INTO `zt_tc_cate` VALUES ('13', '2', '3', '八年级(初中)', '正常', '2', '腰立辉', '2017-02-09 21:52:43');
INSERT INTO `zt_tc_cate` VALUES ('14', '3', '3', '九年级(初中)', '正常', '2', '腰立辉', '2017-02-09 21:52:44');
INSERT INTO `zt_tc_cate` VALUES ('15', '4', '3', '高一', '正常', '2', '腰立辉', '2017-02-09 21:52:46');
INSERT INTO `zt_tc_cate` VALUES ('16', '5', '3', '高二', '正常', '2', '腰立辉', '2017-02-09 21:52:47');
INSERT INTO `zt_tc_cate` VALUES ('17', '6', '3', '高三', '正常', '2', '腰立辉', '2017-02-09 21:52:55');

-- ----------------------------
-- Table structure for `zt_tc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_customer`;
CREATE TABLE `zt_tc_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tpid` smallint(6) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `coursetype` varchar(5) DEFAULT NULL,
  `path` varchar(200) DEFAULT '/',
  `img` varchar(32) DEFAULT 'head.png',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerid` (`tpid`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_customer
-- ----------------------------
INSERT INTO `zt_tc_customer` VALUES ('1', '3', '老师', '1', '发布', '中学课程', '/Customer/2016-12-18/', '585693e5ec634.png', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2017-03-22 10:18:18');
INSERT INTO `zt_tc_customer` VALUES ('2', '5', '学生', '0', '正常', '中学课程', '/', 'head.png', '初一数学', '一对二', '梁小伟', '腰立辉', '1479302465', '2017-03-22 12:07:05');
INSERT INTO `zt_tc_customer` VALUES ('3', '4', '老师', '1', '发布', '小学课程', '/Customer/2016-12-18/', '58569232eda33.jpg', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2017-03-22 10:18:24');
INSERT INTO `zt_tc_customer` VALUES ('4', '1', '老师', '1', '正常', '兴趣拓展', '/', 'head.png', '计算机', null, '腰立辉', '腰立辉', '1478415695', '2017-03-22 15:59:38');
INSERT INTO `zt_tc_customer` VALUES ('6', '6', '学生', '0', '正常', '小学课程', '/', 'head.png', '111', null, '腰立辉', '腰立辉', '1490169479', '2017-03-22 15:57:59');

-- ----------------------------
-- Table structure for `zt_tc_date`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_date`;
CREATE TABLE `zt_tc_date` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_date
-- ----------------------------
INSERT INTO `zt_tc_date` VALUES ('53', '2016-12-02', '星期五', '1', '08:00-10:00', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('54', '2016-12-02', '星期五', '2', '10:10-12:10', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('55', '2016-12-02', '星期五', '3', '13:30-15:30', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('56', '2016-12-02', '星期五', '4', '15:40-17:40', '2016-12-02 15:07:17');
INSERT INTO `zt_tc_date` VALUES ('57', '2016-12-02', '星期五', '5', '18:00-20:00', '2016-12-02 15:07:17');

-- ----------------------------
-- Table structure for `zt_tc_plan`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_plan`;
CREATE TABLE `zt_tc_plan` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dateid` smallint(6) NOT NULL,
  `skdate` date DEFAULT NULL,
  `skweek` varchar(6) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tc_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_prodservice`;
CREATE TABLE `zt_tc_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `sn` int(2) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `pid` smallint(6) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_prodservice
-- ----------------------------
INSERT INTO `zt_tc_prodservice` VALUES ('1', '', '1', '三字经', '0', '1', '', '0', null, '发布', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959089be6d8.png', '腰立辉', '2017-03-22 17:36:39');
INSERT INTO `zt_tc_prodservice` VALUES ('2', '', '2', '百家姓', '0', '1', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '589590afe4ca8.png', '腰立辉', '2017-03-22 17:36:40');
INSERT INTO `zt_tc_prodservice` VALUES ('3', '', '3', '唐诗三百首', '0', '1', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '589593d9817f8.png', '腰立辉', '2017-03-22 17:36:42');
INSERT INTO `zt_tc_prodservice` VALUES ('4', '', '1', '一年级语文', '2', '6', '', '0', null, '发布', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959d0805bb4.png', '腰立辉', '2017-03-22 17:37:07');
INSERT INTO `zt_tc_prodservice` VALUES ('5', '', '2', '一年级数学', '2', '6', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959e34c91bb.png', '腰立辉', '2017-03-22 17:37:08');
INSERT INTO `zt_tc_prodservice` VALUES ('6', '', '1', '围棋', '0', '5', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '5895974a8561e.png', '腰立辉', '2017-03-22 17:37:16');
INSERT INTO `zt_tc_prodservice` VALUES ('7', '', '1', '跆拳道', '0', '5', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '589597574125f.png', '腰立辉', '2017-03-22 17:37:17');
INSERT INTO `zt_tc_prodservice` VALUES ('8', '', '1', '书法国画', '0', '5', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '589597642648d.png', '腰立辉', '2017-03-22 17:37:29');
INSERT INTO `zt_tc_prodservice` VALUES ('9', '', '1', '九年级物理', '3', '14', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '5895a0e5c901d.png', '腰立辉', '2017-03-22 17:37:40');
INSERT INTO `zt_tc_prodservice` VALUES ('10', '', '2', '九年级化学', '3', '14', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '5895a0f74c3f3.png', '腰立辉', '2017-03-22 17:37:41');
INSERT INTO `zt_tc_prodservice` VALUES ('11', '', '3', '二年级语文', '2', '7', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959f3f5aeb9.png', '腰立辉', '2017-03-22 17:37:47');
INSERT INTO `zt_tc_prodservice` VALUES ('12', '', '4', '二年级数学', '2', '7', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959f489fa38.png', '腰立辉', '2017-03-22 17:37:48');
INSERT INTO `zt_tc_prodservice` VALUES ('13', '', '5', '三年级语文', '2', '8', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959f5ccdb2f.png', '腰立辉', '2017-03-22 17:37:51');
INSERT INTO `zt_tc_prodservice` VALUES ('14', '', '6', '三年级数学', '2', '8', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959f6712fd5.png', '腰立辉', '2017-03-22 17:37:51');
INSERT INTO `zt_tc_prodservice` VALUES ('15', '', '7', '三年级英语', '2', '8', '', '0', null, '正常', '0', '0', '0', '999', null, '1', null, '/Product/2017-02-04/', '58959f71368d1.png', '腰立辉', '2017-03-22 17:37:52');

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

-- ----------------------------
-- Table structure for `zt_tc_studentcla`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tc_studentcla`;
CREATE TABLE `zt_tc_studentcla` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `studentid` smallint(6) DEFAULT NULL,
  `student` varchar(11) DEFAULT NULL,
  `sphone` varchar(11) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `techclassid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) DEFAULT NULL,
  `tphone` varchar(11) DEFAULT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tc_studentcla
-- ----------------------------
INSERT INTO `zt_tc_studentcla` VALUES ('4', '5', '王五', '13426179579', '小学课程', '4', '腰立辉', '18801043607', '6', '小学英语', null, '腰立辉', '腰立辉', '1479043222', '2016-11-13 21:20:22');

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

-- ----------------------------
-- Table structure for `zt_team`
-- ----------------------------
DROP TABLE IF EXISTS `zt_team`;
CREATE TABLE `zt_team` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) unsigned NOT NULL,
  `hours` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`project`,`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_team
-- ----------------------------
INSERT INTO `zt_team` VALUES ('1', 'yaolh', '研发', '2017-01-08', '5', '7.0');
INSERT INTO `zt_team` VALUES ('1', 'jiaxn', '测试', '2017-01-08', '5', '7.0');
INSERT INTO `zt_team` VALUES ('8', 'yaolh', '研发', '2017-01-12', '13', '7.0');
INSERT INTO `zt_team` VALUES ('14', 'yao', '研发', '2017-01-26', '14', '7.0');
INSERT INTO `zt_team` VALUES ('14', 'zhangxl', '产品经理', '2017-01-26', '14', '7.0');
INSERT INTO `zt_team` VALUES ('14', 'yaojq', '项目经理', '2017-01-26', '14', '7.0');
INSERT INTO `zt_team` VALUES ('14', 'jiaxn', '测试', '2017-01-26', '14', '7.0');
INSERT INTO `zt_team` VALUES ('15', 'yao', '研发', '2017-02-06', '24', '7.0');
INSERT INTO `zt_team` VALUES ('15', 'zhangxl', '产品经理', '2017-02-06', '24', '7.0');
INSERT INTO `zt_team` VALUES ('15', 'jiaxn', '测试', '2017-02-06', '24', '7.0');
INSERT INTO `zt_team` VALUES ('15', 'yaojq', '项目经理', '2017-02-06', '24', '7.0');
INSERT INTO `zt_team` VALUES ('16', 'yao', '研发', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('16', 'jiaxn', '测试', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('16', 'jiaxy', '项目经理', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('16', 'wangxl', '产品经理', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('17', 'yao', '研发', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('17', 'jiaxn', '测试', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('17', 'jiaxy', '项目经理', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('17', 'wangxl', '产品经理', '2017-02-12', '12', '7.0');
INSERT INTO `zt_team` VALUES ('18', 'yao', '研发', '2017-02-15', '23', '7.0');
INSERT INTO `zt_team` VALUES ('18', 'liuyj', '项目经理', '2017-02-15', '23', '7.0');

-- ----------------------------
-- Table structure for `zt_testresult`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testresult`;
CREATE TABLE `zt_testresult` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `run` mediumint(8) unsigned NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `caseResult` char(30) NOT NULL,
  `stepResults` text NOT NULL,
  `lastRunner` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testresult` (`case`,`version`,`run`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testresult
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_testrun`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testrun`;
CREATE TABLE `zt_testrun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assignedTo` char(30) NOT NULL DEFAULT '',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task` (`task`,`case`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testrun
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_testtask`
-- ----------------------------
DROP TABLE IF EXISTS `zt_testtask`;
CREATE TABLE `zt_testtask` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(90) NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `report` text NOT NULL,
  `status` enum('blocked','doing','wait','done') NOT NULL DEFAULT 'wait',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_testtask
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_todo`
-- ----------------------------
DROP TABLE IF EXISTS `zt_todo`;
CREATE TABLE `zt_todo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) unsigned zerofill NOT NULL,
  `end` smallint(4) unsigned zerofill NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` enum('wait','doing','done') NOT NULL DEFAULT 'wait',
  `private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo` (`account`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_todo
-- ----------------------------
INSERT INTO `zt_todo` VALUES ('1', 'yao', '2017-02-28', '2400', '2400', 'task', '98', '3', '', '', 'wait', '0');

-- ----------------------------
-- Table structure for `zt_tp_ad`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_ad`;
CREATE TABLE `zt_tp_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT '#',
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_ad
-- ----------------------------
INSERT INTO `zt_tp_ad` VALUES ('1', '第2张', '/Ad/2017-02-04/', '58958571c4c01.png', '#', '', '发布', '2', '梁小伟', '2017-02-04 15:40:36');
INSERT INTO `zt_tp_ad` VALUES ('2', '第1张', '/Ad/2017-02-04/', '5895856327614.png', '#', '', '发布', '2', '梁小伟', '2017-02-04 15:40:19');
INSERT INTO `zt_tp_ad` VALUES ('3', '第3张', '/Ad/2017-02-04/', '589584447ae4c.png', '#', '', '发布', '2', '腰立辉', '2017-02-04 15:35:32');
INSERT INTO `zt_tp_ad` VALUES ('4', '第4张', '/Ad/2017-02-04/', '5895819138465.png', '#', '', '发布', '2', '腰立辉', '2017-02-04 15:24:01');
INSERT INTO `zt_tp_ad` VALUES ('5', '第5张', '/Ad/2017-02-04/', '589581aa9bd89.png', '#', '', '发布', '2', '腰立辉', '2017-02-04 15:24:27');
INSERT INTO `zt_tp_ad` VALUES ('10', '为什么要做公众号', '/Ad/2017-02-06/', '58982f2ad27cf.png', '#', 'qweq', '正常', '1', '腰立辉', '2017-02-06 16:09:29');
INSERT INTO `zt_tp_ad` VALUES ('11', '第四张', '/Ad/2017-02-11/', '589e8ee8d99c9.png', 'http://www.baidu.com', '', '正常', '1', '张秀丽', '2017-02-12 18:17:57');
INSERT INTO `zt_tp_ad` VALUES ('12', '第三张', '/Ad/2017-02-11/', '589e8ed34b76e.png', '#', '', '正常', '1', '腰立辉', '2017-02-11 12:10:59');
INSERT INTO `zt_tp_ad` VALUES ('13', '第二张', '/Ad/2017-02-11/', '589e8ec09c80b.png', '#', '', '正常', '1', '腰立辉', '2017-02-11 12:10:40');
INSERT INTO `zt_tp_ad` VALUES ('14', '服务号和订阅号的对比', '/Ad/2017-02-06/', '58982d6257e8a.png', '#', '', '正常', '1', '腰立辉', '2017-02-06 16:09:01');
INSERT INTO `zt_tp_ad` VALUES ('15', null, '/Ad/2016-12-18/', '58565f960204b.jpg', '#', null, '发布', '4', '腰立辉', '2017-02-04 14:19:31');
INSERT INTO `zt_tp_ad` VALUES ('16', null, '/Ad/2016-12-18/', '58565ff1220d8.jpg', '#', null, '发布', '4', '腰立辉', '2017-02-04 14:19:32');
INSERT INTO `zt_tp_ad` VALUES ('17', null, '/Ad/2017-02-12/', '5883584c58f6b.jpg', '#', null, '发布', '4', '腰立辉', '2017-02-14 00:04:16');
INSERT INTO `zt_tp_ad` VALUES ('18', null, '/Ad/2017-02-12/', '588358580bbbf.jpg', '#', null, '发布', '4', '腰立辉', '2017-02-14 00:04:28');
INSERT INTO `zt_tp_ad` VALUES ('19', null, '/Ad/2017-02-12/', '589ffb19575f1.jpg', '#', null, '发布', '4', '腰立辉', '2017-02-12 14:05:13');
INSERT INTO `zt_tp_ad` VALUES ('20', null, '/Ad/2017-01-24/', '5887207ead5f4.png', '#', null, '发布', '3', '腰立辉', '2017-02-04 14:19:37');
INSERT INTO `zt_tp_ad` VALUES ('21', null, '/Ad/2017-01-24/', '5887227b67d0d.png', '#', null, '发布', '3', '腰立辉', '2017-02-04 14:19:38');
INSERT INTO `zt_tp_ad` VALUES ('22', null, '/Ad/2017-01-24/', '5887227287aca.png', '#', null, '发布', '3', '腰立辉', '2017-02-04 14:19:38');
INSERT INTO `zt_tp_ad` VALUES ('23', 'tqyweuy', '/Ad/2017-01-24/', '58872284375ac.png', '#', '', '发布', '3', '腰立辉', '2017-02-04 14:19:45');
INSERT INTO `zt_tp_ad` VALUES ('24', null, '/Ad/2017-01-24/', '5887228c7b95e.png', '#', null, '发布', '3', '腰立辉', '2017-02-04 14:19:48');
INSERT INTO `zt_tp_ad` VALUES ('25', null, null, null, '#', null, '发布', '6', '腰立辉', '2017-02-04 14:19:53');
INSERT INTO `zt_tp_ad` VALUES ('26', null, null, null, '#', null, '发布', '6', '腰立辉', '2017-02-04 14:20:05');
INSERT INTO `zt_tp_ad` VALUES ('27', null, null, null, '#', null, '发布', '6', '腰立辉', '2017-02-04 14:20:07');
INSERT INTO `zt_tp_ad` VALUES ('28', null, null, null, '#', null, '发布', '6', '腰立辉', '2017-02-04 14:20:41');
INSERT INTO `zt_tp_ad` VALUES ('29', null, null, null, null, null, '发布', '6', '腰立辉', '2017-01-19 10:10:56');
INSERT INTO `zt_tp_ad` VALUES ('30', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:07');
INSERT INTO `zt_tp_ad` VALUES ('31', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:09');
INSERT INTO `zt_tp_ad` VALUES ('32', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:11');
INSERT INTO `zt_tp_ad` VALUES ('33', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 10:11:13');
INSERT INTO `zt_tp_ad` VALUES ('34', null, null, null, null, null, '发布', '10', '腰立辉', '2017-01-19 11:35:36');

-- ----------------------------
-- Table structure for `zt_tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_admin`;
CREATE TABLE `zt_tp_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT '2',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_admin
-- ----------------------------
INSERT INTO `zt_tp_admin` VALUES ('1', '18801043607', '18801043607', '腰立辉', 'c33367701511b4f6020ec61ded352059', '', '', '5', '腰立辉', '2017-01-19 16:34:46');
INSERT INTO `zt_tp_admin` VALUES ('2', '13426179579', '13426179579', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', null, null, '2', '腰立辉', '2017-01-19 16:35:23');
INSERT INTO `zt_tp_admin` VALUES ('3', '15030971266', '15030971266', '贾晓月', 'e10adc3949ba59abbe56e057f20f883e', null, null, '4', '腰立辉', '2017-01-19 16:35:32');
INSERT INTO `zt_tp_admin` VALUES ('4', '13785900902', '13785900902', '王晓亮', 'e10adc3949ba59abbe56e057f20f883e', '', '', '4', '腰立辉', '2017-01-19 16:35:33');
INSERT INTO `zt_tp_admin` VALUES ('7', '13463925200', '13463925200', '张秀丽', 'e10adc3949ba59abbe56e057f20f883e', null, null, '1', '腰立辉', '2017-01-22 23:13:16');
INSERT INTO `zt_tp_admin` VALUES ('8', '18610815780', '18610815780', '刘燕军', 'e10adc3949ba59abbe56e057f20f883e', null, null, '6', '腰立辉', '2017-01-19 16:36:35');
INSERT INTO `zt_tp_admin` VALUES ('11', '13131981120', '13131981120', '腰建强', 'e10adc3949ba59abbe56e057f20f883e', null, null, '1', '腰立辉', '2017-02-04 15:08:21');

-- ----------------------------
-- Table structure for `zt_tp_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_applicant`;
CREATE TABLE `zt_tp_applicant` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `hrid` smallint(6) NOT NULL,
  `tuij` varchar(11) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_applicant
-- ----------------------------
INSERT INTO `zt_tp_applicant` VALUES ('14', '18801043607', '秀丽广告', '13', '', '');
INSERT INTO `zt_tp_applicant` VALUES ('15', '13333333333', 'yyyy', '13', '18801043607', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('16', '18801043607', '腰立辉', '13', '18801043607', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('17', '18801043607', '111', '12', '', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('18', '18801043606', '秀丽广告', '12', '18801043607', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('19', '18801043605', '腰立辉', '12', '', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('20', '12323212343', '拓才教育', '13', '', '报名');
INSERT INTO `zt_tp_applicant` VALUES ('22', '13222222222', '拓才教育', '13', '18801043607', '报名');

-- ----------------------------
-- Table structure for `zt_tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_article`;
CREATE TABLE `zt_tp_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `name` varchar(100) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章添加时间',
  `clicknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章点击数',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  PRIMARY KEY (`id`),
  KEY `article_cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_article
-- ----------------------------
INSERT INTO `zt_tp_article` VALUES ('1', '请问请问', '<p>\r\n	去委屈委屈我</p>\r\n', '1471489591', '0', '1');

-- ----------------------------
-- Table structure for `zt_tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_case`;
CREATE TABLE `zt_tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `level` varchar(1) DEFAULT '2',
  `main` varchar(50) DEFAULT NULL,
  `steps` text,
  `expected` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dstate` varchar(5) DEFAULT '待维护',
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_case
-- ----------------------------
INSERT INTO `zt_tp_case` VALUES ('10000', '1', '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', '107', '10000', '产品库', '', '腰立辉', '腰立辉', '2016-12-08 09:31:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10001', '2', '2', '用户名不存在', '', '报错', '正常', '107', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-12-08 09:31:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10130', '2', '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:50:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10131', '3', '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10132', '4', '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10133', '1', '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', '110', '10449', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10134', '1', '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:54:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10135', '2', '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:55:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10136', '3', '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 21:00:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10129', '1', '2', ' 活动开始之前', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:50:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10104', '1', '2', '按英文名检索', '<p>\r\n	asd12</p>\r\n', '查询到符合条件的员工列表', '正常', '116', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-23 17:21:16', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10282', '1', '2', ' 按姓名模糊查询', '', ' 检索到符合条件的员工列表', '正常', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:21:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10109', '1', '2', ' 从公众微信号打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-22 17:25:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10110', '2', '2', ' 从分享链接打开', '', ' 正常打开，播放动画最后显示公司详情', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-22 17:25:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10111', '1', '2', ' 正常提交报名', '', ' 提交成功', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10112', '2', '2', ' 空姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10113', '3', '2', ' 空姓名，填手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10114', '4', '2', ' 填姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10115', '5', '2', ' 填姓名，手机号位数不足', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10116', '6', '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10117', '7', '2', ' 填姓名，手机号后有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10118', '8', '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10119', '9', '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10120', '10', '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:49:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10121', '1', '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:56:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10122', '2', '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:57:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10123', '1', '2', ' 分享给微信好友', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10124', '2', '2', ' 分享到微信朋友圈', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10125', '1', '2', '从管家明前提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10126', '2', '2', ' 从公司名片提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10127', '3', '2', ' 转发分享次数', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10128', '4', '2', ' 报名转化率', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10137', '1', '1', '正常修改密码', '', ' 修改成功', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 18:23:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10138', '2', '2', ' 原密码不填', '', ' 报错', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:49:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10139', '3', '2', ' 原密码错误', '', ' 报错', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10140', '4', '2', ' 原密码正确，新密码两次不一致', '', ' 修改失败', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10141', '5', '2', ' 原密码正确，新密码不输入', '', ' 修改失败', '正常', '116', '10480', null, null, '腰立辉', '腰立辉', '2016-12-21 17:55:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10142', '1', '1', ' 国家名称（全匹配查询）', '', ' 精确查出结果', '正常', '116', '10566', null, null, '腰立辉', '腰立辉', '2016-12-21 18:29:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10143', '1', '2', ' 国家名称没输全（模糊查询）', '', ' 可以查出复核条件的结果', '正常', '116', '10566', null, null, '腰立辉', '腰立辉', '2016-12-21 18:30:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10144', '1', '2', '从微信菜单进入“生活体验”', '', ' 成功打开生活体验页面', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:06:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10145', '3', '2', ' 从微站首页进入生活体验', '', ' 打开生活体验页面', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:07:15', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10146', '3', '2', ' 后台移民项目没有对应数据时', '', ' 展示默认场景', '待确认', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:08:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10147', '3', '2', ' 左右滑动切换移民国家', '', ' 切换成功，且可以循环切换', '正常', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:09:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10148', '3', '2', '当后台项目之一一个国家时，滑动切换国家', '', ' ', '待确认', '116', '10562', null, null, '腰立辉', '腰立辉', '2016-12-22 17:15:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10149', '2', '2', ' 项目只有一个城市', '', ' 直接跳过城市选择', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:16:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10150', '2', '2', ' 当城市大于1个时，需要选择移民城市', '', ' ', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:17:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10151', '2', '2', ' 可以上下滑动切换', '', ' 按后台设置的顺序', '正常', '116', '10563', null, null, '腰立辉', '腰立辉', '2016-12-22 17:17:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10152', '2', '2', ' 当项目没有体验信息时', '', ' 展示默认页面', '待确认', '116', '10564', null, null, '腰立辉', '腰立辉', '2016-12-22 17:19:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10153', '2', '2', ' 当项目有体验场景', '', ' 显示图片列表，点击可以进入详情', '正常', '116', '10564', null, null, '腰立辉', '腰立辉', '2016-12-22 17:20:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10154', '2', '2', ' 点击列表图片', '', ' 展开对应的详情', '正常', '116', '10565', null, null, '腰立辉', '腰立辉', '2016-12-22 17:23:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10155', '2', '2', ' 在详情页面，左右滑动', '', ' 可以按列表顺序，切换详情', '正常', '116', '10565', null, null, '腰立辉', '腰立辉', '2016-12-22 17:23:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10156', '4', '2', '公司简介向上滑动', '', ' 显示项目列表', '正常', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:31:06', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10157', '4', '2', ' 当项目只有一个时，左右滑动', '', ' ', '待确认', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:32:01', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10158', '4', '2', ' 当项目超过3个时，左右滑动', '', ' 可以循环展示', '正常', '116', '10420', null, null, '腰立辉', '腰立辉', '2016-12-22 17:32:38', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10159', '1', '2', ' 点击项目图片', '', ' 打开项目详情页面', '正常', '116', '10590', null, null, '腰立辉', '腰立辉', '2016-12-22 17:33:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10160', '3', '2', ' 显示个人名片的分享后', '', ' 统计或报名都记在个人名片下', '正常', '116', '10422', null, null, '腰立辉', '腰立辉', '2016-12-22 17:34:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10161', '3', '2', ' 显示公司名片时分享', '', ' 打开和报名统计在公司名片下', '正常', '116', '10422', null, null, '腰立辉', '腰立辉', '2016-12-22 17:35:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10162', '1', '2', ' 已个人名片分享的消息，有人报名时间', '', ' 微信公众号会有消息推送给名片所有人', '正常', '116', '10469', null, null, '腰立辉', '腰立辉', '2016-12-22 17:36:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10163', '1', '2', ' 已公司名片分享的消息，有人报名时', '', ' 无消息推送', '正常', '116', '10469', null, null, '腰立辉', '腰立辉', '2016-12-22 17:37:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10164', '1', '2', ' 单选一个国家查询', '', ' 查出对应的结果', '正常', '116', '10482', null, null, '腰立辉', '腰立辉', '2016-12-22 18:23:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10165', '1', '2', ' 选多个国家', '', ' 查出对应的结果', '正常', '116', '10482', null, null, '腰立辉', '腰立辉', '2016-12-22 18:23:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10166', '1', '2', ' 选择对应的项目类型', '', ' 查出对应的结果', '正常', '116', '10483', null, null, '腰立辉', '腰立辉', '2016-12-22 18:24:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10167', '1', '2', '单选项目状态', '', ' 查出对应的结果', '正常', '116', '10484', null, null, '腰立辉', '腰立辉', '2016-12-22 18:27:06', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10168', '1', '2', ' 输全项目编号', '', ' 查到对应的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:27:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10169', '1', '2', ' 输全项目名称', '', ' 查出对应的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:28:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10170', '1', '2', ' 输入部分项目编号（模糊查询）', '', ' 查出符合条件的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:28:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10171', '1', '2', '  输入部分项目名称（模糊查询）', '', ' 查出符合条件的结果', '正常', '116', '10485', null, null, '腰立辉', '腰立辉', '2016-12-22 18:29:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10172', '1', '2', ' 组合查询', '', ' 查出符合条件的结果', '正常', '116', '10487', null, null, '腰立辉', '腰立辉', '2016-12-22 18:29:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10173', '2', '2', ' 办理流程未填写，发布', '', ' 提示“办理流程未填写”', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10174', '3', '2', '申请条件未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10175', '4', '2', ' 费用详情未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10176', '5', '2', ' 料清单未填写，发布', '', ' ', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:35:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10177', '1', '2', ' 所有信息填写完成，发布', '', ' 发布成功，微网站上可见', '正常', '116', '10493', null, null, '腰立辉', '腰立辉', '2016-12-22 18:36:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10178', '1', '2', '只输入起始日期查询', '', ' 搜寻到起始日期往后的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:28:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10179', '1', '2', ' 只输入结束日期', '', ' 查询到结束日期往前的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:28:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10180', '1', '2', ' 同时输入结束日期和起始日期，且起始日期小于结束日期', '', ' 查找在这区间的的项目列表', '正常', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:29:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10181', '1', '2', ' 同时输入结束日期和起始日期，起始日期等于结束日期', '', ' 查询到当天的项目列表（假定项目时间是一个点）', '待确认', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:31:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10182', '1', '2', ' 同时输入结束日期和起始日期，且起始日期大于结束日期', '', ' 报错', '待确认', '116', '10486', null, null, '腰立辉', '腰立辉', '2016-12-23 09:31:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10183', '1', '2', ' 查看项目列表展现', '', ' 数据和展示字段与需求相符', '正常', '116', '10488', null, null, '腰立辉', '腰立辉', '2016-12-23 09:35:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10184', '1', '2', ' 选中一个项目，推荐', '', ' 推荐成功，该项目的扩展推荐，显示顾问平片，并且在微网站的公司名片的重点项目中看到该项目的信息', '正常', '116', '10490', null, null, '腰立辉', '腰立辉', '2016-12-23 09:43:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10185', '1', '2', ' 选中多个项目，进行扩展推荐', '', ' 选中项目的扩展推荐，这些项目都会出现在公司名片的重点项目中', '正常', '116', '10490', null, null, '腰立辉', '腰立辉', '2016-12-23 09:45:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10186', '4', '2', ' 项目暂停', '', ' 暂停成功，该项目不在网站显示', '正常', '116', '10492', null, null, '腰立辉', '腰立辉', '2016-12-23 10:02:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10187', '4', '2', ' 项目售罄', '', ' 成功，网站依然显示', '正常', '116', '10492', null, null, '腰立辉', '腰立辉', '2016-12-23 10:02:49', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10188', '23', '2', ' 正常新增项目', '', ' 新增成功', '正常', '116', '10489', null, null, '腰立辉', '腰立辉', '2016-12-23 10:03:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10189', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10491', null, null, '腰立辉', '腰立辉', '2016-12-23 10:20:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10190', '1', '2', ' 检查办理流程列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10494', null, null, '腰立辉', '腰立辉', '2016-12-23 10:25:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10191', '2', '2', ' 正常添加办理流程', '', ' 添加成功', '正常', '116', '10495', null, null, '腰立辉', '腰立辉', '2016-12-23 10:25:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10192', '2', '2', ' 排序字段填入字母和符号（非数字）', '', ' 报错，不能添加', '正常', '116', '10495', null, null, '腰立辉', '腰立辉', '2016-12-23 10:27:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10193', '2', '2', ' 下载模板', '', ' ', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:34:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10194', '2', '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:35:42', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10195', '2', '2', ' 上传非xls和xlsx的文体', '\r\n', ' 报错', '正常', '116', '10496', null, null, '腰立辉', '腰立辉', '2016-12-23 10:36:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10196', '1', '2', ' 选中一个流程（非顶端），上移', '', ' 上移一个顺序', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:19', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10197', '1', '2', '  选中一个流程（顶端），上移', '', ' 不能上移', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10198', '1', '2', '  选中一个流程（非底端），下移', '', ' 下移成功', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:37:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10199', '1', '2', '   选中一个流程（底端），下移', '', ' 不能下移', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:38:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10200', '1', '2', '   选中一个流程（非顶端），置顶', '', ' 置顶成功', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:45:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10201', '1', '2', '选中一个流程（顶端），置顶', '', ' 无需置顶', '正常', '116', '10497', null, null, '腰立辉', '腰立辉', '2016-12-23 10:45:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10202', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10498', null, null, '腰立辉', '腰立辉', '2016-12-23 10:46:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10203', '1', '2', ' 删除申请流程', '', ' 删除成功', '正常', '116', '10499', null, null, '腰立辉', '腰立辉', '2016-12-23 10:49:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10204', '1', '2', ' 检查材料清单列表', '', ' 数据和展示字段与需求相符', '正常', '116', '10506', null, null, '腰立辉', '腰立辉', '2016-12-23 10:57:40', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10205', '1', '2', ' 正常新增', '', ' 添加材料成功', '正常', '116', '10507', null, null, '腰立辉', '腰立辉', '2016-12-23 10:58:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10206', '1', '2', ' 点击材料样例', '', ' 弹出新窗口显示样例', '正常', '116', '10510', null, null, '腰立辉', '腰立辉', '2016-12-23 10:59:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10207', '2', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10511', null, null, '腰立辉', '腰立辉', '2016-12-23 10:59:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10208', '2', '2', ' 正常删除', '', ' 弹出确认窗口，确认后删除', '正常', '116', '10512', null, null, '腰立辉', '腰立辉', '2016-12-23 11:00:08', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10209', '1', '2', ' 下载模板', '', ' 下载成功', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:00:37', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10210', '1', '2', ' 正常导入模板', '', ' 导入成功，刷新页面', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:01:02', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10211', '1', '2', ' 带入非模板的文件', '', ' 导入失败', '正常', '116', '10508', null, null, '腰立辉', '腰立辉', '2016-12-23 11:02:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10212', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10213', '1', '2', ' 顶端上移，不能上移', '', ' ', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:15', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10214', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10215', '1', '2', ' 顶端置顶', '', ' 不能置顶', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:03:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10216', '1', '2', '非底端，下移 ', '', ' 下移成功', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:04:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10217', '1', '2', ' 底端，下移', '', ' 不能下移', '正常', '116', '10509', null, null, '腰立辉', '腰立辉', '2016-12-23 11:04:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10218', '1', '2', ' 检查费用详情列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10500', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10219', '1', '2', ' 正常新增', '\r\n', ' 新增成功', '正常', '116', '10501', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10220', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10504', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10221', '1', '2', ' 正常删除', '', ' 删除成功', '正常', '116', '10505', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10222', '2', '2', ' 下载模板', '', ' 模板下载成功', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10223', '2', '2', ' 上传填写好的正常模板', '', ' 上传成功，刷新列表页', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10224', '2', '2', ' 上传非模板文件', '', ' 报错', '正常', '116', '10502', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10225', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:35', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10226', '1', '2', ' 顶端，上移', '', ' 顶端上移，不能上移', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10227', '1', '2', ' 非底端，下移', '', ' 下移成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:37', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10228', '1', '2', ' 底端，下移', '', ' 不能下移', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10229', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10230', '1', '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', '116', '10503', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10231', '1', '2', ' 检查图片列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10513', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10232', '2', '2', ' 正常添加图片', '', ' 添加成功', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10233', '2', '2', ' 正常添加视频', '', ' 添加成功', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10234', '2', '2', ' 添加视频时，视频地址不填', '', ' 报错，不允许添加', '正常', '116', '10514', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10235', '1', '2', ' 非顶端，上移', '', ' 上移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10236', '1', '2', ' 顶端，上移', '', ' 不能上移', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10237', '1', '2', ' 非底端，下移', '', ' 下移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10238', '1', '2', ' 底端，下移', '', ' 下移成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:23:59', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10239', '1', '2', ' 非顶端，置顶', '', ' 置顶成功', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10240', '1', '2', ' 顶端置顶', '', ' 不能置顶擦操作', '正常', '116', '10515', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:02', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10241', '1', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10516', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10242', '1', '2', ' 正常删除', '', ' 删除成功', '正常', '116', '10517', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10243', '1', '2', ' 按栏目全称精确查询', '', ' 查询到结果', '正常', '116', '10536', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10244', '1', '2', ' 按栏目名称模糊查询', '', ' 查询到符合条件的栏目', '正常', '116', '10536', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10245', '1', '2', ' 检查栏目列表', '', '数据和字段符合需求', '正常', '116', '10537', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10246', '1', '2', ' 修改顺序后，批量排序', '', '排序成功', '正常', '116', '10538', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10247', '1', '2', ' 不修改排序，点击“批量排序”', '', ' 排序失败', '正常', '116', '10538', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10248', '1', '2', ' 正常新增栏目', '', ' 新增成功', '正常', '116', '10539', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:14', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10249', '1', '2', ' 正常删除栏目', '', ' 删除成功', '正常', '116', '10541', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:16', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10250', '1', '2', ' 正常设置', '', ' 设置成功', '正常', '116', '10540', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:17', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10251', '1', '2', ' 选中左侧的栏目', '', ' 显示该栏目下的所有资讯', '正常', '116', '10542', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10252', '1', '2', ' 按标题精确查询', '', ' 查到对应和资讯', '正常', '116', '10543', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10253', '1', '2', ' 按资讯中的关键字模糊查询', '', ' 查询到符合条件的资讯', '正常', '116', '10543', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10254', '1', '2', ' 选中状态查询', '', ' 查询到符合条件的资讯', '正常', '116', '10544', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10255', '1', '2', ' 输入关键字并选择状态', '', ' 查询出符合条件的资讯', '正常', '116', '10545', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10256', '1', '2', ' 检查资讯列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10546', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:26', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10257', '1', '2', ' 正常新增资讯', '', ' 新增成功', '正常', '116', '10547', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:28', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10258', '1', '2', ' 正常编辑资讯', '', ' 编辑成功', '正常', '116', '10548', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10259', '1', '2', ' 正常删除资讯', '', ' 删除成功', '正常', '116', '10549', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10260', '1', '2', ' 发布资讯', '', ' 发布成功，微网站上可见', '正常', '116', '10550', null, null, '腰立辉', '腰立辉', '2016-12-23 16:24:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10261', '1', '2', ' 按活动名称精确查询', '', ' 查出对应的结果', '正常', '116', '10524', null, null, '腰立辉', '腰立辉', '2016-12-23 16:38:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10262', '1', '2', ' 按活动关键字模糊查询', '', ' 查出符合条件的结果', '正常', '116', '10524', null, null, '腰立辉', '腰立辉', '2016-12-23 16:38:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10263', '1', '2', '检查活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10525', null, null, '腰立辉', '腰立辉', '2016-12-23 16:55:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10264', '1', '2', ' 检查已发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10526', null, null, '腰立辉', '腰立辉', '2016-12-23 16:58:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10265', '1', '2', ' 检查未发布活动列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10527', null, null, '腰立辉', '腰立辉', '2016-12-23 16:58:30', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10266', '1', '2', ' 更改排序后，批量排序', '', ' 排序成功', '正常', '116', '10528', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10267', '1', '2', ' 未更改排序，进行批量排序', '', ' 排序失败', '正常', '116', '10528', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10268', '2', '2', ' 正常添加活动', '', ' 添加成功', '正常', '116', '10529', null, null, '腰立辉', '腰立辉', '2016-12-23 17:02:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10269', '2', '2', ' 添加活动名和以前存在同名的活动', '', ' 添加失败', '正常', '116', '10529', null, null, '腰立辉', '腰立辉', '2016-12-23 17:03:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10270', '2', '2', ' 正常编辑', '', ' 保存成功', '正常', '116', '10530', null, null, '腰立辉', '腰立辉', '2016-12-23 17:04:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10271', '2', '2', ' 编辑时，把活动名称改为和以前的某个活动重名的', '', ' 保存失败', '正常', '116', '10530', null, null, '腰立辉', '腰立辉', '2016-12-23 17:05:10', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10272', '1', '2', ' 未发布的活动，发布', '', ' 发布成功', '正常', '116', '10531', null, null, '腰立辉', '腰立辉', '2016-12-23 17:05:31', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10273', '1', '2', ' 已发布，为下线的活动，发布', '', '不能再次发布', '正常', '116', '10531', null, null, '腰立辉', '腰立辉', '2016-12-23 17:06:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10274', '1', '2', ' 已发布的活动，下线', '', ' 下线成功', '正常', '116', '10532', null, null, '腰立辉', '腰立辉', '2016-12-23 17:06:21', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10275', '1', '2', ' 未发布或已下线的活动，下线', '', ' 不能下线', '正常', '116', '10532', null, null, '腰立辉', '腰立辉', '2016-12-23 17:07:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10276', '1', '2', '点击活动报名', '', ' 进入活动已报名的名表', '正常', '116', '10533', null, null, '腰立辉', '腰立辉', '2016-12-23 17:07:58', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10277', '1', '2', ' 按姓名精确查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:09:24', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10278', '1', '2', ' 按姓名模糊查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:09:43', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10279', '1', '2', ' 按手机号精确查询', '', ' 查到对对应的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:10:09', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10280', '1', '2', ' 按手机号模糊查询', '', ' 查询符合条件的报名人员', '正常', '116', '10534', null, null, '腰立辉', '腰立辉', '2016-12-23 17:11:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10281', '1', '2', ' 检查报名人员列表', '', ' 数据和实际相符，字段展示和需求一致', '正常', '116', '10535', null, null, '腰立辉', '腰立辉', '2016-12-23 17:11:52', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10283', '1', '2', ' 按所属部门筛选', '', ' 筛选出该部门级下级部门的所有人员', '正常', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:22:28', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10284', '1', '2', ' 选中某个员工进行“分派管家”', '&lt;p&gt;\r\n	按钮&amp;ldquo;分派管家&amp;rdquo;有歧义需斟酌&lt;/p&gt;\r\n', '把该员工设定为移民管家', '待确认', '116', '10425', null, null, '腰立辉', '腰立辉', '2016-12-23 17:23:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10285', '1', '2', '正常 编辑管家', '', ' 保存成功', '正常', '116', '10426', null, null, '腰立辉', '腰立辉', '2016-12-23 17:25:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10286', '1', '2', ' 点击姓名', '', ' 进入管家详情', '正常', '116', '10429', null, null, '腰立辉', '腰立辉', '2016-12-23 17:26:56', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10287', '1', '2', ' 点击英文名', '', ' 进入管家详情', '正常', '116', '10429', null, null, '腰立辉', '腰立辉', '2016-12-23 17:27:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10288', '1', '2', ' 点击管家星级', '', ' 进入管家评价', '正常', '116', '10427', null, null, '腰立辉', '腰立辉', '2016-12-23 17:27:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10289', '3', '2', '修改排序数字，重新排序', '', ' 排序成功，且前台展示也按此顺序排序', '正常', '116', '10519', null, null, '腰立辉', '腰立辉', '2016-12-23 17:40:23', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10290', '3', '2', ' 未修改排序。批量排序', '', ' 重新排序失败', '正常', '116', '10519', null, null, '腰立辉', '腰立辉', '2016-12-23 17:41:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10291', '3', '2', ' 修改权重比例，权重之和等于100%', '', ' 保存权重成功', '正常', '116', '10522', null, null, '腰立辉', '腰立辉', '2016-12-23 17:42:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10292', '3', '2', '  修改权重比例，权重之和不等于100%', '', ' 保存失败', '正常', '116', '10522', null, null, '腰立辉', '腰立辉', '2016-12-23 17:42:33', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10293', '3', '2', ' 权重之和等于100%，发布', '', ' 发布成功', '正常', '116', '10523', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10294', '3', '2', ' 权重之和不等于100%，发布', '', ' 发布失败', '正常', '116', '10523', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10295', '2', '2', '正常删除', '', ' 弹出确认窗口，确认后删除', '正常', '116', '10521', null, null, '腰立辉', '腰立辉', '2016-12-23 17:43:57', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10296', '6', '2', ' 正常添加问题', '', ' 添加成功', '正常', '116', '10518', null, null, '腰立辉', '腰立辉', '2016-12-23 17:45:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10297', '6', '2', ' 正常编辑', '', ' 编辑成功', '正常', '116', '10520', null, null, '腰立辉', '腰立辉', '2016-12-23 17:45:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10298', '10', '2', ' 正确的用户名，正确的密码', '', ' 正常登陆', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:00:53', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10299', '10', '2', ' 用户被禁用，正确的用户名，正确的密码', '', ' 提示被禁用', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:01:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10300', '10', '2', ' 不存在的用户名', '', '用户名不存在', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:03', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10301', '10', '2', ' 错误的密码', '', ' 密码错误', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:21', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10302', '10', '2', ' 正确用户名，不输密码', '', ' 请输入密码', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:02:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10303', '10', '2', ' 不输入用户名， 随便数个什么密码', '', '请输入用户名', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:03:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10304', '10', '2', ' 用户名和 密码都不输入，直接点登陆', '', ' 请输入用户名', '正常', '116', '10478', null, null, '腰立辉', '腰立辉', '2016-12-23 18:03:45', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tp_case` VALUES ('10305', '4', '2', ' 正常退出', '', ' 用户退出登录，跳转到登陆页面', '正常', '116', '10479', null, null, '腰立辉', '腰立辉', '2016-12-23 18:04:34', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `zt_tp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_cate`;
CREATE TABLE `zt_tp_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_cate
-- ----------------------------
INSERT INTO `zt_tp_cate` VALUES ('3', '100', '0', '社保福利', '正常', '3', '腰立辉', '2017-02-04 23:13:05');
INSERT INTO `zt_tp_cate` VALUES ('4', '1', '0', '传统业务', '已搁置', '1', '腰立辉', '2017-02-05 18:30:02');
INSERT INTO `zt_tp_cate` VALUES ('5', '40', '0', '微网站', '已搁置', '1', '腰立辉', '2017-02-05 18:30:09');
INSERT INTO `zt_tp_cate` VALUES ('6', '50', '0', '公众号', '已搁置', '1', '腰立辉', '2017-02-05 18:30:14');
INSERT INTO `zt_tp_cate` VALUES ('10', '1', '0', '学前少儿', '正常', '2', '腰立辉', '2017-02-04 23:13:57');
INSERT INTO `zt_tp_cate` VALUES ('11', '2', '0', '小学课程', '正常', '2', '腰立辉', '2017-02-04 23:14:04');
INSERT INTO `zt_tp_cate` VALUES ('12', '3', '0', '中学课程', '正常', '2', '腰立辉', '2017-02-04 23:14:15');
INSERT INTO `zt_tp_cate` VALUES ('13', '4', '0', '作业托管', '正常', '2', '腰立辉', '2017-02-04 23:14:26');
INSERT INTO `zt_tp_cate` VALUES ('14', '5', '0', '兴趣拓展', '正常', '2', '腰立辉', '2017-02-04 23:15:33');
INSERT INTO `zt_tp_cate` VALUES ('18', '10', '4', '文印', '正常', '1', '腰立辉', '2017-02-04 23:30:48');
INSERT INTO `zt_tp_cate` VALUES ('19', '20', '4', '广告牌', '正常', '1', '腰立辉', '2017-02-04 23:30:56');
INSERT INTO `zt_tp_cate` VALUES ('20', '60', '6', '微信公众号', '正常', '1', '腰立辉', '2017-02-04 23:31:05');
INSERT INTO `zt_tp_cate` VALUES ('21', '70', '6', '支付宝', '正常', '1', '腰立辉', '2017-02-04 23:31:57');
INSERT INTO `zt_tp_cate` VALUES ('29', '41', '5', '整站', '正常', '1', '腰立辉', '2017-02-04 23:32:04');
INSERT INTO `zt_tp_cate` VALUES ('30', '42', '5', '宣传页', '正常', '1', '腰立辉', '2017-02-04 23:32:11');
INSERT INTO `zt_tp_cate` VALUES ('31', '43', '5', '服务器', '正常', '1', '腰立辉', '2017-02-04 23:32:18');
INSERT INTO `zt_tp_cate` VALUES ('32', '44', '5', '域名', '正常', '1', '腰立辉', '2017-02-04 23:32:25');
INSERT INTO `zt_tp_cate` VALUES ('33', '45', '5', '第三方授权', '已搁置', '1', '腰立辉', '2017-02-05 18:30:28');
INSERT INTO `zt_tp_cate` VALUES ('58', '4', '0', '汽车用品', '正常', '4', '腰立辉', '2017-02-04 23:32:40');
INSERT INTO `zt_tp_cate` VALUES ('59', '1', '0', '钣金喷漆', '正常', '4', '腰立辉', '2017-02-04 23:32:47');
INSERT INTO `zt_tp_cate` VALUES ('60', '3', '0', '汽车维修', '正常', '4', '腰立辉', '2017-02-04 23:31:31');
INSERT INTO `zt_tp_cate` VALUES ('61', '2', '0', '汽车保养', '正常', '4', '腰立辉', '2017-02-04 23:31:50');
INSERT INTO `zt_tp_cate` VALUES ('62', '1', '0', '人力中介', '正常', '3', '腰立辉', '2017-02-04 23:32:54');
INSERT INTO `zt_tp_cate` VALUES ('63', '200', '0', '健康体检', '正常', '3', '腰立辉', '2017-02-04 23:33:00');
INSERT INTO `zt_tp_cate` VALUES ('64', '300', '0', '职业培训', '正常', '3', '腰立辉', '2017-02-04 23:33:07');
INSERT INTO `zt_tp_cate` VALUES ('68', '4', '0', '房产中介', '正常', '3', '腰立辉', '2017-02-04 23:33:36');
INSERT INTO `zt_tp_cate` VALUES ('69', '1', '11', '一年级', '正常', '2', '腰立辉', '2017-02-04 23:30:32');
INSERT INTO `zt_tp_cate` VALUES ('70', '2', '11', '二年级', '正常', '2', '腰立辉', '2017-02-04 23:30:19');
INSERT INTO `zt_tp_cate` VALUES ('71', '3', '11', '三年级', '正常', '2', '腰立辉', '2017-02-04 23:30:12');
INSERT INTO `zt_tp_cate` VALUES ('72', '4', '11', '四年级', '正常', '2', '腰立辉', '2017-02-04 23:30:05');
INSERT INTO `zt_tp_cate` VALUES ('73', '5', '11', '五年级', '正常', '2', '腰立辉', '2017-02-04 23:29:59');
INSERT INTO `zt_tp_cate` VALUES ('74', '6', '11', '六年级', '正常', '2', '腰立辉', '2017-02-04 23:29:50');
INSERT INTO `zt_tp_cate` VALUES ('75', '1', '12', '七年级(初中)', '正常', '2', '腰立辉', '2017-02-04 23:29:34');
INSERT INTO `zt_tp_cate` VALUES ('76', '2', '12', '八年级(初中)', '正常', '2', '腰立辉', '2017-02-04 23:29:43');
INSERT INTO `zt_tp_cate` VALUES ('77', '3', '12', '九年级(初中)', '正常', '2', '腰立辉', '2017-02-04 23:21:19');
INSERT INTO `zt_tp_cate` VALUES ('78', '4', '12', '高一', '正常', '2', '腰立辉', '2017-02-04 23:21:33');
INSERT INTO `zt_tp_cate` VALUES ('79', '5', '12', '高二', '正常', '2', '腰立辉', '2017-02-04 23:21:39');
INSERT INTO `zt_tp_cate` VALUES ('80', '6', '12', '高三', '正常', '2', '腰立辉', '2017-02-04 23:21:45');

-- ----------------------------
-- Table structure for `zt_tp_customer`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_customer`;
CREATE TABLE `zt_tp_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `openid` char(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `pincodes` char(18) DEFAULT NULL COMMENT '身份证号码',
  `password` char(32) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `gender` varchar(2) DEFAULT '保密',
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `year` char(5) DEFAULT NULL,
  `figureurl_qq_1` varchar(200) DEFAULT NULL,
  `figureurl_qq_2` varchar(200) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `qq` varchar(13) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_customer
-- ----------------------------
INSERT INTO `zt_tp_customer` VALUES ('1', 'AE76CDD1C61E6795D562B4517A414BC5', '18801043607', '132223198401040613', 'e10adc3949ba59abbe56e057f20f883e', '腰立辉', '男', '北京', '房山', '1984', 'http://q.qlogo.cn/qqapp/101376709/AE76CDD1C61E6795D562B4517A414BC5/40', 'http://q.qlogo.cn/qqapp/101376709/AE76CDD1C61E6795D562B4517A414BC5/100', 'yaolihui129', '83000892', null, '腰立辉', '1488091510', '2017-02-26 16:32:49');
INSERT INTO `zt_tp_customer` VALUES ('2', '13E54B2A82FCFD2AA78957E24F2AA1D3', null, null, 'e10adc3949ba59abbe56e057f20f883e', '野生部落', '男', '北京', '海淀', '1989', 'http://q.qlogo.cn/qqapp/101376709/13E54B2A82FCFD2AA78957E24F2AA1D3/40', 'http://q.qlogo.cn/qqapp/101376709/13E54B2A82FCFD2AA78957E24F2AA1D3/100', null, null, null, 'QQ第三方授权', '1488091818', '2017-02-26 14:50:18');
INSERT INTO `zt_tp_customer` VALUES ('3', null, '15803114069', null, 'c33367701511b4f6020ec61ded352059', '孙云云', '女', null, null, null, null, null, null, null, null, '腰立辉', '1488091510', '2017-03-22 10:12:34');
INSERT INTO `zt_tp_customer` VALUES ('4', null, '15803114068', '', 'f379eaf3c831b04de153469d1bec345e', '康国胜', '男', null, null, null, null, null, null, null, null, '腰立辉', '1488091510', '2017-03-22 10:13:04');
INSERT INTO `zt_tp_customer` VALUES ('5', null, '13931162537', null, 'f379eaf3c831b04de153469d1bec345e', '刘一玮（男、44中）', '男', null, null, null, null, null, null, null, null, '腰立辉', '1488091510', '2017-03-22 10:14:14');

-- ----------------------------
-- Table structure for `zt_tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_element`;
CREATE TABLE `zt_tp_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `typeset` varchar(4) DEFAULT NULL,
  `control` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `ios` varchar(50) DEFAULT NULL,
  `android` varchar(50) DEFAULT NULL,
  `bytype` varchar(10) DEFAULT NULL,
  `form` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_element
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_exefunc`;
CREATE TABLE `zt_tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `rproid` int(6) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT '未绑定用例',
  `caseexpected` varchar(255) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT 'NoBug',
  `imgpath` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10953 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_exefunc
-- ----------------------------
INSERT INTO `zt_tp_exefunc` VALUES ('10437', '1', '10087', null, '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 10:18:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10438', '2', '10087', null, '10409', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10439', '3', '10087', null, '10410', null, '微网站（用户）- 专属管家-列表及介绍', ' 绑定管家', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10440', '4', '10087', null, '10411', null, '微网站（用户）- 专属管家-列表及介绍', ' 微信关注', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10441', '5', '10087', null, '10412', null, '微网站（用户）- 专属管家-列表及介绍', ' 电话咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10442', '6', '10087', null, '10413', null, '微网站（用户）- 专属管家-列表及介绍', ' 在线咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10443', '1', '10088', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10444', '2', '10088', null, '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, 'yuuiuy', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10445', '3', '10088', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10446', '4', '10088', null, '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10447', '5', '10088', null, '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10448', '6', '10088', null, '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10449', '1', '10090', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '失败', null, null, '第一次加载时，全部显示再显示页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:23:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10450', '2', '10090', null, '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, '不能循环播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:24:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10451', '3', '10090', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10452', '4', '10090', null, '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '失败', null, null, '分享后，消息不显示图片', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:28:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10453', '5', '10090', null, '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '失败', null, null, '来回波动后，提交“提示用户名不能为空”；安卓手机录入时，二维码会覆盖输入框；可以重复提交', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10454', '6', '10090', null, '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10455', '1', '10091', null, '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10456', '4', '10091', null, '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10457', '3', '10091', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `zt_tp_exefunc` VALUES ('10458', '1', '10093', null, '10414', null, '微网站（用户）- 专属管家-我的专属管家', ' 我的管家信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10459', '2', '10093', null, '10415', null, '微网站（用户）- 专属管家-我的专属管家', '点赞', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10460', '3', '10093', null, '10416', null, '微网站（用户）- 专属管家-我的专属管家', ' 评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10461', '4', '10093', null, '10417', null, '微网站（用户）- 专属管家-我的专属管家', ' 分享管家名片', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10462', '5', '10093', null, '10418', null, '微网站（用户）- 专属管家-我的专属管家', ' 解除绑定', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10463', '1', '10094', null, '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10464', '4', '10094', null, '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10465', '3', '10094', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10466', '1', '10095', null, '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 14:59:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10467', '2', '10095', null, '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', null, null, '未收到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:02:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10468', '3', '10095', null, '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:06:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10469', '4', '10095', null, '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', null, null, '城市级联，城市无选项', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:07:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10470', '5', '10095', null, '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10471', '6', '10095', null, '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10472', '3', '10096', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10473', '2', '10096', null, '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10474', '1', '10096', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10475', '4', '10096', null, '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10476', '5', '10096', null, '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10477', '1', '10097', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, '第一次加载时，先显示全部，再进行动画', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10478', '2', '10097', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10479', '3', '10097', null, '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10480', '3', '10098', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10481', '4', '10098', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10482', '5', '10098', null, '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10483', '1', '10098', null, '10426', null, '微站后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10484', '2', '10098', null, '10429', null, '微站后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10485', '1', '10099', null, '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10486', '4', '10099', null, '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10487', '3', '10099', null, '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10488', '2', '10099', null, '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10489', '5', '10099', null, '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10490', '6', '10099', null, '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10491', '1', '10100', null, '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '失败', null, null, '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:19:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10492', '2', '10100', null, '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '失败', null, null, '无连接详情', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:20:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10493', '3', '10100', null, '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '失败', null, null, '三个名片显示同样的内容', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10494', '4', '10100', null, '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '失败', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10495', '5', '10100', null, '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10496', '6', '10100', null, '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10497', '1', '10101', null, '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10498', '2', '10101', null, '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, '投票报参数错误', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:48', '2016-12-12 20:14:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10499', '1', '10102', null, '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10500', '2', '10102', null, '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10501', '3', '10102', null, '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10502', '4', '10102', null, '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', null, null, '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10503', '5', '10102', null, '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', null, null, '滑动页面 底层跟着移动，详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10504', '6', '10102', null, '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '无法播放视频', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10505', '7', '10102', null, '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10506', '1', '10103', null, '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '通过', null, null, '首页页面错位', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:17:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10507', '2', '10103', null, '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, '无背景音乐', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:00:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10508', '3', '10103', null, '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 20:39:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10509', '4', '10103', null, '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10510', '5', '10103', null, '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10511', '1', '10104', null, '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10512', '2', '10104', null, '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10513', '3', '10104', null, '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10514', '4', '10104', null, '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', null, null, '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10515', '5', '10104', null, '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', null, null, '滑动，底层跟着移动详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10516', '6', '10104', null, '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '无法播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10517', '7', '10104', null, '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10518', '1', '10105', null, '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '失败', null, null, '首页动画的加载顺序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 13:02:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10519', '2', '10105', null, '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10520', '3', '10105', null, '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10521', '4', '10105', null, '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10522', '5', '10105', null, '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10523', '1', '10106', null, '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:32:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10524', '2', '10106', null, '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:33:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10525', '3', '10106', null, '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:36:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10526', '4', '10106', null, '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:38:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10527', '5', '10106', null, '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10528', '6', '10106', null, '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', null, null, '点击无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10529', '7', '10106', null, '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10530', '1', '10107', null, '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:48:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10531', '2', '10107', null, '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:49:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10532', '3', '10107', null, '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10533', '4', '10107', null, '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '失败', null, null, '没有验证码只能通过0000登录', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10534', '5', '10107', null, '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', null, null, '弹出样式有问题；下来列表内容和样式覆盖', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:52:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10535', '6', '10107', null, '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:53:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10536', '7', '10107', null, '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-15 10:35:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10537', '1', '10108', null, '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:02:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10538', '2', '10108', null, '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10539', '3', '10108', null, '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10540', '4', '10108', null, '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '失败', null, null, '查询后，条件信息被置空，不支持模糊查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10541', '5', '10108', null, '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10542', '6', '10108', null, '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '失败', null, null, '空信息被提交过来后，显示错列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10543', '7', '10108', null, '10464', null, '微站CRM后台-商务合作-商务合作管理', ' 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10544', '1', '10109', null, '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '失败', null, null, '不显示提交人', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10545', '2', '10109', null, '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 10:34:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10546', '3', '10109', null, '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 12:17:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10547', '4', '10109', null, '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 09:44:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10548', '1', '10110', null, '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 15:50:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10549', '2', '10110', null, '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 15:50:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10550', '3', '10110', null, '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10551', '4', '10110', null, '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10552', '5', '10110', null, '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10553', '6', '10110', null, '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10554', '7', '10110', null, '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10555', '1', '10111', null, '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, '', '失败', null, null, '提交者显示空白', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:06:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10556', '2', '10111', null, '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10557', '3', '10111', null, '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10558', '4', '10111', null, '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10559', '1', '10112', null, '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, '', '失败', null, null, '进入新增页面后，无法退回到刚才的列表页，只能通过导航来完成', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:30:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10560', '2', '10112', null, '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:27:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10561', '3', '10112', null, '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, '', '失败', null, null, '没有评价明细，无法操作', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:33:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10562', '4', '10112', null, '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10563', '5', '10112', null, '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10564', '6', '10112', null, '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, '', '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 15:24:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10565', '1', '10113', null, '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:54:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10566', '2', '10113', null, '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:54:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10567', '3', '10113', null, '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, '', '失败', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10568', '4', '10113', null, '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:53:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10569', '5', '10113', null, '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '131', '失败', null, null, '提交成功提示框，很快就消失了', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10570', '6', '10113', null, '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10571', '7', '10113', null, '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 14:56:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10572', '1', '10114', null, '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:56:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10573', '2', '10114', null, '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:56:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10574', '3', '10114', null, '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:57:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10575', '4', '10114', null, '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 14:57:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10576', '5', '10114', null, '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:13:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10577', '6', '10114', null, '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10578', '7', '10114', null, '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:18:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10579', '1', '10115', null, '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:48:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10580', '2', '10115', null, '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:49:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10581', '1', '10116', null, '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10582', '2', '10116', null, '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10583', '1', '10117', null, '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '失败', null, null, '只有未设置的列表，已设置的或所有的没有地方查', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:52');
INSERT INTO `zt_tp_exefunc` VALUES ('10584', '2', '10117', null, '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:16:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10585', '3', '10117', null, '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '', '失败', null, null, '用下拉菜单悬着200个用户，以后还回更多，极容易选错；选错了，没有地方可以查到微信号帮给了谁', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10586', '4', '10117', null, '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:18:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10587', '1', '10118', null, '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:45:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10588', '2', '10118', null, '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:45:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10589', '3', '10118', null, '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10590', '4', '10118', null, '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10591', '5', '10118', null, '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10592', '6', '10118', null, '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, '39,40', '失败', null, null, '微信昵称有特殊符号；姓名下有优化线', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10593', '7', '10118', null, '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10594', '1', '10119', null, '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10595', '2', '10119', null, '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10596', '3', '10119', null, '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:48:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10597', '4', '10119', null, '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:50:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10598', '1', '10120', null, '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, '142', '失败', null, null, '没有返回，只能通过导航跳出本页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:55:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10599', '2', '10120', null, '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:56:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10600', '3', '10120', null, '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, '144', '失败', null, null, '没有评价明细，无法操作', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:04:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10601', '4', '10120', null, '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 16:57:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10602', '5', '10120', null, '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, '', '失败', null, null, '未发现该功能', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:02:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10603', '6', '10120', null, '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, '143', '失败', null, null, '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:02:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10604', '1', '10121', null, '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:04:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10605', '2', '10121', null, '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '125', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:05:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10606', '1', '10122', null, '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:43');
INSERT INTO `zt_tp_exefunc` VALUES ('10607', '2', '10122', null, '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10608', '1', '10123', null, '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '通过', null, null, '只有未设置的列表，已设置的或所有的没有地方查', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:15:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10609', '2', '10123', null, '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:07:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10610', '3', '10123', null, '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '122', '失败', null, null, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:08:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10611', '4', '10123', null, '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, '', '通过', null, null, '解绑后，显示解绑前的名字', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:08:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10612', '1', '10124', null, '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10613', '2', '10124', null, '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10614', '3', '10124', null, '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, '', '通过', null, null, '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10615', '4', '10124', null, '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10616', '5', '10124', null, '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '141', '失败', null, null, '网络慢的情况下，有重复提交的情况', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10617', '6', '10124', null, '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10618', '7', '10124', null, '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10619', '1', '10125', null, '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, '', '通过', null, null, '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10620', '2', '10125', null, '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10621', '3', '10125', null, '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10622', '4', '10125', null, '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10623', '5', '10125', null, '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10624', '6', '10125', null, '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10625', '7', '10125', null, '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10626', '1', '10126', null, '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:27:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10627', '2', '10126', null, '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:27:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10628', '3', '10126', null, '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:28:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10629', '4', '10126', null, '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:28:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10630', '5', '10126', null, '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:08');
INSERT INTO `zt_tp_exefunc` VALUES ('10631', '6', '10126', null, '10463', null, '微站CRM后台-商务合作-商务合作管理', '商务合作列表', null, null, null, '', '失败', null, null, '微信昵称有特殊符号；姓名下有优化线', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10632', '7', '10126', null, '10464', null, '微站CRM后台-商务合作-商务合作管理', '编辑/ 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10633', '1', '10127', null, '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10634', '2', '10127', null, '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10635', '3', '10127', null, '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10636', '4', '10127', null, '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10637', '1', '10128', null, '10470', null, '微站CRM后台-数据中心-获客列表', ' 获客列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:40');
INSERT INTO `zt_tp_exefunc` VALUES ('10638', '2', '10128', null, '10471', null, '微站CRM后台-数据中心-获客列表', ' 查询筛选', null, null, null, '', '失败', null, null, '此功能缺失', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10639', '1', '10129', null, '10472', null, '微站CRM后台- 数据中心-名片流量', ' 名片流量列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-22 11:43:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10640', '2', '10129', null, '10473', null, '微站CRM后台- 数据中心-名片流量', ' 转化率计算', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-22 11:43:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10641', '1', '10130', null, '10474', null, '微站CRM后台- 数据中心-微信号设置', '微信号列表（打开过且未设置）', null, null, null, '', '失败', null, null, '只有未设置的列表，已设置的或所有的没有地方查;', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:43:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10642', '2', '10130', null, '10475', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:43:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10643', '3', '10130', null, '10476', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-选择用户', null, null, null, '', '失败', null, null, ' OpenID绑定时，选择人员用下拉菜单，公司暂时百十号人，根本不易查找，还特别容易出错', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:44:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10644', '4', '10130', null, '10477', null, '微站CRM后台- 数据中心-微信号设置', ' 设置-绑定', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-22 11:44:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10645', '1', '10131', null, '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10646', '2', '10131', null, '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10647', '3', '10131', null, '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10648', '4', '10131', null, '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:44:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10649', '5', '10131', null, '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, '', '失败', null, null, '网络慢的情况下，有重复提交的情况', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10650', '6', '10131', null, '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10651', '7', '10131', null, '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-22 11:45:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10652', '1', '10132', null, '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10653', '2', '10132', null, '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10654', '3', '10132', null, '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:45:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10655', '4', '10132', null, '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10656', '5', '10132', null, '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10657', '6', '10132', null, '10469', null, '微网站（用户）-个人中心-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10658', '7', '10132', null, '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-22 11:46:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10659', '1', '10133', null, '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10660', '2', '10133', null, '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10661', '3', '10133', null, '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10662', '4', '10133', null, '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10663', '5', '10133', null, '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10664', '6', '10133', null, '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exefunc` VALUES ('10665', '1', '10134', null, '10478', null, '微站CRM后台- 登录', ' 登录', null, null, null, '', '通过', null, null, ' ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-22 17:04:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10666', '2', '10134', null, '10479', null, '微站CRM后台- 登录', ' 注销', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:19:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10667', '3', '10134', null, '10480', null, '微站CRM后台- 登录', ' 修改密码', null, null, null, '', '通过', null, null, '用例完成', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10668', '4', '10134', null, '10481', null, '微站CRM后台- 登录', ' 切换平台', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10669', '1', '10135', null, '10562', null, '微网站（用户）- 项目活动-生活体验', ' 向往国家', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:23:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10670', '2', '10135', null, '10563', null, '微网站（用户）- 项目活动-生活体验', ' 向往城市', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:23:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10671', '3', '10135', null, '10564', null, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:24:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10672', '4', '10135', null, '10565', null, '微网站（用户）- 项目活动-生活体验', ' 体验详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-22 17:24:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10673', '1', '10136', null, '10419', null, '微网站（用户）-项目活动-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10674', '2', '10136', null, '10420', null, '微网站（用户）-项目活动-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10675', '2', '10136', null, '10590', null, '微网站（用户）-项目活动-公司名片', '项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10676', '3', '10136', null, '10421', null, '微网站（用户）-项目活动-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10677', '4', '10136', null, '10422', null, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:53');
INSERT INTO `zt_tp_exefunc` VALUES ('10678', '5', '10136', null, '10423', null, '微网站（用户）-项目活动-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:37:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10679', '6', '10136', null, '10469', null, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:38:07');
INSERT INTO `zt_tp_exefunc` VALUES ('10680', '7', '10136', null, '10424', null, '微网站（用户）-项目活动-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-22 17:38:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10681', '1', '10137', null, '10482', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:05');
INSERT INTO `zt_tp_exefunc` VALUES ('10682', '2', '10137', null, '10483', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:07');
INSERT INTO `zt_tp_exefunc` VALUES ('10683', '3', '10137', null, '10484', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10684', '4', '10137', null, '10485', null, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10685', '5', '10137', null, '10486', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:27:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10686', '6', '10137', null, '10487', null, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:22:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10687', '7', '10137', null, '10488', null, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10688', '8', '10137', null, '10489', null, '微站CRM后台- 项目资料库-项目管理', '项目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-21 17:10:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10689', '9', '10137', null, '10490', null, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:45:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10690', '10', '10137', null, '10491', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-21 17:10:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10691', '11', '10137', null, '10492', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 10:02:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10692', '12', '10137', null, '10493', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 09:24:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10693', '1', '10138', null, '10494', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10694', '2', '10138', null, '10495', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10695', '3', '10138', null, '10496', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:28');
INSERT INTO `zt_tp_exefunc` VALUES ('10696', '4', '10138', null, '10497', null, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10697', '5', '10138', null, '10498', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:34');
INSERT INTO `zt_tp_exefunc` VALUES ('10698', '6', '10138', null, '10499', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 10:49:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10699', '1', '10139', null, '10506', null, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10700', '2', '10139', null, '10507', null, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10701', '3', '10139', null, '10508', null, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10702', '4', '10139', null, '10509', null, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10703', '5', '10139', null, '10510', null, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10704', '6', '10139', null, '10511', null, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:04:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10705', '7', '10139', null, '10512', null, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:05:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10706', '1', '10140', null, '10513', null, '微站CRM后台- 项目-图片', ' 图片-列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10707', '2', '10140', null, '10514', null, '微站CRM后台- 项目-图片', ' 项目图片-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10708', '3', '10140', null, '10515', null, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:31');
INSERT INTO `zt_tp_exefunc` VALUES ('10709', '4', '10140', null, '10516', null, '微站CRM后台- 项目-图片', ' 项目图片-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10710', '5', '10140', null, '10517', null, '微站CRM后台- 项目-图片', ' 项目图片-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:31', '2016-12-23 14:05:35');
INSERT INTO `zt_tp_exefunc` VALUES ('10711', '1', '10141', null, '10518', null, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10712', '2', '10141', null, '10519', null, '微站CRM后台-项目资料库-移民评估', ' 问题列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10713', '3', '10141', null, '10520', null, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10714', '4', '10141', null, '10521', null, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10715', '5', '10141', null, '10522', null, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:50:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10716', '6', '10141', null, '10523', null, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:50:03');
INSERT INTO `zt_tp_exefunc` VALUES ('10717', '1', '10142', null, '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 14:21:37');
INSERT INTO `zt_tp_exefunc` VALUES ('10718', '2', '10142', null, '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 14:21:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10719', '3', '10142', null, '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:49');
INSERT INTO `zt_tp_exefunc` VALUES ('10720', '4', '10142', null, '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10721', '5', '10142', null, '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10722', '6', '10142', null, '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:56');
INSERT INTO `zt_tp_exefunc` VALUES ('10723', '1', '10143', null, '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10724', '2', '10143', null, '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:44');
INSERT INTO `zt_tp_exefunc` VALUES ('10725', '3', '10143', null, '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10726', '4', '10143', null, '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:48');
INSERT INTO `zt_tp_exefunc` VALUES ('10727', '5', '10143', null, '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10728', '6', '10143', null, '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10729', '7', '10143', null, '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10730', '8', '10143', null, '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:21:01');
INSERT INTO `zt_tp_exefunc` VALUES ('10731', '9', '10143', null, '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:21:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10732', '1', '10144', null, '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 16:49:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10733', '2', '10144', null, '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 16:54:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10734', '3', '10144', null, '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10735', '4', '10144', null, '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:15');
INSERT INTO `zt_tp_exefunc` VALUES ('10736', '5', '10144', null, '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:17');
INSERT INTO `zt_tp_exefunc` VALUES ('10737', '6', '10144', null, '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10738', '7', '10144', null, '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10739', '8', '10144', null, '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:26');
INSERT INTO `zt_tp_exefunc` VALUES ('10740', '9', '10144', null, '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:29');
INSERT INTO `zt_tp_exefunc` VALUES ('10741', '10', '10144', null, '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10742', '1', '10145', null, '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:12:00');
INSERT INTO `zt_tp_exefunc` VALUES ('10743', '2', '10145', null, '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10744', '1', '10146', null, '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10745', '2', '10146', null, '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:23');
INSERT INTO `zt_tp_exefunc` VALUES ('10746', '3', '10146', null, '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:28:12');
INSERT INTO `zt_tp_exefunc` VALUES ('10747', '4', '10146', null, '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-21 17:11:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10748', '5', '10146', null, '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:27:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10749', '6', '10146', null, '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:28:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10750', '1', '10147', null, '10566', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10751', '2', '10147', null, '10567', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10752', '3', '10147', null, '10568', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10753', '4', '10147', null, '10569', null, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10754', '5', '10147', null, '10570', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10755', '6', '10147', null, '10571', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10756', '7', '10147', null, '10572', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10757', '8', '10147', null, '10573', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10758', '9', '10147', null, '10574', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10759', '10', '10147', null, '10575', null, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-21 17:11:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10760', '1', '10148', null, '10576', null, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10761', '2', '10148', null, '10577', null, '微站CRM后台- 国家管理-移民城市', ' 城市列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10762', '3', '10148', null, '10578', null, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10763', '4', '10148', null, '10579', null, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10764', '5', '10148', null, '10580', null, '微站CRM后台- 国家管理-移民城市', ' 上传图片', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-21 17:11:59');
INSERT INTO `zt_tp_exefunc` VALUES ('10765', '1', '10149', null, '10581', null, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10766', '2', '10149', null, '10582', null, '微站CRM后台- 国家管理-移民政策', ' 政策列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10767', '3', '10149', null, '10583', null, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10768', '4', '10149', null, '10584', null, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-21 17:12:02');
INSERT INTO `zt_tp_exefunc` VALUES ('10769', '1', '10150', null, '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-21 17:12:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10770', '2', '10150', null, '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-21 17:12:42');
INSERT INTO `zt_tp_exefunc` VALUES ('10771', '1', '10151', null, '10588', null, '微网站（用户）- 登录', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10772', '2', '10151', null, '10589', null, '微网站（用户）- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10773', '1', '10152', null, '10557', null, '微网站（用户）-首页', ' 移民评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10774', '2', '10152', null, '10585', null, '微网站（用户）-首页', '专属管家入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10775', '3', '10152', null, '10586', null, '微网站（用户）-首页', ' 专享活动入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10776', '4', '10152', null, '10587', null, '微网站（用户）-首页', ' 生活体验入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-21 17:12:57');
INSERT INTO `zt_tp_exefunc` VALUES ('10777', '1', '10153', null, '10558', null, '微网站（用户）- 首页-移民评估', ' 填写评估问题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-21 17:13:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10778', '2', '10153', null, '10559', null, '微网站（用户）- 首页-移民评估', ' 展示评估结果', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-21 17:13:41');
INSERT INTO `zt_tp_exefunc` VALUES ('10779', '1', '10154', null, '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-21 17:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10780', '2', '10154', null, '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-21 17:13:46');
INSERT INTO `zt_tp_exefunc` VALUES ('10781', '1', '10155', null, '10551', null, '微网站（用户）-项目活动- 移民项目', ' 项目简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10782', '2', '10155', null, '10552', null, '微网站（用户）-项目活动- 移民项目', ' 项目优势', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10783', '3', '10155', null, '10553', null, '微网站（用户）-项目活动- 移民项目', ' 申请条件', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10784', '4', '10155', null, '10554', null, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10785', '5', '10155', null, '10555', null, '微网站（用户）-项目活动- 移民项目', ' 项目预约', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10786', '6', '10155', null, '10556', null, '微网站（用户）-项目活动- 移民项目', ' 评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-21 17:13:51');
INSERT INTO `zt_tp_exefunc` VALUES ('10787', '1', '10156', null, '10588', null, '微网站（用户）- 登录', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10788', '2', '10156', null, '10589', null, '微网站（用户）- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exefunc` VALUES ('10789', '1', '10157', null, '10401', null, '微网站（用户）-项目活动-商务合作', ' 简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10790', '2', '10157', null, '10447', null, '微网站（用户）-项目活动-商务合作', ' 拨打400电话', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10791', '3', '10157', null, '10402', null, '微网站（用户）-项目活动-商务合作', ' 获取验证码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10792', '4', '10157', null, '10403', null, '微网站（用户）-项目活动-商务合作', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10793', '5', '10157', null, '10404', null, '微网站（用户）-项目活动-商务合作', ' 提交信息', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10794', '6', '10157', null, '10405', null, '微网站（用户）-项目活动-商务合作', ' 查询合作状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10795', '7', '10157', null, '10406', null, '微网站（用户）-项目活动-商务合作', ' 驳回后重提', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10796', '1', '10158', null, '10566', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按国家名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10797', '2', '10158', null, '10567', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按地理分类', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10798', '3', '10158', null, '10568', null, '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10799', '4', '10158', null, '10569', null, '微站CRM后台- 项目资料库-国家管理', ' 国家列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10800', '5', '10158', null, '10570', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10801', '6', '10158', null, '10571', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10802', '7', '10158', null, '10572', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10803', '8', '10158', null, '10573', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10804', '9', '10158', null, '10574', null, '微站CRM后台- 项目资料库-国家管理', ' 国家-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10805', '10', '10158', null, '10575', null, '微站CRM后台- 项目资料库-国家管理', ' 国家详情-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exefunc` VALUES ('10806', '1', '10159', null, '10576', null, '微站CRM后台- 国家管理-移民城市', ' 城市-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10807', '2', '10159', null, '10577', null, '微站CRM后台- 国家管理-移民城市', ' 城市列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10808', '3', '10159', null, '10578', null, '微站CRM后台- 国家管理-移民城市', ' 城市-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10809', '4', '10159', null, '10579', null, '微站CRM后台- 国家管理-移民城市', ' 城市-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10810', '5', '10159', null, '10580', null, '微站CRM后台- 国家管理-移民城市', ' 上传图片', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10811', '1', '10160', null, '10581', null, '微站CRM后台- 国家管理-移民政策', ' 政策-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10812', '2', '10160', null, '10582', null, '微站CRM后台- 国家管理-移民政策', ' 政策列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10813', '3', '10160', null, '10583', null, '微站CRM后台- 国家管理-移民政策', ' 政策-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10814', '4', '10160', null, '10584', null, '微站CRM后台- 国家管理-移民政策', ' 政策-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exefunc` VALUES ('10815', '1', '10161', null, '10478', null, '微站CRM后台- 登录', ' 登录', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10816', '2', '10161', null, '10479', null, '微站CRM后台- 登录', ' 注销', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10817', '3', '10161', null, '10480', null, '微站CRM后台- 登录', ' 修改密码', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10818', '4', '10161', null, '10481', null, '微站CRM后台- 登录', ' 切换平台', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10819', '1', '10162', null, '10560', null, '微网站（用户）-项目活动- 专享活动', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10820', '2', '10162', null, '10561', null, '微网站（用户）-项目活动- 专享活动', ' 我要报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exefunc` VALUES ('10821', '1', '10163', null, '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10822', '2', '10163', null, '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10823', '3', '10163', null, '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10824', '4', '10163', null, '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10825', '5', '10163', null, '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10826', '6', '10163', null, '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10827', '1', '10164', null, '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10828', '2', '10164', null, '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10829', '3', '10164', null, '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10830', '4', '10164', null, '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10831', '5', '10164', null, '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10832', '6', '10164', null, '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10833', '7', '10164', null, '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10834', '8', '10164', null, '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10835', '9', '10164', null, '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exefunc` VALUES ('10836', '1', '10165', null, '10425', null, '微站CRM后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10837', '2', '10165', null, '10426', null, '微站CRM后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10838', '3', '10165', null, '10427', null, '微站CRM后台- 内容发布-移民管家', ' 管家评价', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10839', '4', '10165', null, '10428', null, '微站CRM后台- 内容发布-移民管家', ' 聘用情况', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10840', '5', '10165', null, '10429', null, '微站CRM后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10841', '6', '10165', null, '10430', null, '微站CRM后台- 内容发布-移民管家', ' 服务用户（列表）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exefunc` VALUES ('10842', '1', '10166', null, '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10843', '2', '10166', null, '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10844', '3', '10166', null, '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10845', '4', '10166', null, '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10846', '5', '10166', null, '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10847', '6', '10166', null, '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10848', '7', '10166', null, '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10849', '8', '10166', null, '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10850', '9', '10166', null, '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10851', '10', '10166', null, '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exefunc` VALUES ('10852', '1', '10167', null, '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10853', '2', '10167', null, '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exefunc` VALUES ('10854', '1', '10168', null, '10562', null, '微网站（用户）- 项目活动-生活体验', ' 向往国家', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10855', '2', '10168', null, '10563', null, '微网站（用户）- 项目活动-生活体验', ' 向往城市', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10856', '3', '10168', null, '10564', null, '微网站（用户）- 项目活动-生活体验', ' 体验分类列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10857', '4', '10168', null, '10565', null, '微网站（用户）- 项目活动-生活体验', ' 体验详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exefunc` VALUES ('10858', '1', '10169', null, '10536', null, '微站CRM后台- 内容发布-栏目管理', ' 查询-按栏目名称', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10859', '2', '10169', null, '10537', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10860', '3', '10169', null, '10538', null, '微站CRM后台- 内容发布-栏目管理', ' 批量排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10861', '4', '10169', null, '10539', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10862', '5', '10169', null, '10540', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-设置', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10863', '6', '10169', null, '10541', null, '微站CRM后台- 内容发布-栏目管理', ' 栏目-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exefunc` VALUES ('10864', '1', '10170', null, '10542', null, '微站CRM后台- 内容发布-资讯发布', ' 按栏目过滤（左侧）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10865', '2', '10170', null, '10543', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10866', '3', '10170', null, '10544', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-按状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10867', '4', '10170', null, '10545', null, '微站CRM后台- 内容发布-资讯发布', ' 查询-组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10868', '5', '10170', null, '10546', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10869', '6', '10170', null, '10547', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10870', '7', '10170', null, '10548', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10871', '8', '10170', null, '10549', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10872', '9', '10170', null, '10550', null, '微站CRM后台- 内容发布-资讯发布', ' 资讯-发布（未发现）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10873', '1', '10171', null, '10524', null, '微站CRM后台- 内容发布-活动管理', ' 查询-按活动标题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10874', '2', '10171', null, '10525', null, '微站CRM后台- 内容发布-活动管理', ' 活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10875', '3', '10171', null, '10526', null, '微站CRM后台- 内容发布-活动管理', ' 已发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10876', '4', '10171', null, '10527', null, '微站CRM后台- 内容发布-活动管理', ' 未发布活动列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10877', '5', '10171', null, '10528', null, '微站CRM后台- 内容发布-活动管理', ' 更新排序', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10878', '6', '10171', null, '10529', null, '微站CRM后台- 内容发布-活动管理', ' 活动-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10879', '7', '10171', null, '10530', null, '微站CRM后台- 内容发布-活动管理', ' 活动-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10880', '8', '10171', null, '10531', null, '微站CRM后台- 内容发布-活动管理', ' 活动-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10881', '9', '10171', null, '10532', null, '微站CRM后台- 内容发布-活动管理', ' 活动-下线', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10882', '10', '10171', null, '10533', null, '微站CRM后台- 内容发布-活动管理', ' 活动报名-入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exefunc` VALUES ('10883', '1', '10172', null, '10534', null, '微站CRM后台- 活动管理-报名人数', ' 查询-按姓名或手机号', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10884', '2', '10172', null, '10535', null, '微站CRM后台- 活动管理-报名人数', ' 报名人员列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exefunc` VALUES ('10885', '1', '10173', null, '10551', null, '微网站（用户）-项目活动- 移民项目', ' 项目简介', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10886', '2', '10173', null, '10552', null, '微网站（用户）-项目活动- 移民项目', ' 项目优势', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10887', '3', '10173', null, '10553', null, '微网站（用户）-项目活动- 移民项目', ' 申请条件', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10888', '4', '10173', null, '10554', null, '微网站（用户）-项目活动- 移民项目', ' 办理流程（周期）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10889', '5', '10173', null, '10555', null, '微网站（用户）-项目活动- 移民项目', ' 项目预约', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10890', '6', '10173', null, '10556', null, '微网站（用户）-项目活动- 移民项目', ' 评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exefunc` VALUES ('10891', '1', '10174', null, '10419', null, '微网站（用户）-项目活动-公司名片', ' 公司介绍', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10892', '2', '10174', null, '10420', null, '微网站（用户）-项目活动-公司名片', ' 重点项目', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10893', '2', '10174', null, '10590', null, '微网站（用户）-项目活动-公司名片', '项目详情', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10894', '3', '10174', null, '10421', null, '微网站（用户）-项目活动-公司名片', ' 名片信息', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10895', '4', '10174', null, '10422', null, '微网站（用户）-项目活动-公司名片', ' 公司名片分享', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10896', '5', '10174', null, '10423', null, '微网站（用户）-项目活动-公司名片', ' 报名', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10897', '6', '10174', null, '10469', null, '微网站（用户）-项目活动-公司名片', ' 消息反馈（移动管家名片）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10898', '7', '10174', null, '10424', null, '微网站（用户）-项目活动-公司名片', ' 数据统计', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exefunc` VALUES ('10899', '1', '10175', null, '10482', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按国家地区', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10900', '2', '10175', null, '10483', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目类型', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10901', '3', '10175', null, '10484', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-按项目状态', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10902', '4', '10175', null, '10485', null, '微站CRM后台- 项目资料库-项目管理', ' 快速查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10903', '5', '10175', null, '10486', null, '微站CRM后台- 项目资料库-项目管理', ' 查询-上线日期范围', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10904', '6', '10175', null, '10487', null, '微站CRM后台- 项目资料库-项目管理', ' 组合查询', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10905', '7', '10175', null, '10488', null, '微站CRM后台- 项目资料库-项目管理', ' 项目列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10906', '8', '10175', null, '10489', null, '微站CRM后台- 项目资料库-项目管理', '项目-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10907', '9', '10175', null, '10490', null, '微站CRM后台- 项目资料库-项目管理', ' 扩展推荐', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10908', '10', '10175', null, '10491', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10909', '11', '10175', null, '10492', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-暂停', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10910', '12', '10175', null, '10493', null, '微站CRM后台- 项目资料库-项目管理', ' 项目-发布（在编辑页面里）', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10911', '1', '10176', null, '10494', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10912', '2', '10176', null, '10495', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10913', '3', '10176', null, '10496', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10914', '4', '10176', null, '10497', null, '微站CRM后台- 项目管理-申请流程', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10915', '5', '10176', null, '10498', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10916', '6', '10176', null, '10499', null, '微站CRM后台- 项目管理-申请流程', ' 办理流程-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10917', '1', '10177', null, '10500', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10918', '2', '10177', null, '10501', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10919', '3', '10177', null, '10502', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10920', '4', '10177', null, '10503', null, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10921', '5', '10177', null, '10504', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10922', '6', '10177', null, '10505', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exefunc` VALUES ('10923', '1', '10178', null, '10506', null, '微站CRM后台- 项目管理-材料清单', ' 材料清单列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10924', '2', '10178', null, '10507', null, '微站CRM后台- 项目管理-材料清单', ' 材料-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10925', '3', '10178', null, '10508', null, '微站CRM后台- 项目管理-材料清单', ' 材料-导入', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10926', '4', '10178', null, '10509', null, '微站CRM后台- 项目管理-材料清单', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10927', '5', '10178', null, '10510', null, '微站CRM后台- 项目管理-材料清单', ' 材料-样例', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10928', '6', '10178', null, '10511', null, '微站CRM后台- 项目管理-材料清单', ' 材料-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10929', '7', '10178', null, '10512', null, '微站CRM后台- 项目管理-材料清单', ' 材料-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exefunc` VALUES ('10930', '1', '10179', null, '10513', null, '微站CRM后台- 项目-图片', ' 图片-列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10931', '2', '10179', null, '10514', null, '微站CRM后台- 项目-图片', ' 项目图片-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10932', '3', '10179', null, '10515', null, '微站CRM后台- 项目-图片', ' 上移/下移/置顶', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10933', '4', '10179', null, '10516', null, '微站CRM后台- 项目-图片', ' 项目图片-编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10934', '5', '10179', null, '10517', null, '微站CRM后台- 项目-图片', ' 项目图片-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exefunc` VALUES ('10935', '1', '10180', null, '10518', null, '微站CRM后台-项目资料库-移民评估', ' 问题-新增', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10936', '2', '10180', null, '10519', null, '微站CRM后台-项目资料库-移民评估', ' 问题列表', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10937', '3', '10180', null, '10520', null, '微站CRM后台-项目资料库-移民评估', ' 问题编辑', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10938', '4', '10180', null, '10521', null, '微站CRM后台-项目资料库-移民评估', ' 问题-删除', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10939', '5', '10180', null, '10522', null, '微站CRM后台-项目资料库-移民评估', ' 权重-保存', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10940', '6', '10180', null, '10523', null, '微站CRM后台-项目资料库-移民评估', ' 问卷-发布', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exefunc` VALUES ('10941', '1', '10181', null, '10558', null, '微网站（用户）- 首页-移民评估', ' 填写评估问题', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10942', '2', '10181', null, '10559', null, '微网站（用户）- 首页-移民评估', ' 展示评估结果', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exefunc` VALUES ('10943', '1', '10182', null, '10557', null, '微网站（用户）-首页', ' 移民评估入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10944', '2', '10182', null, '10585', null, '微网站（用户）-首页', '专属管家入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10945', '3', '10182', null, '10586', null, '微网站（用户）-首页', ' 专享活动入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10946', '4', '10182', null, '10587', null, '微网站（用户）-首页', ' 生活体验入口', null, null, null, null, 'NoBug', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exefunc` VALUES ('10947', '1', '10183', null, '10500', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:14');
INSERT INTO `zt_tp_exefunc` VALUES ('10948', '2', '10183', null, '10501', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-新增', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:16');
INSERT INTO `zt_tp_exefunc` VALUES ('10949', '3', '10183', null, '10502', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-导入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:18');
INSERT INTO `zt_tp_exefunc` VALUES ('10950', '4', '10183', null, '10503', null, '微站CRM后台- 项目管理-费用详情', ' 上移/下移/置顶', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:21');
INSERT INTO `zt_tp_exefunc` VALUES ('10951', '5', '10183', null, '10504', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-编辑', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:27');
INSERT INTO `zt_tp_exefunc` VALUES ('10952', '6', '10183', null, '10505', null, '微站CRM后台- 项目管理-费用详情', ' 费用详情-删除', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:44:24');

-- ----------------------------
-- Table structure for `zt_tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_exescene`;
CREATE TABLE `zt_tp_exescene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `stagetesterid` int(11) DEFAULT NULL,
  `pathid` int(11) DEFAULT '0',
  `sceneid` int(11) DEFAULT '0',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `results` varchar(5) DEFAULT '未测试',
  `flow` varchar(300) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `isrunning` int(11) DEFAULT NULL,
  `testtime` timestamp NULL DEFAULT NULL,
  `runningip` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_exescene
-- ----------------------------
INSERT INTO `zt_tp_exescene` VALUES ('10087', '1', 'M', '10045', '10163', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-列表及介绍', '通过', '“微网站（用户）- 专属管家-列表及介绍“下所有功能点', null, null, '2016-12-09 11:15:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:20');
INSERT INTO `zt_tp_exescene` VALUES ('10088', '1', 'M', '10046', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '失败', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, '2016-12-09 11:53:08', '192.168.6.142', '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:53:08');
INSERT INTO `zt_tp_exescene` VALUES ('10089', '2', 'M', '10045', '10164', '0', '2', '【功能】', '默认', '微网站（用户）- 专享活动', '未测试', '“微网站（用户）- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:18', '2016-12-09 11:16:18');
INSERT INTO `zt_tp_exescene` VALUES ('10090', '3', 'M', '10045', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '未测试', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `zt_tp_exescene` VALUES ('10096', '3', 'M', '10048', '0', '10033', '3', '关注用户', '默认', '在公众订阅号，直接打开并提交报名', '通过', '微信号个人中心->公司名片->提交报名', '', null, '2016-12-12 15:24:07', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:24', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10097', '4', 'M', '10048', '0', '10034', '2', '专属管家', '未开启个人名片时', '分享公司名片', '通过', '', null, null, '2016-12-12 15:23:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:27', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10098', '5', 'M', '10048', '0', '10035', '2', '专属管家', '开启个人名片', '分享公司名片-分享个人名片', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:31', '2016-12-12 16:23:29');
INSERT INTO `zt_tp_exescene` VALUES ('10094', '1', 'M', '10049', '0', '10033', '3', '默认', '默认', 'asd', '未测试', 'asd', '', null, null, null, '魏斌', '魏斌', '2016-12-09 11:51:25', '2016-12-09 11:51:25');
INSERT INTO `zt_tp_exescene` VALUES ('10095', '2', 'M', '10048', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-12 15:16:44', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 16:23:28');
INSERT INTO `zt_tp_exescene` VALUES ('10099', '6', 'M', '10048', '0', '10036', '2', '关注用户', '在管家分享后', '管家名片填写报名信息', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:34', '2016-12-12 16:23:29');
INSERT INTO `zt_tp_exescene` VALUES ('10100', '1', 'M', '10048', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '失败', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-12 17:05:31', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 17:04:40');
INSERT INTO `zt_tp_exescene` VALUES ('10101', '1', 'M', '10051', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 20:15:10', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:19');
INSERT INTO `zt_tp_exescene` VALUES ('10102', '2', 'M', '10051', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:09:22', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 21:08:31');
INSERT INTO `zt_tp_exescene` VALUES ('10103', '1', 'M', '10052', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '失败', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 21:02:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:29');
INSERT INTO `zt_tp_exescene` VALUES ('10104', '2', 'M', '10052', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:07:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:48', '2016-12-12 21:06:23');
INSERT INTO `zt_tp_exescene` VALUES ('10105', '1', 'M', '10053', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-13 13:00:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:59:17');
INSERT INTO `zt_tp_exescene` VALUES ('10106', '2', 'M', '10053', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-13 16:41:11', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:17', '2016-12-13 16:40:21');
INSERT INTO `zt_tp_exescene` VALUES ('10107', '1', 'M', '10054', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-14 12:17:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 12:16:56');
INSERT INTO `zt_tp_exescene` VALUES ('10108', '2', 'M', '10054', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '失败', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-14 12:17:03', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:46', '2016-12-14 12:16:18');
INSERT INTO `zt_tp_exescene` VALUES ('10109', '3', 'M', '10054', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '失败', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-15 10:34:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:52');
INSERT INTO `zt_tp_exescene` VALUES ('10110', '1', 'M', '10055', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-19 16:05:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:45', '2016-12-19 16:05:45');
INSERT INTO `zt_tp_exescene` VALUES ('10111', '2', 'M', '10055', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-19 16:16:22', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:47', '2016-12-19 16:16:22');
INSERT INTO `zt_tp_exescene` VALUES ('10112', '3', 'M', '10055', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-19 16:35:26', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:50', '2016-12-19 16:35:26');
INSERT INTO `zt_tp_exescene` VALUES ('10113', '4', 'M', '10055', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-19 15:18:23', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:53:57', '2016-12-19 15:18:23');
INSERT INTO `zt_tp_exescene` VALUES ('10114', '5', 'M', '10055', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-19 15:18:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 14:54:01', '2016-12-19 15:18:14');
INSERT INTO `zt_tp_exescene` VALUES ('10115', '6', 'M', '10055', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-19 15:49:04', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:47:55', '2016-12-19 15:49:04');
INSERT INTO `zt_tp_exescene` VALUES ('10116', '7', 'M', '10055', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, '2016-12-19 16:16:44', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:48:06', '2016-12-19 16:16:44');
INSERT INTO `zt_tp_exescene` VALUES ('10117', '8', 'M', '10055', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '失败', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, '2016-12-19 16:19:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-19 15:48:10', '2016-12-19 16:19:02');
INSERT INTO `zt_tp_exescene` VALUES ('10118', '1', 'M', '10056', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-20 16:47:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:36', '2016-12-20 16:47:59');
INSERT INTO `zt_tp_exescene` VALUES ('10119', '2', 'M', '10056', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-20 16:55:17', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:39', '2016-12-20 16:55:17');
INSERT INTO `zt_tp_exescene` VALUES ('10120', '3', 'M', '10056', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-20 17:04:20', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:44', '2016-12-20 17:04:20');
INSERT INTO `zt_tp_exescene` VALUES ('10121', '4', 'M', '10056', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-20 17:05:31', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:53', '2016-12-20 17:05:31');
INSERT INTO `zt_tp_exescene` VALUES ('10122', '5', 'M', '10056', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '通过', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, '2016-12-20 17:05:48', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:42:58', '2016-12-20 17:05:48');
INSERT INTO `zt_tp_exescene` VALUES ('10123', '6', 'M', '10056', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '通过', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, '2016-12-20 17:09:02', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:02', '2016-12-20 17:09:02');
INSERT INTO `zt_tp_exescene` VALUES ('10124', '7', 'M', '10056', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-20 17:11:55', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:09', '2016-12-20 17:11:55');
INSERT INTO `zt_tp_exescene` VALUES ('10125', '8', 'M', '10056', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '通过', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-20 17:12:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-20 09:43:15', '2016-12-20 17:12:52');
INSERT INTO `zt_tp_exescene` VALUES ('10126', '1', 'M', '10057', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '通过', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-22 11:29:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:13', '2016-12-22 11:29:39');
INSERT INTO `zt_tp_exescene` VALUES ('10127', '2', 'M', '10057', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '通过', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-22 11:30:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:16', '2016-12-22 11:30:38');
INSERT INTO `zt_tp_exescene` VALUES ('10128', '3', 'M', '10057', '10224', '0', '2', '【功能】', '默认', '微站CRM后台-数据中心-获客列表', '失败', '“微站CRM后台-数据中心-获客列表“下所有功能点', null, null, '2016-12-22 11:42:59', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 09:21:25', '2016-12-22 11:42:59');
INSERT INTO `zt_tp_exescene` VALUES ('10129', '4', 'M', '10057', '10225', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-名片流量', '未测试', '“微站CRM后台- 数据中心-名片流量“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:38', '2016-12-21 09:21:38');
INSERT INTO `zt_tp_exescene` VALUES ('10130', '5', 'M', '10057', '10226', '0', '2', '【功能】', '默认', '微站CRM后台- 数据中心-微信号设置', '未测试', '“微站CRM后台- 数据中心-微信号设置“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:42', '2016-12-21 09:21:42');
INSERT INTO `zt_tp_exescene` VALUES ('10131', '6', 'M', '10057', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '未测试', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:51', '2016-12-21 09:21:51');
INSERT INTO `zt_tp_exescene` VALUES ('10132', '7', 'M', '10057', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '未测试', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:21:56', '2016-12-21 09:21:56');
INSERT INTO `zt_tp_exescene` VALUES ('10133', '8', 'M', '10057', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 09:24:10', '2016-12-21 09:24:10');
INSERT INTO `zt_tp_exescene` VALUES ('10134', '1', 'M', '10058', '10141', '0', '2', '【功能】', '默认', '微站CRM后台- 登录', '通过', '“微站CRM后台- 登录“下所有功能点', null, null, '2016-12-21 18:20:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:00:06', '2016-12-21 18:20:08');
INSERT INTO `zt_tp_exescene` VALUES ('10135', '2', 'M', '10058', '10171', '0', '2', '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '通过', '“微网站（用户）- 项目活动-生活体验“下所有功能点', null, null, '2016-12-22 17:24:12', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:09:37', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10136', '3', 'M', '10058', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '通过', '“微网站（用户）-项目活动-公司名片“下所有功能点', null, null, '2016-12-22 17:38:14', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:09:46', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10137', '4', 'M', '10058', '10176', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '通过', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', null, null, '2016-12-23 11:11:01', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:16', '2016-12-23 11:11:01');
INSERT INTO `zt_tp_exescene` VALUES ('10138', '5', 'M', '10058', '10227', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '通过', '“微站CRM后台- 项目管理-申请流程“下所有功能点', null, null, '2016-12-23 10:49:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:19', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10139', '6', 'M', '10058', '10229', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '通过', '“微站CRM后台- 项目管理-材料清单“下所有功能点', null, null, '2016-12-23 11:04:39', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:27', '2016-12-23 11:09:08');
INSERT INTO `zt_tp_exescene` VALUES ('10140', '8', 'M', '10058', '10230', '0', '2', '【功能】', '默认', '微站CRM后台- 项目-图片', '通过', '“微站CRM后台- 项目-图片“下所有功能点', null, null, '2016-12-23 14:05:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:30', '2016-12-23 14:05:25');
INSERT INTO `zt_tp_exescene` VALUES ('10141', '9', 'M', '10058', '10177', '0', '2', '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '通过', '“微站CRM后台-项目资料库-移民评估“下所有功能点', null, null, '2016-12-23 17:49:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:52', '2016-12-23 17:49:42');
INSERT INTO `zt_tp_exescene` VALUES ('10142', '11', 'M', '10058', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '通过', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, '2016-12-23 15:44:45', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:10:56', '2016-12-23 15:44:45');
INSERT INTO `zt_tp_exescene` VALUES ('10143', '12', 'M', '10058', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '通过', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, '2016-12-23 16:20:38', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:04', '2016-12-23 16:20:38');
INSERT INTO `zt_tp_exescene` VALUES ('10144', '13', 'M', '10058', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '通过', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, '2016-12-23 17:08:37', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:16', '2016-12-23 17:08:37');
INSERT INTO `zt_tp_exescene` VALUES ('10145', '10', 'M', '10058', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '通过', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, '2016-12-23 17:11:58', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:20', '2016-12-23 17:11:58');
INSERT INTO `zt_tp_exescene` VALUES ('10146', '14', 'M', '10058', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '失败', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, '2016-12-23 17:26:25', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-21 17:11:27', '2016-12-23 17:26:25');
INSERT INTO `zt_tp_exescene` VALUES ('10147', '7', 'M', '10059', '10143', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:57', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10148', '8', 'M', '10059', '10232', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:11:59', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10149', '9', 'M', '10059', '10233', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:02', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10150', '6', 'M', '10059', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:42', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10151', '1', 'M', '10059', '10234', '0', '2', '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:51', '2016-12-21 17:12:51');
INSERT INTO `zt_tp_exescene` VALUES ('10152', '2', 'M', '10059', '10161', '0', '2', '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:12:57', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10153', '3', 'M', '10059', '10162', '0', '2', '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:41', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10154', '4', 'M', '10059', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:46', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10155', '5', 'M', '10059', '10168', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-21 17:13:51', '2016-12-23 11:10:23');
INSERT INTO `zt_tp_exescene` VALUES ('10156', '1', 'M', '10061', '10234', '0', '2', '【功能】', '默认', '微网站（用户）- 登录', '未测试', '“微网站（用户）- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:04', '2016-12-22 09:35:04');
INSERT INTO `zt_tp_exescene` VALUES ('10157', '2', 'M', '10061', '10173', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-商务合作', '未测试', '“微网站（用户）-项目活动-商务合作“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:35:45', '2016-12-22 09:35:45');
INSERT INTO `zt_tp_exescene` VALUES ('10158', '3', 'M', '10061', '10143', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-国家管理', '未测试', '“微站CRM后台- 项目资料库-国家管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:06', '2016-12-22 09:36:06');
INSERT INTO `zt_tp_exescene` VALUES ('10159', '4', 'M', '10061', '10232', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民城市', '未测试', '“微站CRM后台- 国家管理-移民城市“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:09', '2016-12-22 09:36:09');
INSERT INTO `zt_tp_exescene` VALUES ('10160', '5', 'M', '10061', '10233', '0', '2', '【功能】', '默认', '微站CRM后台- 国家管理-移民政策', '未测试', '“微站CRM后台- 国家管理-移民政策“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:11', '2016-12-22 09:36:11');
INSERT INTO `zt_tp_exescene` VALUES ('10161', '6', 'M', '10061', '10141', '0', '2', '【功能】', '默认', '微站CRM后台- 登录', '未测试', '“微站CRM后台- 登录“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:13', '2016-12-22 09:36:13');
INSERT INTO `zt_tp_exescene` VALUES ('10162', '1', 'M', '10063', '10164', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 专享活动', '未测试', '“微网站（用户）-项目活动- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:36:45', '2016-12-22 09:36:45');
INSERT INTO `zt_tp_exescene` VALUES ('10163', '2', 'M', '10063', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:20', '2016-12-22 09:37:20');
INSERT INTO `zt_tp_exescene` VALUES ('10164', '3', 'M', '10063', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:32', '2016-12-22 09:37:32');
INSERT INTO `zt_tp_exescene` VALUES ('10165', '4', 'M', '10063', '10181', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-移民管家', '未测试', '“微站CRM后台- 内容发布-移民管家“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:37:55', '2016-12-22 09:37:55');
INSERT INTO `zt_tp_exescene` VALUES ('10166', '5', 'M', '10063', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:20', '2016-12-22 09:38:20');
INSERT INTO `zt_tp_exescene` VALUES ('10167', '6', 'M', '10063', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:24', '2016-12-22 09:38:24');
INSERT INTO `zt_tp_exescene` VALUES ('10168', '1', 'M', '10062', '10171', '0', '2', '【功能】', '默认', '微网站（用户）- 项目活动-生活体验', '未测试', '“微网站（用户）- 项目活动-生活体验“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:38:58', '2016-12-22 09:38:58');
INSERT INTO `zt_tp_exescene` VALUES ('10169', '2', 'M', '10062', '10144', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-栏目管理', '未测试', '“微站CRM后台- 内容发布-栏目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:36', '2016-12-22 09:39:36');
INSERT INTO `zt_tp_exescene` VALUES ('10170', '3', 'M', '10062', '10179', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-资讯发布', '未测试', '“微站CRM后台- 内容发布-资讯发布“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:39:47', '2016-12-22 09:39:47');
INSERT INTO `zt_tp_exescene` VALUES ('10171', '4', 'M', '10062', '10180', '0', '2', '【功能】', '默认', '微站CRM后台- 内容发布-活动管理', '未测试', '“微站CRM后台- 内容发布-活动管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:09', '2016-12-22 09:40:09');
INSERT INTO `zt_tp_exescene` VALUES ('10172', '5', 'M', '10062', '10231', '0', '2', '【功能】', '默认', '微站CRM后台- 活动管理-报名人数', '未测试', '“微站CRM后台- 活动管理-报名人数“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:19', '2016-12-22 09:40:19');
INSERT INTO `zt_tp_exescene` VALUES ('10173', '1', 'M', '10060', '10168', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动- 移民项目', '未测试', '“微网站（用户）-项目活动- 移民项目“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:50', '2016-12-22 09:40:50');
INSERT INTO `zt_tp_exescene` VALUES ('10174', '2', 'M', '10060', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-项目活动-公司名片', '未测试', '“微网站（用户）-项目活动-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:40:54', '2016-12-22 09:40:54');
INSERT INTO `zt_tp_exescene` VALUES ('10175', '3', 'M', '10060', '10176', '0', '2', '【功能】', '默认', '微站CRM后台- 项目资料库-项目管理', '未测试', '“微站CRM后台- 项目资料库-项目管理“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:16', '2016-12-22 09:41:16');
INSERT INTO `zt_tp_exescene` VALUES ('10176', '4', 'M', '10060', '10227', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-申请流程', '未测试', '“微站CRM后台- 项目管理-申请流程“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:21', '2016-12-22 09:41:21');
INSERT INTO `zt_tp_exescene` VALUES ('10177', '5', 'M', '10060', '10228', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '未测试', '“微站CRM后台- 项目管理-费用详情“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:25', '2016-12-22 09:41:25');
INSERT INTO `zt_tp_exescene` VALUES ('10178', '6', 'M', '10060', '10229', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-材料清单', '未测试', '“微站CRM后台- 项目管理-材料清单“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:30', '2016-12-22 09:41:30');
INSERT INTO `zt_tp_exescene` VALUES ('10179', '7', 'M', '10060', '10230', '0', '2', '【功能】', '默认', '微站CRM后台- 项目-图片', '未测试', '“微站CRM后台- 项目-图片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 09:41:33', '2016-12-22 09:41:33');
INSERT INTO `zt_tp_exescene` VALUES ('10180', '8', 'M', '10060', '10177', '0', '2', '【功能】', '默认', '微站CRM后台-项目资料库-移民评估', '未测试', '“微站CRM后台-项目资料库-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:39', '2016-12-22 10:34:39');
INSERT INTO `zt_tp_exescene` VALUES ('10181', '9', 'M', '10060', '10162', '0', '2', '【功能】', '默认', '微网站（用户）- 首页-移民评估', '未测试', '“微网站（用户）- 首页-移民评估“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:34:47', '2016-12-22 10:34:47');
INSERT INTO `zt_tp_exescene` VALUES ('10182', '10', 'M', '10060', '10161', '0', '2', '【功能】', '默认', '微网站（用户）-首页', '未测试', '“微网站（用户）-首页“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-22 10:36:13', '2016-12-22 10:36:13');
INSERT INTO `zt_tp_exescene` VALUES ('10183', '7', 'M', '10058', '10228', '0', '2', '【功能】', '默认', '微站CRM后台- 项目管理-费用详情', '通过', '“微站CRM后台- 项目管理-费用详情“下所有功能点', null, null, '2016-12-23 11:43:57', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-22 10:36:55', '2016-12-23 11:43:57');

-- ----------------------------
-- Table structure for `zt_tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_func`;
CREATE TABLE `zt_tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10591 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_func
-- ----------------------------
INSERT INTO `zt_tp_func` VALUES ('10413', '6', ' 在线咨询', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:28:03');
INSERT INTO `zt_tp_func` VALUES ('10412', '5', ' 电话咨询', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:46');
INSERT INTO `zt_tp_func` VALUES ('10408', '1', ' 管家列表', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:57');
INSERT INTO `zt_tp_func` VALUES ('10409', '2', ' 管家详情', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:28:13');
INSERT INTO `zt_tp_func` VALUES ('10410', '3', ' 绑定管家', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:51');
INSERT INTO `zt_tp_func` VALUES ('10411', '4', ' 微信关注', '正常', '10163', '8', '未测试', '腰立辉', '2017-01-13 18:27:47');
INSERT INTO `zt_tp_func` VALUES ('10419', '1', ' 公司介绍', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:49');
INSERT INTO `zt_tp_func` VALUES ('10414', '1', ' 我的管家信息', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:20');
INSERT INTO `zt_tp_func` VALUES ('10415', '2', '点赞', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:21');
INSERT INTO `zt_tp_func` VALUES ('10416', '3', ' 评价', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:22');
INSERT INTO `zt_tp_func` VALUES ('10417', '4', ' 分享管家名片', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:23');
INSERT INTO `zt_tp_func` VALUES ('10418', '5', ' 解除绑定', '正常', '10174', '9', '未测试', '腰立辉', '2017-01-13 18:25:24');
INSERT INTO `zt_tp_func` VALUES ('10420', '2', ' 重点项目', '正常', '10175', '9', '未测试', '腰立辉', '2017-01-13 18:25:33');
INSERT INTO `zt_tp_func` VALUES ('10421', '3', ' 名片信息', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:44');
INSERT INTO `zt_tp_func` VALUES ('10422', '4', ' 公司名片分享', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:54');
INSERT INTO `zt_tp_func` VALUES ('10423', '5', ' 报名', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:55');
INSERT INTO `zt_tp_func` VALUES ('10401', '1', ' 简介', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:28:02');
INSERT INTO `zt_tp_func` VALUES ('10402', '3', ' 获取验证码', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:56');
INSERT INTO `zt_tp_func` VALUES ('10403', '4', ' 登录', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:43');
INSERT INTO `zt_tp_func` VALUES ('10404', '5', ' 提交信息', '正常', '10173', '8', '失败', '腰立辉', '2017-01-13 18:27:48');
INSERT INTO `zt_tp_func` VALUES ('10405', '6', ' 查询合作状态', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:53');
INSERT INTO `zt_tp_func` VALUES ('10406', '7', ' 驳回后重提', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:52');
INSERT INTO `zt_tp_func` VALUES ('10424', '7', ' 数据统计', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:28:05');
INSERT INTO `zt_tp_func` VALUES ('10425', '1', ' 管家新增', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:34');
INSERT INTO `zt_tp_func` VALUES ('10426', '2', ' 管家编辑', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:58');
INSERT INTO `zt_tp_func` VALUES ('10427', '3', ' 管家评价', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:38');
INSERT INTO `zt_tp_func` VALUES ('10428', '4', ' 聘用情况', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:37');
INSERT INTO `zt_tp_func` VALUES ('10429', '5', ' 管家详情', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:36');
INSERT INTO `zt_tp_func` VALUES ('10430', '6', ' 服务用户（列表）', '正常', '10181', '9', '未测试', '腰立辉', '2017-01-13 18:25:35');
INSERT INTO `zt_tp_func` VALUES ('10431', '1', ' 登录', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:17');
INSERT INTO `zt_tp_func` VALUES ('10432', '2', ' 注销', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:26');
INSERT INTO `zt_tp_func` VALUES ('10433', '3', ' 修改密码', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:30:52');
INSERT INTO `zt_tp_func` VALUES ('10434', '4', ' 切换平台', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:31:09');
INSERT INTO `zt_tp_func` VALUES ('10435', '5', ' 菜单的收齐/展开', '正常', '10152', '109', '未测试', '腰立辉', '2016-12-06 10:36:30');
INSERT INTO `zt_tp_func` VALUES ('10436', '1', ' New Feedbacks', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:36:57');
INSERT INTO `zt_tp_func` VALUES ('10437', '2', ' 新订单', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:37:21');
INSERT INTO `zt_tp_func` VALUES ('10438', '3', ' Brand Popularity', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:37:57');
INSERT INTO `zt_tp_func` VALUES ('10439', '4', ' 销售额', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:05');
INSERT INTO `zt_tp_func` VALUES ('10440', '5', ' 访问量', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:18');
INSERT INTO `zt_tp_func` VALUES ('10441', '6', ' Actives', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:40');
INSERT INTO `zt_tp_func` VALUES ('10442', '7', ' Server Load', '正常', '10191', '109', '未测试', '腰立辉', '2016-12-06 10:38:57');
INSERT INTO `zt_tp_func` VALUES ('10445', '3', ' 选手列表', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:29');
INSERT INTO `zt_tp_func` VALUES ('10446', '4', ' 投票', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:52');
INSERT INTO `zt_tp_func` VALUES ('10447', '2', ' 拨打400电话', '正常', '10173', '8', '通过', '腰立辉', '2017-01-13 18:27:30');
INSERT INTO `zt_tp_func` VALUES ('10448', '1', ' 规则介绍', '正常', '10201', '110', '失败', '腰立辉', '2016-12-13 13:03:38');
INSERT INTO `zt_tp_func` VALUES ('10449', '2', ' 背景音乐', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:01:18');
INSERT INTO `zt_tp_func` VALUES ('10450', '5', ' 播放选手歌曲', '正常', '10201', '110', '通过', '腰立辉', '2016-12-13 13:02:02');
INSERT INTO `zt_tp_func` VALUES ('10451', '1', ' 首页', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:07');
INSERT INTO `zt_tp_func` VALUES ('10452', '2', ' 点击（首页）进入', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:31');
INSERT INTO `zt_tp_func` VALUES ('10453', '3', ' 项目列表', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:48:56');
INSERT INTO `zt_tp_func` VALUES ('10454', '5', ' 项目详情', '正常', '10202', '110', '未测试', '腰立辉', '2016-12-13 11:55:28');
INSERT INTO `zt_tp_func` VALUES ('10455', '6', ' 详情视频', '正常', '10202', '110', '失败', '腰立辉', '2016-12-13 16:40:42');
INSERT INTO `zt_tp_func` VALUES ('10456', '4', ' 项目投票', '正常', '10202', '110', '通过', '腰立辉', '2016-12-13 16:56:16');
INSERT INTO `zt_tp_func` VALUES ('10457', '7', ' 官网链接', '正常', '10202', '110', '未测试', '腰立辉', '2016-12-13 11:55:51');
INSERT INTO `zt_tp_func` VALUES ('10458', '1', ' 查询-按地区', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:29');
INSERT INTO `zt_tp_func` VALUES ('10459', '2', ' 查询-按合作方式', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:28');
INSERT INTO `zt_tp_func` VALUES ('10460', '3', ' 查询-按状态', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:27');
INSERT INTO `zt_tp_func` VALUES ('10461', '4', ' 查询-按联系方式', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:34');
INSERT INTO `zt_tp_func` VALUES ('10462', '5', ' 组合查询', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:35');
INSERT INTO `zt_tp_func` VALUES ('10463', '6', '商务合作列表', '正常', '10203', '8', '失败', '腰立辉', '2017-01-13 18:27:36');
INSERT INTO `zt_tp_func` VALUES ('10464', '7', '编辑/ 查看进度入口', '正常', '10203', '8', '通过', '腰立辉', '2017-01-13 18:27:37');
INSERT INTO `zt_tp_func` VALUES ('10465', '1', ' 申请资料信息', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:38');
INSERT INTO `zt_tp_func` VALUES ('10466', '2', ' 洽谈进度维护', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:39');
INSERT INTO `zt_tp_func` VALUES ('10467', '3', ' 洽谈进度历史', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:40');
INSERT INTO `zt_tp_func` VALUES ('10468', '4', ' 处理结果', '正常', '10204', '8', '通过', '腰立辉', '2017-01-13 18:27:40');
INSERT INTO `zt_tp_func` VALUES ('10469', '6', ' 消息反馈（移动管家名片）', '正常', '10175', '8', '通过', '腰立辉', '2017-01-13 18:27:42');
INSERT INTO `zt_tp_func` VALUES ('10470', '1', ' 获客列表', '正常', '10224', '8', '通过', '腰立辉', '2017-01-13 18:27:33');
INSERT INTO `zt_tp_func` VALUES ('10471', '2', ' 查询筛选', '正常', '10224', '8', '失败', '腰立辉', '2017-01-13 18:27:32');
INSERT INTO `zt_tp_func` VALUES ('10472', '1', ' 名片流量列表', '正常', '10225', '8', '通过', '腰立辉', '2017-01-13 18:27:50');
INSERT INTO `zt_tp_func` VALUES ('10473', '2', ' 转化率计算', '正常', '10225', '8', '通过', '腰立辉', '2017-01-13 18:27:32');
INSERT INTO `zt_tp_func` VALUES ('10474', '1', '微信号列表（打开过且未设置）', '正常', '10226', '8', '失败', '腰立辉', '2017-01-13 18:27:25');
INSERT INTO `zt_tp_func` VALUES ('10475', '2', ' 设置-入口', '正常', '10226', '8', '通过', '腰立辉', '2017-01-13 18:27:26');
INSERT INTO `zt_tp_func` VALUES ('10476', '3', ' 设置-选择用户', '正常', '10226', '8', '失败', '腰立辉', '2017-01-13 18:27:27');
INSERT INTO `zt_tp_func` VALUES ('10477', '4', ' 设置-绑定', '正常', '10226', '8', '通过', '腰立辉', '2017-01-13 18:27:31');
INSERT INTO `zt_tp_func` VALUES ('10478', '1', ' 登录', '正常', '10141', '108', '失败', '腰立辉', '2016-12-22 17:04:53');
INSERT INTO `zt_tp_func` VALUES ('10479', '2', ' 注销', '正常', '10141', '108', '未测试', '腰立辉', '2016-12-21 15:23:08');
INSERT INTO `zt_tp_func` VALUES ('10480', '3', ' 修改密码', '正常', '10141', '9', '通过', '腰立辉', '2017-01-13 18:25:18');
INSERT INTO `zt_tp_func` VALUES ('10481', '4', ' 切换平台', '正常', '10141', '108', '未测试', '腰立辉', '2016-12-21 15:23:19');
INSERT INTO `zt_tp_func` VALUES ('10482', '1', ' 查询-按国家地区', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:17');
INSERT INTO `zt_tp_func` VALUES ('10483', '2', ' 查询-按项目类型', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:40');
INSERT INTO `zt_tp_func` VALUES ('10484', '3', ' 查询-按项目状态', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:41');
INSERT INTO `zt_tp_func` VALUES ('10485', '4', ' 快速查询', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:57');
INSERT INTO `zt_tp_func` VALUES ('10486', '5', ' 查询-上线日期范围', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:56');
INSERT INTO `zt_tp_func` VALUES ('10487', '6', ' 组合查询', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:56');
INSERT INTO `zt_tp_func` VALUES ('10488', '7', ' 项目列表', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:55');
INSERT INTO `zt_tp_func` VALUES ('10489', '8', '项目-新增', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:53');
INSERT INTO `zt_tp_func` VALUES ('10490', '9', ' 扩展推荐', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:52');
INSERT INTO `zt_tp_func` VALUES ('10491', '10', ' 项目-编辑', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:50');
INSERT INTO `zt_tp_func` VALUES ('10492', '11', ' 项目-暂停', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:49');
INSERT INTO `zt_tp_func` VALUES ('10493', '12', ' 项目-发布（在编辑页面里）', '正常', '10176', '9', '未测试', '腰立辉', '2017-01-13 18:25:48');
INSERT INTO `zt_tp_func` VALUES ('10494', '1', ' 办理流程列表', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:47');
INSERT INTO `zt_tp_func` VALUES ('10495', '2', ' 办理流程-新增', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:46');
INSERT INTO `zt_tp_func` VALUES ('10496', '3', ' 办理流程-导入', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:42');
INSERT INTO `zt_tp_func` VALUES ('10497', '4', ' 上移/下移/置顶', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:41');
INSERT INTO `zt_tp_func` VALUES ('10498', '5', ' 办理流程-编辑', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:16');
INSERT INTO `zt_tp_func` VALUES ('10499', '6', ' 办理流程-删除', '正常', '10227', '9', '未测试', '腰立辉', '2017-01-13 18:25:15');
INSERT INTO `zt_tp_func` VALUES ('10500', '1', ' 费用详情列表', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:25:14');
INSERT INTO `zt_tp_func` VALUES ('10501', '2', ' 费用详情-新增', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:53');
INSERT INTO `zt_tp_func` VALUES ('10502', '3', ' 费用详情-导入', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:52');
INSERT INTO `zt_tp_func` VALUES ('10503', '4', ' 上移/下移/置顶', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:51');
INSERT INTO `zt_tp_func` VALUES ('10504', '5', ' 费用详情-编辑', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:49');
INSERT INTO `zt_tp_func` VALUES ('10505', '6', ' 费用详情-删除', '正常', '10228', '9', '未测试', '腰立辉', '2017-01-13 18:24:43');
INSERT INTO `zt_tp_func` VALUES ('10506', '1', ' 材料清单列表', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:42');
INSERT INTO `zt_tp_func` VALUES ('10507', '2', ' 材料-新增', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:39');
INSERT INTO `zt_tp_func` VALUES ('10508', '3', ' 材料-导入', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:38');
INSERT INTO `zt_tp_func` VALUES ('10509', '4', ' 上移/下移/置顶', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:36');
INSERT INTO `zt_tp_func` VALUES ('10510', '5', ' 材料-样例', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:35');
INSERT INTO `zt_tp_func` VALUES ('10511', '6', ' 材料-编辑', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:34');
INSERT INTO `zt_tp_func` VALUES ('10512', '7', ' 材料-删除', '正常', '10229', '9', '未测试', '腰立辉', '2017-01-13 18:24:32');
INSERT INTO `zt_tp_func` VALUES ('10513', '1', ' 图片-列表', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:31');
INSERT INTO `zt_tp_func` VALUES ('10514', '2', ' 项目图片-新增', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:55');
INSERT INTO `zt_tp_func` VALUES ('10515', '3', ' 上移/下移/置顶', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:24:56');
INSERT INTO `zt_tp_func` VALUES ('10516', '4', ' 项目图片-编辑', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:25:12');
INSERT INTO `zt_tp_func` VALUES ('10517', '5', ' 项目图片-删除', '正常', '10230', '9', '未测试', '腰立辉', '2017-01-13 18:25:12');
INSERT INTO `zt_tp_func` VALUES ('10518', '1', ' 问题-新增', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:10');
INSERT INTO `zt_tp_func` VALUES ('10519', '2', ' 问题列表', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:09');
INSERT INTO `zt_tp_func` VALUES ('10520', '3', ' 问题编辑', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:08');
INSERT INTO `zt_tp_func` VALUES ('10521', '4', ' 问题-删除', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:07');
INSERT INTO `zt_tp_func` VALUES ('10522', '5', ' 权重-保存', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:05');
INSERT INTO `zt_tp_func` VALUES ('10523', '6', ' 问卷-发布', '正常', '10177', '9', '未测试', '腰立辉', '2017-01-13 18:25:03');
INSERT INTO `zt_tp_func` VALUES ('10524', '1', ' 查询-按活动标题', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:02');
INSERT INTO `zt_tp_func` VALUES ('10525', '2', ' 活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:01');
INSERT INTO `zt_tp_func` VALUES ('10526', '3', ' 已发布活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:25:00');
INSERT INTO `zt_tp_func` VALUES ('10527', '4', ' 未发布活动列表', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:59');
INSERT INTO `zt_tp_func` VALUES ('10528', '5', ' 更新排序', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:57');
INSERT INTO `zt_tp_func` VALUES ('10529', '6', ' 活动-新增', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:24:29');
INSERT INTO `zt_tp_func` VALUES ('10530', '7', ' 活动-编辑', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:34');
INSERT INTO `zt_tp_func` VALUES ('10531', '8', ' 活动-发布', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:51');
INSERT INTO `zt_tp_func` VALUES ('10532', '9', ' 活动-下线', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:50');
INSERT INTO `zt_tp_func` VALUES ('10533', '10', ' 活动报名-入口', '正常', '10180', '9', '未测试', '腰立辉', '2017-01-13 18:26:48');
INSERT INTO `zt_tp_func` VALUES ('10534', '1', ' 查询-按姓名或手机号', '正常', '10231', '9', '未测试', '腰立辉', '2017-01-13 18:26:45');
INSERT INTO `zt_tp_func` VALUES ('10535', '2', ' 报名人员列表', '正常', '10231', '9', '未测试', '腰立辉', '2017-01-13 18:26:43');
INSERT INTO `zt_tp_func` VALUES ('10536', '1', ' 查询-按栏目名称', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:42');
INSERT INTO `zt_tp_func` VALUES ('10537', '2', ' 栏目列表', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:41');
INSERT INTO `zt_tp_func` VALUES ('10538', '3', ' 批量排序', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:40');
INSERT INTO `zt_tp_func` VALUES ('10539', '4', ' 栏目-新增', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:39');
INSERT INTO `zt_tp_func` VALUES ('10540', '5', ' 栏目-设置', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:38');
INSERT INTO `zt_tp_func` VALUES ('10541', '6', ' 栏目-删除', '正常', '10144', '9', '未测试', '腰立辉', '2017-01-13 18:26:37');
INSERT INTO `zt_tp_func` VALUES ('10542', '1', ' 按栏目过滤（左侧）', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:36');
INSERT INTO `zt_tp_func` VALUES ('10543', '2', ' 查询-按标题', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:35');
INSERT INTO `zt_tp_func` VALUES ('10544', '3', ' 查询-按状态', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:52');
INSERT INTO `zt_tp_func` VALUES ('10545', '4', ' 查询-组合查询', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:26:53');
INSERT INTO `zt_tp_func` VALUES ('10546', '5', ' 资讯列表', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:06');
INSERT INTO `zt_tp_func` VALUES ('10547', '6', ' 资讯-新增', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:05');
INSERT INTO `zt_tp_func` VALUES ('10548', '7', ' 资讯-编辑', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:04');
INSERT INTO `zt_tp_func` VALUES ('10549', '8', ' 资讯-删除', '正常', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:03');
INSERT INTO `zt_tp_func` VALUES ('10550', '9', ' 资讯-发布（未发现）', '待确认', '10179', '9', '未测试', '腰立辉', '2017-01-13 18:27:02');
INSERT INTO `zt_tp_func` VALUES ('10551', '1', ' 项目简介', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:27:01');
INSERT INTO `zt_tp_func` VALUES ('10552', '2', ' 项目优势', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:59');
INSERT INTO `zt_tp_func` VALUES ('10553', '3', ' 申请条件', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:59');
INSERT INTO `zt_tp_func` VALUES ('10554', '4', ' 办理流程（周期）', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:54');
INSERT INTO `zt_tp_func` VALUES ('10555', '5', ' 项目预约', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:27:07');
INSERT INTO `zt_tp_func` VALUES ('10556', '6', ' 评估入口', '正常', '10168', '9', '未测试', '腰立辉', '2017-01-13 18:26:55');
INSERT INTO `zt_tp_func` VALUES ('10557', '1', ' 移民评估入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:56');
INSERT INTO `zt_tp_func` VALUES ('10558', '1', ' 填写评估问题', '正常', '10162', '9', '未测试', '腰立辉', '2017-01-13 18:26:57');
INSERT INTO `zt_tp_func` VALUES ('10559', '2', ' 展示评估结果', '正常', '10162', '9', '未测试', '腰立辉', '2017-01-13 18:26:57');
INSERT INTO `zt_tp_func` VALUES ('10560', '1', ' 活动列表', '正常', '10164', '9', '未测试', '腰立辉', '2017-01-13 18:26:33');
INSERT INTO `zt_tp_func` VALUES ('10561', '2', ' 我要报名', '正常', '10164', '9', '未测试', '腰立辉', '2017-01-13 18:26:32');
INSERT INTO `zt_tp_func` VALUES ('10562', '1', ' 向往国家', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:11');
INSERT INTO `zt_tp_func` VALUES ('10563', '2', ' 向往城市', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:10');
INSERT INTO `zt_tp_func` VALUES ('10564', '3', ' 体验分类列表', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:09');
INSERT INTO `zt_tp_func` VALUES ('10565', '4', ' 体验详情', '正常', '10171', '9', '未测试', '腰立辉', '2017-01-13 18:26:08');
INSERT INTO `zt_tp_func` VALUES ('10566', '1', ' 查询-按国家名', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:08');
INSERT INTO `zt_tp_func` VALUES ('10567', '2', ' 查询-按地理分类', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:07');
INSERT INTO `zt_tp_func` VALUES ('10568', '3', ' 查询-按发布状态', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:05');
INSERT INTO `zt_tp_func` VALUES ('10569', '4', ' 国家列表', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:04');
INSERT INTO `zt_tp_func` VALUES ('10570', '5', ' 国家-新增', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:04');
INSERT INTO `zt_tp_func` VALUES ('10571', '6', ' 国家-编辑', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:03');
INSERT INTO `zt_tp_func` VALUES ('10572', '7', ' 国家-删除', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:02');
INSERT INTO `zt_tp_func` VALUES ('10573', '8', ' 国家-发布', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:01');
INSERT INTO `zt_tp_func` VALUES ('10574', '9', ' 国家-下线', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:00');
INSERT INTO `zt_tp_func` VALUES ('10575', '10', ' 国家详情-入口', '正常', '10143', '9', '未测试', '腰立辉', '2017-01-13 18:26:12');
INSERT INTO `zt_tp_func` VALUES ('10576', '1', ' 城市-新增', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:18');
INSERT INTO `zt_tp_func` VALUES ('10577', '2', ' 城市列表', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:31');
INSERT INTO `zt_tp_func` VALUES ('10578', '3', ' 城市-编辑', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:28');
INSERT INTO `zt_tp_func` VALUES ('10579', '4', ' 城市-删除', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:23');
INSERT INTO `zt_tp_func` VALUES ('10580', '5', ' 上传图片', '正常', '10232', '9', '未测试', '腰立辉', '2017-01-13 18:26:22');
INSERT INTO `zt_tp_func` VALUES ('10581', '1', ' 政策-新增', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:21');
INSERT INTO `zt_tp_func` VALUES ('10582', '2', ' 政策列表', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:20');
INSERT INTO `zt_tp_func` VALUES ('10583', '3', ' 政策-编辑', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:26:19');
INSERT INTO `zt_tp_func` VALUES ('10584', '4', ' 政策-删除', '正常', '10233', '9', '未测试', '腰立辉', '2017-01-13 18:25:59');
INSERT INTO `zt_tp_func` VALUES ('10585', '2', '专属管家入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:23');
INSERT INTO `zt_tp_func` VALUES ('10586', '3', ' 专享活动入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:24');
INSERT INTO `zt_tp_func` VALUES ('10587', '4', ' 生活体验入口', '正常', '10161', '9', '未测试', '腰立辉', '2017-01-13 18:26:25');
INSERT INTO `zt_tp_func` VALUES ('10588', '1', ' 获取验证码', '正常', '10234', '9', '未测试', '腰立辉', '2017-01-13 18:26:26');
INSERT INTO `zt_tp_func` VALUES ('10589', '2', ' 登录', '正常', '10234', '9', '未测试', '腰立辉', '2017-01-13 18:26:28');
INSERT INTO `zt_tp_func` VALUES ('10590', '2', '项目详情', '正常', '10175', '9', '未测试', '腰立辉', '2017-01-13 18:26:30');

-- ----------------------------
-- Table structure for `zt_tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_hcfunc`;
CREATE TABLE `zt_tp_hcfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `funcid` smallint(6) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(255) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_hcfunc
-- ----------------------------
INSERT INTO `zt_tp_hcfunc` VALUES ('103', '1', '10570', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', null, null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌');
INSERT INTO `zt_tp_hcfunc` VALUES ('104', '2', '10568', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', null, null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌');

-- ----------------------------
-- Table structure for `zt_tp_hr`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_hr`;
CREATE TABLE `zt_tp_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL COMMENT '职位',
  `istuij` smallint(1) NOT NULL DEFAULT '0',
  `sn` smallint(6) DEFAULT NULL,
  `num` smallint(3) DEFAULT '1' COMMENT '人数',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `desc` text COMMENT '描述',
  `salary` varchar(10) DEFAULT NULL COMMENT '薪酬',
  `prodid` smallint(6) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `rtime` date DEFAULT NULL COMMENT '发布时间',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_hr
-- ----------------------------
INSERT INTO `zt_tp_hr` VALUES ('13', '学徒工', '0', '2', '1', '招聘中', '吃苦耐劳', '面议', '1', '临城县兴临街转盘北100米路西；', '腰立辉', '2017-02-08', '2017-02-08 13:13:22');
INSERT INTO `zt_tp_hr` VALUES ('12', '设计人员', '1', '1', '2', '招聘中', '有电脑基础', '面议', '1', '临城县兴临街转盘北100米路西；', '腰立辉', '2017-02-08', '2017-02-19 19:03:54');
INSERT INTO `zt_tp_hr` VALUES ('16', '人力服务中心经理', '1', null, '1', '正常', '&lt;p&gt;\r\n	1.有组织能力&lt;/p&gt;\r\n&lt;p&gt;\r\n	2.脾气温和&lt;/p&gt;\r\n&lt;p&gt;\r\n	3.可以接受新鲜事物&lt;/p&gt;\r\n', '面议', '6', '张家口', '腰立辉', null, '2017-03-02 20:49:13');

-- ----------------------------
-- Table structure for `zt_tp_link`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_link`;
CREATE TABLE `zt_tp_link` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `url` varchar(100) NOT NULL COMMENT '友情链接url',
  `ord` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '友情链接排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_link
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_tp_page`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_page`;
CREATE TABLE `zt_tp_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `name` varchar(20) NOT NULL COMMENT '单页名称',
  `content` text NOT NULL COMMENT '单页内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_page
-- ----------------------------
INSERT INTO `zt_tp_page` VALUES ('12', '订单查询', '');
INSERT INTO `zt_tp_page` VALUES ('13', '退换货流程', '');
INSERT INTO `zt_tp_page` VALUES ('14', '退换货条款', '');
INSERT INTO `zt_tp_page` VALUES ('15', '用户协议', '');
INSERT INTO `zt_tp_page` VALUES ('16', '公司简介', '');
INSERT INTO `zt_tp_page` VALUES ('17', '联系我们', '<p>\r\n	1</p>\r\n');
INSERT INTO `zt_tp_page` VALUES ('18', '诚聘英才', '');
INSERT INTO `zt_tp_page` VALUES ('8', '支付方式', '');
INSERT INTO `zt_tp_page` VALUES ('9', '常见问题', '');
INSERT INTO `zt_tp_page` VALUES ('10', '配送时间及运费', '');
INSERT INTO `zt_tp_page` VALUES ('11', '验货与签收', '');
INSERT INTO `zt_tp_page` VALUES ('7', '购物指南', '');

-- ----------------------------
-- Table structure for `zt_tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_prosys`;
CREATE TABLE `zt_tp_prosys` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `branch` smallint(6) DEFAULT NULL,
  `project` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_prosys
-- ----------------------------
INSERT INTO `zt_tp_prosys` VALUES ('98', '2', '9', '腰立辉', '2017-01-15 17:16:27');
INSERT INTO `zt_tp_prosys` VALUES ('105', '3', '9', '腰立辉', '2017-01-16 11:08:24');
INSERT INTO `zt_tp_prosys` VALUES ('109', '2', '8', '腰立辉', '2017-01-15 17:28:54');
INSERT INTO `zt_tp_prosys` VALUES ('110', '3', '8', '腰立辉', '2017-01-15 17:29:00');

-- ----------------------------
-- Table structure for `zt_tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_risk`;
CREATE TABLE `zt_tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_risk
-- ----------------------------
INSERT INTO `zt_tp_risk` VALUES ('1002', '1', '额外企鹅去', 'C', '&lt;p&gt;\r\n	暂无方案&lt;/p&gt;\r\n', '8', '打开', '', '腰立辉', '2017-01-15 15:43:55');

-- ----------------------------
-- Table structure for `zt_tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_rules`;
CREATE TABLE `zt_tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_rules
-- ----------------------------
INSERT INTO `zt_tp_rules` VALUES ('10067', '1', ' 点击删除，弹出确认是否删除？是，删除本记录，否，关闭弹窗', '产品原型', '10512', '正常', '9', '', '腰立辉', '2017-01-13 18:12:06');
INSERT INTO `zt_tp_rules` VALUES ('10068', '1', ' 编辑模式下页面需加载当前编辑的原有数据', '需求原型', '10511', '正常', '9', '', '腰立辉', '2017-01-13 18:12:08');
INSERT INTO `zt_tp_rules` VALUES ('10069', '1', '点击发布项目状态置为&quot;上线&quot;，项目信息发布在微网站上  发布项目时需校验项目国家是否为发布状态', '需求原型', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10070', '1', ' 项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10071', '1', '  项目名称：必填属性，一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10072', '2', ' 项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', '10491', '待确认', '9', '<p>\r\n	确定要多选吗？</p>\r\n', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10073', '2', '  项目类型：  必填属性，输入方式：下拉选择，支持多级分类  多选；要求可灵活设置下拉选项，在字典设置处编辑即可', '需求原型', '10489', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10074', '3', ' 项目编号：系统自动生成，例如“美国投资移民“MGTZYM001', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10075', '4', ' 所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10076', '3', '  所在国家：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10077', '4', ' 项目示例：点击查看示例，弹出填写示例', '需求原型', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10078', '5', '  项目示例：点击查看示例，弹出填写示例', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10079', '6', '顾问名片： 若顾问名片模块选中则此项目将在顾问名片处展示', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10080', '3', ' 保存前生成项目编号，并与表单信息一并更新入库', '需求原型', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10081', '1', '排序： 选填项，输入限制：输入项必须是数字；默认值0', '需求原型', '10495', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10082', '1', '视频地址： //当媒体类型为视频时需要填写（必填）', '需求原型', '10514', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10083', '1', ' 保存按钮用于保存排序和匹配权重', '需求原型', '10522', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10084', '2', ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求原型', '10522', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10085', '1', ' 保存前校验权重和为100%，发布后网站前台评估问题更新', '需求文档 ', '10523', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10086', '1', ' 删除需要弹窗确认', '需求文档 ', '10521', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10087', '1', ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10088', '1', ' 作答模式是单选时，最多可选项默认为1且文本框不可编辑', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10089', '2', '最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10090', '2', ' 最多可选： 需要校验输入值是数字，且大于零的整数', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10091', '3', ' 答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10092', '3', '  答案选项设置：点击“设置”弹出匹配关系小窗', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10093', '4', ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10094', '4', ' 设置匹配关系树形列表取决于问题设置了哪些项目属性', '需求原型', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10095', '1', ' 活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', '10529', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10096', '1', '  活动标题：用于标识活动的个性化名称，不能重复添加', '需求原型', '10530', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10097', '1', ' 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页', '需求原型', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10098', '1', ' 申请条件展示图标、申请项、申请描述  后台设置申请项，最多展示7项，最少2项  申请描述限制15个字', '需求原型', '10553', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10099', '1', ' 确认后回到项目列表', '需求原型', '10555', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10100', '1', ' 首次进入加载2屏活动列表，上滑一次加载一屏', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10101', '2', ' 排序按活动时间倒序排序，同级按创建时间倒序排序', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10102', '3', ' 报名结束的活动 我要报名按钮不可点击', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10103', '4', '活动图片： 70*65  同首页专享活动 ；后台上传图片，如不上传展示默认图片', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10104', '5', ' 活动名称：最多一行（多了怎么办？）', '需求原型', '10560', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10105', '6', ' 活动时间：最多一行', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10106', '7', ' 活动地点：最多展示两行（多了怎么办？）', '需求原型', '10560', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10107', '8', ' 根据活动时间判断，如果活动时间未到，则展示火热报名中，如果活动结束后，变更为报名结束', '需求原型', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10108', '1', ' 【我要报名】点击后跳转到表单页', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10109', '2', ' 校验手机号长度是否正确', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10110', '3', ' 如用户已登录，则自动展示其手机号', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10111', '4', ' 修改备注描述（这句话是什么意思？）', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10112', '5', ' 活动图片：70*65  同首页专享活动', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10113', '6', '活动名称： 最多一行', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10114', '7', '活动描述： 最多展示3行，限制75个汉字（这个限制应该在后台吧）', '需求原型', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10115', '8', ' 活动时间：最多一行，年月日 上午/下午 时分', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10116', '9', ' 活动地点：最多展示两行', '需求原型 ', '10561', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10117', '10', '提交成功： 返回到专享活动列表页', '需求原型', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10118', '1', ' 用户填写用户名、密码后点击“登录”按钮可完成登录操作。登录后用户可修改个人资料；修改密码；访问该用户已授权的各功能模块。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10119', '1', ' 用户在登录状态下点击“退出”按钮系统切换至退出状态，并刷新至登录页面。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10120', '2', ' 验证用户名格式是否正确；（字母、数字、下划线组合）；', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10121', '3', ' 验证密码输入是否正确； 验证用户是否存在；', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10122', '4', ' 验证用户名、密码输入是否匹配； 执行登录操作并刷新当前页面至网站首页。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10123', '5', ' 2a验证手机号码是否正确输入 2a1 若为空，给出不能为空提示。 2a2 若输入不合法，给出输入不合法提示。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10124', '6', ' 3a检查密码输入是否正确 3a1 若为空，给出不能为空提示。 3a2若输入不合法，给出输入不合法提示。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10125', '7', ' 3b验证用户是否存在 3a1若用户不存在提示用户不存在。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10126', '8', ' 4a 验证用户名、密码输入是否匹配 4al输入验证不通过，网页提示“用户名或密码输入有误，登录失败”。 4a2若登录失败，网页给出提示“登录失败”并提示失败原因。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10127', '9', ' 网页用户信息区域显示已登录的用户名（用户手机号）界面，退出登录按钮可见。', '需求文档 ', '10478', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10128', '2', ' 1.	用户点击“退出登录”链接按钮	网页提示“确定要退出吗”。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10129', '3', ' 1.	用户点击“确定”按钮	清除用户登录信息； 刷当前页面至登录页。', '需求文档 ', '10479', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10130', '8', ' 用户可在项目管理模块通过“新增”按钮创建项目，创建项目时需填写项目基本信息；新增时生成项目编号，且不可修改；新增的项目默认为“未上线”状态。 新增后的项目可在项目管理页列表查看。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10131', '5', ' 在项目管理模块通过“编辑”按钮可对项目进行编辑操作。项目编辑时可修改基本信息、申请条件、办理流程、费用详情、材料清单信息。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10132', '1', ' 列表数据原则上显示一行文字即可，超出文字可用……代替', '需求原型', '10569', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10133', '1', ' 点击国家名称进入详情页面', '需求原型', '10575', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10134', '1', ' 已发布的国家，没有删除按钮（自己理解的不知道是否正确）', '需求原型', '10572', '待确认', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10135', '1', ' 点击发布校验信息填写是否完整，若不完整提示“请填写完整信息后发布”', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10136', '1', ' 点击发布国家状态置为&quot;已发布&quot;，国家信息发布在微网站上', '需求原型', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10137', '2', ' 国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10138', '3', ' 1.英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10139', '4', ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10140', '5', ' 封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10141', '6', '   居住环境、  社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10142', '1', '  国家名：加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列', '需求原型 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10143', '2', '英文名、地理分类有国家名称字典带过来，文本框为只读', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10144', '3', ' 移民热点为多选项，具体数据项在字典管理为维护', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10145', '4', '  封面图片：用于国家列表的缩略图，适用于栏目图标', '需求原型', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:20:03');
INSERT INTO `zt_tp_rules` VALUES ('10146', '5', ' 居住环境、 社会福利、教育水准、投资置业，就业环境，护照国际均为大文本编辑', '需求原型 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:20:04');
INSERT INTO `zt_tp_rules` VALUES ('10147', '1', ' 点击“新增”或“编辑”按钮打开政策新增页（确定点“编辑”也进新增页吗？）', '需求原型', '10581', '待确认', '9', '', '腰立辉', '2017-01-13 18:20:05');
INSERT INTO `zt_tp_rules` VALUES ('10148', '1', ' 点击“删除”按钮可删除移民政策。（不需要确定弹框吗？）', '需求原型', '10584', '待确认', '9', '', '腰立辉', '2017-01-13 18:20:05');
INSERT INTO `zt_tp_rules` VALUES ('10149', '1', ' 列表分页显示，首页默认显示15条', '需求原型 ', '10582', '正常', '9', '', '腰立辉', '2017-01-13 18:20:06');
INSERT INTO `zt_tp_rules` VALUES ('10150', '2', '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10581', '正常', '9', '', '腰立辉', '2017-01-13 18:20:07');
INSERT INTO `zt_tp_rules` VALUES ('10151', '1', '   政策标题：  *  *  *  *  一般由汉字、英文字母、符号组成，字符长度最大可输入20个汉字', '需求原型', '10583', '正常', '9', '', '腰立辉', '2017-01-13 18:20:08');
INSERT INTO `zt_tp_rules` VALUES ('10152', '3', ' 相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', '10581', '正常', '9', '', '腰立辉', '2017-01-13 18:20:09');
INSERT INTO `zt_tp_rules` VALUES ('10153', '2', '  相关项目：此次放大镜加载根据国家筛选的项目', '需求原型', '10583', '正常', '9', '', '腰立辉', '2017-01-13 18:20:10');
INSERT INTO `zt_tp_rules` VALUES ('10154', '1', ' 当前项目为“上线”状态时通过“暂停”按钮可切换项目状态至暂停或售罄状态，其中暂停项目不在网站显示。', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:20:11');
INSERT INTO `zt_tp_rules` VALUES ('10155', '2', ' 在项目详情页通过“发布”按钮可发布项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验项目信息是否填写完整，包括基本信息、申请条件、办理流程、费用详情、材料清单信息。若存在未填写项需要提示补充项目资料后方可发布。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:20:13');
INSERT INTO `zt_tp_rules` VALUES ('10156', '9', ' 3.	项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:13');
INSERT INTO `zt_tp_rules` VALUES ('10157', '10', ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:14');
INSERT INTO `zt_tp_rules` VALUES ('10158', '6', ' 6.	签证类型：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:20:16');
INSERT INTO `zt_tp_rules` VALUES ('10159', '7', '项目状态：新增时默认“未上线”且不可编辑', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:20:17');
INSERT INTO `zt_tp_rules` VALUES ('10160', '11', ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:20:18');
INSERT INTO `zt_tp_rules` VALUES ('10161', '8', ' 7.	居住要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。签证描述为选填项，具体居住要求选填，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10162', '9', ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10163', '12', ' 8.	投资金额：必须属性，输入方式为文本输入，最大可输入20个汉字', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10164', '13', ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10165', '10', ' 9.	资产要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中资产要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10166', '11', ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10167', '14', ' 10.	管理经验：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10168', '15', ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10169', '12', ' 11.	学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10170', '13', ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10171', '16', ' 12.	总体花费：必填项，文本输入填写，单位万元，文本框限制输入为正整数。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10172', '17', ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10173', '14', ' 13.	语言要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10174', '15', ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10175', '18', ' 14.	年龄要求：学历要求：必填属性，输入方式：下拉选择，单选；下拉列表数据源可灵活调整，在字典设置处编辑即可。其中学历要求描述为选填项，输入长度为20个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10176', '19', ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10177', '16', ' 15.	推荐指数：五星选择，默认5分，满分5分', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10178', '17', ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10179', '20', ' 16.	项目介绍：必填项，输入方式为多行文本框，最大可输入300个汉字', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10180', '21', ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10181', '18', ' 17.	项目特点：必填项，输入方式为多行文本框，最大可输入200个汉字。', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10182', '19', ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', '10491', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10183', '22', ' 18.	封面图片：图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb', '需求文档 ', '10489', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10184', '1', ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', '10496', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10185', '1', ' 提示下载导入模版；上传文件类型限制为.xls或.xlsx类型，确定导入后校验模版格式是否有误，导入完成后提示导入结果，并刷新流程列表页。', '需求文档 ', '10502', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10186', '2', ' 下拉框仅可修改状态为：“暂停”、“售罄', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10187', '3', ' 检查保存是否成功 3a1若保存失败，网页给出提示“保存失败”。', '需求文档 ', '10492', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10188', '3', ' 2.	更改项目状态为“上线”状态，同时网站端同步当前项目信息。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10189', '4', ' 坚查项目信息是否完整 2a1若项目基本信息不完整提示“请完善项目信息”后发布。 2a2 若申请条件未填写，提示“请补充项目申请条件”。 2a3 若办理流程未填写，提示“请补充项目办理流程”。 2a4 若费用详情未填写，提示“请补充项目费用详情”。 2a5 若材料清单未填写，提示“请补充材料清单”。 2b 若发布失败，提示失败原因。', '需求文档 ', '10493', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10190', '6', ' 用户可在国家管理模块通过“新增”按钮创建国家信息，创建国家时需填写国家基本信息；新增时国家从国家字典中选择，其中英文名、地理位置均为联动信息，不可单独编辑；新增的国家默认为“未发布”状态。 新增后的国家可在国家管理页列表查看。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10191', '7', ' 在国家管理模块通过“编辑”按钮可对国家信息进行编辑操作。国家编辑时可修改基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍等信息。其中生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍均为富文本编辑方式录入。', '需求文档 ', '10571', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10192', '2', ' 在国家详情页通过“发布”按钮可国家项目信息，发布后的项目信息要同步至前台网站展示。发布前需要校验国家信息是否填写完整，包括基本信息、生活环境、社会福利、教育水准、投资置业、就业环境、护照国籍信息。若存在未填写项需要提示补充国家资料后方可发布。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10193', '7', ' 1.	国家名：必填属性，加载国家字典列表数据至下拉框，要求下拉框支持模糊搜索，且国家排序俺首字母升序排列； 2.	英文名：此处为选择国家后自动加载。 3.	地理分类：此处为选择国家后自动加载。 4.	移民热点：必填属性，可多选；选项列表由字典管理处维护。 5.	代表icon：代表国家的国旗图片，图片格式：支持jpg,png格式图片，尺寸为待定,大小不超过50kb。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10194', '8', ' 6.	封面图片：用于在网站列表处显示的缩略图；图片格式：支持jpg,png格式图片，尺寸为196px*132px,大小不超过50kb。 7.	国家简介：富文本输入方式，可填写500个汉字，并且支持图文并茂。 8.	发布状态：新增时国家为“未发布”状态，且不可手动更改。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10195', '9', ' 验证各项输入是否合法 3a1 若为空，给出不能为空提示。 3a2 若输入不合法，给出输入不合法提示。 3b 若保存失败，提示失败原因。', '需求文档 ', '10570', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10196', '3', ' 1.	检查国家信息是否完整，包括国家基本信息页各项必填项，以及生活环境、社会福利、教育水准、投资置业有没有录入信息。 2.	更改国家状态为“已发布”状态，同时网站端同步当前国家信息。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10197', '4', ' 2a检查国家信息是否完整 2a1若国家基本信息不完整提示“请完善国家基本信息”后发布。 2a2 若生活环境未填写，提示“请填写生活环境”。 2a3 若社会环境未填写，提示“请填写社会环境”。 2a4 若社会福利未填写，提示“请填写社会福利”。 2a5 若教育水准未填写，提示“请填写教育水准”。 2a5 若投资置业未填写，提示“请填写投资置业”。 2b 若发布失败，提示失败原因。', '需求文档 ', '10573', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10198', '1', ' 用户可在评估管理处添加、设置评估问卷，设置完成后，网站端可依据此问题列表及相关设置展示评估问题及作答方式；C端用户提交作答评估问卷后依据此处设置的匹配关系及规则加载推荐项目列表。', '需求文档 ', '10519', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10199', '2', ' 修改排序：在问题列表处修改问题排序数字，点击保存按钮可保存排序、保存匹配规则。保存后问卷信息及其设置在网站端生效。', '需求文档 ', '10519', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10200', '5', ' 在评估管理模块点击“新增”按钮进入新增问题页面，新增问题时需填写问题名、问题注解、作答模式、是否必填、答案选项等。其中问题名、问题注解、作答模式、是否必填、最多可选个数均为必填项。新增后的问题可设置起匹配关系，调整排序，修改匹配权重。', '需求文档 ', '10518', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10201', '5', ' 问题设置界面可修改评估问题信息，可设置问题对应的项目特性以及问题答案对应的项目属性的各项要求。', '需求文档 ', '10520', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10202', '2', ' 用户通过移动端访问微网站，当用户点击“进度查询”菜单时检查是否是会员； 若用户是会员则查询其办理的项目信息列表。 若用户不是会员，跳转至绑定会员页，提示其输入信息绑定会员。 会员用户可查询项目办理进度，签订协议信息；并可通过公众号时时推送办理进度信息。', '需求文档 ', '10523', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10203', '1', ' 验证非空属性； 验证当前密码是否正确； 验证新密码与确认密码是否一致', '需求文档 ', '10480', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10204', '1', ' 	登录：用户填写手机号、短信验证码可完成登录操作。', '需求文档 ', '10589', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10205', '2', ' 	登录入口:首页-专属管家，移民评估-测试问卷提交，个人中心-我的资料、我的评估结果、我的专属管家、我的进度，意见反馈进入后判断是否登录', '需求文档 ', '10589', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10206', '1', ' 	短信验证码：短信验证码由6位数字构成。网络畅通的情况下，用户需要在15分钟内输入正确的6位短信验证码，前台在60s后可重新发送新的验证码，短信验证码输入提交后即失效，发送限制依据短信平台规则(一分钟一条,一小时3条,一天10条)', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10207', '2', ' 显示【用户】手机号输入框（灰色字提示请输入您的手机号）、短信验证码输入框（灰色字提示请输入验证码），获取验证码按钮，登录按钮', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10208', '3', ' 校验手机号码长度，格式是否正确； 	验证手机号是否已输入，若未输入，提示“请输入手机号” 	如长度有误提示：“手机号码长度不是11位，请重新输入” 	如号段格式有误，提示：“手机号格式不正确，请重新输入”', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10209', '4', ' 调用短信接口，发送短信验证码至用户手机号。 验证码发送成功后，按钮“获取验证码”变更为灰色不可点击“重新获取（60）”倒计时，倒计时结束后按钮变更“重新获取”用户可点击发送新的验证码，则原有验证码失效。提示：“该验证码已失效，请重新输入”', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10210', '5', ' 验证验证码是否为正确，如输入错误，提示验证码输入错误，请重试！', '需求文档 ', '10588', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10211', '1', ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10212', '1', '  用户选择国家城市，进入体验入口，进入不同的入口看到不同的场景图片及城市介绍', '需求文档 ', '10587', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10213', '1', ' 所有用户点击后跳转到评估问卷页面', '需求文档 ', '10557', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10214', '1', ' 用户提交移民评估的问卷后可根据答题结果获得项目匹配度最高的3种项目方案', '需求文档 ', '10559', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10215', '2', ' 进入移民评估页面。 1．	未登录或未评估用户展示评估问题及答案 2．	已评估的用户登录后展示之前做过的评估问卷 3．	从生活体验入口进来，自动选中意向国家', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10216', '3', ' 评估问题及答案从后台进行设置，包括单选多选，标签选择还是输入框，题目对应权重及答案跟项目属性的匹配', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10217', '4', ' 1.判断每道题是否已填，如未填则提示用户：您还没有填写此题 2.判断用户是否登录，未登录跳转登录页面', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10218', '5', ' 1.根据用户匹配度结果优先展示匹配度最高的前3个项目 2.排序规则：按匹配度倒序排列，如匹配度相同则展示资产要求最高的几项 3根据用户填写答案，展示对应的8项是否满足', '需求文档 ', '10558', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10219', '9', ' 用户报名参加活动，后台记录该用户的报名信息 活动列表展示活动缩略图、名称、时间、地点、标签、我要报名按钮 活动详情展示活动宣传图、名称、活动描述，时间、地点，报名姓名（必填）、联系方式（必填），参与人数（选填）确认提交', '需求文档 ', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10220', '10', ' 1.当活动结束时，标签展示“报名结束”当活动正在进行未到活动时间点时，标签展示“火热报名中” 2.报名结束的活动不可点击我要报名按钮 3.进入后加载2屏活动列表，上拉加载一屏 4.排序按活动时间倒序排列 5.活动名称、时间最多展示一行，活动地点最多展示两行', '需求文档 ', '10560', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10221', '11', ' 1.姓名和联系方式是必填项，如未填写，提交按钮置灰不允许提交，用户已登录，则自动展示其手机号 2.姓名可填英文或中文字符  3. 联系方式填写手机号，如长度有误提示：“手机号码长度不是11位，请重新输入” 4.如号段格式有误，提示：“手机号格式不正确，请重新输入” 5.如填写正确无误，确认按钮恢复为可点击', '需求文档 ', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10222', '12', ' 提示用户 报名成功，3s后返回到活动列表页', '需求文档 ', '10561', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10223', '2', ' 筛选条件：按国家地区 或按项目类型筛选', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10224', '3', ' 默认按国家地区分类，右侧拼音为国家首字母，只显示有项目的国家首字母 按国家地区：展示国家首字母、国家名称、项目名称、项目图片、推荐指数、右侧快捷拼音查找 按项目类型筛选：显示所有对外发布的项目分类，排序：投资/购房/护照/技术/留学/其他，如类型下没有项目则不显示该类型，筛选结果展示同上', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10225', '4', ' 排序规则： 按国家的首字母拼音顺序排序，该首字母拼音下无国家，则不展示此字母 如相同首字母的国家，则按项目数多的国家优先展示，项目数相同，按推荐指数平均分最高的优先展示，推荐指数相同按发布时间倒序排列 相同国家下的项目，按推荐指数从高到低排序，相同推荐指数按发布时间倒序排列 项目列表每次加载2屏，超出2屏时，每次手势上滑后加载2屏', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10226', '5', ' 点击某一项目进入项目详情H5页，展示项目名称、图片、项目介绍、项目优势、申请条件、办理流程、预约信息 项目介绍、项目优势、申请条件、办理流程后台进行设置。 项目介绍中如有视频则增加一页单独展示项目视频，如没有则不显示该页。', '需求文档 ', '10551', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10227', '1', ' 项目优势、办理流程最多展示10条，申请条件至少展示2条，最多展示7条，其中申请条件描述限制15个字。', '需求文档 ', '10552', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10228', '2', ' 预约信息填写预约人信息及手机号，如用户已登录，则展示用户手机号，可编辑修改，校验姓名手机号是否为空，手机号长度，手机号段格式同4.2.1登录。 点击立即预约，提示用户预约成功，确认后返回到项目列表页面，点击免费评估，进入评估页面，判断是否做过评估信息，如提交则展示上一次提交信息，如未做过评估，则问卷中意向国家选中该项目所在国家', '需求文档 ', '10555', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10229', '1', ' 入口：1微信菜单-生活体验、2、微站用户端首页-生活体验', '需求文档 ', '10562', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10230', '2', ' 生活体验提供用户海外当地的生活场景展示，数据来源移民项目所在国家城市 生活体验包括：国家列表、城市列表、体验入口、场景展示 国家列表： 用户进入生活体验先选择意向国家，国家来源于移民项目所在的国家，可左右滑动展示显示移民国家，循环查看所有意向国家，排序按后台设置的顺序， 手势向左滑动时，展示国家1,国家2,国家3,…', '需求文档 ', '10562', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10231', '1', ' 城市列表： 当该国家只有一个城市时跳过该页面进入体验入口，当该国家下只有2个或3个城市时，均分显示城市，不可上下滑动，当大于3个城市时，每次手动向上滑动一次，则展示下一个城市，排序按后台设置的顺序', '需求文档 ', '10563', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10232', '1', ' 体验入口： 1、城市介绍、房产、学校、购物、街景、医院， 后台上传对应的图片。 2、管家、方案、服务，后续当微站上线后，增加对应的文字+链接，链接到专属管家、定制方案、海外服务等模块。一期上线生活体验时暂不出现文字+链接', '需求文档 ', '10564', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');
INSERT INTO `zt_tp_rules` VALUES ('10233', '1', ' 场景介绍： 展示对应的图片及图片描述，或视频及视频描述，可左右滑动循环查看，后台上传对应数据，排序按后台设置的顺序，手势向左滑动时依次展示。', '需求文档 ', '10565', '正常', '9', '', '腰立辉', '2017-01-13 18:16:03');

-- ----------------------------
-- Table structure for `zt_tp_sccesscase`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_sccesscase`;
CREATE TABLE `zt_tp_sccesscase` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat` varchar(10) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `bpath` varchar(200) NOT NULL,
  `before` varchar(32) DEFAULT NULL,
  `apath` varchar(200) NOT NULL,
  `after` varchar(32) DEFAULT NULL,
  `desc` text,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_sccesscase
-- ----------------------------
INSERT INTO `zt_tp_sccesscase` VALUES ('1', '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '2016-10-29 20:06:02');
INSERT INTO `zt_tp_sccesscase` VALUES ('2', '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '2016-10-29 20:06:14');

-- ----------------------------
-- Table structure for `zt_tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_scene`;
CREATE TABLE `zt_tp_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `flow` varchar(300) DEFAULT NULL,
  `sourceid` smallint(6) DEFAULT '0',
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_scene
-- ----------------------------
INSERT INTO `zt_tp_scene` VALUES ('10033', '1', 'M', '3', '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', '8', '微信号个人中心->公司名片->提交报名', '0', '腰立辉', '2017-01-13 18:29:19');
INSERT INTO `zt_tp_scene` VALUES ('10034', '2', 'M', '2', '专属管家', '未开启个人名片时', null, '分享公司名片', '正常', '8', '', '0', '腰立辉', '2017-01-13 18:29:20');
INSERT INTO `zt_tp_scene` VALUES ('10035', '3', 'M', '2', '专属管家', '开启个人名片', null, '分享公司名片-分享个人名片', '正常', '8', '', '10034', '腰立辉', '2017-01-13 18:29:21');
INSERT INTO `zt_tp_scene` VALUES ('10036', '4', 'M', '2', '关注用户', '在管家分享后', null, '管家名片填写报名信息', '正常', '8', '', '0', '腰立辉', '2017-01-13 18:29:27');

-- ----------------------------
-- Table structure for `zt_tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_scenefunc`;
CREATE TABLE `zt_tp_scenefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `sourceid` int(11) DEFAULT '0',
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(3) DEFAULT '未绑定',
  `casemain` varchar(50) DEFAULT NULL,
  `caseexpected` varchar(200) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_scenefunc
-- ----------------------------
INSERT INTO `zt_tp_scenefunc` VALUES ('10222', '1', '10425', 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', '0', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-07 18:13:36');
INSERT INTO `zt_tp_scenefunc` VALUES ('10230', '3', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:31');
INSERT INTO `zt_tp_scenefunc` VALUES ('10229', '2', '10420', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:21');
INSERT INTO `zt_tp_scenefunc` VALUES ('10228', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:19');
INSERT INTO `zt_tp_scenefunc` VALUES ('10231', '4', '10423', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:36');
INSERT INTO `zt_tp_scenefunc` VALUES ('10232', '5', '10424', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:19:42');
INSERT INTO `zt_tp_scenefunc` VALUES ('10233', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:06');
INSERT INTO `zt_tp_scenefunc` VALUES ('10234', '2', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:09');
INSERT INTO `zt_tp_scenefunc` VALUES ('10235', '3', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:27:13');
INSERT INTO `zt_tp_scenefunc` VALUES ('10236', '3', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10237', '4', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10238', '5', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10239', '1', '10426', 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10240', '2', '10429', 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:28:22');
INSERT INTO `zt_tp_scenefunc` VALUES ('10241', '1', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-09 14:33:27');
INSERT INTO `zt_tp_scenefunc` VALUES ('10242', '4', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10243', '3', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10244', '2', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10245', '5', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10246', '6', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-09 14:33:45');
INSERT INTO `zt_tp_scenefunc` VALUES ('10247', '1', '10570', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 国家-新增', '10037', 'qw', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-22 16:53:43');
INSERT INTO `zt_tp_scenefunc` VALUES ('10248', '2', '10568', 'wzb', '微站CRM后台- 项目资料库-国家管理', ' 查询-按发布状态', '10037', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-21 17:07:39');
INSERT INTO `zt_tp_scenefunc` VALUES ('10251', '3', '10480', 'wzb', '微站CRM后台- 登录', ' 修改密码', '10037', null, '0', '10137', '已绑定', '正常修改密码', ' 修改成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-12-21 18:34:47');

-- ----------------------------
-- Table structure for `zt_tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_stage`;
CREATE TABLE `zt_tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_stage
-- ----------------------------
INSERT INTO `zt_tp_stage` VALUES ('1048', '1', '编写测试计划', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-15 14:04:20');
INSERT INTO `zt_tp_stage` VALUES ('1065', '1', '编写测试计划', '9', '2016-12-22', '进行中', '无文档', '腰立辉', '2017-01-13 18:08:23');
INSERT INTO `zt_tp_stage` VALUES ('1050', '2', '功能验证', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:06');
INSERT INTO `zt_tp_stage` VALUES ('1051', '3', '第一轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:04');
INSERT INTO `zt_tp_stage` VALUES ('1052', '4', '第二轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:03');
INSERT INTO `zt_tp_stage` VALUES ('1053', '5', '第三轮测试', '8', '2016-12-06', '已完成', '无文档', '腰立辉', '2017-01-13 18:08:01');
INSERT INTO `zt_tp_stage` VALUES ('1054', '6', '第四轮测试', '8', '2016-12-20', '已完成', '无文档', '腰立辉', '2017-01-13 18:07:58');
INSERT INTO `zt_tp_stage` VALUES ('1055', '7', '线上验证测试', '8', '2016-12-21', '已完成', '无文档', '腰立辉', '2017-01-15 14:03:39');
INSERT INTO `zt_tp_stage` VALUES ('1066', '2', '编写测试用例', '9', '2016-12-26', '进行中', '无文档', '腰立辉', '2017-01-13 18:08:24');
INSERT INTO `zt_tp_stage` VALUES ('1067', '3', '研发冒烟测试', '9', '2016-12-27', '进行中', '无文档', '腰立辉', '2017-01-13 18:09:18');

-- ----------------------------
-- Table structure for `zt_tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_stagetester`;
CREATE TABLE `zt_tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_stagetester
-- ----------------------------
INSERT INTO `zt_tp_stagetester` VALUES ('10031', '1', 'C', '1029', '腰立辉', '2016-10-22', '腰立辉', '2016-10-21 11:34:14');
INSERT INTO `zt_tp_stagetester` VALUES ('10032', '1', 'C', '1030', '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 11:34:40');
INSERT INTO `zt_tp_stagetester` VALUES ('10033', '1', 'M', '1031', '腰立辉', '2016-10-24', '腰立辉', '2016-10-21 11:35:02');
INSERT INTO `zt_tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-25', '腰立辉', '2016-09-24 20:45:23');
INSERT INTO `zt_tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-25', '腰立辉', '2016-09-24 20:45:46');
INSERT INTO `zt_tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-25', '腰立辉', '2016-09-24 20:45:49');
INSERT INTO `zt_tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 13:38:02');
INSERT INTO `zt_tp_stagetester` VALUES ('10030', '1', 'M', '1006', '腰立辉', '2016-10-18', '腰立辉', '2016-10-17 15:59:29');
INSERT INTO `zt_tp_stagetester` VALUES ('10029', '1', 'M', '1004', '腰立辉', '2016-11-08', '腰立辉', '2016-11-04 09:17:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-26', '腰立辉', '2016-09-25 13:45:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10016', '1', 'M', '1003', '腰立辉', '2016-10-14', '腰立辉', '2016-10-13 09:53:48');
INSERT INTO `zt_tp_stagetester` VALUES ('10036', '1', 'M', '1034', '腰立辉', '2016-10-27', '腰立辉', '2016-10-21 11:36:00');
INSERT INTO `zt_tp_stagetester` VALUES ('10034', '1', 'M', '1032', '腰立辉', '2016-10-25', '腰立辉', '2016-10-21 11:35:23');
INSERT INTO `zt_tp_stagetester` VALUES ('10035', '1', 'M', '1033', '腰立辉', '2016-10-26', '腰立辉', '2016-10-21 11:35:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-29', '腰立辉', '2016-09-28 15:48:49');
INSERT INTO `zt_tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-10-09', '腰立辉', '2016-09-28 15:49:25');
INSERT INTO `zt_tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-11', '腰立辉', '2016-10-10 13:28:24');
INSERT INTO `zt_tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-11', '腰立辉', '2016-10-10 13:28:28');
INSERT INTO `zt_tp_stagetester` VALUES ('10037', '1', 'M', '1035', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:37:52');
INSERT INTO `zt_tp_stagetester` VALUES ('10038', '1', 'M', '1036', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:38:07');
INSERT INTO `zt_tp_stagetester` VALUES ('10039', '1', 'M', '1037', '腰立辉', '2016-11-01', '腰立辉', '2016-11-02 09:53:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10040', '1', 'M', '1038', '田亮', '2016-11-03', '腰立辉', '2016-11-03 16:44:18');
INSERT INTO `zt_tp_stagetester` VALUES ('10041', '2', 'M', '1008', '曹玉芳', '2016-11-11', '腰立辉', '2016-11-10 11:04:46');
INSERT INTO `zt_tp_stagetester` VALUES ('10042', '1', 'M', '1048', '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 17:29:53');
INSERT INTO `zt_tp_stagetester` VALUES ('10043', '1', 'C', '1049', '腰立辉', '2016-12-06', '腰立辉', '2016-12-05 17:31:28');
INSERT INTO `zt_tp_stagetester` VALUES ('10044', '2', 'C', '1049', '魏斌', '2016-12-06', '腰立辉', '2016-12-05 17:31:30');
INSERT INTO `zt_tp_stagetester` VALUES ('10045', '0', 'M', '1050', '腰立辉', '2016-12-06', '腰立辉', '2016-12-08 15:11:57');
INSERT INTO `zt_tp_stagetester` VALUES ('10046', '2', 'M', '1050', '魏斌', '2016-12-06', '腰立辉', '2016-12-05 17:32:11');
INSERT INTO `zt_tp_stagetester` VALUES ('10047', '1', 'M', '1056', '腰立辉', '2016-12-15', '腰立辉', '2016-12-05 17:55:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10048', '1', 'M', '1051', '腰立辉', '2016-12-10', '魏斌', '2016-12-09 11:49:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10049', '2', 'M', '1051', '魏斌', '2016-12-10', '魏斌', '2016-12-09 11:49:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10050', '1', 'M', '1049', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 17:52:51');
INSERT INTO `zt_tp_stagetester` VALUES ('10051', '1', 'M', '1058', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 19:18:42');
INSERT INTO `zt_tp_stagetester` VALUES ('10052', '1', 'M', '1059', '腰立辉', '2016-12-13', '腰立辉', '2016-12-12 20:39:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10053', '1', 'M', '1060', '腰立辉', '2016-12-14', '腰立辉', '2016-12-13 11:16:20');
INSERT INTO `zt_tp_stagetester` VALUES ('10054', '1', 'M', '1052', '腰立辉', '2016-12-15', '腰立辉', '2016-12-14 11:35:01');
INSERT INTO `zt_tp_stagetester` VALUES ('10055', '1', 'M', '1053', '腰立辉', '2016-12-20', '腰立辉', '2016-12-19 14:53:05');
INSERT INTO `zt_tp_stagetester` VALUES ('10056', '1', 'M', '1054', '腰立辉', '2016-12-21', '腰立辉', '2016-12-20 09:42:22');
INSERT INTO `zt_tp_stagetester` VALUES ('10057', '1', 'M', '1055', '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 09:20:45');
INSERT INTO `zt_tp_stagetester` VALUES ('10058', '1', 'C', '1066', '腰立辉', '2016-12-22', '腰立辉', '2016-12-21 16:58:53');
INSERT INTO `zt_tp_stagetester` VALUES ('10059', '2', 'C', '1066', '魏斌', '2016-12-22', '腰立辉', '2016-12-21 16:58:56');
INSERT INTO `zt_tp_stagetester` VALUES ('10060', '1', 'M', '1067', '杨学毅', '2016-12-23', '腰立辉', '2016-12-22 09:34:08');
INSERT INTO `zt_tp_stagetester` VALUES ('10061', '2', 'M', '1067', '项斌', '2016-12-23', '腰立辉', '2016-12-22 09:34:16');
INSERT INTO `zt_tp_stagetester` VALUES ('10062', '3', 'M', '1067', '谷一创', '2016-12-23', '腰立辉', '2016-12-22 09:34:18');
INSERT INTO `zt_tp_stagetester` VALUES ('10063', '4', 'M', '1067', '褚秀良', '2016-12-23', '腰立辉', '2016-12-22 09:34:21');
INSERT INTO `zt_tp_stagetester` VALUES ('10064', '1', 'M', '1065', '腰立辉', null, '腰立辉', '2017-01-15 21:18:32');
INSERT INTO `zt_tp_stagetester` VALUES ('10065', '0', 'C', '1065', '腰立辉', null, '腰立辉', '2017-01-15 23:05:26');

-- ----------------------------
-- Table structure for `zt_tp_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_tickets`;
CREATE TABLE `zt_tp_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_tickets
-- ----------------------------
INSERT INTO `zt_tp_tickets` VALUES ('499', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '110629', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:56');
INSERT INTO `zt_tp_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:51');
INSERT INTO `zt_tp_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '客户', '2016-11-01 17:11:53', '2016-11-01 18:01:44');
INSERT INTO `zt_tp_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:47');
INSERT INTO `zt_tp_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('517', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '589138', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:59');
INSERT INTO `zt_tp_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('519', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '253176', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:49');
INSERT INTO `zt_tp_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('521', '设奖', '4:参与奖', '19', null, '0', null, '0', '282510', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('526', '设奖', '4:参与奖', '19', null, '0', null, '0', '326675', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '客户', '2016-11-01 17:11:53', '2016-11-01 18:05:25');
INSERT INTO `zt_tp_tickets` VALUES ('528', '设奖', '4:参与奖', '19', null, '0', null, '0', '414016', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:54');
INSERT INTO `zt_tp_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('532', '设奖', '3:三等奖', '19', null, '0', null, '0', '195443', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `zt_tp_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '客户', '2016-11-01 17:11:53', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `zt_tp_userprod`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_userprod`;
CREATE TABLE `zt_tp_userprod` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_userprod
-- ----------------------------
INSERT INTO `zt_tp_userprod` VALUES ('3', '2', '1', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('4', '2', '3', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('6', '2', '2', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('7', '2', '4', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('17', '2', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('18', '4', '1', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('19', '7', '6', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('20', '7', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('21', '8', '4', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('22', '4', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('23', '10', '1', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('24', '3', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('25', '12', '2', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('26', '12', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('27', '14', '12', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('28', '29', '4', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('29', '31', '4', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('30', '2', '7', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('31', '2', '8', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('34', '32', '6', '腰立辉');
INSERT INTO `zt_tp_userprod` VALUES ('33', '2', '6', '腰立辉');

-- ----------------------------
-- Table structure for `zt_tp_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_voucher`;
CREATE TABLE `zt_tp_voucher` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `remark` text,
  `voucher` varchar(5) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `total` int(11) DEFAULT '10000',
  `specia` int(1) DEFAULT '1',
  `first` int(1) DEFAULT '3',
  `second` int(2) DEFAULT '10',
  `third` int(3) DEFAULT '100',
  `canyu` int(3) DEFAULT '500',
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_voucher
-- ----------------------------
INSERT INTO `zt_tp_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');

-- ----------------------------
-- Table structure for `zt_user`
-- ----------------------------
DROP TABLE IF EXISTS `zt_user`;
CREATE TABLE `zt_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '部门ID',
  `userno` smallint(6) DEFAULT NULL,
  `account` char(30) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `role` char(10) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `usergp` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `nickname` char(60) NOT NULL DEFAULT '',
  `commiter` varchar(100) NOT NULL,
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `gender` enum('f','m') NOT NULL DEFAULT 'f',
  `email` char(90) NOT NULL DEFAULT '' COMMENT '邮件',
  `skype` char(90) NOT NULL DEFAULT '',
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` char(20) NOT NULL DEFAULT '' COMMENT '座机',
  `address` char(120) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00' COMMENT '入职时间',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '登录IP',
  `last` int(10) unsigned NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `user` (`dept`,`email`,`commiter`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_user
-- ----------------------------
INSERT INTO `zt_user` VALUES ('1', '0', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin', 'PJD', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '7', '210.140.82.234', '1487265269', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('2', '6', '1', 'yao', 'c33367701511b4f6020ec61ded352059', 'dev', '腰立辉', 'Xinda', 'Test/user/2017-01-15/', '587afd40f3c46.jpg', '', '', '', '0000-00-00', 'm', '83000892@qq.com', '', '83000892', '', '', '', '234234', '18801043607', '', '', '2017-01-08', '20', '183.136.133.42', '1489629639', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('3', '6', '3', 'jiaxn', 'e10adc3949ba59abbe56e057f20f883e', 'qa', '贾晓宁', 'Xinda', 'Test/user/2017-01-15/', '587afd560d3cf.jpeg', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('4', '1', '5', 'zhangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '张秀丽', 'Xiuli', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '1', '127.0.0.1', '1486349276', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('12', '3', '6', 'liangxw', 'e10adc3949ba59abbe56e057f20f883e', 'po', '梁小伟', 'Tuocai', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('7', '4', '7', 'liuyj', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '刘燕军', 'Xinda', null, null, '', '', '', '0000-00-00', 'm', '314081182@qq.com', '', '314081182', '', '', '', '18610815780', '18610815780', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('8', '5', '8', 'wangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '王晓亮', 'Anshun', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('29', '5', '9', 'jiaxy', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '贾晓月', 'Anshun', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('10', '1', '10', 'yaojq', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '腰建强', 'Xiuli', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('14', '6', '11', 'xingl', 'e10adc3949ba59abbe56e057f20f883e', 'dev', '邢丽', 'Mtsh', null, null, '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('31', '6', '12', 'yaomf', 'e10adc3949ba59abbe56e057f20f883e', 'pd', '腰梅芳', 'Mtsh', null, null, '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-26', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('32', '6', '13', 'zhanghx', 'e10adc3949ba59abbe56e057f20f883e', 'dev', '张汉兴', 'Xinda', null, null, '', '', '', '0000-00-00', 'm', '50907770@qq.com', '', '', '', '', '', '', '', '', '', '2017-02-27', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');

-- ----------------------------
-- Table structure for `zt_usercontact`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usercontact`;
CREATE TABLE `zt_usercontact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `listName` varchar(60) NOT NULL,
  `userList` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usercontact
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usergroup`;
CREATE TABLE `zt_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `account` (`account`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usergroup
-- ----------------------------
INSERT INTO `zt_usergroup` VALUES ('jiaxn', '3');
INSERT INTO `zt_usergroup` VALUES ('jiaxy', '4');
INSERT INTO `zt_usergroup` VALUES ('liangxw', '5');
INSERT INTO `zt_usergroup` VALUES ('liuyj', '4');
INSERT INTO `zt_usergroup` VALUES ('wangxl', '5');
INSERT INTO `zt_usergroup` VALUES ('xingl', '2');
INSERT INTO `zt_usergroup` VALUES ('yao', '1');
INSERT INTO `zt_usergroup` VALUES ('yao', '2');
INSERT INTO `zt_usergroup` VALUES ('yaomf', '7');
INSERT INTO `zt_usergroup` VALUES ('zhanghx', '2');

-- ----------------------------
-- Table structure for `zt_userquery`
-- ----------------------------
DROP TABLE IF EXISTS `zt_userquery`;
CREATE TABLE `zt_userquery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `query` (`account`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_userquery
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_usertpl`
-- ----------------------------
DROP TABLE IF EXISTS `zt_usertpl`;
CREATE TABLE `zt_usertpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `type` char(30) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `public` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_usertpl
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_wx_return`
-- ----------------------------
DROP TABLE IF EXISTS `zt_wx_return`;
CREATE TABLE `zt_wx_return` (
  `code` int(7) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `content` varchar(100) NOT NULL DEFAULT '0' COMMENT '分类排序',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=9001038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_wx_return
-- ----------------------------
INSERT INTO `zt_wx_return` VALUES ('40002', '不合法的凭证类型');
INSERT INTO `zt_wx_return` VALUES ('9001037', '请求成功');
INSERT INTO `zt_wx_return` VALUES ('40001', '获取access_token时AppSecret错误，或者access_token无效。请开发者认真比对AppSecret的正确性，或查看是否正在为恰当的公众号调用接口');
INSERT INTO `zt_wx_return` VALUES ('40004', '不合法的媒体文件类型');
INSERT INTO `zt_wx_return` VALUES ('40003', '不合法的OpenID，请开发者确认OpenID（该用户）是否已关注公众号，或是否是其他公众号的OpenID');
INSERT INTO `zt_wx_return` VALUES ('40005', '不合法的文件类型');
INSERT INTO `zt_wx_return` VALUES ('40006', '不合法的文件大小');
INSERT INTO `zt_wx_return` VALUES ('40007', '不合法的媒体文件id');
INSERT INTO `zt_wx_return` VALUES ('40008', '不合法的消息类型');
INSERT INTO `zt_wx_return` VALUES ('40009', '不合法的图片文件大小');
INSERT INTO `zt_wx_return` VALUES ('40010', '不合法的语音文件大小');
INSERT INTO `zt_wx_return` VALUES ('40011', '不合法的视频文件大小');
INSERT INTO `zt_wx_return` VALUES ('40012', '不合法的缩略图文件大小');
INSERT INTO `zt_wx_return` VALUES ('40013', '不合法的AppID，请开发者检查AppID的正确性，避免异常字符，注意大小写');
INSERT INTO `zt_wx_return` VALUES ('40014', '不合法的access_token，请开发者认真比对access_token的有效性（如是否过期），或查看是否正在为恰当的公众号调用接口');
INSERT INTO `zt_wx_return` VALUES ('40015', '不合法的菜单类型');
INSERT INTO `zt_wx_return` VALUES ('40016', '不合法的按钮个数');
INSERT INTO `zt_wx_return` VALUES ('40017', '不合法的按钮个数');
INSERT INTO `zt_wx_return` VALUES ('40018', '不合法的按钮名字长度');
INSERT INTO `zt_wx_return` VALUES ('40019', '不合法的按钮KEY长度');
INSERT INTO `zt_wx_return` VALUES ('40020', '不合法的按钮URL长度');
INSERT INTO `zt_wx_return` VALUES ('40021', '不合法的菜单版本号');
INSERT INTO `zt_wx_return` VALUES ('40022', '不合法的子菜单级数');
INSERT INTO `zt_wx_return` VALUES ('40023', '不合法的子菜单按钮个数');
INSERT INTO `zt_wx_return` VALUES ('40024', '不合法的子菜单按钮类型');
INSERT INTO `zt_wx_return` VALUES ('40025', '不合法的子菜单按钮名字长度');
INSERT INTO `zt_wx_return` VALUES ('40026', '不合法的子菜单按钮KEY长度');
INSERT INTO `zt_wx_return` VALUES ('40027', '不合法的子菜单按钮URL长度');
INSERT INTO `zt_wx_return` VALUES ('40028', '不合法的自定义菜单使用用户');
INSERT INTO `zt_wx_return` VALUES ('40029', '不合法的oauth_code');
INSERT INTO `zt_wx_return` VALUES ('40030', '不合法的refresh_token');
INSERT INTO `zt_wx_return` VALUES ('40031', '不合法的openid列表');
INSERT INTO `zt_wx_return` VALUES ('40032', '不合法的openid列表长度');
INSERT INTO `zt_wx_return` VALUES ('40033', '不合法的请求字符，不能包含\\uxxxx格式的字符');
INSERT INTO `zt_wx_return` VALUES ('40035', '不合法的参数');
INSERT INTO `zt_wx_return` VALUES ('40038', '不合法的请求格式');
INSERT INTO `zt_wx_return` VALUES ('40039', '不合法的URL长度');
INSERT INTO `zt_wx_return` VALUES ('40050', '不合法的分组id');
INSERT INTO `zt_wx_return` VALUES ('40051', '分组名字不合法');
INSERT INTO `zt_wx_return` VALUES ('40117', '分组名字不合法');
INSERT INTO `zt_wx_return` VALUES ('40118', 'media_id大小不合法');
INSERT INTO `zt_wx_return` VALUES ('40119', 'button类型错误');
INSERT INTO `zt_wx_return` VALUES ('40120', 'button类型错误');
INSERT INTO `zt_wx_return` VALUES ('40121', '不合法的media_id类型');
INSERT INTO `zt_wx_return` VALUES ('40132', '微信号不合法');
INSERT INTO `zt_wx_return` VALUES ('40137', '不支持的图片格式');
INSERT INTO `zt_wx_return` VALUES ('41001', '缺少access_token参数');
INSERT INTO `zt_wx_return` VALUES ('41002', '缺少appid参数');
INSERT INTO `zt_wx_return` VALUES ('41003', '缺少refresh_token参数');
INSERT INTO `zt_wx_return` VALUES ('41004', '缺少secret参数');
INSERT INTO `zt_wx_return` VALUES ('41005', '缺少多媒体文件数据');
INSERT INTO `zt_wx_return` VALUES ('41006', '缺少media_id参数');
INSERT INTO `zt_wx_return` VALUES ('41007', '缺少子菜单数据');
INSERT INTO `zt_wx_return` VALUES ('41008', '缺少oauth code');
INSERT INTO `zt_wx_return` VALUES ('41009', '缺少openid');
INSERT INTO `zt_wx_return` VALUES ('42001', 'access_token超时，请检查access_token的有效期，请参考基础支持-获取access_token中，对access_token的详细机制说明');
INSERT INTO `zt_wx_return` VALUES ('42002', 'refresh_token超时');
INSERT INTO `zt_wx_return` VALUES ('42003', 'oauth_code超时');
INSERT INTO `zt_wx_return` VALUES ('42007', '用户修改微信密码，accesstoken和refreshtoken失效，需要重新授权');
INSERT INTO `zt_wx_return` VALUES ('43001', '需要GET请求');
INSERT INTO `zt_wx_return` VALUES ('43002', '需要POST请求');
INSERT INTO `zt_wx_return` VALUES ('43003', '需要HTTPS请求');
INSERT INTO `zt_wx_return` VALUES ('43004', '需要接收者关注');
INSERT INTO `zt_wx_return` VALUES ('45001', '多媒体文件大小超过限制');
INSERT INTO `zt_wx_return` VALUES ('45002', '消息内容超过限制');
INSERT INTO `zt_wx_return` VALUES ('45003', '标题字段超过限制');
INSERT INTO `zt_wx_return` VALUES ('45004', '描述字段超过限制');
INSERT INTO `zt_wx_return` VALUES ('45005', '链接字段超过限制');
INSERT INTO `zt_wx_return` VALUES ('45006', '图片链接字段超过限制');
INSERT INTO `zt_wx_return` VALUES ('45007', '语音播放时间超过限制');
INSERT INTO `zt_wx_return` VALUES ('45008', '图文消息超过限制');
INSERT INTO `zt_wx_return` VALUES ('45009', '接口调用超过限制');
INSERT INTO `zt_wx_return` VALUES ('45010', '创建菜单个数超过限制');
INSERT INTO `zt_wx_return` VALUES ('45015', '回复时间超过限制');
INSERT INTO `zt_wx_return` VALUES ('45016', '系统分组，不允许修改');
INSERT INTO `zt_wx_return` VALUES ('45017', '分组名字过长');
INSERT INTO `zt_wx_return` VALUES ('45018', '分组数量超过上限');
INSERT INTO `zt_wx_return` VALUES ('45047', '客服接口下行条数超过上限');
INSERT INTO `zt_wx_return` VALUES ('46001', '不存在媒体数据');
INSERT INTO `zt_wx_return` VALUES ('46002', '不存在的菜单版本');
INSERT INTO `zt_wx_return` VALUES ('46003', '不存在的菜单数据');
INSERT INTO `zt_wx_return` VALUES ('46004', '不存在的用户');
INSERT INTO `zt_wx_return` VALUES ('47001', '解析JSON/XML内容错误');
INSERT INTO `zt_wx_return` VALUES ('48001', 'api功能未授权，请确认公众号已获得该接口，可以在公众平台官网-开发者中心页中查看接口权限');
INSERT INTO `zt_wx_return` VALUES ('48004', 'api接口被封禁，请登录mp.weixin.qq.com查看详情');
INSERT INTO `zt_wx_return` VALUES ('50001', '用户未授权该api');
INSERT INTO `zt_wx_return` VALUES ('50002', '用户受限，可能是违规后接口被封禁');
INSERT INTO `zt_wx_return` VALUES ('61451', '参数错误(invalid parameter)');
INSERT INTO `zt_wx_return` VALUES ('61452', '无效客服账号(invalid kf_account)');
INSERT INTO `zt_wx_return` VALUES ('61453', '客服帐号已存在(kf_account exsited)');
INSERT INTO `zt_wx_return` VALUES ('61454', '客服帐号名长度超过限制(仅允许10个英文字符，不包括@及@后的公众号的微信号)(invalid kf_acount length)');
INSERT INTO `zt_wx_return` VALUES ('61455', '客服帐号名包含非法字符(仅允许英文+数字)(illegal character in kf_account)');
INSERT INTO `zt_wx_return` VALUES ('61456', '客服帐号个数超过限制(10个客服账号)(kf_account count exceeded)');
INSERT INTO `zt_wx_return` VALUES ('61457', '无效头像文件类型(invalid file type)');
INSERT INTO `zt_wx_return` VALUES ('61450', '系统错误(system error)');
INSERT INTO `zt_wx_return` VALUES ('61500', '日期格式错误');
INSERT INTO `zt_wx_return` VALUES ('65301', '不存在此menuid对应的个性化菜单');
INSERT INTO `zt_wx_return` VALUES ('65302', '没有相应的用户');
INSERT INTO `zt_wx_return` VALUES ('65303', '没有默认菜单，不能创建个性化菜单');
INSERT INTO `zt_wx_return` VALUES ('65304', 'MatchRule信息为空');
INSERT INTO `zt_wx_return` VALUES ('65305', '个性化菜单数量受限');
INSERT INTO `zt_wx_return` VALUES ('65306', '不支持个性化菜单的帐号');
INSERT INTO `zt_wx_return` VALUES ('65307', '个性化菜单信息为空');
INSERT INTO `zt_wx_return` VALUES ('65308', '包含没有响应类型的button');
INSERT INTO `zt_wx_return` VALUES ('65309', '个性化菜单开关处于关闭状态');
INSERT INTO `zt_wx_return` VALUES ('65310', '填写了省份或城市信息，国家信息不能为空');
INSERT INTO `zt_wx_return` VALUES ('65311', '填写了城市信息，省份信息不能为空');
INSERT INTO `zt_wx_return` VALUES ('65312', '不合法的国家信息');
INSERT INTO `zt_wx_return` VALUES ('65313', '不合法的省份信息');
INSERT INTO `zt_wx_return` VALUES ('65314', '不合法的城市信息');
INSERT INTO `zt_wx_return` VALUES ('65316', '该公众号的菜单设置了过多的域名外跳（最多跳转到3个域名的链接）');
INSERT INTO `zt_wx_return` VALUES ('65317', '不合法的URL');
INSERT INTO `zt_wx_return` VALUES ('9001001', 'POST数据参数不合法');
INSERT INTO `zt_wx_return` VALUES ('9001002', '远端服务不可用');
INSERT INTO `zt_wx_return` VALUES ('9001003', 'Ticket不合法');
INSERT INTO `zt_wx_return` VALUES ('9001004', '获取摇周边用户信息失败');
INSERT INTO `zt_wx_return` VALUES ('9001005', '获取商户信息失败');
INSERT INTO `zt_wx_return` VALUES ('9001006', '获取OpenID失败');
INSERT INTO `zt_wx_return` VALUES ('9001007', '上传文件缺失');
INSERT INTO `zt_wx_return` VALUES ('9001008', '上传素材的文件类型不合法');
INSERT INTO `zt_wx_return` VALUES ('9001009', '上传素材的文件尺寸不合法');
INSERT INTO `zt_wx_return` VALUES ('9001010', '上传失败');
INSERT INTO `zt_wx_return` VALUES ('9001020', '帐号不合法');
INSERT INTO `zt_wx_return` VALUES ('9001021', '已有设备激活率低于50%，不能新增设备');
INSERT INTO `zt_wx_return` VALUES ('9001022', '设备申请数不合法，必须为大于0的数字');
INSERT INTO `zt_wx_return` VALUES ('9001023', '已存在审核中的设备ID申请');
INSERT INTO `zt_wx_return` VALUES ('9001024', '一次查询设备ID数量不能超过50');
INSERT INTO `zt_wx_return` VALUES ('9001025', '设备ID不合法');
INSERT INTO `zt_wx_return` VALUES ('9001026', '页面ID不合法');
INSERT INTO `zt_wx_return` VALUES ('9001027', '页面参数不合法');
INSERT INTO `zt_wx_return` VALUES ('9001028', '一次删除页面ID数量不能超过10');
INSERT INTO `zt_wx_return` VALUES ('9001029', '页面已应用在设备中，请先解除应用关系再删除');
INSERT INTO `zt_wx_return` VALUES ('9001030', '一次查询页面ID数量不能超过50');
INSERT INTO `zt_wx_return` VALUES ('9001031', '时间区间不合法');
INSERT INTO `zt_wx_return` VALUES ('9001032', '保存设备与页面的绑定关系参数错误');
INSERT INTO `zt_wx_return` VALUES ('9001033', '门店ID不合法');
INSERT INTO `zt_wx_return` VALUES ('9001034', '设备备注信息过长');
INSERT INTO `zt_wx_return` VALUES ('9001035', '设备申请参数不合法');
INSERT INTO `zt_wx_return` VALUES ('9001036', '查询起始值begin不合法');

-- ----------------------------
-- Table structure for `zt_wx_wechat`
-- ----------------------------
DROP TABLE IF EXISTS `zt_wx_wechat`;
CREATE TABLE `zt_wx_wechat` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `wechat` varchar(30) NOT NULL COMMENT '分类名称',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `appid` char(18) DEFAULT NULL,
  `appsecret` char(32) DEFAULT NULL,
  `access_token` char(138) DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL COMMENT '过期时间',
  `otime` int(11) DEFAULT NULL,
  `errcode` int(11) DEFAULT NULL,
  `errmsg` varchar(255) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_wx_wechat
-- ----------------------------
INSERT INTO `zt_wx_wechat` VALUES ('1', 'yaolh测试接口号', '1', 'wx3452e8086f5fefab', 'df38233db1ca1150fa34d42dabf8f5cc', 'w4iMGNubh7hh4zDHqfZfvn-49PfCQVmfiAvkpmmJ9wMNbxUsl-5m4IHU_4UlktBvECLeBLyGi2FVYZKqgOatrLBd1bmmJGV4pRkNh1mE6hsdkhnaREdBcZ0-DuzKIoxLJYTfAIAETO', '7200', '1489551685', null, null, '2017-03-15 10:24:45');
INSERT INTO `zt_wx_wechat` VALUES ('2', '安顺订阅号', '3', null, null, null, null, null, null, null, '2017-02-21 13:42:13');
INSERT INTO `zt_wx_wechat` VALUES ('3', '麦田订阅号', '3', null, null, null, null, null, null, null, '2017-02-21 13:42:14');

-- ----------------------------
-- Table structure for `zt_xd_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xd_cate`;
CREATE TABLE `zt_xd_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xd_cate
-- ----------------------------
INSERT INTO `zt_xd_cate` VALUES ('5', '0', '0', '硬件', '已搁置', '6', '腰立辉', '2017-03-12 20:44:05');
INSERT INTO `zt_xd_cate` VALUES ('6', '100', '0', '软件方案', '已搁置', '6', '腰立辉', '2017-03-12 20:47:22');
INSERT INTO `zt_xd_cate` VALUES ('7', '110', '6', '第三方账号注册', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('8', '3', '22', '服务器', '正常', '6', '腰立辉', '2017-03-12 20:46:52');
INSERT INTO `zt_xd_cate` VALUES ('9', '4', '22', '台式机', '正常', '6', '腰立辉', '2017-03-12 20:56:58');
INSERT INTO `zt_xd_cate` VALUES ('10', '9', '22', '手机', '正常', '6', '腰立辉', '2017-03-12 20:58:02');
INSERT INTO `zt_xd_cate` VALUES ('11', '7', '22', '平板电脑', '正常', '6', '腰立辉', '2017-03-12 20:58:02');
INSERT INTO `zt_xd_cate` VALUES ('13', '120', '6', '微网站', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('14', '130', '6', '标准企业站', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('15', '140', '6', '网站备案', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('16', '150', '6', '微信订阅号营销宣传', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('17', '160', '6', '微信服务号会员管理', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('18', '170', '6', '微信企业号管理', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('19', '180', '6', '阿里钉钉企业管理', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('20', '190', '6', '行业特色方案', '正常', '6', '腰立辉', '2017-03-12 20:48:11');
INSERT INTO `zt_xd_cate` VALUES ('21', '50', '5', '整机配件', '已搁置', '6', '腰立辉', '2017-03-15 09:48:56');
INSERT INTO `zt_xd_cate` VALUES ('22', '2', '5', '整机批发', '已搁置', '6', '腰立辉', '2017-03-15 09:49:02');
INSERT INTO `zt_xd_cate` VALUES ('23', '51', '21', 'CPU', '正常', '6', '腰立辉', '2017-03-12 20:47:08');
INSERT INTO `zt_xd_cate` VALUES ('24', '52', '21', '内存', '正常', '6', '腰立辉', '2017-03-12 20:47:08');
INSERT INTO `zt_xd_cate` VALUES ('25', '53', '21', '硬盘', '正常', '6', '腰立辉', '2017-03-12 20:47:08');
INSERT INTO `zt_xd_cate` VALUES ('26', '121', '13', '请柬', '正常', '6', '腰立辉', '2017-03-12 20:49:15');
INSERT INTO `zt_xd_cate` VALUES ('27', '122', '13', '贺卡', '正常', '6', '腰立辉', '2017-03-12 20:51:57');
INSERT INTO `zt_xd_cate` VALUES ('28', '123', '13', '招聘', '正常', '6', '腰立辉', '2017-03-12 20:51:55');
INSERT INTO `zt_xd_cate` VALUES ('29', '124', '13', '节日祝福', '正常', '6', '腰立辉', '2017-03-12 20:51:33');
INSERT INTO `zt_xd_cate` VALUES ('30', '125', '13', '促销活动', '正常', '6', '腰立辉', '2017-03-12 20:55:32');
INSERT INTO `zt_xd_cate` VALUES ('31', '127', '13', '产品推广', '正常', '6', '腰立辉', '2017-03-12 20:55:35');
INSERT INTO `zt_xd_cate` VALUES ('32', '127', '13', '企业宣传', '正常', '6', '腰立辉', '2017-03-12 20:54:45');
INSERT INTO `zt_xd_cate` VALUES ('33', '128', '13', '表单', '正常', '6', '腰立辉', '2017-03-12 20:55:06');
INSERT INTO `zt_xd_cate` VALUES ('34', '6', '22', '笔记本', '正常', '6', '腰立辉', '2017-03-12 20:58:02');
INSERT INTO `zt_xd_cate` VALUES ('35', '8', '22', '一体机', '正常', '6', '腰立辉', '2017-03-12 20:58:02');
INSERT INTO `zt_xd_cate` VALUES ('40', '10', '22', 'MINI电脑', '正常', '6', '刘燕军', '2017-03-12 21:55:01');
INSERT INTO `zt_xd_cate` VALUES ('37', '54', '21', '显示器', '正常', '6', '腰立辉', '2017-03-12 20:59:52');
INSERT INTO `zt_xd_cate` VALUES ('38', '55', '21', '主板', '正常', '6', '腰立辉', '2017-03-12 20:59:52');
INSERT INTO `zt_xd_cate` VALUES ('39', '56', '21', '固态硬盘', '正常', '6', '腰立辉', '2017-03-12 20:59:52');
INSERT INTO `zt_xd_cate` VALUES ('41', '57', '21', '键盘鼠标', '正常', '6', '刘燕军', '2017-03-12 21:56:03');
INSERT INTO `zt_xd_cate` VALUES ('42', '58', '21', '打印机', '正常', '6', '刘燕军', '2017-03-12 21:56:32');

-- ----------------------------
-- Table structure for `zt_xd_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xd_prodservice`;
CREATE TABLE `zt_xd_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `cycle` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` decimal(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` decimal(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` decimal(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '特价商品',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xd_prodservice
-- ----------------------------
INSERT INTO `zt_xd_prodservice` VALUES ('3', '', '微信服务号', '\r\n', '1小时', null, '发布', '350', '380', '0', '999', null, '1', null, '1', '7', null, '/Product/2017-03-03/', '58b976ca9f4f5.jpg', '腰立辉', '2017-03-04 15:26:39');
INSERT INTO `zt_xd_prodservice` VALUES ('4', '', '微信订阅号', '', '1小时', null, '发布', '350', '380', '0', '999', null, '0', null, '2', '7', null, '/Product/2017-03-03/', '58b9773e2c5ed.jpg', '腰立辉', '2017-03-03 22:01:34');
INSERT INTO `zt_xd_prodservice` VALUES ('5', '', '微信企业号', '\r\n', '1小时', null, '发布', '350', '380', '0', '999', null, '0', null, '3', '7', null, '/Product/2017-03-03/', '58b981239e870.jpg', '腰立辉', '2017-03-03 22:43:47');
INSERT INTO `zt_xd_prodservice` VALUES ('6', '', '阿里钉钉', '\r\n', '1小时', null, '发布', '300', '500', '0', '999', null, '1', null, '4', '7', null, '/Product/2017-03-03/', '58b8d35fd5ebd.png', '腰立辉', '2017-03-04 15:26:47');
INSERT INTO `zt_xd_prodservice` VALUES ('7', '', '域名注册', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '1', '15', null, '/Product/2017-03-03/', '58b98c54d9074.jpg', '腰立辉', '2017-03-03 23:34:16');
INSERT INTO `zt_xd_prodservice` VALUES ('8', '', '云服务器租赁(国内)', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '15', null, '/Product/2017-03-03/', '58b98c909b4b4.png', '腰立辉', '2017-03-03 23:34:21');
INSERT INTO `zt_xd_prodservice` VALUES ('9', '', '虚拟主机租赁(国内)', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '15', null, '/Product/2017-03-03/', '58b98cefe3ac3.jpg', '腰立辉', '2017-03-03 23:34:27');
INSERT INTO `zt_xd_prodservice` VALUES ('10', '', '虚拟主机租赁(香港)', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '15', null, '/Product/2017-03-03/', '58b98dc19a748.jpg', '腰立辉', '2017-03-03 23:37:37');
INSERT INTO `zt_xd_prodservice` VALUES ('11', '', '虚拟主机租赁(美国)', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '5', '15', null, '/Product/2017-03-04/', '58ba571c256fe.jpg', '腰立辉', '2017-03-04 13:56:44');
INSERT INTO `zt_xd_prodservice` VALUES ('12', '', '网站备案', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '15', null, '/Product/2017-03-03/', '58b98c1c10b36.jpg', '腰立辉', '2017-03-03 23:34:48');
INSERT INTO `zt_xd_prodservice` VALUES ('13', '', '汽修-收车交车方案', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '1', '20', null, '/Product/2017-03-04/', '58ba5475a3c23.jpg', '腰立辉', '2017-03-04 20:25:36');
INSERT INTO `zt_xd_prodservice` VALUES ('14', '', '饭店-预约订餐方案', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '2', '20', null, '/Product/2017-03-04/', '58ba55421ee5c.jpg', '腰立辉', '2017-03-04 20:25:41');
INSERT INTO `zt_xd_prodservice` VALUES ('15', '', '企业-悬赏招聘方案', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '3', '20', null, '/Product/2017-03-04/', '58ba55800ddcb.jpg', '腰立辉', '2017-03-04 20:26:01');
INSERT INTO `zt_xd_prodservice` VALUES ('16', '', '企业-悬赏线索方案', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '20', null, '/Product/2017-03-04/', '58ba55c03cd6f.JPEG', '腰立辉', '2017-03-04 20:26:07');
INSERT INTO `zt_xd_prodservice` VALUES ('17', '', '培训-课程计划方案', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '5', '20', null, '/Product/2017-03-04/', '58ba56721131b.jpg', '腰立辉', '2017-03-04 20:26:15');
INSERT INTO `zt_xd_prodservice` VALUES ('18', '', '培训-悬赏招生方案', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '20', null, '/Product/2017-03-04/', '58ba56b717b4b.jpg', '腰立辉', '2017-03-04 20:26:26');
INSERT INTO `zt_xd_prodservice` VALUES ('19', '', '清库存-团购促销方案', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '7', '20', null, '/Product/2017-03-04/', '58ba541885897.jpg', '腰立辉', '2017-03-04 20:26:35');
INSERT INTO `zt_xd_prodservice` VALUES ('20', '', 'H5图文宣传页', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '1', '13', null, '/Product/2017-03-07/', '58be4183aeed3.jpg', '腰立辉', '2017-03-07 13:14:14');
INSERT INTO `zt_xd_prodservice` VALUES ('21', '', 'H5宣传留咨页', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '2', '13', null, '/Product/2017-03-07/', '58be40f09e3fa.jpg', '腰立辉', '2017-03-07 13:14:17');
INSERT INTO `zt_xd_prodservice` VALUES ('22', '', '企业PC 站', '<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	适合中小型企业以及个人建立网站，入门服务的首选。</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站类型：</p>\r\n<h3 class=\"p_color\" style=\"margin: 0px; padding: 0px; color: rgb(244, 129, 10); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	基础企业宣传类型：2499<font id=\"buiderstiexa2\" style=\"margin: 0px; padding: 0px; font-size: 14px;\">元起</font></h3>\r\n<p style=\"margin: 0px; padding: 5px 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	&nbsp;</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	特点：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	专业化的定制设计，方便的后台操作，是中小企业/公司树立网络信息品牌的首选；功能高效实用，可迅速投入使用；通过公司简介，业务服务，产品案例，信息动态，招聘人才等全面展示企业的形象，为开拓网络市场，提高信息化营销，开拓国内外业务有着至关重要的作用。</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	适合行业：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	传统行业，中小型企业形象宣传</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	类型优势：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	投入少，周期短，信息全，适合企业结构产品相对简单的企业</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站语言：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	中文版</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站策划：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	根据行业性和专业性对网站进行整体色彩，框架，布局，模块等的策划</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站栏目：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />关于我们（公司简介，发展历程，组织机构，公司理念等）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />业务服务：简介公司提供的服务或服务</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />新闻动态：（公司动态，行业动态，法规政策）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />产品展示：（产品系列1，产品系列2，产品系列3&hellip;.）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />成功案例：展示罗列一些成功的案例</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />资质荣誉：展示公司的一些荣誉等</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />联系我们：联系我们，联系电话，公司地址，邮箱，邮编等等</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	系统功能：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	文章系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	产品展示系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	新闻发布系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	公司简介系统</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站维护：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	一年的免费维护。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	保证网站在维护阶段可以被正常的访问和使用。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	对网站后台功能不会使用的免费培训网站的使用。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站使用进程中发现某些功能或模块有错误的对错误进行处理。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站被黑客挂马时进行木马的清处和漏洞的修改。</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	开发时间：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	15天左右时间（需要对方积极配合工作）</p>\r\n', '1个月（客户配合的情况下）', null, '发布', '2000', '2499', '0', '999', null, '0', null, '1', '14', null, '/Product/2017-03-04/', '58ba6db85aa55.jpg', '刘燕军', '2017-03-14 15:07:28');
INSERT INTO `zt_xd_prodservice` VALUES ('23', '', '企业 WAP 站', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '14', null, '/Product/2017-03-04/', '58ba72a5510b1.jpg', '腰立辉', '2017-03-04 15:54:13');
INSERT INTO `zt_xd_prodservice` VALUES ('24', '', '微信自定义菜单', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '1', '16', null, '/Product/2017-03-04/', '58ba58ad616be.jpg', '腰立辉', '2017-03-04 14:04:56');
INSERT INTO `zt_xd_prodservice` VALUES ('25', '', '微信关键词自动回复', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '16', null, '/Product/2017-03-04/', '58ba58e63af7a.jpg', '腰立辉', '2017-03-04 14:05:01');
INSERT INTO `zt_xd_prodservice` VALUES ('26', '', '微信WIFI 营销', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '16', null, '/Product/2017-03-04/', '58ba59e31b084.jpg', '腰立辉', '2017-03-04 14:14:39');
INSERT INTO `zt_xd_prodservice` VALUES ('27', '', '微信关注分析', '', '', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '16', null, '/Product/2017-03-04/', '58ba5b43c2987.jpg', '腰立辉', '2017-03-04 14:14:44');
INSERT INTO `zt_xd_prodservice` VALUES ('28', '', '成交-抽奖促销方案', '', '', null, '发布', '0', '0', '0', '999', null, '1', null, '8', '20', null, '/Product/2017-03-04/', '58ba6b975748b.jpg', '腰立辉', '2017-03-04 20:26:51');
INSERT INTO `zt_xd_prodservice` VALUES ('29', '', '响应式网站', '<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	专业大气展示公司形象，提升公司底蕴， 是大型集团企业的合适选择。</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站类型：</p>\r\n<h3 class=\"p_color\" style=\"margin: 0px; padding: 0px; color: rgb(244, 129, 10); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	品牌企业形象类型：4999<font id=\"buiderstiexa2\" style=\"margin: 0px; padding: 0px; font-size: 14px;\">元起</font></h3>\r\n<p style=\"margin: 0px; padding: 5px 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	&nbsp;</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	特点：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	专业大气的整体策划，方便简单的后台操作，提升您企业的整体形象；当今社会是个网络的时代，一个专业大气的企业网站对提升企业形象，营造良好社会口碑起着至关重要的作用；</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	适合行业：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	高端设计类企业，大型企业集团</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	类型优势：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	体现专业性，形象性，大气，整体提高企业形象</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站语言：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	中文版（如是中英文的价格上减去首页设计费用）</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站策划：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	根据行业性和专业性对网站进行整体色彩，框架，布局，模块等的策划</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站页面：</p>\r\n<p style=\"margin: 0px; padding: 5px 0px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 24px; color: rgb(79, 79, 79); line-height: 28px;\">\r\n	有行业内专业的设计师对网站进行整体的策划设计</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站栏目：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />关于我们（公司简介，发展历程，组织机构，公司理念等）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />业务服务：简介公司提供的服务或服务</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />新闻动态：（公司动态，行业动态，法规政策）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />产品展示：（产品系列1，产品系列2，产品系列3&hellip;.）</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />成功案例：展示罗列一些成功的案例</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />资质荣誉：展示公司的一些荣誉等</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />人才招聘：人才招聘系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />联系我们：联系我们，联系电话，公司地址，邮箱，邮编等等</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	<img height=\"13\" src=\"https://www.zzidc.com/images/website/builder_chakan_icon.gif\" style=\"margin: 0px; padding: 0px; border: none;\" width=\"17\" />网站统计：详细查看访问人数等数据公析</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	系统功能：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	文章系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	产品展示系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	新闻发布系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	人才招聘系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	公司简介系统</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	浮动QQ客服</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站统计</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站维护：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	一年的免费维护。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	保证网站在维护阶段可以被正常的访问和使用。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	对网站后台功能不会使用的免费培训网站的使用。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站使用进程中发现某些功能或模块有错误的对错误进行处理。</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	网站被黑客挂马时进行木马的清处和漏洞的修改。</p>\r\n<p class=\"p_font\" style=\"margin: 0px; padding: 5px 0px; font-weight: bold; color: rgb(79, 79, 79); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	开发时间：</p>\r\n<p class=\"p_rightcolor\" style=\"margin: 0px; padding: 5px 0px; color: rgb(79, 79, 79); text-indent: 54px; font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, arial, sans-serif, Helvetica, 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n	30天左右时间（需要对方积极配合工作）</p>\r\n', '1个月（客户配合的情况下）', null, '发布', '4500', '4999', '0', '999', null, '0', null, '3', '14', null, '/Product/2017-03-04/', '58ba72d2a8ee0.jpg', '刘燕军', '2017-03-14 16:10:58');
INSERT INTO `zt_xd_prodservice` VALUES ('30', '', 'DELL 哈沙服务器', '\r\n', '', null, '正常', '0', '0', '0', '999', null, '0', null, '1', '8', null, null, null, '刘燕军', '2017-03-12 22:26:14');

-- ----------------------------
-- Table structure for `zt_xl_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_cate`;
CREATE TABLE `zt_xl_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) NOT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) NOT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_cate
-- ----------------------------
INSERT INTO `zt_xl_cate` VALUES ('4', '1', '0', '传统业务', '已搁置', '1', '腰立辉', '2017-02-05 18:30:02');
INSERT INTO `zt_xl_cate` VALUES ('5', '50', '0', '微网站', '正常', '1', '腰立辉', '2017-02-11 17:06:22');
INSERT INTO `zt_xl_cate` VALUES ('6', '40', '0', '公众号', '正常', '1', '腰立辉', '2017-02-11 17:06:15');
INSERT INTO `zt_xl_cate` VALUES ('18', '10', '4', '文印', '正常', '1', '腰立辉', '2017-02-04 23:30:48');
INSERT INTO `zt_xl_cate` VALUES ('19', '20', '4', '广告牌', '正常', '1', '腰立辉', '2017-02-04 23:30:56');
INSERT INTO `zt_xl_cate` VALUES ('31', '51', '5', '服务器', '正常', '1', '腰立辉', '2017-02-11 17:06:26');
INSERT INTO `zt_xl_cate` VALUES ('32', '52', '5', '域名', '正常', '1', '腰立辉', '2017-02-11 17:06:29');
INSERT INTO `zt_xl_cate` VALUES ('33', '53', '5', '第三方授权', '已搁置', '1', '腰立辉', '2017-02-11 17:56:06');
INSERT INTO `zt_xl_cate` VALUES ('34', '30', '4', '发光字', '正常', '1', '腰立辉', '2017-02-11 12:16:55');

-- ----------------------------
-- Table structure for `zt_xl_order`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_order`;
CREATE TABLE `zt_xl_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `productmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品总额',
  `state` smallint(6) NOT NULL DEFAULT '1' COMMENT '订单状态',
  `payway` smallint(6) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `content` varchar(255) NOT NULL COMMENT '订单留言',
  `atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `wlname` varchar(20) NOT NULL COMMENT '物流名称',
  `wlid` varchar(20) NOT NULL COMMENT '运单编号',
  `wlmoney` decimal(5,1) NOT NULL COMMENT '物流运费',
  `uid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `utname` varchar(10) NOT NULL COMMENT '收货人名',
  `uphone` char(11) NOT NULL COMMENT '收货手机',
  `utel` varchar(20) NOT NULL COMMENT '收货人固定电话',
  `uaddress` varchar(255) NOT NULL COMMENT '用户地址',
  PRIMARY KEY (`id`),
  KEY `order_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_order
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_xl_orderdata`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_orderdata`;
CREATE TABLE `zt_xl_orderdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单数据id',
  `oid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `pname` varchar(50) NOT NULL COMMENT '商品名称',
  `plogo` varchar(200) NOT NULL COMMENT '商品logo',
  `pmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '商品价格',
  `pnum` smallint(5) unsigned NOT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`),
  KEY `orderdata_oid` (`oid`),
  KEY `orderdata_pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_orderdata
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_xl_prodservice`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_prodservice`;
CREATE TABLE `zt_xl_prodservice` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(二维码号)',
  `name` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` text COMMENT '商品描述',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `zhouqi` varchar(10) DEFAULT '一周' COMMENT '制作周期',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `money` float(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` float(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` float(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '推荐首页',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `sn` int(2) DEFAULT NULL,
  `cate` smallint(6) DEFAULT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_prodservice
-- ----------------------------
INSERT INTO `zt_xl_prodservice` VALUES ('12', '', '名片制作', '12312', '0', null, '发布', '50', '70', '0', '0', null, '0', null, '5', '18', null, '/Product/2017-02-04/', '589552cc95b58.png', '腰立辉', '2017-02-11 12:50:12');
INSERT INTO `zt_xl_prodservice` VALUES ('15', '', '微信订阅号', '', '0', null, '发布', '300', '500', '0', '1', null, '0', null, '2', '6', null, '/Product/2017-01-24/', '5886f28973c57.png', '腰立辉', '2017-02-11 16:56:50');
INSERT INTO `zt_xl_prodservice` VALUES ('16', '', '公众号运维', '200/月', '0', null, '正常', '200', '200', '0', '1', null, '0', null, '7', '6', null, null, null, '腰立辉', '2017-02-11 18:02:59');
INSERT INTO `zt_xl_prodservice` VALUES ('17', '', '阿里钉钉', '', '0', null, '发布', '500', '500', '0', '1', null, '1', null, '1', '6', null, '/Product/2017-01-24/', '5886f2d4491d7.png', '腰立辉', '2017-02-11 16:56:59');
INSERT INTO `zt_xl_prodservice` VALUES ('18', '', '支付宝生活号', '', '0', null, '正常', '0', '300', '0', '1', null, '0', null, '2', '6', null, null, null, '腰立辉', '2017-02-11 16:57:01');
INSERT INTO `zt_xl_prodservice` VALUES ('20', '', '标准企业站', '为秀丽广告网站下的子网站，无需域名和服务器，也无需备案；数据寄存在秀丽广告网站的官方数据库，没有自主的发布权限（以防发布违规内容，网站被屏蔽），', '0', null, '发布', '1666', '1888', '0', '1', null, '0', null, '5', '5', null, '/Product/2017-01-24/', '5886f207cad40.png', '腰立辉', '2017-02-11 22:58:02');
INSERT INTO `zt_xl_prodservice` VALUES ('21', '', '服务器租赁（国内）', '网络宅基地，它的配置直接影响网站的性能，域名必须备案，才可以使用，以后可以增值与QQ，微信，支付宝做深度的页面及数据连接', '0', null, '发布', '799', '799', '0', '1', null, '1', null, '1', '31', null, '/Product/2017-01-24/', '5886f2573414c.png', '腰立辉', '2017-02-05 18:27:57');
INSERT INTO `zt_xl_prodservice` VALUES ('22', '', '服务器租赁（香港）', '无需备案，付费及开通，但是不可以做增值营销服务', '0', null, '发布', '1200', '1200', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955b2d65127.png', '腰立辉', '2017-02-05 18:27:59');
INSERT INTO `zt_xl_prodservice` VALUES ('23', '', '服务器租赁（国外）', '无需备案，付费及开通，但是不可以做增值营销服务', '0', null, '正常', '1200', '1200', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955b4c24faf.png', '腰立辉', '2017-02-04 12:40:46');
INSERT INTO `zt_xl_prodservice` VALUES ('24', '', '.com域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', null, '发布', '100', '120', '0', '1', null, '1', null, '1', '32', null, '/Product/2017-01-24/', '5886f1e05de10.png', '腰立辉', '2017-02-05 18:28:22');
INSERT INTO `zt_xl_prodservice` VALUES ('25', '', '.net域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', null, '发布', '100', '120', '0', '1', null, '0', null, '1', '32', null, '/Product/2017-01-24/', '5886f1e96f186.png', '腰立辉', '2017-02-05 18:28:26');
INSERT INTO `zt_xl_prodservice` VALUES ('26', '', '.中国（域名）', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', null, '正常', '100', '360', '0', '1', null, '0', null, '1', '32', null, '/Product/2017-01-24/', '5886f1f1dae11.png', '腰立辉', '2017-01-25 13:43:26');
INSERT INTO `zt_xl_prodservice` VALUES ('27', '', '.top域名', '网络门牌号，每年一续期；如www.xiuliguanggao.com,用它就可以直接访问自己的网站', '0', null, '发布', '100', '100', '0', '1', null, '0', null, '1', '32', null, '/Product/2017-01-24/', '5886f1f8e72f5.png', '腰立辉', '2017-02-05 18:28:29');
INSERT INTO `zt_xl_prodservice` VALUES ('28', '', 'QQ用户登录', '', '0', null, '正常', '0', '500', '0', '1', null, '0', null, '2', '33', null, null, null, '腰立辉', '2017-02-04 12:48:53');
INSERT INTO `zt_xl_prodservice` VALUES ('29', '', '微信用户登录', '1.网站必须备案\r\n2.微信号必须为企业注册且通过实名认证', '0', null, '正常', '0', '500', '0', '1', null, '0', null, '1', '33', null, null, null, '腰立辉', '2017-01-25 13:38:55');
INSERT INTO `zt_xl_prodservice` VALUES ('30', '', '微博账号登录', '', '0', null, '正常', '0', '700', '0', '1', null, '0', null, '3', '33', null, null, null, '腰立辉', '2017-02-04 12:48:53');
INSERT INTO `zt_xl_prodservice` VALUES ('76', '', '三维扣板+吸塑', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '34', null, '/Product/2017-02-11/', '589edd4550800.png', '腰立辉', '2017-02-11 17:46:02');
INSERT INTO `zt_xl_prodservice` VALUES ('32', '', '单图文网页', '', '0', null, '发布', '0', '100', '0', '1', null, '1', null, '4', '5', null, '/Product/2017-02-11/', '589f261781f15.png', '腰立辉', '2017-02-11 22:56:23');
INSERT INTO `zt_xl_prodservice` VALUES ('75', '', '发光字+铝塑板', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '34', null, '/Product/2017-02-11/', '589edd3af1fa1.png', '腰立辉', '2017-02-11 22:38:09');
INSERT INTO `zt_xl_prodservice` VALUES ('35', '', '抽奖活动', '', '0', null, '下线', '0', '888', '0', '1', null, '0', null, '1', '5', null, '/Product/2017-02-11/', '589f250ff2898.png', '张秀丽', '2017-02-12 18:24:54');
INSERT INTO `zt_xl_prodservice` VALUES ('36', '', '微信服务号', '', '0', null, '发布', '500', '500', '0', '1', null, '1', null, '3', '6', null, '/Product/2017-01-24/', '5886f2938444f.png', '腰立辉', '2017-02-11 16:56:53');
INSERT INTO `zt_xl_prodservice` VALUES ('37', '', '微信企业号', '', '0', null, '发布', '500', '500', '0', '1', null, '0', null, '4', '6', null, '/Product/2017-01-24/', '5886f2a7199be.png', '腰立辉', '2017-02-11 16:56:55');
INSERT INTO `zt_xl_prodservice` VALUES ('38', '', '微信小程序（查询类）', '', '0', null, '正常', '0', '500', '0', '1', null, '0', null, '5', '6', null, null, null, '腰立辉', '2017-02-11 16:56:56');
INSERT INTO `zt_xl_prodservice` VALUES ('39', '', 'QQ电商平台', '', '0', null, '正常', '500', '500', '0', '1', null, '0', null, '6', '6', null, null, null, '腰立辉', '2017-02-11 16:56:58');
INSERT INTO `zt_xl_prodservice` VALUES ('45', '', '服务器运维(1年)', '', '0', null, '发布', '600', '600', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955b77ef6dc.png', '腰立辉', '2017-02-05 18:28:07');
INSERT INTO `zt_xl_prodservice` VALUES ('46', '', '数据库备份(1次)', '', '0', null, '发布', '50', '50', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955ba203bec.png', '腰立辉', '2017-02-11 22:57:17');
INSERT INTO `zt_xl_prodservice` VALUES ('47', '', '数据库备份(每月)', '', '0', null, '正常', '100', '120', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955bcb26d82.png', '腰立辉', '2017-02-04 12:42:51');
INSERT INTO `zt_xl_prodservice` VALUES ('48', '', '数据库备份(每年)', '', '0', null, '正常', '500', '600', '0', '1', null, '0', null, '1', '31', null, '/Product/2017-02-04/', '58955be1b099a.png', '腰立辉', '2017-02-04 12:43:16');
INSERT INTO `zt_xl_prodservice` VALUES ('49', '', '大型户外广告牌', '适用于：大型户外广告宣传、设置在道路两侧显要位置，吸引人们眼球，起到良好的宣传效果。\r\n特点：适用性广、使用期长\r\n', '0', null, '发布', '0', '0', '0', '1', null, '1', null, '1', '19', null, '/Product/2017-01-24/', '5886f672d0db3.png', '腰立辉', '2017-02-06 14:39:53');
INSERT INTO `zt_xl_prodservice` VALUES ('50', '', '喷绘', '适用于：户外广告牌、大型庆典、开业、活动展示 特点：经济适用、使用性广 分类：普通喷绘、2A喷绘、反光布、灯箱喷绘布、刀刮布、网格布', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '19', null, '/Product/2017-02-04/', '58953e6f07478.png', '腰立辉', '2017-02-06 14:51:09');
INSERT INTO `zt_xl_prodservice` VALUES ('52', '', '条幅会标', '适用于：开业、庆典、会议、活动等 特点：悬挂显眼位置，引起人们关注，以达到良好宣传效果', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '5', '19', null, '/Product/2017-02-04/', '58953fecbdc18.png', '腰立辉', '2017-02-06 14:52:23');
INSERT INTO `zt_xl_prodservice` VALUES ('53', '', '钛金牌', '适用于：单位机关、门口店名、公司名称、各项荣誉等； 特点是：持久耐用、不变色', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '19', null, '/Product/2017-02-04/', '5895432118256.png', '腰立辉', '2017-02-06 14:55:18');
INSERT INTO `zt_xl_prodservice` VALUES ('54', '', 'LED显示屏', '适用于：宾馆、公司、会议室、饭店、学校、门市、小区等地 特点是：使用寿命长，可随时更换内容。 分类：室内、室外、半室外；或单基色、双基色、三基色；', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '8', '19', null, '/Product/2017-02-04/', '58954486bc30e.png', '腰立辉', '2017-02-06 14:55:58');
INSERT INTO `zt_xl_prodservice` VALUES ('55', '', '发光字+不锈钢包边', '适用于：宾馆、饭店、展厅、学校、商场、商铺门头等 分类：LED发光字、吸塑发光字、不锈钢包边发光字、树脂发光字、迷你发光字、黑白板发光字 特点：亮化效果', '0', null, '发布', '0', '0', '0', '999', null, '1', null, '1', '34', null, '/Product/2017-02-11/', '589edcda39853.png', '腰立辉', '2017-02-11 22:37:51');
INSERT INTO `zt_xl_prodservice` VALUES ('56', '', '楼体亮化', '', '0', null, '发布', '0', '0', '0', '1', null, '1', null, '10', '19', null, '/Product/2017-02-04/', '589544aa4c48c.png', '腰立辉', '2017-02-11 23:09:08');
INSERT INTO `zt_xl_prodservice` VALUES ('60', '', '打印', '<p>\r\n	11</p>\r\n', '立等可取', '立等可取', '发布', '0', '0', '0', '999', null, '0', null, '1', '18', null, '/Product/2017-02-04/', '58954be569ec5.png', '腰立辉', '2017-02-14 14:15:00');
INSERT INTO `zt_xl_prodservice` VALUES ('59', '', '钛金字', '适用于：单位机关、宾馆、饭店、门市、学校、小区门头装饰； 特点：多年不变色、抗老化性能好、光彩夺目，给人闪闪发光感觉。', '0', null, '发布', '0', '0', '0', '1', null, '0', null, '7', '19', null, '/Product/2017-02-04/', '5895432d19e3c.png', '腰立辉', '2017-02-06 14:55:09');
INSERT INTO `zt_xl_prodservice` VALUES ('61', '', '复印', '', '121', null, '发布', '1', '0', '0', '999', null, '0', null, '2', '18', null, '/Product/2017-02-04/', '58954bf69b009.png', '腰立辉', '2017-02-13 23:07:01');
INSERT INTO `zt_xl_prodservice` VALUES ('62', '', '彩印', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '18', null, '/Product/2017-02-04/', '58954c0711d4a.png', '腰立辉', '2017-02-05 18:26:13');
INSERT INTO `zt_xl_prodservice` VALUES ('57', '', '写真展板', '适用于：商场、企业、厂区、医院、学校、小区发布、展示信息时使用； 特点：可直接推销产品，引起消费者的购买欲望，提升销量 分类：室内展板、户外展板、	铝塑展板、亚克力展板等', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '19', null, '/Product/2017-02-04/', '589545e20eef3.png', '腰立辉', '2017-02-06 14:51:42');
INSERT INTO `zt_xl_prodservice` VALUES ('63', '', '卡证制作', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '6', '18', null, '/Product/2017-02-04/', '58955196865b7.png', '腰立辉', '2017-02-05 18:26:25');
INSERT INTO `zt_xl_prodservice` VALUES ('68', '', '菜单', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '7', '18', null, '/Product/2017-02-04/', '589551a907f33.png', '腰立辉', '2017-02-05 18:26:31');
INSERT INTO `zt_xl_prodservice` VALUES ('69', '', '桌牌', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '8', '18', null, '/Product/2017-02-04/', '589551c2b4808.png', '腰立辉', '2017-02-05 18:26:35');
INSERT INTO `zt_xl_prodservice` VALUES ('70', '', 'PVC卡', '门牌、科室牌、警示牌、铝塑板牌、PVC牌等', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '9', '18', null, '/Product/2017-02-04/', '589551d126349.png', '腰立辉', '2017-02-06 14:56:30');
INSERT INTO `zt_xl_prodservice` VALUES ('71', '', '书本装订', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '10', '18', null, '/Product/2017-02-04/', '589551ea225ad.png', '腰立辉', '2017-02-05 18:26:45');
INSERT INTO `zt_xl_prodservice` VALUES ('72', '', '快照', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '18', null, '/Product/2017-02-04/', '58954c14e53be.png', '腰立辉', '2017-02-05 18:26:15');
INSERT INTO `zt_xl_prodservice` VALUES ('73', '', '微网站', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '2', '5', null, '/Product/2017-02-11/', '589f23c074742.png', '腰立辉', '2017-02-11 22:46:24');
INSERT INTO `zt_xl_prodservice` VALUES ('74', '', '网站业务后台维护', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '3', '5', null, '/Product/2017-02-11/', '589f244514ce6.png', '腰立辉', '2017-02-11 22:48:37');
INSERT INTO `zt_xl_prodservice` VALUES ('77', '', '亚克力标牌', '', '0', null, '正常', '0', '0', '0', '999', null, '0', null, '11', '18', null, '/Product/2017-02-11/', '589f1eaa5eb19.png', '腰立辉', '2017-02-11 22:24:42');
INSERT INTO `zt_xl_prodservice` VALUES ('78', '', '异形展板', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '9', '19', null, '/Product/2017-02-11/', '589f1ef415350.png', '腰立辉', '2017-02-11 22:26:06');
INSERT INTO `zt_xl_prodservice` VALUES ('79', '', '展架展板', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '10', '19', null, '/Product/2017-02-11/', '589f1f30ab615.png', '腰立辉', '2017-02-11 22:27:08');
INSERT INTO `zt_xl_prodservice` VALUES ('80', '', '亚克力字', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '11', '19', null, '/Product/2017-02-11/', '589f1fed368f6.png', '腰立辉', '2017-02-11 22:33:31');
INSERT INTO `zt_xl_prodservice` VALUES ('81', '', '亚克力+PVC', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '12', '19', null, '/Product/2017-02-11/', '589f1fffadc73.png', '腰立辉', '2017-02-11 22:33:38');
INSERT INTO `zt_xl_prodservice` VALUES ('82', '', 'PVC字', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '13', '19', null, '/Product/2017-02-11/', '589f20100df3e.png', '腰立辉', '2017-02-11 22:33:48');
INSERT INTO `zt_xl_prodservice` VALUES ('83', '', '塑钢板PVC', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '14', '19', null, '/Product/2017-02-11/', '589f2026d7e40.png', '腰立辉', '2017-02-11 22:33:22');
INSERT INTO `zt_xl_prodservice` VALUES ('84', '', '扣条+PVC', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '15', '19', null, '/Product/2017-02-11/', '589f20796cd6a.png', '腰立辉', '2017-02-11 22:33:06');
INSERT INTO `zt_xl_prodservice` VALUES ('85', '', '三维扣板+PVC', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '16', '19', null, '/Product/2017-02-11/', '589f208816319.png', '腰立辉', '2017-02-11 22:32:56');
INSERT INTO `zt_xl_prodservice` VALUES ('86', '', '亚克力吸塑', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '4', '34', null, '/Product/2017-02-11/', '589f224478ba7.png', '腰立辉', '2017-02-11 22:40:04');
INSERT INTO `zt_xl_prodservice` VALUES ('87', '', '锦旗', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '12', '18', null, '/Product/2017-02-11/', '589f288aac197.png', '腰立辉', '2017-02-11 23:07:44');
INSERT INTO `zt_xl_prodservice` VALUES ('88', '', '绶带', '', '0', null, '发布', '0', '0', '0', '999', null, '0', null, '13', '18', null, '/Product/2017-02-11/', '589f289c4a77f.png', '腰立辉', '2017-02-11 23:07:31');

-- ----------------------------
-- Table structure for `zt_xl_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_tickets`;
CREATE TABLE `zt_xl_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_tickets
-- ----------------------------
INSERT INTO `zt_xl_tickets` VALUES ('499', '设奖', '4:参与奖', '19', null, '0', null, '0', '110629', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '客户', '2016-11-09 23:19:51');
INSERT INTO `zt_xl_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '客户', '2016-11-01 18:01:44');
INSERT INTO `zt_xl_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '客户', '2016-11-09 23:19:47');
INSERT INTO `zt_xl_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('517', '设奖', '3:三等奖', '19', null, '0', null, '0', '589138', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('519', '设奖', '3:三等奖', '19', null, '0', null, '0', '253176', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('521', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '282510', '客户', '2016-12-25 23:04:20');
INSERT INTO `zt_xl_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('526', '抽奖', '4:参与奖', '19', null, '1', null, '0', '326675', '客户', '2017-01-10 09:45:45');
INSERT INTO `zt_xl_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '客户', '2016-11-01 18:05:25');
INSERT INTO `zt_xl_tickets` VALUES ('528', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '414016', '客户', '2016-12-25 23:04:27');
INSERT INTO `zt_xl_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '客户', '2016-11-09 23:19:54');
INSERT INTO `zt_xl_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('532', '抽奖', '3:三等奖', '19', '119.61.24.226', '1', null, '0', '195443', '客户', '2017-01-10 09:45:29');
INSERT INTO `zt_xl_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '2016-11-01 17:11:53');
INSERT INTO `zt_xl_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '客户', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `zt_xl_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `zt_xl_voucher`;
CREATE TABLE `zt_xl_voucher` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `remark` text,
  `voucher` varchar(5) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `total` int(11) DEFAULT '10000',
  `specia` int(1) DEFAULT '1',
  `first` int(1) DEFAULT '3',
  `second` int(2) DEFAULT '10',
  `third` int(3) DEFAULT '100',
  `canyu` int(3) DEFAULT '500',
  `moder` varchar(10) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_xl_voucher
-- ----------------------------
INSERT INTO `zt_xl_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');
