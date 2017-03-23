/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : xiuli

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-23 11:15:58
*/

SET FOREIGN_KEY_CHECKS=0;

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
