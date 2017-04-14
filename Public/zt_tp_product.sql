/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-04-14 11:23:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tp_product`;
CREATE TABLE `zt_tp_product` (
  `productId` char(12) NOT NULL COMMENT '商品ID',
  `mark` varchar(20) DEFAULT NULL COMMENT '商品货号(条形码)',
  `sn` int(2) DEFAULT NULL COMMENT '顺序号',
  `cateId` char(6) DEFAULT NULL COMMENT '分类编号',
  `pidCateId` char(6) DEFAULT NULL COMMENT '父级分类编号',
  `productName` varchar(15) DEFAULT NULL COMMENT '商品名称',
  `content` varchar(255) DEFAULT NULL COMMENT '商品简要描述',
  `productDesc` text COMMENT '商品详情',
  `weight` varchar(50) DEFAULT NULL COMMENT '商品尺寸',
  `zzZhouqi` varchar(10) DEFAULT '一周' COMMENT '制作周期',
  `productState` tinyint(1) DEFAULT '1' COMMENT '状态',
  `money` double(10,0) DEFAULT '0' COMMENT '优惠商品价格',
  `smoney` double(10,0) DEFAULT '0' COMMENT '市场价格',
  `wlmoney` double(10,0) DEFAULT '0' COMMENT '物流价格',
  `num` smallint(5) DEFAULT NULL COMMENT '商品库存数',
  `sellnum` int(10) DEFAULT NULL COMMENT '卖出数量',
  `istj` tinyint(1) DEFAULT '0' COMMENT '推荐首页',
  `atime` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `productImg` char(32) DEFAULT NULL COMMENT '商品图片',
  `moder` varchar(10) DEFAULT NULL COMMENT '维护者',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_tp_product
-- ----------------------------
