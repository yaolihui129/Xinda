/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-10 17:55:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zt_order_serviccar`
-- ----------------------------
DROP TABLE IF EXISTS `zt_order_serviccar`;
CREATE TABLE `zt_order_serviccar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `money` decimal(10,1) unsigned DEFAULT '0.0' COMMENT '订单金额',
  `productmoney` decimal(10,1) unsigned DEFAULT '0.0' COMMENT '商品总额',
  `state` varchar(6) DEFAULT '待维修' COMMENT '订单状态',
  `uid` smallint(6) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL COMMENT '用户手机',
  `carid` smallint(6) DEFAULT NULL COMMENT '车辆ID',
  `pathfront` varchar(32) DEFAULT NULL,
  `imgfront` varchar(255) DEFAULT NULL COMMENT '车前',
  `textfront` varchar(255) DEFAULT NULL,
  `pathback` varchar(255) DEFAULT NULL,
  `imgback` varchar(255) DEFAULT NULL COMMENT '车后',
  `textback` varchar(255) DEFAULT NULL,
  `pathleft` varchar(255) DEFAULT NULL,
  `imgleft` varchar(255) DEFAULT NULL COMMENT '车左',
  `textleft` varchar(255) DEFAULT NULL,
  `pthright` varchar(255) DEFAULT NULL,
  `imgright` varchar(255) DEFAULT NULL COMMENT '车右',
  `textright` varchar(255) DEFAULT NULL,
  `pathservice` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `imgservice` varchar(255) DEFAULT NULL COMMENT '维修处',
  `textservice` varchar(255) DEFAULT NULL,
  `odograph` int(11) DEFAULT NULL COMMENT '里程数',
  `pathoil` varchar(255) DEFAULT NULL,
  `imgoil` varchar(255) DEFAULT NULL COMMENT '油量表图片',
  `oilgauge` int(11) DEFAULT NULL COMMENT '油量',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  `prodid` smallint(6) DEFAULT NULL COMMENT '服务机构',
  `sdate` date DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '收车时间',
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_order_serviccar
-- ----------------------------
INSERT INTO `zt_order_serviccar` VALUES ('100003', '0.0', '0.0', '待维修', null, '13931162537', '1', null, null, '车前无明显伤痕', null, null, '车后无明显伤痕', null, null, '左侧无明显伤痕', null, null, '右侧无明显伤痕', null, null, 'iuasd', null, null, null, '70', 'asdasd', '4', '2017-03-10', '', '', '2017-03-10 16:37:01', '2017-03-10 16:37:01');
INSERT INTO `zt_order_serviccar` VALUES ('100004', '0.0', '0.0', '待维修', null, '13931162537', '1', null, null, '车前无明显伤痕', null, null, '车后无明显伤痕', null, null, '左侧无明显伤痕', null, null, '右侧无明显伤痕', null, null, 'wqeq', null, null, null, '12', 'qw', '4', '2017-03-10', '', '', '2017-03-10 16:45:35', '2017-03-10 16:45:35');
INSERT INTO `zt_order_serviccar` VALUES ('100005', '0.0', '0.0', '待维修', null, '18801043607', '1', null, null, '车前无明显伤痕', null, null, '车后无明显伤痕', null, null, '左侧无明显伤痕', null, null, '右侧无明显伤痕', null, null, 'dfs', null, null, null, '6', 'fdgdf', '4', '2017-03-10', '', '', '2017-03-10 16:49:55', '2017-03-10 16:49:55');
INSERT INTO `zt_order_serviccar` VALUES ('100006', '0.0', '0.0', '待维修', null, '13931162537', '1', null, null, '车前无明显伤痕', null, null, '车后无明显伤痕', null, null, '左侧无明显伤痕', null, null, '右侧无明显伤痕', null, null, 'asd', null, null, null, '50', 'asd', '4', '2017-03-10', '', '', '2017-03-10 16:57:47', '2017-03-10 16:57:47');
