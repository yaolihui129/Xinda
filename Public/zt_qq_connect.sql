/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-27 11:23:38
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `zt_qq_connect` VALUES ('1', '临城-秀丽广告', '1', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', 'http://localhost/Xinda/index.php/Xiuli/Login/qq_callback', 'get_user_info', null, null, null, null, null, '2017-03-27 11:20:21');
INSERT INTO `zt_qq_connect` VALUES ('2', '北京-智慧信达', '6', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', 'http://localhost/Xinda/index.php/Xinda/Login/qq_callback', 'get_user_info', null, null, null, null, null, '2017-03-27 11:21:40');
INSERT INTO `zt_qq_connect` VALUES ('3', '唐山-润竹茶业', '7', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', 'http://localhost/Xinda/index.php/Runzhu/Login/qq_callback', 'get_user_info', null, null, null, null, null, '2017-03-27 11:22:06');
INSERT INTO `zt_qq_connect` VALUES ('4', '临城-安顺汽修', '4', '101376709', '17bf1ad6668548c147ae3a65a1c739ef', 'http://localhost/Xinda/index.php/Anshun/Login/qq_callback', 'get_user_info', null, null, null, null, null, '2017-03-27 11:21:59');
