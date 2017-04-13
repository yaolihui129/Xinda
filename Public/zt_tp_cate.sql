/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-04-13 18:22:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_cate`;
CREATE TABLE `zt_tp_cate` (
  `cateId` char(6) NOT NULL DEFAULT '',
  `sn` smallint(6) DEFAULT '0' COMMENT '分类排序',
  `pid` smallint(5) unsigned DEFAULT '0' COMMENT '父级分类编号',
  `catname` varchar(30) DEFAULT NULL COMMENT '分类名称',
  `state` varchar(5) DEFAULT '正常' COMMENT '状态',
  `prodid` smallint(6) DEFAULT NULL COMMENT '所属产品',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`cateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_cate
-- ----------------------------
