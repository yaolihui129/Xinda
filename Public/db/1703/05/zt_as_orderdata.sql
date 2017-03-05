/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-05 16:45:51
*/

SET FOREIGN_KEY_CHECKS=0;

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
