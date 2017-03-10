/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-10 14:46:22
*/

SET FOREIGN_KEY_CHECKS=0;

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_car
-- ----------------------------
INSERT INTO `zt_car` VALUES ('1', '冀E213B9', 'LDC661240f3331467', '东风雪铁龙', 'C3-XR', '2015-06-11', '白色');
