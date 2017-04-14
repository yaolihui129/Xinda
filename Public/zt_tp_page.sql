/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-04-14 16:27:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_page`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_page`;
CREATE TABLE `zt_tp_page` (
  `id` char(5) NOT NULL COMMENT '单页id',
  `name` varchar(20) NOT NULL COMMENT '单页名称',
  `content` text NOT NULL COMMENT '单页内容',
  `prodId` smallint(6) DEFAULT NULL COMMENT '所属产品',
  `isDisplay` tinyint(1) DEFAULT '0' COMMENT '是否显示',
  `logNum` int(32) DEFAULT NULL COMMENT '访问量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_page
-- ----------------------------
INSERT INTO `zt_tp_page` VALUES ('12', '订单查询', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('13', '退换货流程', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('14', '退换货条款', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('15', '用户协议', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('16', '公司简介', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('17', '联系我们', '<p>\r\n	1</p>\r\n', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('18', '诚聘英才', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('8', '支付方式', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('9', '常见问题', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('10', '配送时间及运费', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('11', '验货与签收', '', null, '0', null);
INSERT INTO `zt_tp_page` VALUES ('7', '购物指南', '', null, '0', null);
