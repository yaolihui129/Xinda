/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-05 16:45:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_as_order`
-- ----------------------------
DROP TABLE IF EXISTS `zt_as_order`;
CREATE TABLE `zt_as_order` (
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
-- Records of zt_as_order
-- ----------------------------
