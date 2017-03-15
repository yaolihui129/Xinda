/*
Navicat MySQL Data Transfer

Source Server         : tuocai
Source Server Version : 50552
Source Host           : hkmysql15.zzidc.ha.cn:3306
Source Database       : tuocai

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-03-15 17:19:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `kevindevice_devlist`
-- ----------------------------
DROP TABLE IF EXISTS `kevindevice_devlist`;
CREATE TABLE `kevindevice_devlist` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` enum('station','thinclient','pc','vxstation') NOT NULL DEFAULT 'station',
  `status` enum('normal','discard','wrong','unknown') NOT NULL DEFAULT 'normal',
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `charge` char(30) NOT NULL DEFAULT '',
  `user` char(30) NOT NULL DEFAULT '',
  `version` char(50) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `dieDate` date NOT NULL DEFAULT '0000-00-00',
  `desc` text NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  `tcpip` char(50) NOT NULL DEFAULT '',
  `cpuID` char(50) NOT NULL DEFAULT '',
  `deviceSN` char(50) NOT NULL DEFAULT '',
  `monitorSN` varchar(50) NOT NULL DEFAULT '',
  `monitorVersion` varchar(50) NOT NULL DEFAULT '',
  `assetNumber` varchar(50) NOT NULL DEFAULT '',
  `vidioCard` varchar(50) NOT NULL DEFAULT '',
  `discCapacity` varchar(50) NOT NULL DEFAULT '',
  `memoryCapacity` varchar(50) NOT NULL DEFAULT '',
  `system` varchar(50) NOT NULL DEFAULT '',
  `mac` varchar(50) NOT NULL DEFAULT '',
  `displayName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kevindevice_devlist
-- ----------------------------

-- ----------------------------
-- Table structure for `kevindevice_group`
-- ----------------------------
DROP TABLE IF EXISTS `kevindevice_group`;
CREATE TABLE `kevindevice_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `type` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '0000-00-00',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kevindevice_group
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE `tp_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ad
-- ----------------------------
INSERT INTO `tp_ad` VALUES ('1', '第2张', '/Ad/2016-12-18/', '58563054eedb5.jpg', '阿斯达', '', '发布', '7', '梁小伟', '2016-12-18 14:57:12');
INSERT INTO `tp_ad` VALUES ('2', '第1张', '/Ad/2016-12-18/', '58563047c0c62.jpg', '水电费', '', '发布', '7', '梁小伟', '2016-12-18 14:55:09');
INSERT INTO `tp_ad` VALUES ('3', '第3张', '/Ad/2016-12-18/', '585630359d9bd.jpg', '', '', '发布', '7', '腰立辉', '2016-12-18 14:55:10');
INSERT INTO `tp_ad` VALUES ('4', '第4张', '/Ad/2016-12-18/', '58562fa71e5fd.jpg', '', '', '发布', '7', '腰立辉', '2016-12-18 14:55:10');
INSERT INTO `tp_ad` VALUES ('5', '第5张', '/Ad/2016-12-18/', '58562e17daa5a.jpg', '', '', '发布', '7', '腰立辉', '2016-12-18 14:57:56');
INSERT INTO `tp_ad` VALUES ('10', null, '/Ad/2016-12-18/', '58563ad9dccbf.JPG', null, null, '发布', '8', '腰立辉', '2016-12-18 15:29:29');
INSERT INTO `tp_ad` VALUES ('11', null, '/Ad/2016-12-18/', '58563ae541ed1.JPG', null, null, '发布', '8', '腰立辉', '2016-12-18 15:29:41');
INSERT INTO `tp_ad` VALUES ('12', null, '/Ad/2016-12-18/', '58563af855b95.JPG', null, null, '发布', '8', '腰立辉', '2016-12-18 15:30:00');
INSERT INTO `tp_ad` VALUES ('13', null, '/Ad/2016-12-18/', '58563b0746cbb.JPG', null, null, '发布', '8', '腰立辉', '2016-12-18 15:30:15');
INSERT INTO `tp_ad` VALUES ('14', null, null, null, null, null, '发布', '8', '腰立辉', '2016-12-18 14:58:10');
INSERT INTO `tp_ad` VALUES ('15', null, '/Ad/2016-12-18/', '58565f960204b.jpg', null, null, '发布', '5', '腰立辉', '2016-12-18 18:06:14');
INSERT INTO `tp_ad` VALUES ('16', null, '/Ad/2016-12-18/', '58565ff1220d8.jpg', null, null, '发布', '5', '腰立辉', '2016-12-18 18:07:45');
INSERT INTO `tp_ad` VALUES ('17', null, null, null, null, null, '发布', '5', '腰立辉', '2016-12-18 15:05:09');
INSERT INTO `tp_ad` VALUES ('18', null, null, null, null, null, '发布', '5', '腰立辉', '2016-12-18 15:05:08');
INSERT INTO `tp_ad` VALUES ('19', null, null, null, null, null, '发布', '5', '腰立辉', '2016-12-18 15:05:08');
INSERT INTO `tp_ad` VALUES ('20', null, null, null, null, null, '发布', '6', '腰立辉', '2016-12-18 15:06:13');
INSERT INTO `tp_ad` VALUES ('21', null, null, null, null, null, '发布', '6', '腰立辉', '2016-12-18 15:06:13');
INSERT INTO `tp_ad` VALUES ('22', null, null, null, null, null, '发布', '6', '腰立辉', '2016-12-18 15:06:14');
INSERT INTO `tp_ad` VALUES ('23', null, null, null, null, null, '发布', '6', '腰立辉', '2016-12-18 15:06:15');
INSERT INTO `tp_ad` VALUES ('24', null, null, null, null, null, '发布', '6', '腰立辉', '2016-12-18 15:06:32');
INSERT INTO `tp_ad` VALUES ('25', null, null, null, null, null, '发布', '3', '腰立辉', '2016-12-18 15:06:57');
INSERT INTO `tp_ad` VALUES ('26', null, null, null, null, null, '发布', '3', '腰立辉', '2016-12-18 15:06:55');
INSERT INTO `tp_ad` VALUES ('27', null, null, null, null, null, '发布', '3', '腰立辉', '2016-12-18 15:06:54');
INSERT INTO `tp_ad` VALUES ('28', null, null, null, null, null, '发布', '3', '腰立辉', '2016-12-18 15:06:54');
INSERT INTO `tp_ad` VALUES ('29', null, null, null, null, null, '发布', '3', '腰立辉', '2016-12-18 15:06:53');
INSERT INTO `tp_ad` VALUES ('30', null, null, null, null, null, '发布', '4', '腰立辉', '2016-12-18 15:07:34');
INSERT INTO `tp_ad` VALUES ('31', null, null, null, null, null, '发布', '4', '腰立辉', '2016-12-18 15:07:33');
INSERT INTO `tp_ad` VALUES ('32', null, null, null, null, null, '发布', '4', '腰立辉', '2016-12-18 15:07:31');
INSERT INTO `tp_ad` VALUES ('33', null, null, null, null, null, '发布', '4', '腰立辉', '2016-12-18 15:07:31');
INSERT INTO `tp_ad` VALUES ('34', null, null, null, null, null, '发布', '4', '腰立辉', '2016-12-18 15:07:30');

-- ----------------------------
-- Table structure for `tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '在职',
  `prodid` smallint(6) DEFAULT '2',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', '18801043607', '18801043607', '腰立辉', 'c33367701511b4f6020ec61ded352059', '', '', '在职', '2', '腰立辉', '腰立辉', '2016-12-17 21:47:31');
INSERT INTO `tp_admin` VALUES ('2', '13426179579', 'liangxw', '梁小伟', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '7', '腰立辉', '腰立辉', '2016-12-17 21:40:37');
INSERT INTO `tp_admin` VALUES ('3', '15030971266', '15030971266', '贾晓月', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '5', '腰立辉', '腰立辉', '2016-12-17 21:46:03');
INSERT INTO `tp_admin` VALUES ('4', '13785900902', '13785900902', '王晓亮', 'e10adc3949ba59abbe56e057f20f883e', '', '', '在职', '5', '腰立辉', '腰立辉', '2016-12-17 21:47:33');
INSERT INTO `tp_admin` VALUES ('7', '13463925200', '13463925200', '张秀丽', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '8', '腰立辉', '腰立辉', '2016-12-17 21:47:06');
INSERT INTO `tp_admin` VALUES ('8', '18610815780', '18610815780', '刘燕军', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '3', '腰立辉', '腰立辉', '2016-12-17 21:58:00');
INSERT INTO `tp_admin` VALUES ('9', '18233098318', '18233098318', '马双峰', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '6', '腰立辉', '腰立辉', '2016-12-17 21:57:59');
INSERT INTO `tp_admin` VALUES ('10', null, 'yangyh', '杨艳辉', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '6', '腰立辉', '腰立辉', '2016-12-17 21:57:58');
INSERT INTO `tp_admin` VALUES ('11', '13131981120', '13131981120', '腰建强', 'e10adc3949ba59abbe56e057f20f883e', null, null, '在职', '8', '腰立辉', '腰立辉', '2016-12-17 21:57:57');

-- ----------------------------
-- Table structure for `tp_as_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_customer`;
CREATE TABLE `tp_as_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_customer
-- ----------------------------
INSERT INTO `tp_as_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-13 17:21:44');
INSERT INTO `tp_as_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `tp_as_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `tp_as_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-13 17:37:07');

-- ----------------------------
-- Table structure for `tp_as_usecar`
-- ----------------------------
DROP TABLE IF EXISTS `tp_as_usecar`;
CREATE TABLE `tp_as_usecar` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_as_usecar
-- ----------------------------
INSERT INTO `tp_as_usecar` VALUES ('3', '避免预热时间过长', '<p>\r\n	启动车后，大多数人都习惯让发动机怠速运转，等水温达到正常温度后再把车开走，其实这种预热的方法是非常错误的，因为电喷发动机不像化油器发动机，在达到工作温度之前，供油系统不能正常工作。电喷发动机如果采用长时间预热，不仅没有必要而且还是有害的。缩短预热时间可以延长三元催化器的使用寿命，还会节省燃油。动机起动后，只要能维持稳定的转速就可以起步行车，在水温未升高前，适当控制一下车速，等水温正常后就可以正常驾驶了。</p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dd28045c6.jpg', '腰立辉', '2016-10-31 14:01:15');
INSERT INTO `tp_as_usecar` VALUES ('4', '开窗和开空调哪个更省油呢?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">夏天在高速（速度一般都要&ge;80km/h）行驶时，到底是开着窗户省油还是开着空调省油呢？支持前者的人认为：不开空调即压缩机不用工作，也就不会给</span><a class=\"ShuKeyWordLink\" href=\"http://car.autohome.com.cn/shuyu/detail_8_9_555.html\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(59, 89, 152); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">发动机</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">造成额外的负担，因此会更省油。支持后者观点的人则认为：高速时开着车窗会扰乱空气流动，形成更大的风阻，因此产生的阻力会消耗比空调还多的燃油。</span></p>\r\n<p>\r\n	<strong>结果：</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">在开空调的测试中，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的百公里油耗为6.15升，而</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/694/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">锋范</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">的则达到了7.3升。这两个数据分别比开车窗行驶时上升了0.87升和0.17升，</span><a class=\"blackclink\" href=\"http://www.autohome.com.cn/81/\" style=\"color: rgb(51, 51, 51); outline: 0px; text-decoration: none; font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" target=\"_blank\">飞度</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">油耗上升的幅度非常明显。而我们最终的定论也可以得出了。在车速为100km/h以下时，开车窗行驶的确比开空调要更加省油，但是其恶劣的驾车感受是必须用足够的忍耐力才能承受的</span></p>\r\n', '7', 'http://www.autohome.com.cn/user/201007/128126.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816db69ef7da.jpg', '腰立辉', '2016-10-31 13:49:29');
INSERT INTO `tp_as_usecar` VALUES ('5', '遭遇鸡蛋袭击不能用雨刮?', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">相信不少人曾对网络中的一则流言有所耳闻：某地频繁现劫匪用生鸡蛋袭击挡风玻璃的抢劫伎俩，千万不要开启雨刷喷水。因为鸡蛋遇玻璃水将凝固，阻挡视线达90%，在你被迫停车清理玻璃时，劫匪趁机抢劫......。上网一搜，类似流言高达百万条以上。</span></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验1：普通生鸡蛋</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验2：普通生鸡蛋停留一段时间再清理</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验3：普通鸡蛋夜间效果</strong></p>\r\n<p>\r\n	<strong style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">实验4：普通生鸡蛋+神秘配方</strong></p>\r\n<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体, arial, tahoma, sans-serif; font-size: 16px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">同样以20km/h的速度驾驶车辆，路边砸来的鸡蛋在挡风玻璃上破碎，开启雨刮器后大部分鸡蛋残渣被清除，不过一些神秘的残留物质仍然不能完全清除，尝试数次后效果仍然不明显。</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '7', 'http://www.autohome.com.cn/user/201112/281437.html#pvareaid=103453', '发布', '/Admin/usecar/2016-10-31/', '5816cd97d33bb.jpg', '腰立辉', '2016-10-31 13:00:58');
INSERT INTO `tp_as_usecar` VALUES ('8', '开车不喝酒，喝酒不开车', '<p>\r\n	可你喝了酒又需要回家怎么办？</p>\r\n<p>\r\n	1. 自己打车回家，转天再去开回来。</p>\r\n<p>\r\n	2. 请会开车没喝酒的朋友帮忙。</p>\r\n<p>\r\n	3. 请个代驾帮忙把车开回家。</p>\r\n<p>\r\n	<strong>看看后面的规定，你就知道我们的3个办法还是最有效的。</strong></p>\r\n<p>\r\n	中华人民共和国道路交通安全法》规定，饮酒后驾驶机动车的处暂扣1个月以上3个月以下机动车驾驶证，并处200元以上元以下罚款;醉酒后驾驶机动车的，由公安机关交通管理部门约束至酒醒，处15日以下拘留和暂扣3个月以上6个月以下机动车驾驶证，并处00元以上2000元以下罚款。1年内醉酒后驾驶机动车被处罚2次以上的，吊销机动车驾驶证.5年内不得驾驶营运机动车。</p>\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816e1c4c2325.jpg', '腰立辉', '2016-10-31 14:16:36');
INSERT INTO `tp_as_usecar` VALUES ('6', '保护漆面从新车做起', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">新车漆面虽无老化问题，但使用前应该做彻底的保护处理，从出厂到运输至停车场，车表漆就已经接触了空气、酸气、风沙的侵袭。及时正确的养护，能令漆面保持良好外观。如果买的是进口轿车，要首先考虑的是车蜡中含有石蜡、树脂及特氟隆等材料。除蜡时不要用汽油或煤油擦拭，应选用专业的开蜡液，或者到专业的美容养护店，请技师帮助处理。至于国产车，车身大多采用静电喷涂，漆面呈镜面光泽，故无开蜡需要。</span></p>\r\n', '6', '#', '发布', '/Admin/usecar/2016-10-31/', '5816dedc34c66.jpeg', '腰立辉', '2016-10-31 14:04:12');
INSERT INTO `tp_as_usecar` VALUES ('7', '调整后视镜', '调整后视镜左侧后视镜上、下位置是把远处的地平线置于中央，左、右位置则调整至车身占据镜面范围的14。右侧后视镜因为驾驶座位于左侧，因此驾驶人对车耳右侧的掌握不是那么容易，再加上有时路边停车的需要，在调整右侧后视镜上、下位置时地面面积要较大，约占镜面的23。而左、右位置则同样调整到车身占14面积即可。\r\n', '6', '', '发布', '/Admin/usecar/2016-10-31/', '5816dfa12179c.png', '腰立辉', '2016-10-31 14:07:29');

-- ----------------------------
-- Table structure for `tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
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
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=MyISAM AUTO_INCREMENT=10137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('10000', '1', '2', '正常登陆', '', '登入系统，并显示用户姓名11', '正常', '107', '10000', '产品库', '', '腰立辉', '腰立辉', '2016-10-28 15:50:05', '2016-12-08 09:31:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10001', '2', '2', '用户名不存在', '', '报错', '正常', '107', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:33:33', '2016-12-08 09:31:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10130', '2', '2', ' 活动截止以后', '\r\n', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:42', '2016-12-12 20:50:51', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10131', '3', '2', ' 活动期间，当天已经投过票的', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:18', '2016-12-12 20:51:27', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10132', '4', '2', ' 活动期间，今天尚未投票', '', ' 可以投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:52:41', '2016-12-12 20:51:50', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10133', '1', '2', ' 打开页面，播放音乐', '', ' 背景音乐自动播放', '正常', '110', '10449', null, null, '腰立辉', '腰立辉', '2016-12-12 20:53:37', '2016-12-12 20:52:46', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10134', '1', '2', ' 点击选手头像，播放选手歌曲', '', ' 可以播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:55:46', '2016-12-12 20:54:55', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10135', '2', '2', '再次点击选手头像', '', ' 关闭音乐播放', '正常', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 20:56:30', '2016-12-12 20:55:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10136', '3', '2', ' 切换选手列表页面，停止播放', '', ' 停止播放', '待确认', '110', '10450', null, null, '腰立辉', '腰立辉', '2016-12-12 21:01:27', '2016-12-12 21:00:36', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10129', '1', '2', ' 活动开始之前', '', ' 不能投票', '正常', '110', '10446', null, null, '腰立辉', '腰立辉', '2016-12-12 20:51:16', '2016-12-12 20:50:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10104', '1', '2', '添加管家', '<p>\r\n	asd12</p>\r\n', '添加成功', '正常', '107', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-06 11:08:10', '2016-12-07 11:53:35', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10105', '2', '2', '添加已存在的管家', '', '添加失败', '正常', '107', '10425', '产品库', null, '腰立辉', '腰立辉', '2016-12-06 11:21:52', '2016-12-07 11:53:08', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10109', '1', '2', ' 从公众微信号打开', '', ' 正常打开', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-09 16:44:54', '2016-12-09 16:44:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10110', '2', '2', ' 从分享链接打开', '', ' 正常打开', '正常', '107', '10419', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:11', '2016-12-09 16:45:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10111', '1', '2', ' 正常提交报名', '', ' 提交成功', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:45:54', '2016-12-09 16:45:54', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10112', '2', '2', ' 空姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:11', '2016-12-09 16:46:11', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10113', '3', '2', ' 空姓名，填手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:29', '2016-12-09 16:46:29', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10114', '4', '2', ' 填姓名，空手机号', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:46:44', '2016-12-09 16:46:44', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10115', '5', '2', ' 填姓名，手机号位数不足', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:05', '2016-12-09 16:47:05', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10116', '6', '2', ' 填姓名，手机号位数超过11位', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:25', '2016-12-09 16:47:25', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10117', '7', '2', ' 填姓名，手机号后有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:47:47', '2016-12-09 16:47:47', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10118', '8', '2', ' 填姓名，手机号前，有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:07', '2016-12-09 16:48:07', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10119', '9', '2', ' 填姓名，手机号中间有空格', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:48:22', '2016-12-09 16:48:22', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10120', '10', '2', ' 来回切换页面后，再填写报名信息', '', ' ', '正常', '107', '10423', null, null, '腰立辉', '腰立辉', '2016-12-09 16:49:04', '2016-12-09 16:49:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10121', '1', '2', ' 启用名片的角色，进入公司名片', '', ' 显示自己的名片', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:56:20', '2016-12-09 16:56:20', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10122', '2', '2', ' 未启用名片的角色进入公司名片', '', ' 显示所有管家名片，滑动可以浏览', '正常', '107', '10421', null, null, '腰立辉', '腰立辉', '2016-12-09 16:57:39', '2016-12-09 16:57:39', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10123', '1', '2', ' 分享给微信好友', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:04', '2016-12-09 16:58:04', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10124', '2', '2', ' 分享到微信朋友圈', '', ' ', '正常', '107', '10422', null, null, '腰立辉', '腰立辉', '2016-12-09 16:58:18', '2016-12-09 16:58:18', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10125', '1', '2', '从管家明前提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:00', '2016-12-09 16:59:00', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10126', '2', '2', ' 从公司名片提交的', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:13', '2016-12-09 16:59:13', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10127', '3', '2', ' 转发分享次数', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:32', '2016-12-09 16:59:32', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10128', '4', '2', ' 报名转化率', '', ' ', '正常', '107', '10424', null, null, '腰立辉', '腰立辉', '2016-12-09 16:59:48', '2016-12-09 16:59:48', '待维护', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_dict`;
CREATE TABLE `tp_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT '腰立辉',
  `moder` varchar(10) DEFAULT '腰立辉',
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dict
-- ----------------------------
INSERT INTO `tp_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:14', null);
INSERT INTO `tp_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:15', null);
INSERT INTO `tp_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:17', null);
INSERT INTO `tp_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:18', null);
INSERT INTO `tp_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:19', null);
INSERT INTO `tp_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:20', null);
INSERT INTO `tp_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:21', '2016-11-11 16:49:34');
INSERT INTO `tp_dict` VALUES ('8', '8', '仿真验证通过', 'prost', '作废', '腰立辉', '腰立辉', '2016-10-27 11:34:05', '2016-11-11 16:50:28');
INSERT INTO `tp_dict` VALUES ('9', '6', '已取消', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:34:11', '2016-11-11 16:50:20');
INSERT INTO `tp_dict` VALUES ('30', '1', '简要', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:30', null);
INSERT INTO `tp_dict` VALUES ('31', '2', '常规', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:48', '2016-09-16 22:23:48');
INSERT INTO `tp_dict` VALUES ('32', '1', '新项目', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:19:51', '2016-10-24 09:19:51');
INSERT INTO `tp_dict` VALUES ('33', '2', '升级版本', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:04', '2016-10-24 09:20:04');
INSERT INTO `tp_dict` VALUES ('34', '3', '临时修正程序', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:19', '2016-10-24 09:20:19');
INSERT INTO `tp_dict` VALUES ('35', '1', '紧急需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:53', '2016-09-17 14:28:53');
INSERT INTO `tp_dict` VALUES ('36', '2', '一般需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:44', '2016-09-17 14:28:44');
INSERT INTO `tp_dict` VALUES ('37', '1', '测试工程师', 'position', '正常', '腰立辉', '腰立辉', '2016-09-17 15:31:57', '2016-09-17 15:31:57');
INSERT INTO `tp_dict` VALUES ('38', '2', '初级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:01', '2016-09-17 15:32:01');
INSERT INTO `tp_dict` VALUES ('39', '3', '高级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:04', '2016-09-17 15:32:04');
INSERT INTO `tp_dict` VALUES ('40', '4', '测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:07', '2016-09-17 15:32:07');
INSERT INTO `tp_dict` VALUES ('41', '5', '高级测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:13', '2016-09-17 15:32:13');
INSERT INTO `tp_dict` VALUES ('42', '6', '质量总监', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:17', '2016-09-17 15:32:17');
INSERT INTO `tp_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:39', '2016-09-17 16:09:39');
INSERT INTO `tp_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:42', '2016-09-17 16:08:42');
INSERT INTO `tp_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:55', '2016-09-17 16:08:55');
INSERT INTO `tp_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:28', '2016-09-17 16:09:28');
INSERT INTO `tp_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:23', '2016-09-17 16:09:23');
INSERT INTO `tp_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:15', null);
INSERT INTO `tp_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:30', '2016-09-17 16:18:30');
INSERT INTO `tp_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:42', '2016-09-17 16:19:42');
INSERT INTO `tp_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:21', '2016-09-17 16:19:21');
INSERT INTO `tp_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:27', '2016-09-17 16:19:27');
INSERT INTO `tp_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:34', '2016-09-17 16:19:34');
INSERT INTO `tp_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:13', '2016-09-23 21:11:13');
INSERT INTO `tp_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:19', '2016-09-23 21:11:19');
INSERT INTO `tp_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:01', null);
INSERT INTO `tp_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:33', '2016-10-10 16:22:33');
INSERT INTO `tp_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:39', '2016-10-10 16:22:39');
INSERT INTO `tp_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:45', '2016-10-10 16:22:45');
INSERT INTO `tp_dict` VALUES ('60', '1', '操作', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:41', '2016-10-20 15:08:41');
INSERT INTO `tp_dict` VALUES ('61', '2', '检查', 'typeset', '正常', '腰立辉', '腰立辉', '2016-10-20 15:08:52', '2016-10-20 15:08:52');
INSERT INTO `tp_dict` VALUES ('62', '1', '待维护', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:21:49', '2016-10-20 16:21:49');
INSERT INTO `tp_dict` VALUES ('63', '2', '已完成', 'dstate', '正常', '腰立辉', '腰立辉', '2016-10-20 16:22:03', '2016-10-20 16:22:03');
INSERT INTO `tp_dict` VALUES ('64', '4', '功能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:29', '2016-10-24 09:20:29');
INSERT INTO `tp_dict` VALUES ('65', '5', '性能优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:37', '2016-10-24 09:20:37');
INSERT INTO `tp_dict` VALUES ('66', '6', '用户体验优化', 'reType', '正常', '腰立辉', '腰立辉', '2016-10-24 09:20:47', '2016-10-24 09:20:47');
INSERT INTO `tp_dict` VALUES ('67', '4', '已上线', 'prost', '正常', '腰立辉', '腰立辉', '2016-10-27 11:33:53', '2016-11-11 16:50:05');
INSERT INTO `tp_dict` VALUES ('69', '3', 'C', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-11-16 17:23:14', '2016-11-16 17:23:14');
INSERT INTO `tp_dict` VALUES ('68', '5', '已搁置', 'prost', '正常', '腰立辉', '腰立辉', '2016-11-09 14:21:09', '2016-11-11 16:50:15');
INSERT INTO `tp_dict` VALUES ('70', '1', '在职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 13:58:18', '2016-11-17 13:57:24');
INSERT INTO `tp_dict` VALUES ('71', '2', '离职', 'adminst', '正常', '腰立辉', '腰立辉', '2016-11-17 13:58:28', '2016-11-17 13:57:34');
INSERT INTO `tp_dict` VALUES ('72', '1', 'PJD', 'testgp', '正常', '腰立辉', '腰立辉', '2016-12-05 15:37:48', '2016-12-17 22:37:50');
INSERT INTO `tp_dict` VALUES ('73', '1', '技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-12-17 17:06:48', '2016-12-17 17:06:48');
INSERT INTO `tp_dict` VALUES ('74', '2', '非技师', 'tech', '正常', '腰立辉', '腰立辉', '2016-12-17 17:07:02', '2016-12-17 17:07:02');
INSERT INTO `tp_dict` VALUES ('75', '1', '用车小常识', 'usecar', '正常', '腰立辉', '腰立辉', '2016-12-17 17:14:52', '2016-12-17 17:14:52');
INSERT INTO `tp_dict` VALUES ('76', '2', '流言终结者', 'usecar', '正常', '腰立辉', '腰立辉', '2016-12-17 17:15:16', '2016-12-17 17:15:16');
INSERT INTO `tp_dict` VALUES ('77', '1', '抽奖', 'voucher', '正常', '腰立辉', '腰立辉', '2016-12-17 17:15:47', '2016-12-17 17:16:07');
INSERT INTO `tp_dict` VALUES ('78', '2', '普通', 'voucher', '正常', '腰立辉', '腰立辉', '2016-12-17 17:16:20', '2016-12-17 17:16:20');
INSERT INTO `tp_dict` VALUES ('79', '1', '老师', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:09:14', '2016-12-17 20:09:14');
INSERT INTO `tp_dict` VALUES ('80', '2', '助教', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:09:26', '2016-12-17 20:09:26');
INSERT INTO `tp_dict` VALUES ('81', '3', '学生', 'custype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:09:33', '2016-12-17 20:09:33');
INSERT INTO `tp_dict` VALUES ('82', '1', '学前少儿', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:10:30', '2016-12-17 20:10:30');
INSERT INTO `tp_dict` VALUES ('83', '2', '小学课程', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:10:47', '2016-12-17 20:10:47');
INSERT INTO `tp_dict` VALUES ('84', '3', '中学课程', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:10:55', '2016-12-17 20:10:55');
INSERT INTO `tp_dict` VALUES ('85', '4', '作业托管', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:11:03', '2016-12-17 20:11:03');
INSERT INTO `tp_dict` VALUES ('86', '5', '兴趣拓展', 'coursetype', '正常', '腰立辉', '腰立辉', '2016-12-17 20:11:22', '2016-12-17 20:11:22');
INSERT INTO `tp_dict` VALUES ('87', '1', '08:00-10:00', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 20:11:53', '2016-12-17 20:13:21');
INSERT INTO `tp_dict` VALUES ('88', '2', '10:10-12:10', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 20:12:22', '2016-12-17 20:12:22');
INSERT INTO `tp_dict` VALUES ('89', '3', '13:30-15:30', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 20:12:29', '2016-12-17 20:12:29');
INSERT INTO `tp_dict` VALUES ('90', '4', '15:40-17:40', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 20:12:37', '2016-12-17 20:12:37');
INSERT INTO `tp_dict` VALUES ('91', '5', '18:00-20:00', 'sktime', '正常', '腰立辉', '腰立辉', '2016-12-17 20:12:45', '2016-12-17 20:12:45');
INSERT INTO `tp_dict` VALUES ('92', '2', 'Auto', 'testgp', '正常', '腰立辉', '腰立辉', '2016-12-17 22:37:07', '2016-12-17 22:45:19');

-- ----------------------------
-- Table structure for `tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `tp_element`;
CREATE TABLE `tp_element` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT '未测试',
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
) ENGINE=MyISAM AUTO_INCREMENT=10548 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('10437', '1', '10087', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 10:18:44');
INSERT INTO `tp_exefunc` VALUES ('10438', '2', '10087', '10409', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:25');
INSERT INTO `tp_exefunc` VALUES ('10439', '3', '10087', '10410', null, '微网站（用户）- 专属管家-列表及介绍', ' 绑定管家', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10440', '4', '10087', '10411', null, '微网站（用户）- 专属管家-列表及介绍', ' 微信关注', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10441', '5', '10087', '10412', null, '微网站（用户）- 专属管家-列表及介绍', ' 电话咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10442', '6', '10087', '10413', null, '微网站（用户）- 专属管家-列表及介绍', ' 在线咨询', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-08 14:52:09');
INSERT INTO `tp_exefunc` VALUES ('10443', '1', '10088', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:36');
INSERT INTO `tp_exefunc` VALUES ('10444', '2', '10088', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', 'yuuiuy', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '魏斌', '2016-12-09 11:16:06', '2016-12-09 11:52:53');
INSERT INTO `tp_exefunc` VALUES ('10445', '3', '10088', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10446', '4', '10088', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10447', '5', '10088', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10448', '6', '10088', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:16:06');
INSERT INTO `tp_exefunc` VALUES ('10449', '1', '10090', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '失败', '第一次加载时，全部显示再显示页面', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:23:58');
INSERT INTO `tp_exefunc` VALUES ('10450', '2', '10090', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '失败', '不能循环播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:24:15');
INSERT INTO `tp_exefunc` VALUES ('10451', '3', '10090', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `tp_exefunc` VALUES ('10452', '4', '10090', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '失败', '分享后，消息不显示图片', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:28:09');
INSERT INTO `tp_exefunc` VALUES ('10453', '5', '10090', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '失败', '来回波动后，提交“提示用户名不能为空”；安卓手机录入时，二维码会覆盖输入框；可以重复提交', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:53');
INSERT INTO `tp_exefunc` VALUES ('10454', '6', '10090', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:25:37');
INSERT INTO `tp_exefunc` VALUES ('10455', '1', '10091', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10456', '4', '10091', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10457', '3', '10091', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:50:22');
INSERT INTO `tp_exefunc` VALUES ('10458', '1', '10093', '10414', null, '微网站（用户）- 专属管家-我的专属管家', ' 我的管家信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10459', '2', '10093', '10415', null, '微网站（用户）- 专属管家-我的专属管家', '点赞', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10460', '3', '10093', '10416', null, '微网站（用户）- 专属管家-我的专属管家', ' 评价', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10461', '4', '10093', '10417', null, '微网站（用户）- 专属管家-我的专属管家', ' 分享管家名片', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10462', '5', '10093', '10418', null, '微网站（用户）- 专属管家-我的专属管家', ' 解除绑定', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', '2016-12-09 11:50:43', '2016-12-09 11:50:43');
INSERT INTO `tp_exefunc` VALUES ('10463', '1', '10094', '10408', null, '微网站（用户）- 专属管家-列表及介绍', ' 管家列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10464', '4', '10094', '10425', null, '微站后台- 内容发布-移民管家', ' 管家新增', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10465', '3', '10094', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '魏斌', '魏斌', null, '2016-12-09 11:51:25');
INSERT INTO `tp_exefunc` VALUES ('10466', '1', '10095', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 14:59:59');
INSERT INTO `tp_exefunc` VALUES ('10467', '2', '10095', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', '未收到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:02:18');
INSERT INTO `tp_exefunc` VALUES ('10468', '3', '10095', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:06:53');
INSERT INTO `tp_exefunc` VALUES ('10469', '4', '10095', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', '城市级联，城市无选项', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 15:07:21');
INSERT INTO `tp_exefunc` VALUES ('10470', '5', '10095', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `tp_exefunc` VALUES ('10471', '6', '10095', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 12:04:36');
INSERT INTO `tp_exefunc` VALUES ('10472', '3', '10096', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:06');
INSERT INTO `tp_exefunc` VALUES ('10473', '2', '10096', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:01');
INSERT INTO `tp_exefunc` VALUES ('10474', '1', '10096', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:57');
INSERT INTO `tp_exefunc` VALUES ('10475', '4', '10096', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:09');
INSERT INTO `tp_exefunc` VALUES ('10476', '5', '10096', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:23:12');
INSERT INTO `tp_exefunc` VALUES ('10477', '1', '10097', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '通过', '第一次加载时，先显示全部，再进行动画', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:36');
INSERT INTO `tp_exefunc` VALUES ('10478', '2', '10097', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:17');
INSERT INTO `tp_exefunc` VALUES ('10479', '3', '10097', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:22:20');
INSERT INTO `tp_exefunc` VALUES ('10480', '3', '10098', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10481', '4', '10098', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10482', '5', '10098', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10483', '1', '10098', '10426', null, '微站后台- 内容发布-移民管家', ' 管家编辑', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10484', '2', '10098', '10429', null, '微站后台- 内容发布-移民管家', ' 管家详情', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:31');
INSERT INTO `tp_exefunc` VALUES ('10485', '1', '10099', '10422', null, '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10486', '4', '10099', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10487', '3', '10099', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10488', '2', '10099', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10489', '5', '10099', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10490', '6', '10099', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-12-12 15:15:34');
INSERT INTO `tp_exefunc` VALUES ('10491', '1', '10100', '10419', null, '微网站（用户）-个人中心-公司名片', ' 公司介绍', null, null, null, null, '失败', '第一次加载时，先加载全部，再显示动画，顺序不对', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:19:57');
INSERT INTO `tp_exefunc` VALUES ('10492', '2', '10100', '10420', null, '微网站（用户）-个人中心-公司名片', ' 重点项目', null, null, null, null, '失败', '无连接详情', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:20:19');
INSERT INTO `tp_exefunc` VALUES ('10493', '3', '10100', '10421', null, '微网站（用户）-个人中心-公司名片', ' 名片信息', null, null, null, null, '失败', '三个名片显示同样的内容', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:42');
INSERT INTO `tp_exefunc` VALUES ('10494', '4', '10100', '10422', null, '微网站（用户）-个人中心-公司名片', ' 公司名片分享', null, null, null, null, '失败', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:43:32');
INSERT INTO `tp_exefunc` VALUES ('10495', '5', '10100', '10423', null, '微网站（用户）-个人中心-公司名片', ' 报名', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:21');
INSERT INTO `tp_exefunc` VALUES ('10496', '6', '10100', '10424', null, '微网站（用户）-个人中心-公司名片', ' 数据统计', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 15:21:25');
INSERT INTO `tp_exefunc` VALUES ('10497', '1', '10101', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:15');
INSERT INTO `tp_exefunc` VALUES ('10498', '2', '10101', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', '投票报参数错误', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 19:19:48', '2016-12-12 20:14:03');
INSERT INTO `tp_exefunc` VALUES ('10499', '1', '10102', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:27');
INSERT INTO `tp_exefunc` VALUES ('10500', '2', '10102', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 20:45:33');
INSERT INTO `tp_exefunc` VALUES ('10501', '3', '10102', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:36');
INSERT INTO `tp_exefunc` VALUES ('10502', '4', '10102', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:07:19');
INSERT INTO `tp_exefunc` VALUES ('10503', '5', '10102', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', '滑动页面 底层跟着移动，详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:06');
INSERT INTO `tp_exefunc` VALUES ('10504', '6', '10102', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '无法播放视频', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:18');
INSERT INTO `tp_exefunc` VALUES ('10505', '7', '10102', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:39:37', '2016-12-12 21:08:26');
INSERT INTO `tp_exefunc` VALUES ('10506', '1', '10103', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '通过', '首页页面错位', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:17:40');
INSERT INTO `tp_exefunc` VALUES ('10507', '2', '10103', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', '无背景音乐', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:00:57');
INSERT INTO `tp_exefunc` VALUES ('10508', '3', '10103', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 20:39:51');
INSERT INTO `tp_exefunc` VALUES ('10509', '4', '10103', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:08');
INSERT INTO `tp_exefunc` VALUES ('10510', '5', '10103', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:15');
INSERT INTO `tp_exefunc` VALUES ('10511', '1', '10104', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:06');
INSERT INTO `tp_exefunc` VALUES ('10512', '2', '10104', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:10');
INSERT INTO `tp_exefunc` VALUES ('10513', '3', '10104', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:04:16');
INSERT INTO `tp_exefunc` VALUES ('10514', '4', '10104', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '失败', '跳转到开始页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:02');
INSERT INTO `tp_exefunc` VALUES ('10515', '5', '10104', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '失败', '滑动，底层跟着移动详情不懂', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:05:50');
INSERT INTO `tp_exefunc` VALUES ('10516', '6', '10104', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '无法播放', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:02');
INSERT INTO `tp_exefunc` VALUES ('10517', '7', '10104', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 20:40:49', '2016-12-12 21:06:11');
INSERT INTO `tp_exefunc` VALUES ('10518', '1', '10105', '10448', null, '微网站（用户）- 投票活动-太平洋好声音', ' 规则介绍', null, null, null, null, '失败', '首页动画的加载顺序', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 13:02:47');
INSERT INTO `tp_exefunc` VALUES ('10519', '2', '10105', '10449', null, '微网站（用户）- 投票活动-太平洋好声音', ' 背景音乐', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:28');
INSERT INTO `tp_exefunc` VALUES ('10520', '3', '10105', '10445', null, '微网站（用户）- 投票活动-太平洋好声音', ' 选手列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:55:54');
INSERT INTO `tp_exefunc` VALUES ('10521', '4', '10105', '10446', null, '微网站（用户）- 投票活动-太平洋好声音', ' 投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:13');
INSERT INTO `tp_exefunc` VALUES ('10522', '5', '10105', '10450', null, '微网站（用户）- 投票活动-太平洋好声音', ' 播放选手歌曲', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:57:34');
INSERT INTO `tp_exefunc` VALUES ('10523', '1', '10106', '10451', null, '微网站（用户）- 投票活动-四海一家', ' 首页', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:32:41');
INSERT INTO `tp_exefunc` VALUES ('10524', '2', '10106', '10452', null, '微网站（用户）- 投票活动-四海一家', ' 点击（首页）进入', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:33:25');
INSERT INTO `tp_exefunc` VALUES ('10525', '3', '10106', '10453', null, '微网站（用户）- 投票活动-四海一家', ' 项目列表', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:36:02');
INSERT INTO `tp_exefunc` VALUES ('10526', '4', '10106', '10456', null, '微网站（用户）- 投票活动-四海一家', ' 项目投票', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:38:42');
INSERT INTO `tp_exefunc` VALUES ('10527', '5', '10106', '10454', null, '微网站（用户）- 投票活动-四海一家', ' 项目详情', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:00');
INSERT INTO `tp_exefunc` VALUES ('10528', '6', '10106', '10455', null, '微网站（用户）- 投票活动-四海一家', ' 详情视频', null, null, null, null, '失败', '点击无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:39:51');
INSERT INTO `tp_exefunc` VALUES ('10529', '7', '10106', '10457', null, '微网站（用户）- 投票活动-四海一家', ' 官网链接', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-13 11:41:18', '2016-12-13 16:40:09');
INSERT INTO `tp_exefunc` VALUES ('10530', '1', '10107', '10401', null, '微网站（用户）- 个人中心-商务合作', ' 简介', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:48:43');
INSERT INTO `tp_exefunc` VALUES ('10531', '2', '10107', '10447', null, '微网站（用户）- 个人中心-商务合作', ' 拨打400电话', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:49:14');
INSERT INTO `tp_exefunc` VALUES ('10532', '3', '10107', '10402', null, '微网站（用户）- 个人中心-商务合作', ' 获取验证码', null, null, null, null, '失败', '测试环境获取不到验证码', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:03');
INSERT INTO `tp_exefunc` VALUES ('10533', '4', '10107', '10403', null, '微网站（用户）- 个人中心-商务合作', ' 登录', null, null, null, null, '失败', '没有验证码只能通过0000登录', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:50:24');
INSERT INTO `tp_exefunc` VALUES ('10534', '5', '10107', '10404', null, '微网站（用户）- 个人中心-商务合作', ' 提交信息', null, null, null, null, '失败', '弹出样式有问题；下来列表内容和样式覆盖', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:52:58');
INSERT INTO `tp_exefunc` VALUES ('10535', '6', '10107', '10405', null, '微网站（用户）- 个人中心-商务合作', ' 查询合作状态', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 11:53:03');
INSERT INTO `tp_exefunc` VALUES ('10536', '7', '10107', '10406', null, '微网站（用户）- 个人中心-商务合作', ' 驳回后重提', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-15 10:35:15');
INSERT INTO `tp_exefunc` VALUES ('10537', '1', '10108', '10458', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按地区', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:02:30');
INSERT INTO `tp_exefunc` VALUES ('10538', '2', '10108', '10459', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按合作方式', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:05');
INSERT INTO `tp_exefunc` VALUES ('10539', '3', '10108', '10460', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按状态', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:05:11');
INSERT INTO `tp_exefunc` VALUES ('10540', '4', '10108', '10461', null, '微站CRM后台-商务合作-商务合作管理', ' 查询-按联系方式', null, null, null, null, '失败', '查询后，条件信息被置空，不支持模糊查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:12');
INSERT INTO `tp_exefunc` VALUES ('10541', '5', '10108', '10462', null, '微站CRM后台-商务合作-商务合作管理', ' 组合查询', null, null, null, null, '失败', '查询后，条件信息被置空', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:15:18');
INSERT INTO `tp_exefunc` VALUES ('10542', '6', '10108', '10463', null, '微站CRM后台-商务合作-商务合作管理', ' 合作者列表', null, null, null, null, '失败', '空信息被提交过来后，显示错列', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:05');
INSERT INTO `tp_exefunc` VALUES ('10543', '7', '10108', '10464', null, '微站CRM后台-商务合作-商务合作管理', ' 查看进度入口', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:47', '2016-12-14 12:16:12');
INSERT INTO `tp_exefunc` VALUES ('10544', '1', '10109', '10465', null, '微站CRM后台- 商务合作-商务合作进度', ' 申请资料信息', null, null, null, null, '失败', '不显示提交人', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:37');
INSERT INTO `tp_exefunc` VALUES ('10545', '2', '10109', '10466', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度维护', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 10:34:14');
INSERT INTO `tp_exefunc` VALUES ('10546', '3', '10109', '10467', null, '微站CRM后台- 商务合作-商务合作进度', ' 洽谈进度历史', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-14 12:17:36');
INSERT INTO `tp_exefunc` VALUES ('10547', '4', '10109', '10468', null, '微站CRM后台- 商务合作-商务合作进度', ' 处理结果', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-14 11:47:55', '2016-12-15 09:44:50');

-- ----------------------------
-- Table structure for `tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE `tp_exescene` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('10087', '1', 'M', '10045', '10163', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-列表及介绍', '通过', '“微网站（用户）- 专属管家-列表及介绍“下所有功能点', null, null, '2016-12-09 11:15:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-08 14:52:09', '2016-12-09 11:15:20');
INSERT INTO `tp_exescene` VALUES ('10088', '1', 'M', '10046', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '失败', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, '2016-12-09 11:53:08', '192.168.6.142', '腰立辉', '腰立辉', '2016-12-09 11:16:06', '2016-12-09 11:53:08');
INSERT INTO `tp_exescene` VALUES ('10089', '2', 'M', '10045', '10164', '0', '2', '【功能】', '默认', '微网站（用户）- 专享活动', '未测试', '“微网站（用户）- 专享活动“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:18', '2016-12-09 11:16:18');
INSERT INTO `tp_exescene` VALUES ('10090', '3', 'M', '10045', '10175', '0', '2', '【功能】', '默认', '微网站（用户）- 专属管家-公司名片', '未测试', '“微网站（用户）- 专属管家-公司名片“下所有功能点', null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 11:16:26', '2016-12-09 11:16:26');
INSERT INTO `tp_exescene` VALUES ('10096', '3', 'M', '10048', '0', '10033', '3', '关注用户', '默认', '在公众订阅号，直接打开并提交报名', '通过', '微信号个人中心->公司名片->提交报名', '', null, '2016-12-12 15:24:07', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:24', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10097', '4', 'M', '10048', '0', '10034', '2', '专属管家', '未开启个人名片时', '分享公司名片', '通过', '', null, null, '2016-12-12 15:23:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:27', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10098', '5', 'M', '10048', '0', '10035', '2', '专属管家', '开启个人名片', '分享公司名片-分享个人名片', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:31', '2016-12-12 16:23:29');
INSERT INTO `tp_exescene` VALUES ('10094', '1', 'M', '10049', '0', '10033', '3', '默认', '默认', 'asd', '未测试', 'asd', '', null, null, null, '魏斌', '魏斌', '2016-12-09 11:51:25', '2016-12-09 11:51:25');
INSERT INTO `tp_exescene` VALUES ('10095', '2', 'M', '10048', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-12 15:16:44', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 12:05:27', '2016-12-12 16:23:28');
INSERT INTO `tp_exescene` VALUES ('10099', '6', 'M', '10048', '0', '10036', '2', '关注用户', '在管家分享后', '管家名片填写报名信息', '未测试', '', null, null, null, null, '腰立辉', '腰立辉', '2016-12-12 15:15:34', '2016-12-12 16:23:29');
INSERT INTO `tp_exescene` VALUES ('10100', '1', 'M', '10048', '10175', '0', '2', '【功能】', '默认', '微网站（用户）-个人中心-公司名片', '失败', '“微网站（用户）-个人中心-公司名片“下所有功能点', null, null, '2016-12-12 17:05:31', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 15:15:48', '2016-12-12 17:04:40');
INSERT INTO `tp_exescene` VALUES ('10101', '1', 'M', '10051', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 20:15:10', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 19:19:47', '2016-12-12 20:14:19');
INSERT INTO `tp_exescene` VALUES ('10102', '2', 'M', '10051', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:09:22', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:39:36', '2016-12-12 21:08:31');
INSERT INTO `tp_exescene` VALUES ('10103', '1', 'M', '10052', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '失败', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-12 21:02:20', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:41', '2016-12-12 21:01:29');
INSERT INTO `tp_exescene` VALUES ('10104', '2', 'M', '10052', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-12 21:07:14', '127.0.0.1', '腰立辉', '腰立辉', '2016-12-12 20:40:48', '2016-12-12 21:06:23');
INSERT INTO `tp_exescene` VALUES ('10105', '1', 'M', '10053', '10201', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-太平洋好声音', '通过', '“微网站（用户）- 投票活动-太平洋好声音“下所有功能点', null, null, '2016-12-13 13:00:08', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:09', '2016-12-13 12:59:17');
INSERT INTO `tp_exescene` VALUES ('10106', '2', 'M', '10053', '10202', '0', '2', '【功能】', '默认', '微网站（用户）- 投票活动-四海一家', '失败', '“微网站（用户）- 投票活动-四海一家“下所有功能点', null, null, '2016-12-13 16:41:11', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-13 11:41:17', '2016-12-13 16:40:21');
INSERT INTO `tp_exescene` VALUES ('10107', '1', 'M', '10054', '10173', '0', '2', '【功能】', '默认', '微网站（用户）- 个人中心-商务合作', '失败', '“微网站（用户）- 个人中心-商务合作“下所有功能点', null, null, '2016-12-14 12:17:42', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:36:26', '2016-12-14 12:16:56');
INSERT INTO `tp_exescene` VALUES ('10108', '2', 'M', '10054', '10203', '0', '2', '【功能】', '默认', '微站CRM后台-商务合作-商务合作管理', '失败', '“微站CRM后台-商务合作-商务合作管理“下所有功能点', null, null, '2016-12-14 12:17:03', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:46', '2016-12-14 12:16:18');
INSERT INTO `tp_exescene` VALUES ('10109', '3', 'M', '10054', '10204', '0', '2', '【功能】', '默认', '微站CRM后台- 商务合作-商务合作进度', '失败', '“微站CRM后台- 商务合作-商务合作进度“下所有功能点', null, null, '2016-12-15 10:34:52', '192.168.6.57', '腰立辉', '腰立辉', '2016-12-14 11:47:54', '2016-12-15 10:34:52');

-- ----------------------------
-- Table structure for `tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `tp_func`;
CREATE TABLE `tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `result` varchar(5) DEFAULT '未测试',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10470 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('10000', '1', '登录', '正常', '10000', '24', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:02', '2016-09-22 10:45:46');
INSERT INTO `tp_func` VALUES ('10001', '2', '注销', '正常', '10000', '49', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:04', '2016-09-24 22:17:12');
INSERT INTO `tp_func` VALUES ('10002', '1', '产品列表', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:47:57', '2016-11-07 09:39:29');
INSERT INTO `tp_func` VALUES ('10003', '2', '产品-添加', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:05', '2016-11-07 10:30:30');
INSERT INTO `tp_func` VALUES ('10004', '3', '产品-编辑', '正常', '10001', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:06', '2016-11-07 10:30:39');
INSERT INTO `tp_func` VALUES ('10005', '3', '改密', '已搁置', '10000', '24', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:07', '2016-11-07 09:24:51');
INSERT INTO `tp_func` VALUES ('10006', '4', '系统-入口', '正常', '10001', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:08', '2016-11-07 09:45:46');
INSERT INTO `tp_func` VALUES ('10007', '3', '项目-添加', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:07', '2016-11-07 09:48:15');
INSERT INTO `tp_func` VALUES ('10008', '4', '项目-编辑', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:17', '2016-11-07 09:58:13');
INSERT INTO `tp_func` VALUES ('10009', '5', '项目-详情', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:10', '2016-11-07 10:48:12');
INSERT INTO `tp_func` VALUES ('10010', '1', '分组项目列表', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:28', '2016-11-07 09:47:45');
INSERT INTO `tp_func` VALUES ('10011', '2', '切换分组', '正常', '10002', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:57:33', '2016-10-24 15:57:33');
INSERT INTO `tp_func` VALUES ('10012', '6', '快速标记状态', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:11', '2016-11-07 10:52:07');
INSERT INTO `tp_func` VALUES ('10013', '7', '项目-里程碑入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:12', '2016-11-07 11:05:24');
INSERT INTO `tp_func` VALUES ('10014', '8', '项目-风险入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:13', '2016-11-07 10:54:47');
INSERT INTO `tp_func` VALUES ('10015', '9', '项目-系统入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:14', '2016-11-07 10:58:17');
INSERT INTO `tp_func` VALUES ('10016', '10', '项目-功能点入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:15', '2016-11-07 10:58:20');
INSERT INTO `tp_func` VALUES ('10017', '11', '项目-范围入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:16', '2016-11-07 10:58:24');
INSERT INTO `tp_func` VALUES ('10018', '12', '项目-场景入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:17', '2016-11-07 10:56:47');
INSERT INTO `tp_func` VALUES ('10019', '13', '项目-控件库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:19', '2016-11-07 10:57:16');
INSERT INTO `tp_func` VALUES ('10020', '14', '项目-用例库入口', '正常', '10002', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:20', '2016-11-07 10:57:20');
INSERT INTO `tp_func` VALUES ('10021', '15', '项目-报告入口', '已搁置', '10002', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:22', '2016-09-22 17:46:11');
INSERT INTO `tp_func` VALUES ('10022', '1', '里程碑列表', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 15:57:57', '2016-11-07 10:59:24');
INSERT INTO `tp_func` VALUES ('10023', '2', '切换项目', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-24 16:03:31', '2016-11-07 11:00:43');
INSERT INTO `tp_func` VALUES ('10024', '3', '里程碑-添加', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:23', '2016-11-07 11:01:24');
INSERT INTO `tp_func` VALUES ('10025', '4', '里程碑-修改', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:24', '2016-11-07 11:09:57');
INSERT INTO `tp_func` VALUES ('10026', '7', 'A人员-入口（自动化）', '正常', '10028', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:26', '2016-09-25 13:36:43');
INSERT INTO `tp_func` VALUES ('10027', '5', '快速标记状态', '正常', '10028', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:27', '2016-11-07 11:10:26');
INSERT INTO `tp_func` VALUES ('10028', '1', '项目涉及系统列表', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:29', '2016-11-07 11:17:20');
INSERT INTO `tp_func` VALUES ('10029', '2', '待关联系统列表', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:08:30', '2016-11-07 14:33:57');
INSERT INTO `tp_func` VALUES ('10030', '3', '关联系统到本项目', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:32', '2016-11-07 11:14:22');
INSERT INTO `tp_func` VALUES ('10031', '4', '待关联系统-添加', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:33', '2016-11-07 11:17:50');
INSERT INTO `tp_func` VALUES ('10032', '5', '待关联系统-修改', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:34', '2016-11-07 11:18:14');
INSERT INTO `tp_func` VALUES ('10033', '6', '已关联系统-配置环境', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:35', '2016-11-07 11:20:02');
INSERT INTO `tp_func` VALUES ('10034', '7', '已关联系统-路径入口', '正常', '10003', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:36', '2016-11-07 11:22:28');
INSERT INTO `tp_func` VALUES ('10035', '8', '已关联系统-移除关联', '正常', '10003', '45', '通过', '腰立辉', '腰立辉', '2016-10-24 15:58:27', '2016-10-24 15:58:27');
INSERT INTO `tp_func` VALUES ('10036', '1', '项目风险列表', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:46', '2016-09-22 17:52:20');
INSERT INTO `tp_func` VALUES ('10037', '2', '切换项目', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:47', '2016-09-22 17:52:27');
INSERT INTO `tp_func` VALUES ('10038', '3', '风险-添加', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:48', '2016-09-22 17:52:43');
INSERT INTO `tp_func` VALUES ('10039', '4', '风险-维护', '正常', '10030', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:08:49', '2016-09-22 17:52:59');
INSERT INTO `tp_func` VALUES ('10040', '1', '系统路径列表', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:50', '2016-11-07 11:25:25');
INSERT INTO `tp_func` VALUES ('10041', '2', '切换关联系统', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:51', '2016-11-07 11:26:22');
INSERT INTO `tp_func` VALUES ('10042', '3', '路径-添加', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:52', '2016-11-07 11:29:17');
INSERT INTO `tp_func` VALUES ('10043', '4', '路径-修改', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:53', '2016-11-07 11:31:11');
INSERT INTO `tp_func` VALUES ('10044', '5', '路径-功能点入口', '正常', '10004', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:54', '2016-11-07 11:27:58');
INSERT INTO `tp_func` VALUES ('10045', '1', '路径功能点列表', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:56', '2016-11-07 11:38:10');
INSERT INTO `tp_func` VALUES ('10046', '2', '切换路径', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:57', '2016-11-07 11:40:17');
INSERT INTO `tp_func` VALUES ('10047', '3', '功能点-添加（默认当前项目）', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:58', '2016-11-07 11:39:30');
INSERT INTO `tp_func` VALUES ('10048', '4', '功能点-修改', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:08:59', '2016-11-07 11:41:23');
INSERT INTO `tp_func` VALUES ('10049', '5', '功能点-用例入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:00', '2016-11-07 11:42:29');
INSERT INTO `tp_func` VALUES ('10050', '6', '功能点-规则入口', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:01', '2016-11-07 11:42:23');
INSERT INTO `tp_func` VALUES ('10051', '7', '快速标记当前项目', '正常', '10005', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:09:02', '2016-11-07 11:42:16');
INSERT INTO `tp_func` VALUES ('10052', '1', '功能点用例列表', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:03', '2016-09-22 17:58:03');
INSERT INTO `tp_func` VALUES ('10053', '2', '切换功能点', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:05', '2016-09-22 17:58:13');
INSERT INTO `tp_func` VALUES ('10054', '3', '用例-添加', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:06', '2016-09-22 17:58:30');
INSERT INTO `tp_func` VALUES ('10055', '4', '用例-维护', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:07', '2016-09-22 17:58:37');
INSERT INTO `tp_func` VALUES ('10056', '5', '快速标记当前项目', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:08', '2016-09-22 17:59:13');
INSERT INTO `tp_func` VALUES ('10057', '6', '数据模板-编辑', '正常', '10006', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:09', '2016-09-23 13:40:21');
INSERT INTO `tp_func` VALUES ('10058', '1', '功能点规则列表', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:10', '2016-09-22 17:59:51');
INSERT INTO `tp_func` VALUES ('10059', '2', '切换功能点', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:12', '2016-09-22 18:00:04');
INSERT INTO `tp_func` VALUES ('10060', '3', '规则-添加', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:13', '2016-09-22 18:00:15');
INSERT INTO `tp_func` VALUES ('10061', '4', '规则-修改', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:14', '2016-09-22 18:00:27');
INSERT INTO `tp_func` VALUES ('10062', '5', '来源-维护', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:15', '2016-09-22 18:00:45');
INSERT INTO `tp_func` VALUES ('10063', '6', '快速标记当前项目', '正常', '10007', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:17', '2016-09-22 18:00:58');
INSERT INTO `tp_func` VALUES ('10064', '1', '项目-功能点列表', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:19', '2016-09-22 18:01:32');
INSERT INTO `tp_func` VALUES ('10065', '2', '切换项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:01:41');
INSERT INTO `tp_func` VALUES ('10066', '3', '添加路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:55', '2016-09-22 18:02:05');
INSERT INTO `tp_func` VALUES ('10067', '4', '维护路径', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:56', '2016-09-22 18:02:13');
INSERT INTO `tp_func` VALUES ('10068', '5', '添加功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:57', '2016-09-22 18:02:20');
INSERT INTO `tp_func` VALUES ('10069', '6', '维护功能点', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:58', '2016-09-22 18:02:27');
INSERT INTO `tp_func` VALUES ('10070', '7', '快速标记当前项目', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:59', '2016-09-22 18:02:34');
INSERT INTO `tp_func` VALUES ('10071', '8', '功能点-用例入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:00', '2016-09-23 13:32:47');
INSERT INTO `tp_func` VALUES ('10072', '9', '功能点-规则入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:02', '2016-09-22 18:03:07');
INSERT INTO `tp_func` VALUES ('10073', '10', '功能点-模板入口', '正常', '10008', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:03', '2016-09-23 13:32:57');
INSERT INTO `tp_func` VALUES ('10074', '1', '（M/A）人员列队场景列表', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:20:00', '2016-11-07 14:27:25');
INSERT INTO `tp_func` VALUES ('10075', '2', '切换阶段人员', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:27:54');
INSERT INTO `tp_func` VALUES ('10076', '3', '场景库-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:05', '2016-11-07 14:30:22');
INSERT INTO `tp_func` VALUES ('10077', '4', '场景功能-入口', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:06', '2016-11-07 14:31:10');
INSERT INTO `tp_func` VALUES ('10078', '5', '列队场景-编辑', '正常', '10029', '45', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:07', '2016-11-07 14:31:25');
INSERT INTO `tp_func` VALUES ('10079', '6', '列队场景-移除', '正常', '10029', '45', '通过', '腰立辉', '腰立辉', '2016-10-25 09:11:08', '2016-11-07 14:33:32');
INSERT INTO `tp_func` VALUES ('10080', '1', '已分派场景列表', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:09', '2016-09-24 15:15:08');
INSERT INTO `tp_func` VALUES ('10081', '2', '切换测试人员', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:10', '2016-09-24 15:15:43');
INSERT INTO `tp_func` VALUES ('10082', '3', '待分派场景列表（含次数）', '已搁置', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:11', '2016-09-23 09:57:09');
INSERT INTO `tp_func` VALUES ('10083', '4', '场景分派', '正常', '10031', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:13', '2016-09-23 09:56:52');
INSERT INTO `tp_func` VALUES ('10084', '1', '场景功能列表', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:14', '2016-11-07 14:31:53');
INSERT INTO `tp_func` VALUES ('10085', '2', '切换场景', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:15', '2016-11-07 14:31:59');
INSERT INTO `tp_func` VALUES ('10086', '3', '标记场景测试结果', '正常', '10032', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:16', '2016-11-07 14:32:02');
INSERT INTO `tp_func` VALUES ('10115', '1', '功能点-控件列表', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:17', '2016-09-23 10:56:43');
INSERT INTO `tp_func` VALUES ('10116', '2', '控件-添加', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:18', '2016-09-23 10:54:55');
INSERT INTO `tp_func` VALUES ('10117', '3', '控件-维护', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:19', '2016-09-23 10:52:35');
INSERT INTO `tp_func` VALUES ('10118', '4', '功能点-数据模板列表', '正常', '10033', '45', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:20', '2016-09-23 10:52:57');
INSERT INTO `tp_func` VALUES ('10119', '5', '标记-数据状态', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:21', '2016-09-23 11:01:05');
INSERT INTO `tp_func` VALUES ('10120', '6', '模板数据-清除', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:22', '2016-09-23 15:11:00');
INSERT INTO `tp_func` VALUES ('10121', '7', '模板数据-维护（更多）', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:23', '2016-09-23 15:11:07');
INSERT INTO `tp_func` VALUES ('10122', '8', '编写用例入口', '正常', '10033', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:24', '2016-09-23 11:02:11');
INSERT INTO `tp_func` VALUES ('10123', '1', '项目-场景列表', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:25', '2016-11-07 11:47:26');
INSERT INTO `tp_func` VALUES ('10124', '2', '切换项目', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:26', '2016-11-07 11:44:36');
INSERT INTO `tp_func` VALUES ('10099', '1', '项目-测试范围列表', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:27', '2016-09-23 10:07:01');
INSERT INTO `tp_func` VALUES ('10100', '2', '功能点-编辑', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:28', '2016-09-23 10:07:27');
INSERT INTO `tp_func` VALUES ('10101', '3', '范围-用例入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:29', '2016-09-23 10:08:56');
INSERT INTO `tp_func` VALUES ('10102', '4', '范围-规则入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:30', '2016-09-23 10:09:08');
INSERT INTO `tp_func` VALUES ('10103', '5', '范围-数据模板入口', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:32', '2016-09-23 10:10:18');
INSERT INTO `tp_func` VALUES ('10104', '1', '执行阶段场景列队', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:37', '2016-09-23 10:12:05');
INSERT INTO `tp_func` VALUES ('10105', '2', '切换阶段', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:39', '2016-09-23 10:12:27');
INSERT INTO `tp_func` VALUES ('10106', '3', '执行测试-入口', '正常', '10024', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:40', '2016-09-23 10:12:49');
INSERT INTO `tp_func` VALUES ('10107', '1', '执行场景功能点列表', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:41', '2016-09-23 10:18:35');
INSERT INTO `tp_func` VALUES ('10108', '2', '切换执行场景', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:43', '2016-09-23 10:18:44');
INSERT INTO `tp_func` VALUES ('10109', '3', '测试结果-标记通过', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:44', '2016-09-23 10:20:21');
INSERT INTO `tp_func` VALUES ('10110', '4', '测试结果-标记失败（说明）', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:45', '2016-09-23 10:23:12');
INSERT INTO `tp_func` VALUES ('10111', '5', '测试结果-重置', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:46', '2016-09-23 10:21:06');
INSERT INTO `tp_func` VALUES ('10112', '6', '用例库-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:47', '2016-09-23 10:22:30');
INSERT INTO `tp_func` VALUES ('10113', '7', '规则-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:50', '2016-09-23 10:22:42');
INSERT INTO `tp_func` VALUES ('10114', '9', '标记-场景执行结果', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:52', '2016-09-23 14:08:13');
INSERT INTO `tp_func` VALUES ('10125', '3', '场景-添加', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:53', '2016-11-07 11:48:27');
INSERT INTO `tp_func` VALUES ('10126', '4', '场景-编辑', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:54', '2016-11-07 11:48:22');
INSERT INTO `tp_func` VALUES ('10127', '6', '场景功能-入口', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:55', '2016-11-07 11:50:13');
INSERT INTO `tp_func` VALUES ('10128', '5', '场景-复制', '正常', '10017', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:11:56', '2016-11-07 11:45:28');
INSERT INTO `tp_func` VALUES ('10129', '1', '场景功能列表', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:57', '2016-09-23 11:13:12');
INSERT INTO `tp_func` VALUES ('10130', '2', '场景功能-编辑', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:58', '2016-09-23 11:14:32');
INSERT INTO `tp_func` VALUES ('10131', '3', '场景功能-移除', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:11:59', '2016-09-23 11:14:44');
INSERT INTO `tp_func` VALUES ('10132', '4', '功能库-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:00', '2016-09-23 11:14:56');
INSERT INTO `tp_func` VALUES ('10133', '5', '场景数据-入口', '正常', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:02', '2016-09-23 11:15:07');
INSERT INTO `tp_func` VALUES ('10134', '6', '功能用例库-入口', '已搁置', '10018', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:03', '2016-09-24 15:14:45');
INSERT INTO `tp_func` VALUES ('10135', '1', '功能库-功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:04', '2016-09-23 11:17:04');
INSERT INTO `tp_func` VALUES ('10136', '2', '切换系统路径', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:05', '2016-09-23 11:17:15');
INSERT INTO `tp_func` VALUES ('10137', '3', '功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:11', '2016-09-23 11:17:43');
INSERT INTO `tp_func` VALUES ('10138', '4', '功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:14', '2016-09-23 11:17:56');
INSERT INTO `tp_func` VALUES ('10139', '5', '场景功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:15', '2016-09-23 11:18:14');
INSERT INTO `tp_func` VALUES ('10140', '6', '场景功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:16', '2016-09-23 11:18:31');
INSERT INTO `tp_func` VALUES ('10141', '7', '场景功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:17', '2016-09-23 11:18:48');
INSERT INTO `tp_func` VALUES ('10142', '8', '场景功能-加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:18', '2016-09-23 11:19:01');
INSERT INTO `tp_func` VALUES ('10143', '9', '场景功能-全部加入缓存', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:19', '2016-09-23 11:19:12');
INSERT INTO `tp_func` VALUES ('10144', '10', '缓存功能列表', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:20', '2016-09-23 11:19:26');
INSERT INTO `tp_func` VALUES ('10145', '11', '缓存功能-编辑', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:21', '2016-09-23 11:19:52');
INSERT INTO `tp_func` VALUES ('10146', '12', '缓存功能-移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:34', '2016-09-23 11:20:09');
INSERT INTO `tp_func` VALUES ('10147', '13', '缓存功能-全部移除', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:35', '2016-09-23 11:20:26');
INSERT INTO `tp_func` VALUES ('10148', '14', '缓存功能-加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:36', '2016-09-23 11:20:42');
INSERT INTO `tp_func` VALUES ('10149', '15', '缓存功能-全部加入场景', '正常', '10019', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:20:59');
INSERT INTO `tp_func` VALUES ('10150', '1', '功能用例列表（库）', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:37', '2016-09-23 11:26:12');
INSERT INTO `tp_func` VALUES ('10151', '2', '绑定用例', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:38', '2016-09-23 11:24:27');
INSERT INTO `tp_func` VALUES ('10152', '3', '用例-添加', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:41', '2016-09-23 11:24:48');
INSERT INTO `tp_func` VALUES ('10153', '4', '用例-编辑', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:42', '2016-09-23 11:24:58');
INSERT INTO `tp_func` VALUES ('10154', '5', '用例-数据', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:43', '2016-09-23 11:25:31');
INSERT INTO `tp_func` VALUES ('10155', '6', '场景用例列表', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:26:28');
INSERT INTO `tp_func` VALUES ('10156', '7', '场景用例-移除', '正常', '10020', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:44', '2016-09-23 11:27:01');
INSERT INTO `tp_func` VALUES ('10157', '1', '场景模板数据列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:45', '2016-09-23 11:29:59');
INSERT INTO `tp_func` VALUES ('10158', '2', '场景模板数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:46', '2016-09-23 11:30:15');
INSERT INTO `tp_func` VALUES ('10159', '3', '模板状态快速标记', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:47', '2016-09-23 11:30:56');
INSERT INTO `tp_func` VALUES ('10160', '4', '场景数据-列表', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:48', '2016-09-23 11:32:06');
INSERT INTO `tp_func` VALUES ('10161', '5', '场景数据-锁定', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:50', '2016-09-23 11:32:20');
INSERT INTO `tp_func` VALUES ('10162', '6', '场景数据-模板同步', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:51', '2016-09-23 11:32:41');
INSERT INTO `tp_func` VALUES ('10163', '7', '场景数据-维护', '正常', '10021', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-09-23 11:32:53');
INSERT INTO `tp_func` VALUES ('10164', '1', '功能控件列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:53', '2016-11-07 14:16:59');
INSERT INTO `tp_func` VALUES ('10165', '2', '切换功能', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:54', '2016-11-07 14:17:42');
INSERT INTO `tp_func` VALUES ('10166', '3', '控件-添加', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:56', '2016-11-07 14:19:26');
INSERT INTO `tp_func` VALUES ('10167', '4', '控件-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:12:57', '2016-11-07 14:20:23');
INSERT INTO `tp_func` VALUES ('10168', '5', '控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:12:58', '2016-09-23 11:37:51');
INSERT INTO `tp_func` VALUES ('10169', '6', '功能控件状态维护', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:01', '2016-09-23 11:38:08');
INSERT INTO `tp_func` VALUES ('10170', '7', '项目控件展开列表', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:09', '2016-11-07 14:22:50');
INSERT INTO `tp_func` VALUES ('10171', '9', '控件展开列表-维护', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:17', '2016-11-07 14:24:07');
INSERT INTO `tp_func` VALUES ('10172', '1', '项目-用例库列表', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:18', '2016-09-23 11:39:51');
INSERT INTO `tp_func` VALUES ('10173', '2', '切换项目', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:19', '2016-09-23 11:40:21');
INSERT INTO `tp_func` VALUES ('10174', '3', '查询-按级别', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:21', '2016-09-23 11:40:35');
INSERT INTO `tp_func` VALUES ('10175', '6', '用例-导出', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:23', '2016-09-23 11:41:23');
INSERT INTO `tp_func` VALUES ('10176', '4', '用例-添加', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:24', '2016-09-23 11:41:29');
INSERT INTO `tp_func` VALUES ('10177', '5', '用例-维护', '正常', '10022', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:25', '2016-09-23 11:41:35');
INSERT INTO `tp_func` VALUES ('10178', '1', '列队场景列表', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:26', '2016-09-23 12:20:10');
INSERT INTO `tp_func` VALUES ('10179', '2', '导入场景数据', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:27', '2016-09-23 12:20:31');
INSERT INTO `tp_func` VALUES ('10180', '3', '查看场景数据-入口', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:28', '2016-09-23 12:20:57');
INSERT INTO `tp_func` VALUES ('10181', '4', '执行数据-清除', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:29', '2016-09-23 14:09:50');
INSERT INTO `tp_func` VALUES ('10182', '6', '执行测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:30', '2016-09-23 12:24:20');
INSERT INTO `tp_func` VALUES ('10183', '7', '停止测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:40', '2016-09-23 12:24:29');
INSERT INTO `tp_func` VALUES ('10184', '8', '暂停测试', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:41', '2016-09-23 12:24:35');
INSERT INTO `tp_func` VALUES ('10185', '1', '场景-执行数据列表', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:42', '2016-09-23 12:23:15');
INSERT INTO `tp_func` VALUES ('10186', '2', '执行数据维护', '正常', '10027', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:43', '2016-09-23 12:23:27');
INSERT INTO `tp_func` VALUES ('10187', '5', '选择执行场景', '正常', '10026', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:24:13');
INSERT INTO `tp_func` VALUES ('10188', '1', '阶段执行人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:44', '2016-09-23 12:25:00');
INSERT INTO `tp_func` VALUES ('10189', '2', '执行人员-从列表选择', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:45', '2016-09-24 15:08:23');
INSERT INTO `tp_func` VALUES ('10190', '3', '执行人员-编辑', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:46', '2016-09-23 13:02:35');
INSERT INTO `tp_func` VALUES ('10191', '4', '人员列队-入口', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:49', '2016-09-23 12:25:56');
INSERT INTO `tp_func` VALUES ('10192', '11', '项目-功能点-导出', '正常', '10008', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:50', '2016-09-23 13:33:12');
INSERT INTO `tp_func` VALUES ('10193', '6', '测试范围-导出', '正常', '10013', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:51', '2016-09-23 13:34:56');
INSERT INTO `tp_func` VALUES ('10194', '8', '数据模板-入口', '正常', '10025', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:52', '2016-09-23 14:08:19');
INSERT INTO `tp_func` VALUES ('10195', '8', '切换项目', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:53', '2016-11-07 14:23:06');
INSERT INTO `tp_func` VALUES ('10196', '10', '展开-控件状态快速标记', '正常', '10023', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:55', '2016-09-23 14:19:54');
INSERT INTO `tp_func` VALUES ('10197', '11', '展开-功能控件状态快速标记', '正常', '10023', '47', '失败', '腰立辉', '腰立辉', '2016-10-25 09:13:56', '2016-11-07 14:24:55');
INSERT INTO `tp_func` VALUES ('10198', '6', 'M人员-入口（手工）', '正常', '10028', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:13:58', '2016-09-25 13:36:07');
INSERT INTO `tp_func` VALUES ('10199', '5', '测试人员列表', '正常', '10034', '47', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:01', '2016-09-24 15:08:09');
INSERT INTO `tp_func` VALUES ('10201', '1', '车型报价员配置列表', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:02', '2016-09-26 10:24:45');
INSERT INTO `tp_func` VALUES ('10202', '2', '查询-按城市', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:03', '2016-09-26 10:24:59');
INSERT INTO `tp_func` VALUES ('10203', '3', '查询-按买顾配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:05', '2016-09-26 10:25:10');
INSERT INTO `tp_func` VALUES ('10204', '4', '查询-按电销配置状态', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:07', '2016-09-26 10:25:22');
INSERT INTO `tp_func` VALUES ('10205', '5', '查询-按品牌车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:08', '2016-09-26 10:25:51');
INSERT INTO `tp_func` VALUES ('10206', '6', '新增车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:09', '2016-09-26 10:26:05');
INSERT INTO `tp_func` VALUES ('10207', '7', '批量配置买顾报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:10', '2016-09-26 10:27:04');
INSERT INTO `tp_func` VALUES ('10208', '8', '批量配置电销报价员', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:11', '2016-09-26 10:27:22');
INSERT INTO `tp_func` VALUES ('10209', '9', '编辑车型', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:14', '2016-09-26 10:28:45');
INSERT INTO `tp_func` VALUES ('10210', '10', '修改买顾', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:15', '2016-09-26 10:28:53');
INSERT INTO `tp_func` VALUES ('10211', '11', '修改电销', '正常', '10067', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:16', '2016-09-26 10:29:03');
INSERT INTO `tp_func` VALUES ('10212', '1', '城市买顾价格收集表', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:17', '2016-09-26 10:38:39');
INSERT INTO `tp_func` VALUES ('10213', '2', '查询-按城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:18', '2016-09-26 10:38:48');
INSERT INTO `tp_func` VALUES ('10214', '3', '查询-按买顾', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:14:19', '2016-09-26 10:38:58');
INSERT INTO `tp_func` VALUES ('10215', '4', '明细-买顾入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:43', '2016-09-26 10:39:22');
INSERT INTO `tp_func` VALUES ('10216', '5', '明细-未报价车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:41', '2016-09-26 10:39:49');
INSERT INTO `tp_func` VALUES ('10217', '6', '明细-价格过期车款入口', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:40', '2016-09-26 10:40:03');
INSERT INTO `tp_func` VALUES ('10218', '7', '明细-查询按选择城市', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:39', '2016-09-26 10:40:41');
INSERT INTO `tp_func` VALUES ('10219', '8', '明细-查询按车型车款', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:37', '2016-09-26 10:40:50');
INSERT INTO `tp_func` VALUES ('10220', '9', '明细-查询按价格状态', '正常', '10071', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:36', '2016-09-26 10:40:59');
INSERT INTO `tp_func` VALUES ('10221', '1', '车型价格列表', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:34', '2016-09-26 10:45:23');
INSERT INTO `tp_func` VALUES ('10222', '2', '查询-按选择城市', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:32', '2016-09-26 10:46:02');
INSERT INTO `tp_func` VALUES ('10223', '3', '查询-按价格状态', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:31', '2016-09-26 10:46:12');
INSERT INTO `tp_func` VALUES ('10224', '4', '查询-按车型车款', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:30', '2016-09-26 11:06:15');
INSERT INTO `tp_func` VALUES ('10225', '5', '添加价格信息', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:28', '2016-09-26 11:06:27');
INSERT INTO `tp_func` VALUES ('10226', '6', '设置显示列', '正常', '10069', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:27', '2016-09-26 11:06:56');
INSERT INTO `tp_func` VALUES ('10227', '1', '价格即将过期-车款列表', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:26', '2016-09-26 13:32:18');
INSERT INTO `tp_func` VALUES ('10228', '2', '提交报价入口', '正常', '10070', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:25', '2016-09-26 13:32:48');
INSERT INTO `tp_func` VALUES ('10229', '1', '价格新增车款-车款列表', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:37');
INSERT INTO `tp_func` VALUES ('10230', '2', '提交报价-入口', '正常', '10072', '46', '未测试', '腰立辉', '腰立辉', '2016-10-28 11:52:34', '2016-09-26 13:33:50');
INSERT INTO `tp_func` VALUES ('10231', '1', '报价列表', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:22', '2016-09-26 13:41:17');
INSERT INTO `tp_func` VALUES ('10232', '2', '查询-按价格状态', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:21', '2016-09-26 13:41:36');
INSERT INTO `tp_func` VALUES ('10233', '3', '查询-按车型车款', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:20', '2016-09-26 13:41:46');
INSERT INTO `tp_func` VALUES ('10234', '4', '添加价格信息', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:19', '2016-09-26 13:42:03');
INSERT INTO `tp_func` VALUES ('10235', '5', '设置显示列', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:18', '2016-09-26 13:42:17');
INSERT INTO `tp_func` VALUES ('10236', '6', '价格修改', '正常', '10073', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:09', '2016-09-26 13:42:35');
INSERT INTO `tp_func` VALUES ('10237', '1', '待确定价格-车款列表', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:08', '2016-09-26 13:50:35');
INSERT INTO `tp_func` VALUES ('10238', '2', '确认价格', '正常', '10074', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:07', '2016-09-26 13:51:00');
INSERT INTO `tp_func` VALUES ('10239', '1', '显示报价城市', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:06', '2016-09-26 13:52:59');
INSERT INTO `tp_func` VALUES ('10240', '2', '选择品牌车型报价（NO车款）', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:05', '2016-09-26 13:56:29');
INSERT INTO `tp_func` VALUES ('10241', '3', '选择车款报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:04', '2016-09-26 13:53:45');
INSERT INTO `tp_func` VALUES ('10242', '4', '选择优惠金额报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:03', '2016-09-26 13:54:27');
INSERT INTO `tp_func` VALUES ('10243', '5', '选择优惠百分比报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:02', '2016-09-26 13:54:42');
INSERT INTO `tp_func` VALUES ('10244', '6', '保存报价', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:01', '2016-09-26 13:55:52');
INSERT INTO `tp_func` VALUES ('10245', '7', '保存并创建下一条', '正常', '10075', '46', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:10:00', '2016-09-26 13:56:13');
INSERT INTO `tp_func` VALUES ('10413', '6', ' 在线咨询', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:01:05', '2016-12-05 18:01:05');
INSERT INTO `tp_func` VALUES ('10412', '5', ' 电话咨询', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:56', '2016-12-05 18:00:56');
INSERT INTO `tp_func` VALUES ('10408', '1', ' 管家列表', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 17:59:46', '2016-12-05 17:59:46');
INSERT INTO `tp_func` VALUES ('10409', '2', ' 管家详情', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:02', '2016-12-05 18:00:02');
INSERT INTO `tp_func` VALUES ('10410', '3', ' 绑定管家', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:28', '2016-12-05 18:00:28');
INSERT INTO `tp_func` VALUES ('10411', '4', ' 微信关注', '正常', '10163', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:00:38', '2016-12-05 18:00:38');
INSERT INTO `tp_func` VALUES ('10419', '1', ' 公司介绍', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:04:50', '2016-12-12 15:23:00');
INSERT INTO `tp_func` VALUES ('10414', '1', ' 我的管家信息', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:30', '2016-12-06 10:42:56');
INSERT INTO `tp_func` VALUES ('10415', '2', '点赞', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:40', '2016-12-06 10:42:59');
INSERT INTO `tp_func` VALUES ('10416', '3', ' 评价', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:47', '2016-12-06 10:43:02');
INSERT INTO `tp_func` VALUES ('10417', '4', ' 分享管家名片', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:03:57', '2016-12-06 10:43:04');
INSERT INTO `tp_func` VALUES ('10418', '5', ' 解除绑定', '正常', '10174', null, '未测试', '腰立辉', '腰立辉', '2016-12-05 18:04:12', '2016-12-06 10:43:07');
INSERT INTO `tp_func` VALUES ('10420', '2', ' 重点项目', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:01', '2016-12-12 15:21:09');
INSERT INTO `tp_func` VALUES ('10421', '3', ' 名片信息', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:12', '2016-12-12 15:44:33');
INSERT INTO `tp_func` VALUES ('10422', '4', ' 公司名片分享', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:33', '2016-12-12 15:44:22');
INSERT INTO `tp_func` VALUES ('10423', '5', ' 报名', '正常', '10175', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 18:05:43', '2016-12-09 11:25:53');
INSERT INTO `tp_func` VALUES ('10266', '1', '登录', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:31', '2016-09-27 17:16:17');
INSERT INTO `tp_func` VALUES ('10267', '2', '记住密码', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:30', '2016-09-27 17:16:24');
INSERT INTO `tp_func` VALUES ('10268', '3', '个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:29', '2016-09-27 17:16:37');
INSERT INTO `tp_func` VALUES ('10269', '4', '修改个人信息', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:28', '2016-09-27 17:16:44');
INSERT INTO `tp_func` VALUES ('10270', '5', '退出', '正常', '10106', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:26', '2016-09-27 17:16:53');
INSERT INTO `tp_func` VALUES ('10271', '1', '权限管理-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:27', '2016-09-27 17:17:36');
INSERT INTO `tp_func` VALUES ('10272', '2', '惠买车电商CRM-入口', '正常', '10107', '0', '未测试', '腰立辉', '腰立辉', '2016-10-25 09:09:25', '2016-09-27 17:18:05');
INSERT INTO `tp_func` VALUES ('10273', '1', '数量统计', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:12', '2016-10-25 10:31:12');
INSERT INTO `tp_func` VALUES ('10274', '2', '查询-按客户姓名', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:30', '2016-10-25 10:31:30');
INSERT INTO `tp_func` VALUES ('10275', '3', '查询-按客户手机', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:31:37', '2016-10-25 10:31:37');
INSERT INTO `tp_func` VALUES ('10276', '4', '查询-按待办类型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:03', '2016-10-25 10:32:03');
INSERT INTO `tp_func` VALUES ('10277', '5', '查询-按待办来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:14', '2016-10-25 10:32:14');
INSERT INTO `tp_func` VALUES ('10278', '6', '查询-按客户级别', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:22', '2016-10-25 10:32:22');
INSERT INTO `tp_func` VALUES ('10279', '7', '查询-按跟进阶段', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:41', '2016-10-25 10:32:41');
INSERT INTO `tp_func` VALUES ('10280', '8', '查询-按是否成交', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:32:50', '2016-10-25 10:32:50');
INSERT INTO `tp_func` VALUES ('10281', '9', '查询-按是否置换', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:33:55', '2016-10-25 10:33:55');
INSERT INTO `tp_func` VALUES ('10282', '10', '查询-按购车城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:03', '2016-10-25 10:34:03');
INSERT INTO `tp_func` VALUES ('10283', '11', '查询-按客户来源', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:10', '2016-10-25 10:34:10');
INSERT INTO `tp_func` VALUES ('10284', '12', '上牌城市', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:18', '2016-10-25 10:34:18');
INSERT INTO `tp_func` VALUES ('10285', '13', '按手机归属地', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:34', '2016-10-25 10:34:34');
INSERT INTO `tp_func` VALUES ('10286', '14', '查询-按待办时间', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:45', '2016-10-25 10:34:45');
INSERT INTO `tp_func` VALUES ('10287', '15', '查询-按意向车型', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:34:55', '2016-10-25 10:34:55');
INSERT INTO `tp_func` VALUES ('10288', '16', '查询-按客户标签', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:05', '2016-10-25 10:35:05');
INSERT INTO `tp_func` VALUES ('10289', '17', '今日待办列表', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:35:28', '2016-10-25 10:35:28');
INSERT INTO `tp_func` VALUES ('10290', '18', '添加客户入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:34', '2016-10-25 10:36:34');
INSERT INTO `tp_func` VALUES ('10291', '19', '查看外出计划', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:14', '2016-10-25 10:36:14');
INSERT INTO `tp_func` VALUES ('10292', '20', '客户跟进入口', '正常', '10051', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:36:49', '2016-10-25 10:36:49');
INSERT INTO `tp_func` VALUES ('10293', '1', '查询', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:38', '2016-10-25 10:38:38');
INSERT INTO `tp_func` VALUES ('10294', '2', '添加客户入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 10:38:46', '2016-10-25 10:38:46');
INSERT INTO `tp_func` VALUES ('10299', '1', '查询', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:34', '2016-10-25 13:39:34');
INSERT INTO `tp_func` VALUES ('10296', '4', '查看外出计划入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:12', '2016-10-25 13:38:12');
INSERT INTO `tp_func` VALUES ('10297', '5', '过期待办列表', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:26', '2016-10-25 13:38:26');
INSERT INTO `tp_func` VALUES ('10298', '6', '跟进入口', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:38:39', '2016-10-25 13:38:39');
INSERT INTO `tp_func` VALUES ('10300', '2', '添加客户入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:41', '2016-10-25 13:39:41');
INSERT INTO `tp_func` VALUES ('10301', '3', '查看外出计划入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:39:55', '2016-10-25 13:39:55');
INSERT INTO `tp_func` VALUES ('10302', '4', '全部待办列表', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:40:13', '2016-10-25 13:40:13');
INSERT INTO `tp_func` VALUES ('10303', '5', '跟进入口', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:41:24', '2016-10-25 13:41:24');
INSERT INTO `tp_func` VALUES ('10304', '0', '待办数统计', '正常', '10109', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:42:40', '2016-10-25 13:42:40');
INSERT INTO `tp_func` VALUES ('10305', '0', '待办数统计', '正常', '10108', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:43:06', '2016-10-25 13:43:06');
INSERT INTO `tp_func` VALUES ('10306', '1', '待办数统计', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:16', '2016-10-25 13:48:16');
INSERT INTO `tp_func` VALUES ('10307', '2', '金融待办列表', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:33', '2016-10-25 13:48:33');
INSERT INTO `tp_func` VALUES ('10308', '3', '跟进入口', '正常', '10110', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:48:47', '2016-10-25 13:48:47');
INSERT INTO `tp_func` VALUES ('10309', '1', '客户数统计', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:21', '2016-10-25 13:49:21');
INSERT INTO `tp_func` VALUES ('10310', '2', '常规查询', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:36', '2016-10-25 13:49:36');
INSERT INTO `tp_func` VALUES ('10311', '3', '查询-按订单类型', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:49:53', '2016-10-25 13:49:53');
INSERT INTO `tp_func` VALUES ('10312', '4', '客户列表', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:00', '2016-10-25 13:50:00');
INSERT INTO `tp_func` VALUES ('10313', '5', '添加客户入口', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:09', '2016-10-25 13:50:09');
INSERT INTO `tp_func` VALUES ('10314', '6', '赠送优惠券', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:28', '2016-10-25 13:50:28');
INSERT INTO `tp_func` VALUES ('10315', '7', '查看全部金融产品', '正常', '10111', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:50:43', '2016-10-25 13:50:43');
INSERT INTO `tp_func` VALUES ('10316', '1', '客户统计数', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:25', '2016-10-25 13:51:25');
INSERT INTO `tp_func` VALUES ('10317', '2', '常规查询', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 13:51:37', '2016-10-25 13:51:37');
INSERT INTO `tp_func` VALUES ('10318', '3', '查询-按订单类型', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:48', '2016-10-25 14:00:48');
INSERT INTO `tp_func` VALUES ('10319', '4', '客户列表', '正常', '10112', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 14:00:59', '2016-10-25 14:00:59');
INSERT INTO `tp_func` VALUES ('10320', '1', '号码查询', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:05', '2016-10-25 15:10:05');
INSERT INTO `tp_func` VALUES ('10321', '2', '添加客户', '正常', '10113', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:10:20', '2016-10-25 15:10:20');
INSERT INTO `tp_func` VALUES ('10322', '1', '外出计划', '正常', '10114', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:11:11', '2016-10-25 15:11:11');
INSERT INTO `tp_func` VALUES ('10323', '1', '客户信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-28 15:20:10', '2016-10-25 15:12:32');
INSERT INTO `tp_func` VALUES ('10324', '2', '转移', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:39', '2016-10-25 15:12:39');
INSERT INTO `tp_func` VALUES ('10325', '3', '战败', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:45', '2016-10-25 15:12:45');
INSERT INTO `tp_func` VALUES ('10326', '4', '创建待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:12:54', '2016-10-25 15:12:54');
INSERT INTO `tp_func` VALUES ('10327', '5', '免打扰', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:04', '2016-10-25 15:13:04');
INSERT INTO `tp_func` VALUES ('10328', '6', '推送商家入口', '正常', '10115', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:12', '2016-10-25 17:35:12');
INSERT INTO `tp_func` VALUES ('10329', '7', '外出计划入口', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:21', '2016-10-25 15:13:21');
INSERT INTO `tp_func` VALUES ('10330', '8', '订单列表', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:13:40', '2016-10-25 15:13:40');
INSERT INTO `tp_func` VALUES ('10331', '9', '查看已绑定礼包', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:08', '2016-10-25 15:14:08');
INSERT INTO `tp_func` VALUES ('10332', '10', '查看金融产品', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:21', '2016-10-25 15:14:21');
INSERT INTO `tp_func` VALUES ('10333', '11', '跟进待办', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:36', '2016-10-25 15:14:36');
INSERT INTO `tp_func` VALUES ('10334', '12', '客户基本信息', '正常', '10115', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 15:14:48', '2016-10-25 15:14:48');
INSERT INTO `tp_func` VALUES ('10335', '1', '客户信息', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:23', '2016-10-25 17:35:23');
INSERT INTO `tp_func` VALUES ('10336', '2', '客户姓名调整信息页', '正常', '10116', '51', '通过', '腰立辉', '腰立辉', '2016-10-25 17:35:27', '2016-10-25 17:35:27');
INSERT INTO `tp_func` VALUES ('10337', '3', '创建买顾订单', '正常', '10116', '80', '通过', '腰立辉', '腰立辉', '2016-10-26 10:04:11', '2016-11-02 10:10:10');
INSERT INTO `tp_func` VALUES ('10338', '1', '查询-按客户姓名', '正常', '10052', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 16:37:30', '2016-11-02 09:42:52');
INSERT INTO `tp_func` VALUES ('10339', '2', '查询-按客户手机', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:37:46', '2016-10-25 16:37:46');
INSERT INTO `tp_func` VALUES ('10340', '3', '查询-按订单编号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:06', '2016-10-25 16:38:06');
INSERT INTO `tp_func` VALUES ('10341', '4', '查询-按媒体单号', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:24', '2016-10-25 16:38:24');
INSERT INTO `tp_func` VALUES ('10342', '5', '查询-按订单状态', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:40', '2016-10-25 16:38:40');
INSERT INTO `tp_func` VALUES ('10343', '6', '查询-按订单来源', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:38:51', '2016-10-25 16:38:51');
INSERT INTO `tp_func` VALUES ('10344', '7', '查询-按订单车型', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:09', '2016-10-25 16:39:09');
INSERT INTO `tp_func` VALUES ('10345', '8', '查询-按下单时间', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:39:19', '2016-10-25 16:39:19');
INSERT INTO `tp_func` VALUES ('10346', '9', '订单列表', '正常', '10052', '51', '失败', '腰立辉', '腰立辉', '2016-10-25 17:35:41', '2016-11-02 09:43:06');
INSERT INTO `tp_func` VALUES ('10347', '10', '【客户手机号】客户跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:12', '2016-10-25 16:40:12');
INSERT INTO `tp_func` VALUES ('10348', '11', '详情', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:24', '2016-10-25 16:40:24');
INSERT INTO `tp_func` VALUES ('10349', '12', '赠送随手礼', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:38', '2016-10-25 16:40:38');
INSERT INTO `tp_func` VALUES ('10350', '13', '跟进', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:49', '2016-10-25 16:40:49');
INSERT INTO `tp_func` VALUES ('10351', '14', '查看金融产品', '正常', '10052', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:40:58', '2016-10-25 16:40:58');
INSERT INTO `tp_func` VALUES ('10352', '1', '查询-按客户姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:10', '2016-10-25 16:45:10');
INSERT INTO `tp_func` VALUES ('10353', '2', '查询-按客户手机号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:19', '2016-10-25 16:45:19');
INSERT INTO `tp_func` VALUES ('10354', '3', '查询-按车主姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:32', '2016-10-25 16:45:32');
INSERT INTO `tp_func` VALUES ('10355', '4', '查询-按订单编号', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:44', '2016-10-25 16:45:44');
INSERT INTO `tp_func` VALUES ('10356', '5', '查询-按订单来源', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:45:54', '2016-10-25 16:45:54');
INSERT INTO `tp_func` VALUES ('10357', '6', '查询-按订单品牌', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:05', '2016-10-25 16:46:05');
INSERT INTO `tp_func` VALUES ('10358', '7', '查询-按订单车型', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:16', '2016-10-25 16:46:16');
INSERT INTO `tp_func` VALUES ('10359', '8', '查询-按信息状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:24', '2016-10-25 16:46:24');
INSERT INTO `tp_func` VALUES ('10360', '9', '查询-按买顾大区', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:33', '2016-10-25 16:46:33');
INSERT INTO `tp_func` VALUES ('10361', '10', '查询-按买顾城市', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:41', '2016-10-25 16:46:41');
INSERT INTO `tp_func` VALUES ('10362', '11', '查询-按买顾姓名', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:46:52', '2016-10-25 16:46:52');
INSERT INTO `tp_func` VALUES ('10363', '12', '查询-按成交状态', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:04', '2016-10-25 16:47:04');
INSERT INTO `tp_func` VALUES ('10364', '13', '查询-按成交时间', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:21', '2016-10-25 16:47:21');
INSERT INTO `tp_func` VALUES ('10365', '14', '成交订单列表', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:33', '2016-10-25 16:47:33');
INSERT INTO `tp_func` VALUES ('10366', '15', '【订单ID】订单详情', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:47:48', '2016-10-25 16:47:48');
INSERT INTO `tp_func` VALUES ('10367', '16', '【客户手机号】跟进', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:11', '2016-10-25 16:48:11');
INSERT INTO `tp_func` VALUES ('10368', '17', '填写成交信息', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:26', '2016-10-25 16:48:26');
INSERT INTO `tp_func` VALUES ('10369', '18', '转顾问', '正常', '10117', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:48:32', '2016-10-25 16:48:32');
INSERT INTO `tp_func` VALUES ('10370', '1', '查询-按借贷人姓名', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:44', '2016-10-25 16:55:44');
INSERT INTO `tp_func` VALUES ('10371', '2', '查询-按借贷人手机号', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:55:58', '2016-10-25 16:55:58');
INSERT INTO `tp_func` VALUES ('10372', '3', '查询-按融资单ID', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:15', '2016-10-25 16:56:15');
INSERT INTO `tp_func` VALUES ('10373', '4', '查询-按状态', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:24', '2016-10-25 16:56:24');
INSERT INTO `tp_func` VALUES ('10374', '5', '查询-按融资单车型', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:38', '2016-10-25 16:56:38');
INSERT INTO `tp_func` VALUES ('10375', '6', '查询-按下单时间', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:56:46', '2016-10-25 16:56:46');
INSERT INTO `tp_func` VALUES ('10376', '7', '金融订单列表', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:23', '2016-10-25 16:57:23');
INSERT INTO `tp_func` VALUES ('10377', '8', '【关联订单】', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:37', '2016-10-25 16:57:37');
INSERT INTO `tp_func` VALUES ('10378', '9', '详情', '正常', '10118', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:57:46', '2016-10-25 16:57:46');
INSERT INTO `tp_func` VALUES ('10379', '1', '查询-按借贷人姓名', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:17', '2016-10-25 16:58:17');
INSERT INTO `tp_func` VALUES ('10380', '2', '查询-按借贷人手机号', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:30', '2016-10-25 16:58:30');
INSERT INTO `tp_func` VALUES ('10381', '3', '查询-按维保单ID', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:42', '2016-10-25 16:58:42');
INSERT INTO `tp_func` VALUES ('10382', '4', '查询-按维保单状态', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 16:58:52', '2016-10-25 16:58:52');
INSERT INTO `tp_func` VALUES ('10383', '5', '查询-按维保单车型', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:18', '2016-10-25 17:00:18');
INSERT INTO `tp_func` VALUES ('10384', '6', '查询-按下单时间', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:26', '2016-10-25 17:00:26');
INSERT INTO `tp_func` VALUES ('10385', '7', '维保订单列表', '正常', '10119', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:00:40', '2016-10-25 17:00:40');
INSERT INTO `tp_func` VALUES ('10386', '1', '待确认订单统计', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:04', '2016-10-25 17:18:04');
INSERT INTO `tp_func` VALUES ('10387', '2', '待结算定金汇总', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:24', '2016-10-25 17:18:24');
INSERT INTO `tp_func` VALUES ('10388', '3', '【立即结算】', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:18:32', '2016-10-25 17:18:32');
INSERT INTO `tp_func` VALUES ('10389', '4', '查询-按客户手机', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:18:49', '2016-11-02 09:42:25');
INSERT INTO `tp_func` VALUES ('10390', '5', '查询-按订单类型', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:07', '2016-10-25 17:19:07');
INSERT INTO `tp_func` VALUES ('10391', '6', '查询-按定金状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:17', '2016-10-25 17:19:17');
INSERT INTO `tp_func` VALUES ('10392', '7', '查询-按订单编号', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:29', '2016-10-25 17:19:29');
INSERT INTO `tp_func` VALUES ('10393', '8', '查询-按订单来源', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:19:37', '2016-10-25 17:19:37');
INSERT INTO `tp_func` VALUES ('10394', '9', '查询-按订单状态', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:05', '2016-10-25 17:20:05');
INSERT INTO `tp_func` VALUES ('10395', '10', '查询-按顾问', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:15', '2016-10-25 17:20:15');
INSERT INTO `tp_func` VALUES ('10396', '11', '订单列表', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:26', '2016-11-02 09:42:49');
INSERT INTO `tp_func` VALUES ('10397', '12', '导出列表', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:32', '2016-10-25 17:20:32');
INSERT INTO `tp_func` VALUES ('10398', '13', '确认成交', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:44', '2016-11-02 09:42:02');
INSERT INTO `tp_func` VALUES ('10399', '14', '取消交易', '正常', '10124', '50', '失败', '腰立辉', '腰立辉', '2016-10-25 17:20:51', '2016-11-02 09:42:47');
INSERT INTO `tp_func` VALUES ('10400', '15', '详情', '正常', '10124', '50', '未测试', '腰立辉', '腰立辉', '2016-10-25 17:20:59', '2016-10-25 17:20:59');
INSERT INTO `tp_func` VALUES ('10401', '1', ' 简介', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 16:47:48', '2016-12-12 15:09:30');
INSERT INTO `tp_func` VALUES ('10402', '3', ' 获取验证码', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:03', '2016-12-14 11:50:48');
INSERT INTO `tp_func` VALUES ('10403', '4', ' 登录', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:12', '2016-12-14 11:51:09');
INSERT INTO `tp_func` VALUES ('10404', '5', ' 提交信息', '正常', '10173', '107', '失败', '腰立辉', '腰立辉', '2016-12-05 16:48:41', '2016-12-14 11:53:43');
INSERT INTO `tp_func` VALUES ('10405', '6', ' 查询合作状态', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 16:49:29', '2016-12-14 12:00:43');
INSERT INTO `tp_func` VALUES ('10406', '7', ' 驳回后重提', '正常', '10173', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 16:49:42', '2016-12-12 15:46:26');
INSERT INTO `tp_func` VALUES ('10424', '7', ' 数据统计', '正常', '10175', '107', '通过', '腰立辉', '腰立辉', '2016-12-05 18:06:02', '2016-12-15 13:56:33');
INSERT INTO `tp_func` VALUES ('10425', '1', ' 管家新增', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:13', '2016-12-05 18:25:13');
INSERT INTO `tp_func` VALUES ('10426', '2', ' 管家编辑', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:23', '2016-12-05 18:25:23');
INSERT INTO `tp_func` VALUES ('10427', '3', ' 管家评价', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:34', '2016-12-05 18:25:34');
INSERT INTO `tp_func` VALUES ('10428', '4', ' 聘用情况', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:25:42', '2016-12-05 18:25:42');
INSERT INTO `tp_func` VALUES ('10429', '5', ' 管家详情', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:26:15', '2016-12-05 18:26:15');
INSERT INTO `tp_func` VALUES ('10430', '6', ' 服务用户（列表）', '正常', '10181', '107', '未测试', '腰立辉', '腰立辉', '2016-12-05 18:26:40', '2016-12-05 18:26:40');
INSERT INTO `tp_func` VALUES ('10431', '1', ' 登录', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:17', '2016-12-06 10:30:17');
INSERT INTO `tp_func` VALUES ('10432', '2', ' 注销', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:26', '2016-12-06 10:30:26');
INSERT INTO `tp_func` VALUES ('10433', '3', ' 修改密码', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:30:52', '2016-12-06 10:30:52');
INSERT INTO `tp_func` VALUES ('10434', '4', ' 切换平台', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:31:09', '2016-12-06 10:31:09');
INSERT INTO `tp_func` VALUES ('10435', '5', ' 菜单的收齐/展开', '正常', '10152', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:36:30', '2016-12-06 10:36:30');
INSERT INTO `tp_func` VALUES ('10436', '1', ' New Feedbacks', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:36:57', '2016-12-06 10:36:57');
INSERT INTO `tp_func` VALUES ('10437', '2', ' 新订单', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:37:21', '2016-12-06 10:37:21');
INSERT INTO `tp_func` VALUES ('10438', '3', ' Brand Popularity', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:37:57', '2016-12-06 10:37:57');
INSERT INTO `tp_func` VALUES ('10439', '4', ' 销售额', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:05', '2016-12-06 10:38:05');
INSERT INTO `tp_func` VALUES ('10440', '5', ' 访问量', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:18', '2016-12-06 10:38:18');
INSERT INTO `tp_func` VALUES ('10441', '6', ' Actives', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:40', '2016-12-06 10:38:40');
INSERT INTO `tp_func` VALUES ('10442', '7', ' Server Load', '正常', '10191', '109', '未测试', '腰立辉', '腰立辉', '2016-12-06 10:38:57', '2016-12-06 10:38:57');
INSERT INTO `tp_func` VALUES ('10443', '1', ' 项目列表', '正常', '10192', null, '未测试', '腰立辉', '腰立辉', '2016-12-06 11:54:39', '2016-12-06 12:00:28');
INSERT INTO `tp_func` VALUES ('10444', '2', ' 展开/收起详情', '正常', '10192', null, '未测试', '腰立辉', '腰立辉', '2016-12-06 11:54:59', '2016-12-06 12:00:30');
INSERT INTO `tp_func` VALUES ('10445', '3', ' 选手列表', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 10:07:43', '2016-12-13 13:01:29');
INSERT INTO `tp_func` VALUES ('10446', '4', ' 投票', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 10:08:00', '2016-12-13 13:01:52');
INSERT INTO `tp_func` VALUES ('10447', '2', ' 拨打400电话', '正常', '10173', '107', '通过', '腰立辉', '腰立辉', '2016-12-12 15:45:39', '2016-12-14 11:54:06');
INSERT INTO `tp_func` VALUES ('10448', '1', ' 规则介绍', '正常', '10201', '110', '失败', '腰立辉', '腰立辉', '2016-12-12 20:31:40', '2016-12-13 13:03:38');
INSERT INTO `tp_func` VALUES ('10449', '2', ' 背景音乐', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:31:57', '2016-12-13 13:01:18');
INSERT INTO `tp_func` VALUES ('10450', '5', ' 播放选手歌曲', '正常', '10201', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:32:37', '2016-12-13 13:02:02');
INSERT INTO `tp_func` VALUES ('10451', '1', ' 首页', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:05', '2016-12-13 16:48:07');
INSERT INTO `tp_func` VALUES ('10452', '2', ' 点击（首页）进入', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:22', '2016-12-13 16:48:31');
INSERT INTO `tp_func` VALUES ('10453', '3', ' 项目列表', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:34:36', '2016-12-13 16:48:56');
INSERT INTO `tp_func` VALUES ('10454', '5', ' 项目详情', '正常', '10202', '110', '未测试', '腰立辉', '腰立辉', '2016-12-12 20:35:18', '2016-12-13 11:55:28');
INSERT INTO `tp_func` VALUES ('10455', '6', ' 详情视频', '正常', '10202', '110', '失败', '腰立辉', '腰立辉', '2016-12-12 20:35:32', '2016-12-13 16:40:42');
INSERT INTO `tp_func` VALUES ('10456', '4', ' 项目投票', '正常', '10202', '110', '通过', '腰立辉', '腰立辉', '2016-12-12 20:35:46', '2016-12-13 16:56:16');
INSERT INTO `tp_func` VALUES ('10457', '7', ' 官网链接', '正常', '10202', '110', '未测试', '腰立辉', '腰立辉', '2016-12-12 20:36:05', '2016-12-13 11:55:51');
INSERT INTO `tp_func` VALUES ('10458', '1', ' 查询-按地区', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:41:19', '2016-12-14 12:03:15');
INSERT INTO `tp_func` VALUES ('10459', '2', ' 查询-按合作方式', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:41:50', '2016-12-14 12:05:50');
INSERT INTO `tp_func` VALUES ('10460', '3', ' 查询-按状态', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:31', '2016-12-14 12:05:56');
INSERT INTO `tp_func` VALUES ('10461', '4', ' 查询-按联系方式', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:44', '2016-12-14 12:15:57');
INSERT INTO `tp_func` VALUES ('10462', '5', ' 组合查询', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:42:58', '2016-12-14 12:16:03');
INSERT INTO `tp_func` VALUES ('10463', '6', ' 合作者列表', '正常', '10203', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:43:11', '2016-12-14 12:16:51');
INSERT INTO `tp_func` VALUES ('10464', '7', '编辑/ 查看进度入口', '正常', '10203', '107', '通过', '腰立辉', '腰立辉', '2016-12-14 11:43:33', '2016-12-14 15:48:23');
INSERT INTO `tp_func` VALUES ('10465', '1', ' 申请资料信息', '正常', '10204', '107', '失败', '腰立辉', '腰立辉', '2016-12-14 11:46:24', '2016-12-15 10:34:37');
INSERT INTO `tp_func` VALUES ('10466', '2', ' 洽谈进度维护', '正常', '10204', '107', '未测试', '腰立辉', '腰立辉', '2016-12-14 11:46:49', '2016-12-14 11:46:04');
INSERT INTO `tp_func` VALUES ('10467', '3', ' 洽谈进度历史', '正常', '10204', '107', '通过', '腰立辉', '腰立辉', '2016-12-14 11:47:07', '2016-12-14 15:29:21');
INSERT INTO `tp_func` VALUES ('10468', '4', ' 处理结果', '正常', '10204', '107', '未测试', '腰立辉', '腰立辉', '2016-12-14 11:47:19', '2016-12-14 11:46:33');
INSERT INTO `tp_func` VALUES ('10469', '6', ' 消息反馈（移动管家名片）', '正常', '10175', '107', '未测试', '腰立辉', '腰立辉', '2016-12-15 13:56:25', '2016-12-15 13:56:33');

-- ----------------------------
-- Table structure for `tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE `tp_hcfunc` (
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
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hcfunc
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_hr`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hr`;
CREATE TABLE `tp_hr` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT '发布',
  `desc` text,
  `salary` varchar(10) DEFAULT NULL,
  `prodid` smallint(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hr
-- ----------------------------
INSERT INTO `tp_hr` VALUES ('3', '公司CEO', '发布', '\r\n', '面议', null, '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-11-06 10:04:55');
INSERT INTO `tp_hr` VALUES ('4', '首席财务官', '作废', '<p>\r\n	融入融入人</p>\r\n', '面议', null, '2016-10-03', '安顺汽修', '腰立辉', '腰立辉', null, '2016-10-29 20:12:52');
INSERT INTO `tp_hr` VALUES ('7', 'ee', '发布', 'we', '面议', '5', '2016-12-18', 'ew', '王晓亮', '王晓亮', '2016-12-18 20:44:29', '2016-12-18 20:44:29');

-- ----------------------------
-- Table structure for `tp_path`
-- ----------------------------
DROP TABLE IF EXISTS `tp_path`;
CREATE TABLE `tp_path` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `pstate` varchar(5) DEFAULT NULL,
  `sysid` int(11) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10224 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('10000', '1', '登陆模块', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:35:12', '2016-09-22 10:35:12');
INSERT INTO `tp_path` VALUES ('10001', '2', '产品库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 14:21:56', '2016-09-23 14:21:56');
INSERT INTO `tp_path` VALUES ('10002', '3', '测试项目', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:44', '2016-09-22 10:40:44');
INSERT INTO `tp_path` VALUES ('10003', '10', '项目-系统', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:45', '2016-09-23 12:34:45');
INSERT INTO `tp_path` VALUES ('10004', '11', '项目-系统路径', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:33', '2016-09-23 10:41:33');
INSERT INTO `tp_path` VALUES ('10005', '12', '项目-系统路径-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:27', '2016-09-23 10:41:27');
INSERT INTO `tp_path` VALUES ('10006', '15', '功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:38:09', '2016-09-23 10:38:09');
INSERT INTO `tp_path` VALUES ('10007', '17', '功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:38', '2016-09-23 10:44:38');
INSERT INTO `tp_path` VALUES ('10008', '13', '项目-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:23', '2016-09-22 10:49:52');
INSERT INTO `tp_path` VALUES ('10034', '6', '项目-里程碑-人员', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:19', '2016-09-23 12:34:19');
INSERT INTO `tp_path` VALUES ('10013', '14', '项目-范围', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:37:57', '2016-09-23 10:37:57');
INSERT INTO `tp_path` VALUES ('10033', '16', '功能点-模板', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:31', '2016-09-23 10:44:31');
INSERT INTO `tp_path` VALUES ('10017', '18', '项目-场景', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:23', '2016-09-23 10:45:23');
INSERT INTO `tp_path` VALUES ('10018', '19', '项目-场景-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:30', '2016-09-23 10:45:30');
INSERT INTO `tp_path` VALUES ('10019', '20', '项目-场景-场景功能-功能库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:38', '2016-09-23 10:45:38');
INSERT INTO `tp_path` VALUES ('10020', '21', '项目-场景-场景功能-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:44', '2016-09-23 10:45:44');
INSERT INTO `tp_path` VALUES ('10021', '22', '项目-场景-场景功能-场景数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:51', '2016-09-23 10:45:51');
INSERT INTO `tp_path` VALUES ('10022', '27', '项目-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:07', '2016-09-23 10:47:07');
INSERT INTO `tp_path` VALUES ('10023', '28', '项目-控件库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:15', '2016-09-23 10:47:15');
INSERT INTO `tp_path` VALUES ('10024', '23', '手工测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:42', '2016-09-23 10:46:42');
INSERT INTO `tp_path` VALUES ('10025', '24', '手工测试-执行', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:48', '2016-09-23 10:46:48');
INSERT INTO `tp_path` VALUES ('10026', '25', '自动化测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:53', '2016-09-23 10:46:53');
INSERT INTO `tp_path` VALUES ('10027', '26', '自动化测试-测试数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:59', '2016-09-23 10:46:59');
INSERT INTO `tp_path` VALUES ('10028', '5', '项目-里程碑', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:14', '2016-09-23 12:34:14');
INSERT INTO `tp_path` VALUES ('10029', '7', '项目-里程碑-列队', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:24', '2016-09-23 12:34:24');
INSERT INTO `tp_path` VALUES ('10030', '4', '项目-风险', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:05', '2016-09-23 12:34:05');
INSERT INTO `tp_path` VALUES ('10031', '8', '项目-里程碑-列队-场景库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 13:08:34', '2016-09-23 13:08:34');
INSERT INTO `tp_path` VALUES ('10032', '9', '项目-里程碑-列队-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:38', '2016-09-23 12:34:38');
INSERT INTO `tp_path` VALUES ('10036', '1', '工作台', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 15:19:54', '2016-09-26 10:04:06');
INSERT INTO `tp_path` VALUES ('10037', '2', '客户管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:22:35', '2016-09-26 10:04:48');
INSERT INTO `tp_path` VALUES ('10038', '3', '客户管理-公共客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:07', '2016-09-26 10:04:59');
INSERT INTO `tp_path` VALUES ('10039', '4', '客户管理-30天未跟进客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:09', '2016-09-26 10:05:15');
INSERT INTO `tp_path` VALUES ('10040', '5', '业务管理-买车顾问管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:11', '2016-09-26 10:09:21');
INSERT INTO `tp_path` VALUES ('10041', '6', '业务管理-外呼录音', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:12', '2016-09-26 10:09:51');
INSERT INTO `tp_path` VALUES ('10042', '7', '业务管理-签到与倒休', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:14', '2016-09-26 10:10:02');
INSERT INTO `tp_path` VALUES ('10043', '8', '业务管理-免打扰客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:17', '2016-09-26 10:10:25');
INSERT INTO `tp_path` VALUES ('10044', '9', '业务管理-商家位置管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:19', '2016-09-26 10:10:47');
INSERT INTO `tp_path` VALUES ('10045', '11', '统计报表-城市业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:37', '2016-09-26 10:11:28');
INSERT INTO `tp_path` VALUES ('10046', '12', '统计报表-分配与跟进客户统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:39', '2016-09-26 10:11:49');
INSERT INTO `tp_path` VALUES ('10047', '13', '统计报表-买顾业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:41', '2016-09-26 10:12:00');
INSERT INTO `tp_path` VALUES ('10048', '14', '线索管理-全部线索', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:44', '2016-09-26 10:12:36');
INSERT INTO `tp_path` VALUES ('10049', '15', '线索管理-线索来源配置', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:47', '2016-09-26 10:13:00');
INSERT INTO `tp_path` VALUES ('10050', '16', '任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:50', '2016-09-26 10:14:51');
INSERT INTO `tp_path` VALUES ('10051', '22', '任务管理-任务管理-今日待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:26:25', '2016-10-25 10:26:25');
INSERT INTO `tp_path` VALUES ('10052', '32', '订单管理-全部新车订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:35:44');
INSERT INTO `tp_path` VALUES ('10053', '36', '权限管理-角色类型管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:14');
INSERT INTO `tp_path` VALUES ('10054', '37', '权限管理-系统资源管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:56:05');
INSERT INTO `tp_path` VALUES ('10055', '38', '权限管理-角色管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:56');
INSERT INTO `tp_path` VALUES ('10056', '39', '权限管理-用户管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:47');
INSERT INTO `tp_path` VALUES ('10057', '40', '消息中心-待办提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:40');
INSERT INTO `tp_path` VALUES ('10058', '41', '消息中心-订单提醒', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:55:30');
INSERT INTO `tp_path` VALUES ('10059', '42', '消息中心-评价投诉', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:25');
INSERT INTO `tp_path` VALUES ('10060', '43', '消息中心-系统公告', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:18');
INSERT INTO `tp_path` VALUES ('10061', '44', '公告管理-公告管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:10');
INSERT INTO `tp_path` VALUES ('10062', '45', '公告管理-系统消息管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:41:03');
INSERT INTO `tp_path` VALUES ('10063', '46', '在线顾问管理-在线顾问', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:54');
INSERT INTO `tp_path` VALUES ('10064', '47', '消息中心-品牌分配', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:45');
INSERT INTO `tp_path` VALUES ('10065', '48', '基盘客户管理-待办任务', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:28');
INSERT INTO `tp_path` VALUES ('10066', '49', '基盘客户管理-短信推送', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:16');
INSERT INTO `tp_path` VALUES ('10067', '50', '价格库存管理-车型及报价配置管理', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:08');
INSERT INTO `tp_path` VALUES ('10072', '20', '任务管理-报价收集-新增车款', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:14', '2016-10-25 10:25:14');
INSERT INTO `tp_path` VALUES ('10069', '51', '价格库存管理-车型价格库', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-21 11:40:00');
INSERT INTO `tp_path` VALUES ('10070', '19', '任务管理-报价收集-即将过期', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:06', '2016-10-25 10:25:06');
INSERT INTO `tp_path` VALUES ('10071', '10', '业务管理-价格收集管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:35', '2016-09-26 11:10:39');
INSERT INTO `tp_path` VALUES ('10073', '18', '任务管理-报价收集-我的报价', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:59', '2016-10-25 10:24:59');
INSERT INTO `tp_path` VALUES ('10074', '17', '任务管理-报价收集-待确定价格', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:24:51', '2016-10-25 10:24:51');
INSERT INTO `tp_path` VALUES ('10075', '21', '任务管理-报价收集-库存价格收集', '正常', '11', '腰立辉', '腰立辉', '2016-10-25 10:25:22', '2016-10-25 10:25:22');
INSERT INTO `tp_path` VALUES ('10196', '5', '  测试项目-风险', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:41', '2016-12-06 11:29:41');
INSERT INTO `tp_path` VALUES ('10195', '4', ' 测试项目-里程碑', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:32', '2016-12-06 11:29:32');
INSERT INTO `tp_path` VALUES ('10174', '6', ' 专属管家-我的专属管家', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 18:02:36', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10175', '13', '个人中心-公司名片', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 18:02:53', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10176', '4', ' 项目资料库-项目管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:12', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10177', '5', '项目资料库-移民评估', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:23', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10178', '7', '内容发布-专题管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:16:34', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10179', '8', ' 内容发布-资讯发布', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:19:30', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10180', '9', ' 内容发布-活动管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:20:01', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10181', '10', ' 内容发布-移民管家', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:20:20', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10182', '12', ' 营销管理-我的客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:07', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10183', '13', '营销管理-移民方案', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:22', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10184', '14', ' 营销管理-推荐客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:21:40', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10185', '15', ' 营销管理-加盟管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:22:01', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10186', '17', ' 用户管理-用户管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:23:02', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10187', '18', ' 用户管理-角色管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:23:16', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10188', '20', ' 系统管理-投诉建议', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:00', '2016-12-05 18:24:00');
INSERT INTO `tp_path` VALUES ('10189', '21', ' 系统管理-字典设置', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:23', '2016-12-05 18:24:23');
INSERT INTO `tp_path` VALUES ('10190', '22', ' 系统管理-个人设置', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 18:24:40', '2016-12-05 18:24:40');
INSERT INTO `tp_path` VALUES ('10191', '2', ' 主页', '正常', '64', '腰立辉', '腰立辉', '2016-12-06 10:16:18', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10193', '2', ' 首页-轮播图', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:26:58', '2016-12-06 11:28:12');
INSERT INTO `tp_path` VALUES ('10194', '3', ' 测试项目-项目列表', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:11', '2016-12-06 11:29:11');
INSERT INTO `tp_path` VALUES ('10106', '1', '登录模块', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:15:49', '2016-09-27 17:15:49');
INSERT INTO `tp_path` VALUES ('10107', '2', '我的工作台', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:16:06', '2016-09-27 17:16:06');
INSERT INTO `tp_path` VALUES ('10108', '23', '任务管理-任务管理-过期待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:26:48');
INSERT INTO `tp_path` VALUES ('10109', '24', '任务管理-任务管理-全部待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:04');
INSERT INTO `tp_path` VALUES ('10110', '25', '任务管理-任务管理-金融待办', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:25');
INSERT INTO `tp_path` VALUES ('10111', '26', '任务管理-任务管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:27:42');
INSERT INTO `tp_path` VALUES ('10112', '27', '任务管理-任务管理-投诉客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 10:28:05');
INSERT INTO `tp_path` VALUES ('10113', '28', '任务管理-任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:02:43');
INSERT INTO `tp_path` VALUES ('10114', '29', '任务管理-任务管理-查看外出计划', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:05');
INSERT INTO `tp_path` VALUES ('10115', '30', '任务管理-任务管理-跟进', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 14:03:23');
INSERT INTO `tp_path` VALUES ('10116', '31', '任务管理-任务管理-跟进-推送商家', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 15:16:12');
INSERT INTO `tp_path` VALUES ('10117', '33', '订单管理-成交订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:17');
INSERT INTO `tp_path` VALUES ('10118', '34', '订单管理-金融订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:34');
INSERT INTO `tp_path` VALUES ('10119', '35', '订单管理-维保订单', '正常', '11', '腰立辉', '腰立辉', '2016-10-28 11:43:57', '2016-10-25 16:36:47');
INSERT INTO `tp_path` VALUES ('10120', '1', '登陆模块', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:33', '2016-10-25 17:11:33');
INSERT INTO `tp_path` VALUES ('10121', '2', '首页', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:11:58', '2016-10-25 17:11:58');
INSERT INTO `tp_path` VALUES ('10122', '3', '订单管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:22', '2016-10-25 17:12:22');
INSERT INTO `tp_path` VALUES ('10123', '4', '订单管理-竞价订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:43', '2016-10-25 17:12:43');
INSERT INTO `tp_path` VALUES ('10124', '5', '订单管理-成交确认', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:12:56', '2016-10-25 17:12:56');
INSERT INTO `tp_path` VALUES ('10125', '6', '交易佣金-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:43', '2016-10-25 17:13:43');
INSERT INTO `tp_path` VALUES ('10126', '7', '交易佣金-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:51', '2016-10-25 17:13:51');
INSERT INTO `tp_path` VALUES ('10127', '8', '交易佣金-交易明细', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:13:59', '2016-10-25 17:13:59');
INSERT INTO `tp_path` VALUES ('10128', '9', '金牌商家计划-本月账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:31', '2016-10-25 17:14:31');
INSERT INTO `tp_path` VALUES ('10129', '10', '金牌商家计划-历史账单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:14:47', '2016-10-25 17:14:47');
INSERT INTO `tp_path` VALUES ('10130', '11', '金融服务-金融订单', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:08', '2016-10-25 17:15:08');
INSERT INTO `tp_path` VALUES ('10131', '12', '金融服务-订单结算', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:23', '2016-10-25 17:15:23');
INSERT INTO `tp_path` VALUES ('10132', '13', '维修保养', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:15:54', '2016-10-25 17:15:54');
INSERT INTO `tp_path` VALUES ('10133', '14', '基本设置-人员管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:11', '2016-10-25 17:16:11');
INSERT INTO `tp_path` VALUES ('10134', '15', '基本设置-车型管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:26', '2016-10-25 17:16:26');
INSERT INTO `tp_path` VALUES ('10135', '16', '基本设置-位置管理', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:34', '2016-10-25 17:16:34');
INSERT INTO `tp_path` VALUES ('10136', '17', '基本设置-结算账户', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:41', '2016-10-25 17:16:41');
INSERT INTO `tp_path` VALUES ('10137', '18', '统计报表', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:16:49', '2016-10-25 17:16:49');
INSERT INTO `tp_path` VALUES ('10138', '19', '信用评价', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:12', '2016-10-25 17:17:12');
INSERT INTO `tp_path` VALUES ('10139', '20', '专题活动', '正常', '6', '腰立辉', '腰立辉', '2016-10-25 17:17:28', '2016-10-25 17:17:28');
INSERT INTO `tp_path` VALUES ('10141', '1', ' 登录', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:11:31', '2016-12-05 16:13:59');
INSERT INTO `tp_path` VALUES ('10142', '2', ' 首页', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:11:43', '2016-12-05 16:14:02');
INSERT INTO `tp_path` VALUES ('10143', '3', ' 项目资料库-国家管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:03', '2016-12-05 18:19:07');
INSERT INTO `tp_path` VALUES ('10144', '6', ' 内容发布-栏目管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:12', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10145', '11', ' 营销管理-意向客户', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:23', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10146', '16', ' 用户管理-组织机构', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:12:51', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10147', '19', ' 系统管理-系统日志', '正常', '63', '腰立辉', '腰立辉', '2016-12-05 16:14:56', '2016-12-06 14:05:31');
INSERT INTO `tp_path` VALUES ('10148', '2', '客户信息（上）', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:18:47', '2016-12-05 16:38:30');
INSERT INTO `tp_path` VALUES ('10149', '3', '客户信息（下）', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:19:12', '2016-12-05 16:38:45');
INSERT INTO `tp_path` VALUES ('10150', '4', ' 个人中心', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:19:21', '2016-12-05 16:37:02');
INSERT INTO `tp_path` VALUES ('10173', '12', ' 个人中心-商务合作', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 16:45:43', '2016-12-12 10:05:48');
INSERT INTO `tp_path` VALUES ('10152', '1', ' 登录模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:21:42', '2016-12-05 16:21:42');
INSERT INTO `tp_path` VALUES ('10153', '6', ' 组织机构模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:21:52', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10154', '7', ' 平台管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:01', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10192', '1', ' 首页-近期上线项目', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:26:38', '2016-12-06 11:27:40');
INSERT INTO `tp_path` VALUES ('10156', '3', ' 岗位管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:31', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10157', '4', ' 角色管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:42', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10158', '8', ' 字典管理', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:22:58', '2016-12-06 10:17:41');
INSERT INTO `tp_path` VALUES ('10159', '5', ' 用户模块', '正常', '64', '腰立辉', '腰立辉', '2016-12-05 16:23:14', '2016-12-06 10:17:27');
INSERT INTO `tp_path` VALUES ('10161', '1', '移民官网', '正常', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:25', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10162', '2', ' 移民评估', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:39', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10163', '5', ' 专属管家-列表及介绍', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:31:55', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10164', '7', ' 专享活动', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:19', '2016-12-12 10:04:05');
INSERT INTO `tp_path` VALUES ('10165', '8', ' 优选国家', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:33', '2016-12-12 10:04:11');
INSERT INTO `tp_path` VALUES ('10166', '9', ' 精彩案例', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:32:56', '2016-12-12 10:04:22');
INSERT INTO `tp_path` VALUES ('10167', '10', ' 移民攻略', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:33:10', '2016-12-12 10:04:45');
INSERT INTO `tp_path` VALUES ('10168', '11', ' 移民项目', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:17', '2016-12-12 10:04:56');
INSERT INTO `tp_path` VALUES ('10170', '14', ' 拨打电话', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:40', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10171', '15', ' 生活体验', '已搁置', '66', '腰立辉', '腰立辉', '2016-12-05 16:34:49', '2016-12-12 10:06:16');
INSERT INTO `tp_path` VALUES ('10172', '1', ' 登录', '正常', '62', '腰立辉', '腰立辉', '2016-12-05 16:36:49', '2016-12-05 16:36:49');
INSERT INTO `tp_path` VALUES ('10197', '6', '  测试项目-功能点', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:29:50', '2016-12-06 11:29:50');
INSERT INTO `tp_path` VALUES ('10198', '7', '  测试项目-范围', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:11', '2016-12-06 11:30:11');
INSERT INTO `tp_path` VALUES ('10199', '8', '  测试项目-场景', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:21', '2016-12-06 11:30:21');
INSERT INTO `tp_path` VALUES ('10200', '9', '  测试项目-用例库', '正常', '68', '腰立辉', '腰立辉', '2016-12-06 11:30:33', '2016-12-06 11:30:33');
INSERT INTO `tp_path` VALUES ('10201', '3', ' 投票活动-太平洋好声音', '正常', '66', '腰立辉', '腰立辉', '2016-12-12 09:59:19', '2016-12-12 09:58:28');
INSERT INTO `tp_path` VALUES ('10202', '4', ' 投票活动-四海一家', '正常', '66', '腰立辉', '腰立辉', '2016-12-12 09:59:43', '2016-12-12 10:06:15');
INSERT INTO `tp_path` VALUES ('10203', '5', '商务合作-商务合作管理', '正常', '63', '腰立辉', '腰立辉', '2016-12-14 11:39:36', '2016-12-14 11:39:01');
INSERT INTO `tp_path` VALUES ('10204', '5', ' 商务合作-商务合作进度', '正常', '63', '腰立辉', '腰立辉', '2016-12-14 11:45:04', '2016-12-14 11:44:19');
INSERT INTO `tp_path` VALUES ('10205', '1', ' 登陆模块', '正常', '70', '腰立辉', '腰立辉', '2016-12-17 23:01:28', '2016-12-17 23:01:28');
INSERT INTO `tp_path` VALUES ('10206', '2', '（首页）系统信息', '正常', '70', '腰立辉', '腰立辉', '2016-12-17 23:01:52', '2016-12-17 23:01:52');
INSERT INTO `tp_path` VALUES ('10207', '1', ' 首页', '正常', '69', '腰立辉', '腰立辉', '2016-12-17 23:03:35', '2016-12-17 23:03:35');
INSERT INTO `tp_path` VALUES ('10208', '2', ' 产品展示', '正常', '69', '腰立辉', '腰立辉', '2016-12-17 23:03:43', '2016-12-17 23:03:43');
INSERT INTO `tp_path` VALUES ('10209', '3', ' 关于我们', '正常', '69', '腰立辉', '腰立辉', '2016-12-17 23:03:57', '2016-12-17 23:03:57');
INSERT INTO `tp_path` VALUES ('10210', '1', ' 登录模块', '正常', '72', '腰立辉', '腰立辉', '2016-12-17 23:07:30', '2016-12-17 23:07:30');
INSERT INTO `tp_path` VALUES ('10211', '2', '（首页）系统信息', '正常', '72', '腰立辉', '腰立辉', '2016-12-17 23:07:49', '2016-12-17 23:07:49');
INSERT INTO `tp_path` VALUES ('10212', '1', ' 首页', '正常', '71', '腰立辉', '腰立辉', '2016-12-17 23:08:22', '2016-12-17 23:08:22');
INSERT INTO `tp_path` VALUES ('10213', '2', ' 服务展示', '正常', '71', '腰立辉', '腰立辉', '2016-12-17 23:08:33', '2016-12-17 23:08:33');
INSERT INTO `tp_path` VALUES ('10214', '3', ' 关于我们', '正常', '71', '腰立辉', '腰立辉', '2016-12-17 23:08:42', '2016-12-17 23:08:42');
INSERT INTO `tp_path` VALUES ('10215', '1', '首页', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:10:49', '2016-12-17 23:10:49');
INSERT INTO `tp_path` VALUES ('10216', '2', ' 主营业务', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:10:59', '2016-12-17 23:10:59');
INSERT INTO `tp_path` VALUES ('10217', '3', ' 用车常识', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:11:11', '2016-12-17 23:11:11');
INSERT INTO `tp_path` VALUES ('10218', '4', '关于我们', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:11:20', '2016-12-17 23:11:20');
INSERT INTO `tp_path` VALUES ('10219', '5', ' 诚聘人才', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:11:31', '2016-12-17 23:11:31');
INSERT INTO `tp_path` VALUES ('10220', '6', ' 技师风采', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:11:41', '2016-12-17 23:11:41');
INSERT INTO `tp_path` VALUES ('10221', '7', ' 汽车用品商城', '正常', '73', '腰立辉', '腰立辉', '2016-12-17 23:11:54', '2016-12-17 23:11:54');
INSERT INTO `tp_path` VALUES ('10222', '1', '登录模块', '正常', '74', '腰立辉', '腰立辉', '2016-12-17 23:12:09', '2016-12-17 23:12:09');
INSERT INTO `tp_path` VALUES ('10223', '2', '（首页）系统信息', '正常', '74', '腰立辉', '腰立辉', '2016-12-17 23:12:19', '2016-12-17 23:12:19');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telphone` varchar(13) DEFAULT NULL,
  `qq` varchar(13) DEFAULT NULL,
  `qz` varchar(10) DEFAULT NULL,
  `db` varchar(10) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `desc` text,
  `adress` varchar(300) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '惠买车', '惠买车平台', '作废', null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-16 22:04:58', '2016-12-05 15:41:48');
INSERT INTO `tp_product` VALUES ('2', '自动化', '自动化平台', '正常', '18801043607', null, '83000892', null, null, '自动化测试', null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-16 22:07:52', '2016-12-17 21:53:51');
INSERT INTO `tp_product` VALUES ('4', 'PJD', '太平洋加达', '正常', null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 15:47:20', '2016-12-17 18:24:30');
INSERT INTO `tp_product` VALUES ('8', '秀丽', '秀丽广告', '正常', '13463925200', '0319-7186126', '2830690782', 'Xiuli', 'xl_', '临城-秀丽广告', null, null, '临城转盘北200米路西', 'www.xiuliguanggao.com', null, null, '腰立辉', '腰立辉', '2016-12-14 23:13:36', '2016-12-18 13:31:49');
INSERT INTO `tp_product` VALUES ('5', '安顺', '安顺汽修', '正常', '13785900902', null, '1058793920', 'Anshun', 'as_', '临城-安顺汽车服务中心', null, null, '临城县射兽汽修市场', 'www.anshunqixiu.top', '/Setting2016-12-18/', '585683f4127fd.jpg', '腰立辉', '王晓亮', '2016-12-14 23:13:59', '2016-12-18 20:41:24');
INSERT INTO `tp_product` VALUES ('6', '双辉', '麦田双辉', '正常', '18801043607', null, '83000892', 'Mtsh', 'mt_', '临城-麦田双辉', null, null, '临城', 'www.maitianshuanghui.com', null, null, '腰立辉', '腰立辉', '2016-12-14 23:14:17', '2016-12-18 19:39:49');
INSERT INTO `tp_product` VALUES ('7', '拓才', '拓才教育', '正常', null, '0311-89849355', '285981407', 'Tuocai', 'tc_', '石家庄-拓才教育', '拓才,拓才教育,一对一,个性化,课外辅导,教育培训，石家庄课外辅导', null, '石家庄1', 'www.tuocaijiaoyu.com', '/Setting/adress/2016-12-13/', '584fb53ddc613.jpg', '腰立辉', '腰立辉', '2016-12-14 23:14:42', '2016-12-18 13:32:03');
INSERT INTO `tp_product` VALUES ('3', '信达', '智慧信达', '正常', null, null, null, 'Xinda', 'xd_', null, null, null, '北京', 'www.zhihuixinda.com', null, null, '腰立辉', '腰立辉', '2016-12-14 23:14:59', '2016-12-18 13:32:15');

-- ----------------------------
-- Table structure for `tp_program`
-- ----------------------------
DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE `tp_program` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `prono` varchar(30) DEFAULT '',
  `program` varchar(50) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `prost` varchar(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `manager` varchar(10) DEFAULT NULL,
  `testgp` varchar(50) DEFAULT NULL,
  `ptype` varchar(8) DEFAULT '简要',
  `pm` varchar(10) DEFAULT NULL,
  `develop` varchar(10) DEFAULT NULL,
  `retype` varchar(10) DEFAULT '需求新增',
  `relevel` varchar(5) DEFAULT '一般需求',
  `exponline` date DEFAULT '0000-00-00',
  `profile` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('107', 'PJD1612.1', '微站一期-公司名片，商务合作', '14', '进行中', '2016-12-05', '2016-12-15', '腰立辉', 'PJD', '简要', '邓晔', '', '新项目', '一般需求', '2016-12-15', '																					公司名片，商务合作\r\n																								', '腰立辉', '腰立辉', '2016-12-05 16:05:28', '2016-12-06 11:25:20');
INSERT INTO `tp_program` VALUES ('108', 'Auto1612.1', '测试管理平台搭建', '2', '进行中', '2016-12-05', '2016-12-12', '腰立辉', 'PJD', '简要', '腰立辉', '腰立辉', '新项目', '一般需求', '2017-02-28', '								测试管理平台搭建\r\n												', '腰立辉', '腰立辉', '2016-12-05 17:41:39', '2016-12-07 16:30:50');
INSERT INTO `tp_program` VALUES ('109', 'PJD1612.3', '权限管理后台1612', '14', '进行中', '2016-12-05', '2016-12-15', '魏斌', 'PJD', '简要', '', '', '需求新增', '一般需求', '2016-12-15', '权限后台功能\r\n						', '腰立辉', '腰立辉', '2016-12-06 10:14:39', '2016-12-06 10:14:39');
INSERT INTO `tp_program` VALUES ('110', 'PJD1612.4', '太平洋好声音和四海一家投票', '14', '已上线', '2016-12-12', '2016-12-19', '魏斌', 'PJD', '简要', '', '杨学毅、刘雨熙', '新项目', '一般需求', '2016-12-12', '							1.四海一家投票\r\n2.太平洋好声音投票\r\n																		', '腰立辉', '腰立辉', '2016-12-12 09:45:26', '2016-12-13 17:12:09');
INSERT INTO `tp_program` VALUES ('111', 'Auto1612.1', '秀丽广告网站初建', '8', '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '新项目', '一般需求', '0000-00-00', '														暂无简介\r\n												', '腰立辉', '腰立辉', '2016-12-17 22:36:46', '2016-12-17 22:44:32');
INSERT INTO `tp_program` VALUES ('112', 'Auto1612.2', '麦田双辉网站初建', '6', '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 22:40:37', '2016-12-17 22:44:46');
INSERT INTO `tp_program` VALUES ('113', 'Auto1612.3', '安顺汽修网站初建', '5', '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 22:41:52', '2016-12-17 22:44:48');
INSERT INTO `tp_program` VALUES ('114', 'Auto1612.4', '拓才教育网站初建', '7', '进行中', '2016-12-17', '2017-01-24', '腰立辉', 'Auto', '简要', '腰立辉', '腰立辉', '需求新增', '一般需求', '2017-01-24', '							暂无简介\r\n						', '腰立辉', '腰立辉', '2016-12-17 22:43:15', '2016-12-17 22:44:53');

-- ----------------------------
-- Table structure for `tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `tp_prosys`;
CREATE TABLE `tp_prosys` (
  `prosysid` smallint(5) NOT NULL AUTO_INCREMENT,
  `sysid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prosysid`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('56', '54', '24', '腰立辉', '腰立辉', '2016-09-22 10:06:44', '2016-09-22 10:06:44');
INSERT INTO `tp_prosys` VALUES ('67', '4', '45', '腰立辉', '腰立辉', '2016-09-25 19:12:47', '2016-09-25 19:12:47');
INSERT INTO `tp_prosys` VALUES ('61', '4', '47', '腰立辉', '腰立辉', '2016-09-23 09:46:13', '2016-09-23 09:46:13');
INSERT INTO `tp_prosys` VALUES ('68', '11', '46', '腰立辉', '腰立辉', '2016-09-26 11:26:22', '2016-09-26 11:26:22');
INSERT INTO `tp_prosys` VALUES ('62', '56', '48', '腰立辉', '腰立辉', '2016-09-24 20:47:58', '2016-09-24 20:47:58');
INSERT INTO `tp_prosys` VALUES ('63', '4', '48', '腰立辉', '腰立辉', '2016-09-24 20:48:09', '2016-09-24 20:48:09');
INSERT INTO `tp_prosys` VALUES ('64', '56', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:03', '2016-09-24 21:16:03');
INSERT INTO `tp_prosys` VALUES ('65', '4', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:05', '2016-09-24 21:16:05');
INSERT INTO `tp_prosys` VALUES ('69', '11', '50', '腰立辉', '腰立辉', '2016-10-19 12:50:06', '2016-10-19 12:50:06');
INSERT INTO `tp_prosys` VALUES ('70', '54', '45', '王鑫彤', '王鑫彤', '2016-10-21 10:27:07', '2016-10-21 10:27:07');
INSERT INTO `tp_prosys` VALUES ('79', '11', '97', '腰立辉', '腰立辉', '2016-11-18 09:24:06', '2016-11-18 09:23:11');
INSERT INTO `tp_prosys` VALUES ('74', '11', '51', '腰立辉', '腰立辉', '2016-10-25 15:17:08', '2016-10-25 15:17:08');
INSERT INTO `tp_prosys` VALUES ('73', '3', '65', '腰立辉', '腰立辉', '2016-10-24 09:21:35', '2016-10-24 09:21:35');
INSERT INTO `tp_prosys` VALUES ('75', '6', '51', '腰立辉', '腰立辉', '2016-10-25 17:11:04', '2016-10-25 17:11:04');
INSERT INTO `tp_prosys` VALUES ('76', '11', '80', '腰立辉', '腰立辉', '2016-11-02 09:59:42', '2016-11-18 09:24:01');
INSERT INTO `tp_prosys` VALUES ('82', '62', '107', '腰立辉', '腰立辉', '2016-12-05 16:06:15', '2016-12-05 16:06:15');
INSERT INTO `tp_prosys` VALUES ('83', '63', '107', '腰立辉', '腰立辉', '2016-12-05 16:09:42', '2016-12-05 16:09:42');
INSERT INTO `tp_prosys` VALUES ('89', '64', '109', '腰立辉', '腰立辉', '2016-12-06 10:15:42', '2016-12-06 10:15:42');
INSERT INTO `tp_prosys` VALUES ('85', '66', '107', '腰立辉', '腰立辉', '2016-12-05 16:30:45', '2016-12-05 16:30:45');
INSERT INTO `tp_prosys` VALUES ('87', '68', '108', '腰立辉', '腰立辉', '2016-12-05 17:42:53', '2016-12-05 17:42:53');
INSERT INTO `tp_prosys` VALUES ('88', '4', '108', '腰立辉', '腰立辉', '2016-12-05 17:42:56', '2016-12-05 17:42:56');
INSERT INTO `tp_prosys` VALUES ('91', '66', '110', '腰立辉', '腰立辉', '2016-12-12 09:45:46', '2016-12-12 09:44:55');
INSERT INTO `tp_prosys` VALUES ('92', '69', '111', '腰立辉', '腰立辉', '2016-12-17 22:59:59', '2016-12-17 22:59:59');
INSERT INTO `tp_prosys` VALUES ('93', '70', '111', '腰立辉', '腰立辉', '2016-12-17 23:00:02', '2016-12-17 23:00:02');
INSERT INTO `tp_prosys` VALUES ('94', '72', '112', '腰立辉', '腰立辉', '2016-12-17 23:05:50', '2016-12-17 23:05:50');
INSERT INTO `tp_prosys` VALUES ('95', '71', '112', '腰立辉', '腰立辉', '2016-12-17 23:05:53', '2016-12-17 23:05:53');
INSERT INTO `tp_prosys` VALUES ('96', '73', '113', '腰立辉', '腰立辉', '2016-12-17 23:09:33', '2016-12-17 23:09:33');
INSERT INTO `tp_prosys` VALUES ('97', '74', '113', '腰立辉', '腰立辉', '2016-12-17 23:09:35', '2016-12-17 23:09:35');
INSERT INTO `tp_prosys` VALUES ('98', '76', '114', '腰立辉', '腰立辉', '2016-12-17 23:15:52', '2016-12-17 23:15:52');
INSERT INTO `tp_prosys` VALUES ('99', '75', '114', '腰立辉', '腰立辉', '2016-12-17 23:15:54', '2016-12-17 23:15:54');

-- ----------------------------
-- Table structure for `tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `tp_risk`;
CREATE TABLE `tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------
INSERT INTO `tp_risk` VALUES ('1000', '1', '不提交测试，无法完成验收', 'A', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-10-28 15:47:24', '2016-11-15 16:52:31');
INSERT INTO `tp_risk` VALUES ('1001', '2', '11', 'C', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-11-03 10:44:26', '2016-11-03 11:00:42');

-- ----------------------------
-- Table structure for `tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `tp_rules`;
CREATE TABLE `tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10067 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('10041', '1', ' 入口：微信菜单-个人中心-公司名片', '需求文档 ', '10419', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-08 17:02:15', '2016-12-08 17:03:06');
INSERT INTO `tp_rules` VALUES ('10066', '2', ' 每位选手宣传内容：中英文名字+照片+音频', '需求文档 ', '10445', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:45:12', '2016-12-12 14:44:21');
INSERT INTO `tp_rules` VALUES ('10065', '1', ' 鲁逸飞Nick，苗天鹤(沈阳）Justin，张泽明Crease，胡旭David，林英英(沈阳）Clinda ，辛会举Arthur，孙东雪Judy，曹朝辉Eric，李小爽Macy，曹东辉Revin，韩琳Elsa，孙印帅Faker。', '需求文档 ', '10445', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:57', '2016-12-12 14:54:00');
INSERT INTO `tp_rules` VALUES ('10064', '2', ' 截止时间：12月15日18:00', '需求文档 ', '10446', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:42', '2016-12-12 14:43:51');
INSERT INTO `tp_rules` VALUES ('10063', '1', ' 大众以投票形式为前12名晋级选手投票，每人只能投一票，只能为一个人投票，谁的投票量多，谁就是最佳人气奖，只有1个名额，在12位晋级选手中产生。', '需求文档 ', '10446', '正常', '110', '', '腰立辉', '腰立辉', '2016-12-12 14:44:19', '2016-12-12 14:43:29');
INSERT INTO `tp_rules` VALUES ('10046', '2', ' 分享链接', '需求文档 ', '10422', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:44:33', '2016-12-09 14:44:33');
INSERT INTO `tp_rules` VALUES ('10047', '1', ' 显示项目图片、项目名称、项目描述，从后台项目管理模块读取含有名片推荐标签的发布项目', '需求文档 ', '10420', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:45:11', '2016-12-09 14:45:11');
INSERT INTO `tp_rules` VALUES ('10044', '2', '公司介绍 – 介绍太平洋出国公司介绍', '需求文档 ', '10419', '正常', '107', '\r\n', '腰立辉', '腰立辉', '2016-12-09 14:43:59', '2016-12-09 14:44:48');
INSERT INTO `tp_rules` VALUES ('10045', '1', ' 我的专属管家-分享名片', '需求文档 ', '10422', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:44:15', '2016-12-09 14:44:15');
INSERT INTO `tp_rules` VALUES ('10048', '2', ' 可左右滑动显示已发布的项目，循环查看所有项目，排序按 手势向左滑动时，展示项目1,项目2,项目3,项目4…', '需求文档 ', '10420', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:45:29', '2016-12-09 14:45:46');
INSERT INTO `tp_rules` VALUES ('10049', '3', ' 每个项目点击后跳转到项目详情的页面（现有m站的项目介绍或专题介绍）', '需求文档 ', '10420', '已搁置', '107', '', '腰立辉', '腰立辉', '2016-12-09 14:46:02', '2016-12-09 14:51:07');
INSERT INTO `tp_rules` VALUES ('10050', '1', ' 当启用名片的角色进入名片时看到的是本人的名片信息，', '需求文档 ', '10421', '正常', '107', '<p>\r\n	当启用名片的角色进入名片时看到的是本人的名片信息，当其他用户进入名片时，可看到公司内所有有名片角色的列表，循环展示所有人，排序按手势向左滑动时，正序展示</p>\r\n', '腰立辉', '腰立辉', '2016-12-09 16:07:38', '2016-12-09 16:09:27');
INSERT INTO `tp_rules` VALUES ('10051', '2', ' 我的专属管家-分享名片 进入名片看到的是该管家的个人名片', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:16', '2016-12-09 16:08:16');
INSERT INTO `tp_rules` VALUES ('10052', '3', ' 当个人名片被分享时，其他用户点击分享页看到的是有个人名片的页面；', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:37', '2016-12-09 16:08:37');
INSERT INTO `tp_rules` VALUES ('10053', '4', ' 当公司名片被分享时，其他用户点击分享页看到的是公司所有名片的列表页面', '需求文档 ', '10421', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:08:50', '2016-12-09 16:08:50');
INSERT INTO `tp_rules` VALUES ('10054', '1', '客户可在此输入姓名（必填）、手机号（必填）提交报名信息', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:02', '2016-12-09 16:10:02');
INSERT INTO `tp_rules` VALUES ('10055', '2', '验证姓名和手机号是否为空，如为空，提示用户：请输入您的姓名,或 提示： 请输入您的手机号。', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:26', '2016-12-09 16:10:26');
INSERT INTO `tp_rules` VALUES ('10056', '3', '校验手机号长度，除去空格的11位数字，除去空格后如长度有误，点击提交提示：“手机号码长度不是11位，请重新输入”', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:10:48', '2016-12-09 16:10:48');
INSERT INTO `tp_rules` VALUES ('10057', '4', '如号段格式有误，点击提交提示：“手机号格式不正确，请重新输入”', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:11:15', '2016-12-09 16:11:15');
INSERT INTO `tp_rules` VALUES ('10058', '5', '如校验通过，提交后，弹窗提示提交成功，3s后自动返回原页面', '需求文档 ', '10423', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:12:57', '2016-12-09 16:12:57');
INSERT INTO `tp_rules` VALUES ('10059', '6', '提交成功后台记录提交者信息（重复提交，如何处理）', '需求文档 ', '10423', '待确认', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:13:30', '2016-12-09 16:13:30');
INSERT INTO `tp_rules` VALUES ('10060', '1', ' 后台统计分享后浏览名片的次数及报名成功的人数', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:13:47', '2016-12-09 16:13:47');
INSERT INTO `tp_rules` VALUES ('10061', '2', ' 点击-分享名片【计数】', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:15:31', '2016-12-09 16:15:31');
INSERT INTO `tp_rules` VALUES ('10062', '3', ' 点击-分享名片-报名提交【计数】', '需求文档 ', '10424', '正常', '107', '', '腰立辉', '腰立辉', '2016-12-09 16:15:55', '2016-12-09 16:15:55');

-- ----------------------------
-- Table structure for `tp_sccesscase`
-- ----------------------------
DROP TABLE IF EXISTS `tp_sccesscase`;
CREATE TABLE `tp_sccesscase` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat` varchar(10) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `bpath` varchar(200) NOT NULL,
  `before` varchar(32) DEFAULT NULL,
  `apath` varchar(200) NOT NULL,
  `after` varchar(32) DEFAULT NULL,
  `desc` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sccesscase
-- ----------------------------
INSERT INTO `tp_sccesscase` VALUES ('1', '钣金喷漆', '雪铁龙C3-XR', '/Case/before/2016-10-29/', '581490001107b.JPG', '/Case/after/2016-10-29/', '581490aa12a9e.jpg', '前翼子板撞花', '腰立辉', '腰立辉', '2016-10-22 22:37:41', '2016-10-29 20:06:02');
INSERT INTO `tp_sccesscase` VALUES ('2', '大保养', '奔驰E300', '/Case/before/2016-10-29/', '58149047d90ea.jpg', '/Case/after/2016-10-29/', '581490b6c991d.jpg', '奔驰豪车30000公里保养，更换机油三滤，刹车片，变速箱油，火花塞……', '腰立辉', '腰立辉', '2016-10-22 22:37:50', '2016-10-29 20:06:14');

-- ----------------------------
-- Table structure for `tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE `tp_scene` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10037 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'A', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-10-28 15:52:35', '2016-09-27 16:25:28');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:02', '2016-09-24 00:40:02');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'M', '2', '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:09', '2016-09-24 00:40:09');
INSERT INTO `tp_scene` VALUES ('10003', '1', 'M', '2', '默认', '空白数据库', '', '建立测试项目', '正常', '48', '登录-件产品-建项目--详情-里程碑-关联系统-', '0', '腰立辉', '腰立辉', '2016-09-24 21:23:31', '2016-09-24 21:23:31');
INSERT INTO `tp_scene` VALUES ('10004', '1', 'M', '2', '默认', '默认', '', '11', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-25 21:23:05', '2016-09-25 21:23:05');
INSERT INTO `tp_scene` VALUES ('10005', '4', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:39:18', '2016-09-25 21:38:12');
INSERT INTO `tp_scene` VALUES ('10006', '5', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:42:14', '2016-09-25 21:42:14');
INSERT INTO `tp_scene` VALUES ('10007', '6', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '10001', '腰立辉', null, '2016-09-25 21:46:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10008', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '47', '登录-建项目-建里程碑', '10000', '腰立辉', null, '2016-09-25 21:53:23', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10027', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家商家确认', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:33', '2016-10-25 17:08:33');
INSERT INTO `tp_scene` VALUES ('10010', '1', 'M', '2', '管理员', '默认', '', '添加TOP100车款', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:47:46', '2016-09-27 16:47:46');
INSERT INTO `tp_scene` VALUES ('10011', '2', 'M', '2', '管理员', '默认', '', '给TOP100车款批量配置电销和买顾', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:57:28', '2016-09-27 16:57:28');
INSERT INTO `tp_scene` VALUES ('10012', '3', 'M', '2', '默认', '默认', '', '【功能】车型及报价员配置管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:32:31', '2016-10-10 13:32:31');
INSERT INTO `tp_scene` VALUES ('10013', '4', 'M', '2', '默认', '默认', '', '【功能】价格收集管理（业务管理）', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:14', '2016-10-10 13:33:14');
INSERT INTO `tp_scene` VALUES ('10014', '5', 'M', '2', '默认', '默认', '', '【功能】车型价格库', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:49', '2016-10-10 13:33:49');
INSERT INTO `tp_scene` VALUES ('10015', '6', 'M', '2', '默认', '默认', '', '【功能】价格库存管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:32', '2016-10-10 13:34:32');
INSERT INTO `tp_scene` VALUES ('10016', '7', 'M', '2', '默认', '默认', '', '【功能】库存价格收集', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:51', '2016-10-10 13:34:51');
INSERT INTO `tp_scene` VALUES ('10017', '8', 'M', '2', '【功能】', '默认', '', '登陆模块', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:56:38', '2016-10-13 09:56:38');
INSERT INTO `tp_scene` VALUES ('10018', '9', 'M', '2', '【功能】', '默认', '', '产品库-产品管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:06', '2016-10-13 09:57:06');
INSERT INTO `tp_scene` VALUES ('10019', '10', 'M', '2', '【功能】', '默认', '', '项目管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:21', '2016-10-13 09:57:21');
INSERT INTO `tp_scene` VALUES ('10021', '11', 'M', '2', '【功能】', '默认', '', '项目-里程碑', '正常', '45', '里程碑下所有子功能', '0', '腰立辉', '腰立辉', '2016-10-17 09:40:20', '2016-10-17 09:40:20');
INSERT INTO `tp_scene` VALUES ('10026', '1', 'M', '2', '买顾', '客户未注册', '', '推送商家', '正常', '51', '', '0', '腰立辉', '腰立辉', '2016-10-25 17:08:03', '2016-10-25 17:08:03');
INSERT INTO `tp_scene` VALUES ('10028', '3', 'M', '2', '买顾', '客户已注册', '', '推送商家商家取消交易', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-25 17:24:30', '2016-10-25 17:24:30');
INSERT INTO `tp_scene` VALUES ('10029', '4', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '51', '', '10027', '腰立辉', '腰立辉', '2016-10-26 10:01:56', '2016-10-26 10:01:56');
INSERT INTO `tp_scene` VALUES ('10030', '5', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '51', '', '10028', '腰立辉', '腰立辉', '2016-10-26 10:02:20', '2016-10-26 10:02:20');
INSERT INTO `tp_scene` VALUES ('10031', '1', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家确认', '正常', '80', '', '10029', '腰立辉', '腰立辉', '2016-11-02 09:38:51', '2016-11-02 09:39:11');
INSERT INTO `tp_scene` VALUES ('10032', '2', 'M', '2', '买顾', '客户已注册', '', '推送商家-使用优惠券-商家取消交易', '正常', '80', '', '10030', '腰立辉', '腰立辉', '2016-11-02 09:38:56', '2016-11-02 09:39:16');
INSERT INTO `tp_scene` VALUES ('10033', '1', 'M', '3', '关注用户', '默认', '', '在公众订阅号，直接打开并提交报名', '正常', '107', '微信号个人中心->公司名片->提交报名', '0', '腰立辉', '腰立辉', '2016-12-07 15:10:43', '2016-12-09 14:18:29');
INSERT INTO `tp_scene` VALUES ('10034', '2', 'M', '2', '专属管家', '未开启个人名片时', null, '分享公司名片', '正常', '107', '', '0', '腰立辉', '腰立辉', '2016-12-09 14:26:06', '2016-12-09 14:26:06');
INSERT INTO `tp_scene` VALUES ('10035', '3', 'M', '2', '专属管家', '开启个人名片', null, '分享公司名片-分享个人名片', '正常', '107', '', '10034', '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:29:00');
INSERT INTO `tp_scene` VALUES ('10036', '4', 'M', '2', '关注用户', '在管家分享后', null, '管家名片填写报名信息', '正常', '107', '', '0', '腰立辉', '腰立辉', '2016-12-09 14:32:55', '2016-12-09 14:32:55');

-- ----------------------------
-- Table structure for `tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE `tp_scenefunc` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('10038', '3', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10039', '4', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10036', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:55:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10033', '3', '10003', 'Auto.Access', '产品库', '产品-添加', '10000', null, '0', '10003', '已绑定', '正常添加测试产品', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:09', '2016-10-14 17:02:09');
INSERT INTO `tp_scenefunc` VALUES ('10031', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10000', '1231', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-28 16:10:57', '2016-10-28 16:10:57');
INSERT INTO `tp_scenefunc` VALUES ('10032', '4', '10002', 'Auto.Access', '产品库', '产品列表', '10000', '', '0', '10102', '已绑定', '查看产品列表', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:43', '2016-10-14 17:02:43');
INSERT INTO `tp_scenefunc` VALUES ('10037', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:04', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10034', '4', '10001', 'Auto.Access', '登陆模块', '注销', '10000', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:19', '2016-10-14 17:02:19');
INSERT INTO `tp_scenefunc` VALUES ('10040', '5', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:22', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10041', '6', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10042', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10043', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10044', '6', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:02', '2016-09-27 17:03:02');
INSERT INTO `tp_scenefunc` VALUES ('10045', '7', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:08', '2016-09-27 17:03:08');
INSERT INTO `tp_scenefunc` VALUES ('10046', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:44', '2016-09-27 17:02:44');
INSERT INTO `tp_scenefunc` VALUES ('10047', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:50', '2016-09-27 17:02:50');
INSERT INTO `tp_scenefunc` VALUES ('10048', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:54', '2016-09-27 17:02:54');
INSERT INTO `tp_scenefunc` VALUES ('10049', '1', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10050', '2', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:43', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10051', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:45', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10052', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10053', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10054', '6', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:56', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10055', '7', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10056', '8', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10057', '9', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10058', '10', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:11', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10059', '11', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10060', '1', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10061', '2', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10062', '3', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10063', '4', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10064', '5', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:42', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10065', '6', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10066', '7', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10067', '8', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10068', '9', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10069', '1', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10070', '2', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:20', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10071', '3', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10072', '4', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10073', '5', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:29', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10074', '6', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10075', '1', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10076', '2', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10077', '3', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10078', '4', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10079', '5', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:08', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10080', '6', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:10', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10081', '7', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10082', '8', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10083', '9', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10084', '10', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10085', '11', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:30', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10086', '12', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10087', '1', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10088', '2', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10089', '3', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10090', '4', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10091', '5', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10092', '6', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10093', '7', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:39:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10094', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10017', '123', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:58:31', '2016-10-14 16:58:31');
INSERT INTO `tp_scenefunc` VALUES ('10095', '2', '10001', 'Auto.Access', '登陆模块', '注销', '10017', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:59:00', '2016-10-14 16:59:00');
INSERT INTO `tp_scenefunc` VALUES ('10096', '3', '10005', 'Auto.Access', '登陆模块', '改密', '10017', null, '0', '10101', '已绑定', '正常修改密码', '修改成功1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:00:29', '2016-10-14 17:00:29');
INSERT INTO `tp_scenefunc` VALUES ('10097', '1', '10002', 'Auto.Access', '产品库', '产品列表', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10098', '2', '10003', 'Auto.Access', '产品库', '产品-添加', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10099', '3', '10004', 'Auto.Access', '产品库', '产品-编辑', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10100', '4', '10006', 'Auto.Access', '产品库', '系统-入口', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10101', '1', '10010', 'Auto.Access', '测试项目', '分组项目列表', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:58', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10102', '2', '10011', 'Auto.Access', '测试项目', '切换分组', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:01', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10103', '3', '10007', 'Auto.Access', '测试项目', '项目-添加', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10104', '4', '10008', 'Auto.Access', '测试项目', '项目-编辑', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10105', '5', '10009', 'Auto.Access', '测试项目', '项目-详情', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:07', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10106', '6', '10012', 'Auto.Access', '测试项目', '快速标记状态', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10107', '7', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10108', '8', '10014', 'Auto.Access', '测试项目', '项目-风险入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:17', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10109', '9', '10015', 'Auto.Access', '测试项目', '项目-系统入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10110', '10', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10111', '11', '10017', 'Auto.Access', '测试项目', '项目-范围入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10112', '12', '10018', 'Auto.Access', '测试项目', '项目-场景入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10113', '13', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10114', '14', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10116', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10008', null, '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:27:08', '2016-10-17 16:27:08');
INSERT INTO `tp_scenefunc` VALUES ('10117', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10006', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-14 14:51:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10118', '1', '10022', 'Auto.Access', '项目-里程碑', '里程碑列表', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10119', '2', '10023', 'Auto.Access', '项目-里程碑', '切换项目', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10120', '3', '10024', 'Auto.Access', '项目-里程碑', '里程碑-添加', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10121', '4', '10025', 'Auto.Access', '项目-里程碑', '里程碑-修改', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10122', '5', '10027', 'Auto.Access', '项目-里程碑', '快速标记状态', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10123', '6', '10198', 'Auto.Access', '项目-里程碑', 'M人员-入口（手工）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10124', '7', '10026', 'Auto.Access', '项目-里程碑', 'A人员-入口（自动化）', '10021', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-17 09:52:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10125', '2', '10007', 'Auto.Access', 'Access客户端-测试项目', '项目-添加', '10008', null, '0', '10103', '已绑定', '正常添加项目', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-17 16:28:15', '2016-10-17 16:28:15');
INSERT INTO `tp_scenefunc` VALUES ('10147', '2', '10277', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10146', '1', '10273', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10148', '3', '10289', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10149', '4', '10292', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10150', '5', '10328', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10026', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:09:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10151', null, '10277', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '查询-按待办来源', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10152', null, '10273', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '数量统计', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10153', null, '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10154', null, '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10155', null, '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-25 17:10:14', '2016-10-25 17:10:14');
INSERT INTO `tp_scenefunc` VALUES ('10156', '6', '10335', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户信息', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10157', '7', '10336', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '客户姓名调整信息页', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10158', '8', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:10:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10159', '9', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10160', '10', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:15', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10161', '11', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:25', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10162', '12', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:53', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10163', '13', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10027', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-25 17:23:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10166', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:35', '2016-10-26 10:05:35');
INSERT INTO `tp_scenefunc` VALUES ('10167', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:43', '2016-10-26 10:05:43');
INSERT INTO `tp_scenefunc` VALUES ('10168', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:47', '2016-10-26 10:05:47');
INSERT INTO `tp_scenefunc` VALUES ('10171', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:53', '2016-10-26 10:05:53');
INSERT INTO `tp_scenefunc` VALUES ('10172', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:05:57', '2016-10-26 10:05:57');
INSERT INTO `tp_scenefunc` VALUES ('10173', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:02', '2016-10-26 10:06:02');
INSERT INTO `tp_scenefunc` VALUES ('10177', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:07', '2016-10-26 10:06:07');
INSERT INTO `tp_scenefunc` VALUES ('10175', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:13', '2016-10-26 10:06:13');
INSERT INTO `tp_scenefunc` VALUES ('10176', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10028', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:06:18', '2016-10-26 10:06:18');
INSERT INTO `tp_scenefunc` VALUES ('10180', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:15', '2016-10-26 10:07:15');
INSERT INTO `tp_scenefunc` VALUES ('10181', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:10', '2016-10-26 10:07:10');
INSERT INTO `tp_scenefunc` VALUES ('10182', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:06', '2016-10-26 10:07:06');
INSERT INTO `tp_scenefunc` VALUES ('10185', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:21', '2016-10-26 10:07:21');
INSERT INTO `tp_scenefunc` VALUES ('10186', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:25', '2016-10-26 10:07:25');
INSERT INTO `tp_scenefunc` VALUES ('10187', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:30', '2016-10-26 10:07:30');
INSERT INTO `tp_scenefunc` VALUES ('10188', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:35', '2016-10-26 10:07:35');
INSERT INTO `tp_scenefunc` VALUES ('10189', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:39', '2016-10-26 10:07:39');
INSERT INTO `tp_scenefunc` VALUES ('10190', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10029', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:07:45', '2016-10-26 10:07:45');
INSERT INTO `tp_scenefunc` VALUES ('10193', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:46', '2016-10-26 10:08:46');
INSERT INTO `tp_scenefunc` VALUES ('10194', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:42', '2016-10-26 10:08:42');
INSERT INTO `tp_scenefunc` VALUES ('10195', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:38', '2016-10-26 10:08:38');
INSERT INTO `tp_scenefunc` VALUES ('10198', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:54', '2016-10-26 10:08:54');
INSERT INTO `tp_scenefunc` VALUES ('10199', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:08:59', '2016-10-26 10:08:59');
INSERT INTO `tp_scenefunc` VALUES ('10200', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:06', '2016-10-26 10:09:06');
INSERT INTO `tp_scenefunc` VALUES ('10201', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:11', '2016-10-26 10:09:11');
INSERT INTO `tp_scenefunc` VALUES ('10202', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:16', '2016-10-26 10:09:16');
INSERT INTO `tp_scenefunc` VALUES ('10203', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10030', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-26 10:09:21', '2016-10-26 10:09:21');
INSERT INTO `tp_scenefunc` VALUES ('10204', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10205', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10206', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10207', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10208', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10209', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10210', '7', '10398', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '确认成交', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10211', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10212', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10031', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:51');
INSERT INTO `tp_scenefunc` VALUES ('10213', '1', '10289', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '今日待办列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10214', '2', '10292', null, '惠买车电商CRM-任务管理-任务管理-今日待办', '客户跟进入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10215', '3', '10328', null, '惠买车电商CRM-任务管理-任务管理-跟进', '推送商家入口', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10216', '4', '10337', 'OP.HmcDSCRM', '惠买车电商CRM-任务管理-任务管理-跟进-推送商家', '创建买顾订单', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10217', '5', '10389', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '查询-按客户手机', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10218', '6', '10396', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10219', '7', '10399', 'Dealer.hmc', '惠买车商家版-订单管理-成交确认', '取消交易', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10220', '8', '10338', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '查询-按客户姓名', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10221', '9', '10346', 'OP.HmcDSCRM', '惠买车电商CRM-订单管理-全部新车订单', '订单列表', '10032', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', null, '2016-11-02 09:38:56');
INSERT INTO `tp_scenefunc` VALUES ('10222', '1', '10425', 'wzb', '微站后台- 内容发布-移民管家', ' 管家新增', '0', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-07 18:13:36');
INSERT INTO `tp_scenefunc` VALUES ('10230', '3', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:31');
INSERT INTO `tp_scenefunc` VALUES ('10229', '2', '10420', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:21');
INSERT INTO `tp_scenefunc` VALUES ('10228', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:19');
INSERT INTO `tp_scenefunc` VALUES ('10231', '4', '10423', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 报名', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:36');
INSERT INTO `tp_scenefunc` VALUES ('10232', '5', '10424', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10033', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:19:42');
INSERT INTO `tp_scenefunc` VALUES ('10233', '1', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:06');
INSERT INTO `tp_scenefunc` VALUES ('10234', '2', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:09');
INSERT INTO `tp_scenefunc` VALUES ('10235', '3', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10034', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:27:13');
INSERT INTO `tp_scenefunc` VALUES ('10236', '3', '10419', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10237', '4', '10421', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10238', '5', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:27:31', '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10239', '1', '10426', 'wzb', '微站后台- 内容发布-移民管家', ' 管家编辑', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10240', '2', '10429', 'wzb', '微站后台- 内容发布-移民管家', ' 管家详情', '10035', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:28:22');
INSERT INTO `tp_scenefunc` VALUES ('10241', '1', '10422', 'wzu', '微网站（用户）- 专属管家-公司名片', ' 公司名片分享', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, null, '2016-12-09 14:33:27');
INSERT INTO `tp_scenefunc` VALUES ('10242', '4', '10421', null, '微网站（用户）- 专属管家-公司名片', ' 名片信息', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10243', '3', '10420', null, '微网站（用户）- 专属管家-公司名片', ' 重点项目', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10244', '2', '10419', null, '微网站（用户）- 专属管家-公司名片', ' 公司介绍', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10245', '5', '10423', null, '微网站（用户）- 专属管家-公司名片', ' 报名', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');
INSERT INTO `tp_scenefunc` VALUES ('10246', '6', '10424', null, '微网站（用户）- 专属管家-公司名片', ' 数据统计（应该为后台功能）', '10036', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-09 14:33:35', '2016-12-09 14:33:45');

-- ----------------------------
-- Table structure for `tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stage`;
CREATE TABLE `tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1000', '1', '功能验证', '24', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:00', '2016-11-17 17:01:14');
INSERT INTO `tp_stage` VALUES ('1001', '2', '第一轮测试', '24', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:15', '2016-09-22 16:45:15');
INSERT INTO `tp_stage` VALUES ('1002', '3', '第二轮测试', '24', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:29', '2016-09-22 16:45:29');
INSERT INTO `tp_stage` VALUES ('1003', '1', '功能验证', '45', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 15:38:30', '2016-11-14 15:10:37');
INSERT INTO `tp_stage` VALUES ('1004', '2', '第一轮测试', '45', '2016-11-04', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:33', '2016-11-14 15:09:30');
INSERT INTO `tp_stage` VALUES ('1005', '3', '第二轮测试', '45', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:43', '2016-09-22 16:49:43');
INSERT INTO `tp_stage` VALUES ('1006', '1', '编写测试计划', '47', '2016-09-24', '2016-09-25', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:00', '2016-11-04 10:07:48');
INSERT INTO `tp_stage` VALUES ('1007', '2', '编写测试用例', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:05', '2016-09-24 14:50:05');
INSERT INTO `tp_stage` VALUES ('1008', '3', '功能验证', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:08', '2016-09-24 14:50:08');
INSERT INTO `tp_stage` VALUES ('1009', '4', '第一轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:12', '2016-09-24 14:50:12');
INSERT INTO `tp_stage` VALUES ('1010', '5', '第二轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:19', '2016-09-24 14:50:19');
INSERT INTO `tp_stage` VALUES ('1011', '1', '编写测试计划', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:20', '2016-09-24 20:44:20');
INSERT INTO `tp_stage` VALUES ('1012', '2', '编写测试用例', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:27', '2016-09-24 20:44:27');
INSERT INTO `tp_stage` VALUES ('1013', '3', '第一轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:35', '2016-09-24 20:44:35');
INSERT INTO `tp_stage` VALUES ('1014', '4', '第二轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:38', '2016-09-24 20:44:38');
INSERT INTO `tp_stage` VALUES ('1015', '1', '编写测试计划', '46', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-28 15:47:40', '2016-09-28 15:47:40');
INSERT INTO `tp_stage` VALUES ('1016', '2', '编写测试用例', '46', '2016-09-26', '2016-10-09', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-10 13:28:07', '2016-10-10 13:28:07');
INSERT INTO `tp_stage` VALUES ('1017', '3', '功能验证', '46', '2016-10-11', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:01', '2016-09-28 15:48:17');
INSERT INTO `tp_stage` VALUES ('1018', '4', '第一轮测试', '46', '2016-10-11', '2016-10-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:18:05', '2016-09-28 15:48:36');
INSERT INTO `tp_stage` VALUES ('1019', '1', '第一轮测试', '54', '2016-09-23', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:25', '2016-10-20 10:13:25');
INSERT INTO `tp_stage` VALUES ('1020', '2', '第二轮测试', '54', '2016-10-09', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:12:39', '2016-10-20 10:12:39');
INSERT INTO `tp_stage` VALUES ('1021', '3', '第三轮测试', '54', '2016-10-15', '2016-10-18', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:13:15', '2016-10-20 10:13:15');
INSERT INTO `tp_stage` VALUES ('1022', '1', '第一轮测试', '59', '2016-10-10', '2016-10-11', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-20 10:47:57', '2016-10-20 10:47:52');
INSERT INTO `tp_stage` VALUES ('1023', '1', '编写测试计划', '50', '2016-10-20', '2016-10-21', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-26 10:17:03', '2016-10-20 14:59:52');
INSERT INTO `tp_stage` VALUES ('1024', '2', '编写测试用例', '50', '2016-10-20', '2016-11-02', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:07', '2016-10-20 15:00:07');
INSERT INTO `tp_stage` VALUES ('1025', '3', '功能验证', '50', '2016-11-02', '2016-11-03', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:18', '2016-10-20 15:00:18');
INSERT INTO `tp_stage` VALUES ('1026', '4', '第一轮测试', '50', '2016-11-03', '2016-11-04', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:28', '2016-10-20 15:00:28');
INSERT INTO `tp_stage` VALUES ('1027', '5', '第二轮测试', '50', '2016-11-04', '2016-11-05', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:00:43', '2016-10-20 15:00:43');
INSERT INTO `tp_stage` VALUES ('1028', '6', '线上验证测试', '50', '2016-11-05', '2016-11-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-10-20 15:01:01', '2016-10-20 15:01:01');
INSERT INTO `tp_stage` VALUES ('1029', '1', '编写测试计划', '51', '2016-10-21', '2016-10-22', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-21 11:32:27', '2016-10-21 11:32:27');
INSERT INTO `tp_stage` VALUES ('1030', '2', '编写测试用例', '51', '2016-10-21', '2016-10-25', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-25 17:03:06', '2016-10-21 11:32:46');
INSERT INTO `tp_stage` VALUES ('1031', '3', '功能验证', '51', '2016-10-24', '2016-10-24', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-25 17:26:01', '2016-10-21 11:33:11');
INSERT INTO `tp_stage` VALUES ('1032', '4', '第一轮测试', '51', '2016-10-24', '2016-10-25', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:00', '2016-10-21 11:33:24');
INSERT INTO `tp_stage` VALUES ('1033', '5', '第二轮测试', '51', '2016-10-25', '2016-10-26', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:07', '2016-10-21 11:33:37');
INSERT INTO `tp_stage` VALUES ('1034', '6', '线上验证测试', '51', '2016-10-27', '2016-10-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-10-28 16:15:10', '2016-10-21 11:33:48');
INSERT INTO `tp_stage` VALUES ('1035', '1', '功能验证', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:06', '2016-11-02 09:45:51');
INSERT INTO `tp_stage` VALUES ('1036', '3', '线上验证测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:37:19', '2016-11-02 09:55:14');
INSERT INTO `tp_stage` VALUES ('1037', '2', '第一轮测试', '80', '2016-11-01', '2016-11-01', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-02 09:45:45', '2016-11-04 09:50:09');
INSERT INTO `tp_stage` VALUES ('1038', '1', '第一轮测试', '89', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-03 16:43:50', '2016-11-03 16:43:50');
INSERT INTO `tp_stage` VALUES ('1039', '1', '第一轮测试', '92', '2016-11-02', '2016-11-03', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:29', '2016-11-09 09:33:29');
INSERT INTO `tp_stage` VALUES ('1040', '2', '第二轮测试', '92', '2016-11-04', '2016-11-07', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:33:42', '2016-11-09 09:33:42');
INSERT INTO `tp_stage` VALUES ('1041', '3', '第三轮测试', '92', '2016-11-08', '2016-11-08', '已上线', '无文档', '腰立辉', '腰立辉', '2016-11-09 09:34:01', '2016-11-09 09:34:01');
INSERT INTO `tp_stage` VALUES ('1042', '1', '第一轮测试', '97', '2016-11-07', '2016-11-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-09 10:42:09', '2016-11-09 10:42:09');
INSERT INTO `tp_stage` VALUES ('1043', '1', '第一轮测试', '83', '2016-10-28', '2016-11-02', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:32', '2016-11-10 13:57:32');
INSERT INTO `tp_stage` VALUES ('1044', '2', '第二轮测试', '83', '2016-11-03', '2016-11-04', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:57:53', '2016-11-10 13:57:53');
INSERT INTO `tp_stage` VALUES ('1045', '3', '第三轮测试', '83', '2016-11-07', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-10 13:58:11', '2016-11-10 13:58:11');
INSERT INTO `tp_stage` VALUES ('1046', '1', '第一轮测试', '104', '2016-11-08', '2016-11-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 09:50:50', '2016-11-15 09:50:50');
INSERT INTO `tp_stage` VALUES ('1047', '1', '第一轮测试', '96', '2016-11-15', '2016-11-16', '已完成', '无文档', '腰立辉', '腰立辉', '2016-11-15 16:31:42', '2016-11-15 16:31:42');
INSERT INTO `tp_stage` VALUES ('1048', '1', '编写测试计划', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:24', '2016-12-07 17:41:54');
INSERT INTO `tp_stage` VALUES ('1049', '2', '编写测试用例', '107', '2016-12-05', '2016-12-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:40', '2016-12-08 14:46:32');
INSERT INTO `tp_stage` VALUES ('1050', '3', '功能验证', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:50', '2016-12-12 12:03:26');
INSERT INTO `tp_stage` VALUES ('1051', '4', '第一轮测试', '107', '2016-12-05', '2016-12-06', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:28:57', '2016-12-14 11:34:33');
INSERT INTO `tp_stage` VALUES ('1052', '5', '第二轮测试', '107', '2016-12-05', '2016-12-06', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:04', '2016-12-14 11:34:41');
INSERT INTO `tp_stage` VALUES ('1053', '6', '第三轮测试', '107', '2016-12-05', '2016-12-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:10', '2016-12-05 17:29:10');
INSERT INTO `tp_stage` VALUES ('1054', '7', '第四轮测试', '107', '2016-12-05', '2016-12-06', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:17', '2016-12-05 17:29:17');
INSERT INTO `tp_stage` VALUES ('1055', '9', '线上验证测试', '107', '2016-12-15', '2016-12-15', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:29:23', '2016-12-07 17:41:30');
INSERT INTO `tp_stage` VALUES ('1056', '1', '平台搭建，可以初步管理测试项目', '108', '2016-12-05', '2016-12-16', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:43:17', '2016-12-05 17:44:07');
INSERT INTO `tp_stage` VALUES ('1057', '2', '平台优化，按照公司的流程对平台进行调整', '108', '2016-12-12', '2017-01-31', '未开始', '无文档', '腰立辉', '腰立辉', '2016-12-05 17:43:23', '2016-12-05 17:44:57');
INSERT INTO `tp_stage` VALUES ('1058', '1', '功能验证', '110', null, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 19:19:20', '2016-12-13 11:15:53');
INSERT INTO `tp_stage` VALUES ('1059', '2', '线上验证测试', '110', null, '2016-12-12', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-12 20:40:15', '2016-12-13 11:16:01');
INSERT INTO `tp_stage` VALUES ('1060', '3', '12-13线上验证测试', '110', null, '2016-12-13', '已完成', '无文档', '腰立辉', '腰立辉', '2016-12-13 11:16:32', '2016-12-15 09:44:07');
INSERT INTO `tp_stage` VALUES ('1061', '1', '编写测试计划', '114', null, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 23:17:32', '2016-12-17 23:17:32');
INSERT INTO `tp_stage` VALUES ('1062', '1', '编写测试计划', '113', null, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 23:17:40', '2016-12-17 23:17:40');
INSERT INTO `tp_stage` VALUES ('1063', '1', '编写测试计划', '112', null, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 23:17:48', '2016-12-17 23:17:48');
INSERT INTO `tp_stage` VALUES ('1064', '1', '编写测试计划', '111', null, '2016-12-18', '进行中', '无文档', '腰立辉', '腰立辉', '2016-12-17 23:17:57', '2016-12-17 23:17:57');

-- ----------------------------
-- Table structure for `tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stagetester`;
CREATE TABLE `tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `plan` float DEFAULT NULL,
  `actual` float DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stagetester
-- ----------------------------
INSERT INTO `tp_stagetester` VALUES ('10031', '1', 'C', '1029', '腰立辉', '2016-10-21', '2016-10-22', '1', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:14', '2016-10-21 11:34:14');
INSERT INTO `tp_stagetester` VALUES ('10032', '1', 'C', '1030', '腰立辉', '2016-10-21', '2016-10-24', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:34:40', '2016-10-21 11:34:40');
INSERT INTO `tp_stagetester` VALUES ('10033', '1', 'M', '1031', '腰立辉', '2016-10-24', '2016-10-24', '5', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:18', '2016-10-21 11:35:02');
INSERT INTO `tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:23', '2016-09-24 20:45:23');
INSERT INTO `tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:46', '2016-09-24 20:45:46');
INSERT INTO `tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:49', '2016-09-24 20:45:49');
INSERT INTO `tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:38:02', '2016-09-25 13:38:02');
INSERT INTO `tp_stagetester` VALUES ('10030', '1', 'M', '1006', '腰立辉', '2016-10-17', '2016-10-18', '8', '0', '腰立辉', '腰立辉', '2016-10-17 15:59:29', '2016-10-17 15:59:29');
INSERT INTO `tp_stagetester` VALUES ('10029', '1', 'M', '1004', '腰立辉', '2016-11-04', '2016-11-08', '16', '0', '腰立辉', '腰立辉', '2016-10-17 10:24:06', '2016-11-04 09:17:51');
INSERT INTO `tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:45:45', '2016-09-25 13:45:45');
INSERT INTO `tp_stagetester` VALUES ('10016', '1', 'M', '1003', '腰立辉', '2016-10-13', '2016-10-14', '8', '0', '腰立辉', '腰立辉', '2016-10-28 15:38:37', '2016-10-13 09:53:48');
INSERT INTO `tp_stagetester` VALUES ('10036', '1', 'M', '1034', '腰立辉', '2016-10-27', '2016-10-27', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:35', '2016-10-21 11:36:00');
INSERT INTO `tp_stagetester` VALUES ('10034', '1', 'M', '1032', '腰立辉', '2016-10-24', '2016-10-25', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:20', '2016-10-21 11:35:23');
INSERT INTO `tp_stagetester` VALUES ('10035', '1', 'M', '1033', '腰立辉', '2016-10-25', '2016-10-26', '8', '0', '腰立辉', '腰立辉', '2016-10-21 11:37:22', '2016-10-21 11:35:42');
INSERT INTO `tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-28', '2016-09-29', '8', '0', '腰立辉', '腰立辉', '2016-09-28 15:48:49', '2016-09-28 15:48:49');
INSERT INTO `tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-09-26', '2016-10-09', '24', '0', '腰立辉', '腰立辉', '2016-09-28 15:49:25', '2016-09-28 15:49:25');
INSERT INTO `tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:24', '2016-10-10 13:28:24');
INSERT INTO `tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:28', '2016-10-10 13:28:28');
INSERT INTO `tp_stagetester` VALUES ('10037', '1', 'M', '1035', '腰立辉', '2016-11-02', '2016-11-01', '2', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:37:52');
INSERT INTO `tp_stagetester` VALUES ('10038', '1', 'M', '1036', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:38:07');
INSERT INTO `tp_stagetester` VALUES ('10039', '1', 'M', '1037', '腰立辉', '2016-11-01', '2016-11-01', '1', '0', '腰立辉', '腰立辉', null, '2016-11-02 09:53:32');
INSERT INTO `tp_stagetester` VALUES ('10040', '1', 'M', '1038', '田亮', '2016-11-02', '2016-11-03', '8', '0', '腰立辉', '腰立辉', null, '2016-11-03 16:44:18');
INSERT INTO `tp_stagetester` VALUES ('10041', '2', 'M', '1008', '曹玉芳', '2016-11-10', '2016-11-11', '8', '0', '腰立辉', '腰立辉', null, '2016-11-10 11:04:46');
INSERT INTO `tp_stagetester` VALUES ('10042', '1', 'M', '1048', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:29:53');
INSERT INTO `tp_stagetester` VALUES ('10043', '1', 'C', '1049', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:31:28');
INSERT INTO `tp_stagetester` VALUES ('10044', '2', 'C', '1049', '魏斌', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:31:30');
INSERT INTO `tp_stagetester` VALUES ('10045', '0', 'M', '1050', '腰立辉', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-08 15:11:57');
INSERT INTO `tp_stagetester` VALUES ('10046', '2', 'M', '1050', '魏斌', '2016-12-05', '2016-12-06', '8', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:32:11');
INSERT INTO `tp_stagetester` VALUES ('10047', '1', 'M', '1056', '腰立辉', '2016-12-05', '2016-12-15', '40', '0', '腰立辉', '腰立辉', null, '2016-12-05 17:55:45');
INSERT INTO `tp_stagetester` VALUES ('10048', '1', 'M', '1051', '腰立辉', '2016-12-09', '2016-12-10', '8', '0', '魏斌', '魏斌', null, '2016-12-09 11:49:42');
INSERT INTO `tp_stagetester` VALUES ('10049', '2', 'M', '1051', '魏斌', '2016-12-09', '2016-12-10', '8', '0', '魏斌', '魏斌', null, '2016-12-09 11:49:51');
INSERT INTO `tp_stagetester` VALUES ('10050', '1', 'M', '1049', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 17:52:51');
INSERT INTO `tp_stagetester` VALUES ('10051', '1', 'M', '1058', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 19:18:42');
INSERT INTO `tp_stagetester` VALUES ('10052', '1', 'M', '1059', '腰立辉', '2016-12-12', '2016-12-13', '8', '0', '腰立辉', '腰立辉', null, '2016-12-12 20:39:32');
INSERT INTO `tp_stagetester` VALUES ('10053', '1', 'M', '1060', '腰立辉', '2016-12-13', '2016-12-14', '8', '0', '腰立辉', '腰立辉', null, '2016-12-13 11:16:20');
INSERT INTO `tp_stagetester` VALUES ('10054', '1', 'M', '1052', '腰立辉', '2016-12-14', '2016-12-15', '8', '0', '腰立辉', '腰立辉', null, '2016-12-14 11:35:01');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sysno` varchar(30) DEFAULT '',
  `system` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `useversion` varchar(50) DEFAULT NULL,
  `testversion` varchar(50) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `testuser` varchar(50) DEFAULT NULL,
  `testpass` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:05', '2016-09-21 10:17:05');
INSERT INTO `tp_system` VALUES ('4', 'AutoB', '测试管理平台（后台）', '正常', '2', '', 'V1.10', '192.168.43.61：easypass', '121', '123456', '腰立辉', '腰立辉', '2016-10-21 10:29:12', '2016-12-05 17:47:25');
INSERT INTO `tp_system` VALUES ('6', 'dealer.huimaiche.com', '惠买车商家版', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-10-28 11:46:57', '2016-10-28 11:46:57');
INSERT INTO `tp_system` VALUES ('68', 'AutoQ', '测试管理平台（前台）', '正常', '2', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 17:42:48', '2016-12-05 17:47:14');
INSERT INTO `tp_system` VALUES ('60', 'sda', 'asdas', '正常', null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-11-17 17:27:52', '2016-11-17 17:26:59');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', '买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:53', '2016-09-21 10:14:53');
INSERT INTO `tp_system` VALUES ('11', 'OP.HmcDSCRM', '惠买车电商CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-26 11:28:46', '2016-09-26 11:28:46');
INSERT INTO `tp_system` VALUES ('12', 'OP.DealerCRM', '惠买车商家运营系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:15', '2016-09-21 10:15:15');
INSERT INTO `tp_system` VALUES ('13', 'OP.DealerOP', '经销商信息管理', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:26', '2016-09-21 10:15:26');
INSERT INTO `tp_system` VALUES ('14', 'OP.Deposit', '商家订金管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:35', '2016-09-21 10:15:35');
INSERT INTO `tp_system` VALUES ('15', 'OP.Gift', '买车网礼品管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:41', '2016-09-21 10:15:41');
INSERT INTO `tp_system` VALUES ('16', 'OP.Giftop', '惠买车礼品管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:54', '2016-09-21 10:15:54');
INSERT INTO `tp_system` VALUES ('17', 'OP.Groupon', '团购管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:48', '2016-09-21 10:15:48');
INSERT INTO `tp_system` VALUES ('18', 'OP.HMCcrm', '惠买车CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:04', '2016-09-21 10:16:04');
INSERT INTO `tp_system` VALUES ('19', 'OP.HmcCrmOp', '电商CRM后台管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:01', '2016-09-21 10:14:01');
INSERT INTO `tp_system` VALUES ('20', 'OP.Ipayment', '惠买车支付管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:14', '2016-09-21 10:16:14');
INSERT INTO `tp_system` VALUES ('21', 'OP.Security', 'OP权限系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:55', '2016-09-21 10:16:55');
INSERT INTO `tp_system` VALUES ('22', 'OP.User', '惠买车用户管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:22', '2016-09-21 10:16:22');
INSERT INTO `tp_system` VALUES ('23', 'Web.hmc', '惠买车', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:35:06', '2016-09-13 13:35:06');
INSERT INTO `tp_system` VALUES ('57', 'OP.maiche', '易车运营支持中心', '正常', '1', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:15:00', '2016-09-27 17:15:00');
INSERT INTO `tp_system` VALUES ('62', 'wzug', '微网站(管家)', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:06:07', '2016-12-05 17:51:33');
INSERT INTO `tp_system` VALUES ('63', 'wzb', '微站CRM后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:08:21', '2016-12-14 11:37:33');
INSERT INTO `tp_system` VALUES ('64', 'glb', '权限管理后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:08:40', '2016-12-05 17:50:35');
INSERT INTO `tp_system` VALUES ('65', 'crm', 'CRM客户关系后台', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:09:33', '2016-12-05 16:09:33');
INSERT INTO `tp_system` VALUES ('66', 'wzu', '微网站（用户）', '正常', '14', null, null, null, null, null, '腰立辉', '腰立辉', '2016-12-05 16:30:40', '2016-12-05 16:36:00');
INSERT INTO `tp_system` VALUES ('69', 'Xiuli', '秀丽广告', '正常', '8', '', '', 'www.xiuliguanggao.com', '', '', '腰立辉', '腰立辉', '2016-12-17 22:59:02', '2016-12-17 23:00:22');
INSERT INTO `tp_system` VALUES ('70', 'XLAdmin', '秀丽广告后台', '正常', '8', '', '', 'www.xiuliguanggao.com/index.php/Admin', '13463925200', '123456', '腰立辉', '腰立辉', '2016-12-17 22:59:39', '2016-12-17 23:01:05');
INSERT INTO `tp_system` VALUES ('71', 'Mtsh', '麦田双辉', '正常', '6', '', '', 'www.maitianshuanghui.com', '', '', '腰立辉', '腰立辉', '2016-12-17 23:05:06', '2016-12-17 23:06:41');
INSERT INTO `tp_system` VALUES ('72', 'MTAdmin', '麦田双辉后台', '正常', '6', '', '', 'www.maitianshuanghui.com/index.php/Admin', '18233098318', '123456', '腰立辉', '腰立辉', '2016-12-17 23:05:43', '2016-12-17 23:07:09');
INSERT INTO `tp_system` VALUES ('73', 'Anshun', '安顺汽车服务中心', '正常', '5', '', '', 'www.anshunqixiu.top', '', '', '腰立辉', '腰立辉', '2016-12-17 23:09:12', '2016-12-17 23:09:57');
INSERT INTO `tp_system` VALUES ('74', 'ASAdmin', '安顺汽修后台', '正常', '5', '', '', 'www.anshunqixiu.top/index.php/Admin', '13785900902', '123456', '腰立辉', '腰立辉', '2016-12-17 23:09:28', '2016-12-17 23:10:33');
INSERT INTO `tp_system` VALUES ('75', 'Tuocai', '拓才教育', '正常', '7', '', '', 'www.tuocaijiaoyu.com', '', '', '腰立辉', '腰立辉', '2016-12-17 23:15:16', '2016-12-17 23:16:59');
INSERT INTO `tp_system` VALUES ('76', 'TCAdmin', '拓才教育后台', '正常', '7', '', '', 'www.tuocaijiaoyu.com/index.php/Admin', '13426179579', '123456', '腰立辉', '腰立辉', '2016-12-17 23:15:43', '2016-12-17 23:16:42');

-- ----------------------------
-- Table structure for `tp_tc_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_ad`;
CREATE TABLE `tp_tc_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tc_ad
-- ----------------------------
INSERT INTO `tp_tc_ad` VALUES ('5', '第2张', '/Ad/2016-12-13/', '584fb4689084f.jpg', '阿斯达', '', '正常', '梁小伟', '2016-12-13 16:44:04');
INSERT INTO `tp_tc_ad` VALUES ('6', '第1张', '/Ad/2016-12-13/', '584fb48ec1380.jpg', '水电费', '', '发布', '梁小伟', '2016-12-13 16:43:53');
INSERT INTO `tp_tc_ad` VALUES ('7', '第3张', '/Ad/2016-12-13/', '584fb428f34cc.jpg', '', '', '发布', '腰立辉', '2016-12-13 16:41:13');
INSERT INTO `tp_tc_ad` VALUES ('8', '第4张', '/Ad/2016-11-27/', '583afafcaaa26.jpg', '', '', '发布', '腰立辉', '2016-11-27 23:25:49');
INSERT INTO `tp_tc_ad` VALUES ('9', '第5张', '/Ad/2016-11-27/', '583afb176905b.jpg', '', '', '正常', '腰立辉', '2016-11-27 23:26:15');

-- ----------------------------
-- Table structure for `tp_tc_course`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_course`;
CREATE TABLE `tp_tc_course` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `course` varchar(30) DEFAULT NULL,
  `coursetype` varchar(5) DEFAULT NULL,
  `desc` text,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tc_course
-- ----------------------------
INSERT INTO `tp_tc_course` VALUES ('6', '小学英语', '小学课程', '', '/Course/2016-11-13/', '5828142cd61aa.jpg', '发布', '腰立辉', '腰立辉', null, '2016-11-16 23:54:55');
INSERT INTO `tp_tc_course` VALUES ('7', '百家姓', '学前少儿', '12312', '/Course/2016-11-13/', '58280bc662aaa.jpg', '发布', '腰立辉', '腰立辉', '1478422638', '2016-11-16 23:55:10');
INSERT INTO `tp_tc_course` VALUES ('9', '小学数学', '小学课程', 'qweqw11', '/Course/2016-12-18/', '58568cffdeb67.jpg', '发布', '腰立辉', '梁小伟', '1478530883', '2016-12-18 21:19:59');
INSERT INTO `tp_tc_course` VALUES ('20', '围棋', '兴趣拓展', '', '/Course/2016-11-25/', '58380443108c8.jpg', '发布', '梁小伟', '梁小伟', '1480065850', '2016-11-25 17:28:35');
INSERT INTO `tp_tc_course` VALUES ('19', '书法国画', '兴趣拓展', '', '/Course/2016-11-25/', '58380463072e9.jpg', '发布', '梁小伟', '梁小伟', '1480065831', '2016-11-25 17:29:07');
INSERT INTO `tp_tc_course` VALUES ('12', '三字经', '学前少儿', '', '/Course/2016-12-18/', '58568c2105fa3.png', '发布', '腰立辉', '腰立辉', '1479015502', '2016-12-18 21:16:17');
INSERT INTO `tp_tc_course` VALUES ('13', '小学奥数', '小学课程', '', '/Course/2016-11-25/', '5838006e54edb.jpg', '发布', '梁小伟', '梁小伟', '1480065112', '2016-11-25 17:12:14');
INSERT INTO `tp_tc_course` VALUES ('14', '小学语文', '小学课程', '', '/Course/2016-11-25/', '5838016d464bb.jpg', '发布', '梁小伟', '梁小伟', '1480065358', '2016-11-25 17:16:29');
INSERT INTO `tp_tc_course` VALUES ('15', '初中数学', '中学课程', '', '/Course/2016-12-18/', '58568ce43dae9.jpg', '发布', '梁小伟', '梁小伟', '1480065518', '2016-12-18 21:19:32');
INSERT INTO `tp_tc_course` VALUES ('16', '初中物理', '中学课程', '', '/Course/2016-12-18/', '58568cd48d0d8.jpg', '发布', '梁小伟', '梁小伟', '1480065532', '2016-12-18 21:19:16');
INSERT INTO `tp_tc_course` VALUES ('17', '初中英语', '中学课程', '', '/Course/2016-11-25/', '5838072f51308.jpg', '发布', '梁小伟', '梁小伟', '1480065562', '2016-11-25 17:41:03');
INSERT INTO `tp_tc_course` VALUES ('18', '初中化学', '中学课程', '', '/Course/2016-11-25/', '58380716778f3.jpg', '发布', '梁小伟', '梁小伟', '1480065584', '2016-11-25 17:40:38');

-- ----------------------------
-- Table structure for `tp_tc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_customer`;
CREATE TABLE `tp_tc_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tc_customer
-- ----------------------------
INSERT INTO `tp_tc_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-18/', '585693e5ec634.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-18 21:49:25');
INSERT INTO `tp_tc_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `tp_tc_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `tp_tc_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-18/', '58569232eda33.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-18 21:42:10');

-- ----------------------------
-- Table structure for `tp_tc_date`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_date`;
CREATE TABLE `tp_tc_date` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `riqi` date DEFAULT NULL,
  `xingqi` varchar(5) DEFAULT NULL,
  `sn` smallint(2) DEFAULT NULL,
  `sktime` varchar(20) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tc_date
-- ----------------------------
INSERT INTO `tp_tc_date` VALUES ('8', '2016-11-14', '星期一', '2', '10:00-12:00', '2016-11-14 22:11:56');
INSERT INTO `tp_tc_date` VALUES ('7', '2016-11-14', '星期一', '1', '8:00-10:00', '2016-11-14 22:11:56');
INSERT INTO `tp_tc_date` VALUES ('9', '2016-11-14', '星期一', '3', '13:00-15:00', '2016-11-14 22:11:56');
INSERT INTO `tp_tc_date` VALUES ('10', '2016-11-14', '星期一', '4', '15:00-17:00', '2016-11-14 22:11:56');
INSERT INTO `tp_tc_date` VALUES ('11', '2016-11-15', '星期二', '1', '8:00-10:00', '2016-11-14 22:39:51');
INSERT INTO `tp_tc_date` VALUES ('12', '2016-11-15', '星期二', '2', '10:00-12:00', '2016-11-14 22:39:51');
INSERT INTO `tp_tc_date` VALUES ('13', '2016-11-15', '星期二', '3', '13:00-15:00', '2016-11-14 22:39:51');
INSERT INTO `tp_tc_date` VALUES ('14', '2016-11-15', '星期二', '4', '15:00-17:00', '2016-11-14 22:39:51');
INSERT INTO `tp_tc_date` VALUES ('15', '2016-11-16', '星期三', '1', '8:00-10:00', '2016-11-14 22:40:49');
INSERT INTO `tp_tc_date` VALUES ('16', '2016-11-16', '星期三', '2', '10:00-12:00', '2016-11-14 22:40:49');
INSERT INTO `tp_tc_date` VALUES ('17', '2016-11-16', '星期三', '3', '13:00-15:00', '2016-11-14 22:40:49');
INSERT INTO `tp_tc_date` VALUES ('18', '2016-11-16', '星期三', '4', '15:00-17:00', '2016-11-14 22:40:49');
INSERT INTO `tp_tc_date` VALUES ('19', '2016-11-17', '星期四', '1', '8:00-10:00', '2016-11-14 22:52:08');
INSERT INTO `tp_tc_date` VALUES ('20', '2016-11-17', '星期四', '2', '10:00-12:00', '2016-11-14 22:52:08');
INSERT INTO `tp_tc_date` VALUES ('21', '2016-11-17', '星期四', '3', '13:00-15:00', '2016-11-14 22:52:08');
INSERT INTO `tp_tc_date` VALUES ('22', '2016-11-17', '星期四', '4', '15:00-17:00', '2016-11-14 22:52:08');
INSERT INTO `tp_tc_date` VALUES ('27', '2016-11-07', '星期一', '1', '8:00-10:00', '2016-11-15 21:38:25');
INSERT INTO `tp_tc_date` VALUES ('28', '2016-11-07', '星期一', '2', '10:00-12:00', '2016-11-15 21:38:25');
INSERT INTO `tp_tc_date` VALUES ('29', '2016-11-07', '星期一', '3', '13:00-15:00', '2016-11-15 21:38:25');
INSERT INTO `tp_tc_date` VALUES ('30', '2016-11-07', '星期一', '4', '15:00-17:00', '2016-11-15 21:38:25');
INSERT INTO `tp_tc_date` VALUES ('35', '2016-11-01', '星期二', '1', '8:00-10:00', '2016-11-15 22:20:07');
INSERT INTO `tp_tc_date` VALUES ('36', '2016-11-01', '星期二', '2', '10:00-12:00', '2016-11-15 22:20:07');
INSERT INTO `tp_tc_date` VALUES ('37', '2016-11-01', '星期二', '3', '13:00-15:00', '2016-11-15 22:20:07');
INSERT INTO `tp_tc_date` VALUES ('38', '2016-11-01', '星期二', '4', '15:00-17:00', '2016-11-15 22:20:07');
INSERT INTO `tp_tc_date` VALUES ('43', '2016-11-19', '星期六', '1', '08:00-10:00', '2016-11-19 12:41:04');
INSERT INTO `tp_tc_date` VALUES ('44', '2016-11-19', '星期六', '2', '10:10-12:10', '2016-11-19 12:41:04');
INSERT INTO `tp_tc_date` VALUES ('45', '2016-11-19', '星期六', '3', '13:30-15:30', '2016-11-19 12:41:04');
INSERT INTO `tp_tc_date` VALUES ('46', '2016-11-19', '星期六', '4', '15:40-17:40', '2016-11-19 12:41:04');
INSERT INTO `tp_tc_date` VALUES ('47', '2016-11-19', '星期六', '5', '18:00-20:00', '2016-11-19 12:41:04');
INSERT INTO `tp_tc_date` VALUES ('48', '2016-11-27', '星期日', '1', '08:00-10:00', '2016-11-27 19:00:26');
INSERT INTO `tp_tc_date` VALUES ('49', '2016-11-27', '星期日', '2', '10:10-12:10', '2016-11-27 19:00:26');
INSERT INTO `tp_tc_date` VALUES ('50', '2016-11-27', '星期日', '3', '13:30-15:30', '2016-11-27 19:00:26');
INSERT INTO `tp_tc_date` VALUES ('51', '2016-11-27', '星期日', '4', '15:40-17:40', '2016-11-27 19:00:27');
INSERT INTO `tp_tc_date` VALUES ('52', '2016-11-27', '星期日', '5', '18:00-20:00', '2016-11-27 19:00:27');
INSERT INTO `tp_tc_date` VALUES ('53', '2016-12-02', '星期五', '1', '08:00-10:00', '2016-12-02 15:07:17');
INSERT INTO `tp_tc_date` VALUES ('54', '2016-12-02', '星期五', '2', '10:10-12:10', '2016-12-02 15:07:17');
INSERT INTO `tp_tc_date` VALUES ('55', '2016-12-02', '星期五', '3', '13:30-15:30', '2016-12-02 15:07:17');
INSERT INTO `tp_tc_date` VALUES ('56', '2016-12-02', '星期五', '4', '15:40-17:40', '2016-12-02 15:07:17');
INSERT INTO `tp_tc_date` VALUES ('57', '2016-12-02', '星期五', '5', '18:00-20:00', '2016-12-02 15:07:17');

-- ----------------------------
-- Table structure for `tp_tc_plan`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_plan`;
CREATE TABLE `tp_tc_plan` (
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
-- Records of tp_tc_plan
-- ----------------------------
INSERT INTO `tp_tc_plan` VALUES ('5', '11', '2016-11-15', '星期二', '8:00-10:00', '4', '6', 'retert', '待确认', '腰立辉', '腰立辉', '1479214738', '2016-11-15 20:58:58');
INSERT INTO `tp_tc_plan` VALUES ('4', '8', '2016-11-14', '星期一', '10:00-12:00', '4', '6', 'asdasdsa', '待确认', '腰立辉', '腰立辉', '1479138089', '2016-11-14 23:41:29');
INSERT INTO `tp_tc_plan` VALUES ('6', '13', '2016-11-15', '星期二', '13:00-15:00', '4', '6', 'gssgd', '待确认', '腰立辉', '腰立辉', '1479214748', '2016-11-15 20:59:08');
INSERT INTO `tp_tc_plan` VALUES ('7', '21', '2016-11-17', '星期四', '13:00-15:00', '4', '6', 'qqq', '待确认', '腰立辉', '腰立辉', '1479214778', '2016-11-15 20:59:38');
INSERT INTO `tp_tc_plan` VALUES ('8', '15', '2016-11-16', '星期三', '8:00-10:00', '4', '6', 'qw', '待确认', '腰立辉', '腰立辉', '1479304493', '2016-11-16 21:54:53');

-- ----------------------------
-- Table structure for `tp_tc_studentcla`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_studentcla`;
CREATE TABLE `tp_tc_studentcla` (
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
-- Records of tp_tc_studentcla
-- ----------------------------
INSERT INTO `tp_tc_studentcla` VALUES ('4', '5', '王五', '13426179579', '小学课程', '4', '腰立辉', '18801043607', '6', '小学英语', null, '腰立辉', '腰立辉', '1479043222', '2016-11-13 21:20:22');

-- ----------------------------
-- Table structure for `tp_tc_techclass`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tc_techclass`;
CREATE TABLE `tp_tc_techclass` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `teacherid` smallint(6) DEFAULT NULL,
  `teacher` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `courseid` smallint(6) DEFAULT NULL,
  `coursetype` varchar(5) NOT NULL,
  `course` varchar(50) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tc_techclass
-- ----------------------------
INSERT INTO `tp_tc_techclass` VALUES ('4', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479027130', '2016-11-13 18:39:09');
INSERT INTO `tp_tc_techclass` VALUES ('5', '1', '腰立辉', '18801043607', '6', '小学课程', '小学英语', null, '腰立辉', '腰立辉', '1479031833', '2016-11-13 18:23:41');
INSERT INTO `tp_tc_techclass` VALUES ('6', '4', '李四', '13222222222', '10', '兴趣拓展', '跆拳道', null, '腰立辉', '腰立辉', '1479032021', '2016-11-13 18:23:56');
INSERT INTO `tp_tc_techclass` VALUES ('7', '3', '张三', '13333333333', '11', '中学课程', '九年级物理', null, '腰立辉', '腰立辉', '1479034059', '2016-11-13 18:47:39');
INSERT INTO `tp_tc_techclass` VALUES ('8', '1', '腰立辉', '18801043607', '9', '小学课程', '小学自然', null, '腰立辉', '腰立辉', '1479301282', '2016-11-16 21:01:22');

-- ----------------------------
-- Table structure for `tp_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tickets`;
CREATE TABLE `tp_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(5) DEFAULT '新建',
  `result` varchar(10) DEFAULT '谢谢参与',
  `voucherid` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `chouj` smallint(1) DEFAULT '0',
  `owner` varchar(11) DEFAULT NULL,
  `duij` smallint(1) DEFAULT '0',
  `code` int(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tickets
-- ----------------------------
INSERT INTO `tp_tickets` VALUES ('499', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '110629', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:56');
INSERT INTO `tp_tickets` VALUES ('500', '设奖', '3:三等奖', '19', null, '0', null, '0', '930429', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('501', '设奖', '3:三等奖', '19', null, '0', null, '0', '613253', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('502', '设奖', '1:一等奖', '19', null, '0', null, '0', '410556', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('503', '抽奖', '谢谢参与', '19', '127.0.0.1', '1', null, '0', null, '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:51');
INSERT INTO `tp_tickets` VALUES ('504', '设奖', '4:参与奖', '19', '172.20.100.72', '0', null, '0', '872750', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-01 18:01:44');
INSERT INTO `tp_tickets` VALUES ('505', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('506', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('507', '设奖', '2:二等奖', '19', null, '0', null, '0', '227468', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('508', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '225216', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:47');
INSERT INTO `tp_tickets` VALUES ('509', '设奖', '4:参与奖', '19', null, '0', null, '0', '316842', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('510', '设奖', '3:三等奖', '19', null, '0', null, '0', '588809', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('511', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('512', '设奖', '3:三等奖', '19', null, '0', null, '0', '887033', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('513', '设奖', '1:一等奖', '19', null, '0', null, '0', '217031', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('514', '设奖', '2:二等奖', '19', null, '0', null, '0', '927133', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('515', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('516', '设奖', '2:二等奖', '19', null, '0', null, '0', '433023', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('517', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '589138', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:59');
INSERT INTO `tp_tickets` VALUES ('518', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('519', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '253176', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-12-17 16:53:49');
INSERT INTO `tp_tickets` VALUES ('520', '设奖', '4:参与奖', '19', null, '0', null, '0', '122659', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('521', '设奖', '4:参与奖', '19', null, '0', null, '0', '282510', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('522', '设奖', '4:参与奖', '19', null, '0', null, '0', '231314', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('523', '设奖', '4:参与奖', '19', null, '0', null, '0', '297177', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('524', '设奖', '3:三等奖', '19', null, '0', null, '0', '393911', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('525', '设奖', '4:参与奖', '19', null, '0', null, '0', '672689', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('526', '设奖', '4:参与奖', '19', null, '0', null, '0', '326675', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('527', '抽奖', '4:参与奖', '19', '172.20.100.72', '1', null, '0', '310800', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-01 18:05:25');
INSERT INTO `tp_tickets` VALUES ('528', '设奖', '4:参与奖', '19', null, '0', null, '0', '414016', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('529', '设奖', '4:参与奖', '19', null, '0', null, '0', '457687', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('530', '抽奖', '4:参与奖', '19', '127.0.0.1', '1', null, '0', '778103', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-09 23:19:54');
INSERT INTO `tp_tickets` VALUES ('531', '设奖', '0:特等奖', '19', null, '0', null, '0', '536349', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('532', '设奖', '3:三等奖', '19', null, '0', null, '0', '195443', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('533', '新建', '谢谢参与', '19', null, '0', null, '0', null, '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('534', '设奖', '2:二等奖', '19', null, '0', null, '0', '805569', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('535', '设奖', '3:三等奖', '19', null, '0', null, '0', '866983', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('536', '设奖', '2:二等奖', '19', null, '0', null, '0', '775192', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('537', '设奖', '4:参与奖', '19', null, '0', null, '0', '472683', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:11:53');
INSERT INTO `tp_tickets` VALUES ('538', '抽奖', '3:三等奖', '19', '127.0.0.1', '1', null, '0', '725534', '腰立辉', '客户', '2016-11-01 17:11:53', '2016-11-10 21:02:21');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(18) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `userno` int(5) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  `usergp` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '/Test/user/2016-12-06/', '58464bf1b7fb5.jpg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '', 'PJD', '18801043607', '', 'yao@yimin.la', '测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-12-06 13:26:09');
INSERT INTO `tp_user` VALUES ('31', 'weib', '魏斌', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'PJD', '', null, 'weib@yiche.com', '测试工程师', '腰立辉', '腰立辉', '2016-12-05 17:30:44', '2016-12-05 17:30:44');
INSERT INTO `tp_user` VALUES ('32', 'jiaxn', '贾晓宁', '/', 'head.png', 'e10adc3949ba59abbe56e057f20f883e', '在职', '12', '惠买车-产品研发中心-质量管理部', 'Auto', '', null, 'jiaxn@yiche.com', '测试工程师', '腰立辉', '腰立辉', '2016-12-17 22:46:12', '2016-12-17 22:46:12');

-- ----------------------------
-- Table structure for `tp_userprod`
-- ----------------------------
DROP TABLE IF EXISTS `tp_userprod`;
CREATE TABLE `tp_userprod` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` smallint(6) NOT NULL,
  `prodid` smallint(6) NOT NULL,
  `moder` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_userprod
-- ----------------------------
INSERT INTO `tp_userprod` VALUES ('3', '2', '7', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('4', '1', '3', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('5', '1', '5', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('6', '1', '6', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('7', '1', '7', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('8', '1', '8', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('17', '3', '5', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('18', '4', '5', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('19', '7', '8', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('20', '11', '8', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('21', '8', '3', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('22', '9', '6', '腰立辉');
INSERT INTO `tp_userprod` VALUES ('23', '10', '6', '腰立辉');

-- ----------------------------
-- Table structure for `tp_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `tp_voucher`;
CREATE TABLE `tp_voucher` (
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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voucher
-- ----------------------------
INSERT INTO `tp_voucher` VALUES ('19', '抽奖活动', '<p>\r\n	抽奖</p>\r\n', '抽奖', '2016-11-01', '2016-11-13', '发布', '40', '1', '2', '5', '10', '15', '腰立辉', '腰立辉', '2016-11-01 17:11:53', '2016-11-01 17:18:28');

-- ----------------------------
-- Table structure for `tp_xl_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_ad`;
CREATE TABLE `tp_xl_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(48) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(48) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `remark` text,
  `state` varchar(5) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_ad
-- ----------------------------
INSERT INTO `tp_xl_ad` VALUES ('5', '第2张', '/Ad/2016-12-13/', '584fb4689084f.jpg', '阿斯达', '', '正常', '梁小伟', '2016-12-13 16:44:04');
INSERT INTO `tp_xl_ad` VALUES ('6', '第1张', '/Ad/2016-12-13/', '584fb48ec1380.jpg', '水电费', '', '发布', '梁小伟', '2016-12-13 16:43:53');
INSERT INTO `tp_xl_ad` VALUES ('7', '第3张', '/Ad/2016-12-13/', '584fb428f34cc.jpg', '', '', '发布', '腰立辉', '2016-12-13 16:41:13');
INSERT INTO `tp_xl_ad` VALUES ('8', '第4张', '/Ad/2016-11-27/', '583afafcaaa26.jpg', '', '', '发布', '腰立辉', '2016-11-27 23:25:49');
INSERT INTO `tp_xl_ad` VALUES ('9', '第5张', '/Ad/2016-11-27/', '583afb176905b.jpg', '', '', '正常', '腰立辉', '2016-11-27 23:26:15');

-- ----------------------------
-- Table structure for `tp_xl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xl_customer`;
CREATE TABLE `tp_xl_customer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `custype` varchar(5) DEFAULT NULL,
  `isteacher` int(1) DEFAULT '1',
  `coursetype` varchar(5) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `course` varchar(10) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xl_customer
-- ----------------------------
INSERT INTO `tp_xl_customer` VALUES ('1', '15803114069', 'c33367701511b4f6020ec61ded352059', '老师', '1', '中学课程', '孙云云', '/Customer/2016-12-13/', '584fbda821498.png', '发布', '初、高中物理', '孙云云，2007年毕业于河北师范大学，从事教育工作十余年，曾任上海精锐教育集团教研组长，教学校长，所带学生进步率高达100%，多名学生进入上海中学，复旦大学，上海交大等一流学府；', '腰立辉', '梁小伟', '1478415695', '2016-12-13 17:21:44');
INSERT INTO `tp_xl_customer` VALUES ('12', '12314242342', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '小学课程', 'werer', null, null, '正常', '', '', '腰立辉', '腰立辉', '1479042931', '2016-11-13 21:17:14');
INSERT INTO `tp_xl_customer` VALUES ('13', '13931162537', 'f379eaf3c831b04de153469d1bec345e', '学生', '0', '中学课程', '刘一玮（男、44中）', null, null, '发布', '初一数学', '一对二', '梁小伟', '梁小伟', '1479302465', '2016-12-13 17:28:34');
INSERT INTO `tp_xl_customer` VALUES ('14', '15803114068', 'f379eaf3c831b04de153469d1bec345e', '老师', '1', '小学课程', '康国胜', '/Customer/2016-12-13/', '584fc143123a2.jpg', '发布', '小学奥数、初高中物理', '康国胜，2007年毕业于河北师范大学，后进修于河北师范大学教育管理研究生院；从事教育工作十余年，曾任上海精锐集团教研组长，教学校长；邯郸环球雅思校长等教学和管理工作；对教学有自己独到的认识，擅长鼓励教育和引导教学，善于激发学生内在的动力，挖掘最大的潜能', '梁小伟', '梁小伟', '1481619189', '2016-12-13 17:37:07');

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_branch
-- ----------------------------
INSERT INTO `zt_branch` VALUES ('1', '10', '权限后台', '0', null);
INSERT INTO `zt_branch` VALUES ('2', '10', '微网站后台', '0', null);
INSERT INTO `zt_branch` VALUES ('3', '10', '微信服务号（用户）', '0', null);
INSERT INTO `zt_branch` VALUES ('4', '10', '微信服务号（管家）', '0', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_build
-- ----------------------------
INSERT INTO `zt_build` VALUES ('1', '5', '0', '1', 'IOS20170108', '', '', '2017-01-08', '', '', 'jiaxn', '', '0');

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
-- Table structure for `zt_case`
-- ----------------------------
DROP TABLE IF EXISTS `zt_case`;
CREATE TABLE `zt_case` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(30) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
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
INSERT INTO `zt_company` VALUES ('1', '秀丽广告', '', '', '', '', 'http://www.xiuliguanggao.com', '', '0', ',admin,', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
INSERT INTO `zt_cron` VALUES ('1', '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', '1', 'normal', '2017-01-12 09:59:26');
INSERT INTO `zt_cron` VALUES ('2', '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('3', '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('4', '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', '1', 'normal', '2017-01-09 09:20:01');
INSERT INTO `zt_cron` VALUES ('5', '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', '1', 'stop', '0000-00-00 00:00:00');
INSERT INTO `zt_cron` VALUES ('6', '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', '1', 'normal', '2016-07-16 17:07:33');
INSERT INTO `zt_cron` VALUES ('7', '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', '1', 'normal', '2017-01-09 09:20:01');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
INSERT INTO `zt_extension` VALUES ('2', 'Kevin公用函数', 'kevincom', '1.7', 'kevin<3301647@qq.com>', 'kevin 插件的一部分公用函数.', 'ZPL (http://zpl.pub/v1)', 'extension', 'http://kevincom.sourceforge.net/', 'all', '2016-07-06 23:48:44', '', '[\"module\\/kevindevice\\/view\",\"module\\/kevindevice\\/js\",\"module\\/kevindevice\\/lang\",\"config\\/ext\"]', '{\"lib\\\\kevin\\/kevin.class.php\":\"e7707088453c3f5c81c83a7d3662d3b9\",\"lib\\\\kevinchart\\/kevinchart.class.php\":\"48787bb1db515f73babead728279b831\",\"module\\\\common\\\\ext\\\\lang\\\\en\\/kevin.php\":\"53bb13721c7cff437f00cd0c43977a98\",\"module\\\\common\\\\ext\\\\lang\\/kevin.php\":\"3d82cd3109f4dcbcafe3f3b7cf0fff8a\",\"module\\\\common\\\\ext\\\\lang\\\\zh-cn\\/kevin.php\":\"bfde3d686e1e2ca8ebe1d961d61f6dc6\",\"module\\\\common\\\\ext\\\\lang\\\\zh-tw\\/kevin.php\":\"7238002fc25cbb152391779ef873aff1\",\"module\\\\group\\\\ext\\\\lang\\\\en\\/kevin.php\":\"8add6f4b0d8ed89158cbf9aef67c3605\",\"module\\\\group\\\\ext\\\\lang\\/kevin.php\":\"2add67c7a6f80694f42319b4efc732dd\",\"module\\\\group\\\\ext\\\\lang\\\\zh-cn\\/kevin.php\":\"8add6f4b0d8ed89158cbf9aef67c3605\",\"module\\\\group\\\\ext\\\\lang\\\\zh-tw\\/kevin.php\":\"8add6f4b0d8ed89158cbf9aef67c3605\",\"module\\\\kevincom\\/config.php\":\"00f771286a949b03263054c9ddfbdf72\",\"module\\\\kevincom\\/control.php\":\"a01f0e8f208bc9f36cc8a27589615463\",\"module\\\\kevincom\\\\css\\/index.css\":\"48f2096a354de7b098876960b49a413e\",\"module\\\\kevincom\\\\lang\\/en.php\":\"e91b88db3a8a5d75375d53dd1a8fe0d0\",\"module\\\\kevincom\\\\lang\\/zh-cn.php\":\"666038b7366f1429f95dbb6a127e4f26\",\"module\\\\kevincom\\\\lang\\/zh-tw.php\":\"7ca8d0a4c8ff336743d123c2ec5be871\",\"module\\\\kevincom\\/model.php\":\"4fd9aa49984d86ee9191b729a8602ffd\",\"module\\\\kevincom\\\\view\\/index.html.php\":\"f22af8570aa96de658353f92a655851a\",\"www\\\\js\\\\kevin\\/kevin.js\":\"44225d086fd57d2388af8a436cab1cab\"}', 'installed');
INSERT INTO `zt_extension` VALUES ('3', 'Kevin Device', 'kevindevice', '1.2', 'kevin', 'Kevin Device', 'ZPL (http://zpl.pub/v1)', 'extension', '', 'all', '2016-07-06 23:49:10', '{\"kevincom\":{\"min\":1.7,\"max\":\"\"}}', '[]', '{\"config\\\\ext\\/kevindevice.php\":\"4ade64ce9450d3f14f443c88f834cd28\",\"module\\\\common\\\\ext\\\\lang\\\\en\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\common\\\\ext\\\\lang\\/kevindevice.php\":\"4f5766ab29167f0494a50fa2d542cc6c\",\"module\\\\common\\\\ext\\\\lang\\\\zh-cn\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\common\\\\ext\\\\lang\\\\zh-tw\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\group\\\\ext\\\\lang\\\\en\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\group\\\\ext\\\\lang\\/kevindevice.php\":\"ea89e113584034592dd115f17c7bce3f\",\"module\\\\group\\\\ext\\\\lang\\\\zh-cn\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\group\\\\ext\\\\lang\\\\zh-tw\\/kevindevice.php\":\"30bc0d6758cfc1e157aaa368502ed79e\",\"module\\\\kevindevice\\/config.php\":\"dcbebcf8ab3263784a19c8557cfcb40b\",\"module\\\\kevindevice\\/control.php\":\"d0c424753808b3f2e2f3153d77d94c09\",\"module\\\\kevindevice\\\\js\\/common.js\":\"c62dc82ced3de0b4e5a2473c803f6c92\",\"module\\\\kevindevice\\\\lang\\/en.php\":\"aebbd6b465ea2ed326bf7500ab04bfa9\",\"module\\\\kevindevice\\\\lang\\/resource.php\":\"cb45e5b0eb785eb004be0db16cf790ce\",\"module\\\\kevindevice\\\\lang\\/zh-cn.php\":\"eabf37294ca3235581e19b71242231ca\",\"module\\\\kevindevice\\\\lang\\/zh-tw.php\":\"eabf37294ca3235581e19b71242231ca\",\"module\\\\kevindevice\\/model.php\":\"449ce444c0a80eea6a058ea8105f8cd3\",\"module\\\\kevindevice\\\\view\\/devcreate.html.php\":\"b21ebd5bb75a204359a7c93e06dbe69f\",\"module\\\\kevindevice\\\\view\\/devedit.html.php\":\"b2e0ae817b11ba0aec8075b12ebd3d9e\",\"module\\\\kevindevice\\\\view\\/devlist.html.php\":\"1cb8ce3067ffd345b530d7a032d815ed\",\"module\\\\kevindevice\\\\view\\/devlisttablecomputer.html.php\":\"475dad54e7137a09a3bb6e0ff95438e9\",\"module\\\\kevindevice\\\\view\\/devlisttablesimple.html.php\":\"2496939c423510d85f8f51c513fdb664\",\"module\\\\kevindevice\\\\view\\/devview.html.php\":\"bf1520f79ed63c6439601558e2a56cb6\",\"module\\\\kevindevice\\\\view\\/groupcopy.html.php\":\"f9a0d17c4f670a7df7385edee96f540c\",\"module\\\\kevindevice\\\\view\\/groupcreate.html.php\":\"c2cab28207a462e74c62e3496d9b3fb2\",\"module\\\\kevindevice\\\\view\\/groupedit.html.php\":\"9160d078961c852255b13e38e008022e\",\"module\\\\kevindevice\\\\view\\/grouplist.html.php\":\"d30f2b2a9c831cdbb7261d42ff135ff2\",\"module\\\\kevindevice\\\\view\\/groupview.html.php\":\"aa4550d1429689ca779c6a15a28b3bc1\",\"module\\\\kevindevice\\\\view\\/kevindevicebar.html.php\":\"7dd270967cf663ba7922f0dcfd50122f\",\"module\\\\kevindevice\\\\view\\/statistic.html.php\":\"016f2e28ced70104e904e1f3c5375886\",\"module\\\\kevindevice\\\\view\\/statisticdept.html.php\":\"0a9e18a2fce8b3e5f580be90bfe989d3\",\"module\\\\kevindevice\\\\view\\/statisticgroup.html.php\":\"a3181919ef665eb283870e93b48e4a5f\",\"module\\\\kevindevice\\\\view\\/statistictype.html.php\":\"808fbbefa05b2fb42add900c9ed27c21\"}', 'installed');
INSERT INTO `zt_extension` VALUES ('4', 'Kevin表格', 'kevinchart', '1.2', 'Kevin<3301647@qq.com>', 'Kevin表格', 'ZPL (http://zpl.pub/v1)', 'extension', '', 'all', '2016-07-06 23:49:24', '{\"kevincom\":{\"min\":1.7,\"max\":\"\"}}', '[\"module\\/kevinchart\\/view\",\"module\\/kevinchart\\/js\",\"module\\/kevinchart\\/lang\"]', '{\"config\\\\ext\\/kevinchart.php\":\"320d737e8cfa8b4be0d447a307867a30\",\"module\\\\common\\\\ext\\\\lang\\\\en\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\common\\\\ext\\\\lang\\/kevinchart.php\":\"3bee359e2811e2c023591b4cd0e65f91\",\"module\\\\common\\\\ext\\\\lang\\\\zh-cn\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\common\\\\ext\\\\lang\\\\zh-tw\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\group\\\\ext\\\\lang\\\\en\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\group\\\\ext\\\\lang\\/kevinchart.php\":\"8fadfc6294875b8981d740eb1b625170\",\"module\\\\group\\\\ext\\\\lang\\\\zh-cn\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\group\\\\ext\\\\lang\\\\zh-tw\\/kevinchart.php\":\"73c360559b6d093a053ebb65da2614d9\",\"module\\\\kevinchart\\/config.php\":\"08618f607affa5554b82c9cad46d1a2d\",\"module\\\\kevinchart\\/control.php\":\"18a8e44e9d302775ee154c03dc1df2c0\",\"module\\\\kevinchart\\\\js\\/common.js\":\"80521ce6629a406610290c71441abf37\",\"module\\\\kevinchart\\\\lang\\/en.php\":\"b54e679b9b8508e33b1681438f2c6327\",\"module\\\\kevinchart\\\\lang\\/resource.php\":\"05100d4969bf23b1e3fe6a251b3eefb2\",\"module\\\\kevinchart\\\\lang\\/zh-cn.php\":\"eabf37294ca3235581e19b71242231ca\",\"module\\\\kevinchart\\\\lang\\/zh-tw.php\":\"eabf37294ca3235581e19b71242231ca\",\"module\\\\kevinchart\\/model.php\":\"889d8abf2a3c049c08a58ca35223c713\",\"module\\\\kevinchart\\\\view\\/index.html.php\":\"3fd494db9558c85707729ee5e520515b\",\"module\\\\kevinchart\\\\view\\/indexheader.html.php\":\"ee2a8fa62f2087a4f05426036154672a\",\"module\\\\kevinchart\\\\view\\/indexside.html.php\":\"cd1e5ede5994c88942eaf13310227a24\",\"module\\\\kevinchart\\\\view\\/itemlist.html.php\":\"15fbf980446b9033df98962105645e5e\",\"module\\\\kevinchart\\\\view\\/mychart.html.php\":\"2652a1d82cd1202738cec5f70cac2341\",\"module\\\\kevinchart\\\\view\\/periodheader.html.php\":\"90f8e01eca7f25ad7242603c06dc15d3\",\"module\\\\kevinchart\\\\view\\/view.html.php\":\"07b021cd3f82e54f155132932e5e5d28\"}', 'installed');
INSERT INTO `zt_extension` VALUES ('5', 'Kevin 日历', 'kevincalendar', '1.5', 'kevin<3301647@qq.com>', '自定义日历假期，日历视图显示，显示待办信息.', 'unknown', 'extension', '', 'all', '2016-07-06 23:50:09', '{\"kevincom\":{\"min\":1.6,\"max\":\"\"}}', '[\"module\\/kevincalendar\\/view\",\"module\\/kevincalendar\\/js\",\"module\\/kevincalendar\\/lang\",\"module\\/kevincalendar\\/css\"]', '{\"config\\\\ext\\/kevincalendar.php\":\"e4db38c783b0ed95cc5516a37cfbb0b1\",\"module\\\\common\\\\ext\\\\lang\\\\en\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\common\\\\ext\\\\lang\\/kevincalendar.php\":\"f25b7f3086bc2a33c2815d9be0a3979f\",\"module\\\\common\\\\ext\\\\lang\\\\zh-cn\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\common\\\\ext\\\\lang\\\\zh-tw\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\group\\\\ext\\\\lang\\\\en\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\group\\\\ext\\\\lang\\/kevincalendar.php\":\"ff4f33d61db702a4707666788b2b6375\",\"module\\\\group\\\\ext\\\\lang\\\\zh-cn\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\group\\\\ext\\\\lang\\\\zh-tw\\/kevincalendar.php\":\"556fe6c50eab798ca073c3fd71899aea\",\"module\\\\kevincalendar\\/config.php\":\"2fb24ff71dc59573d218f9c076ebe9dc\",\"module\\\\kevincalendar\\/control.php\":\"e7da666ce1bb4f54905ff64bad9727b6\",\"module\\\\kevincalendar\\\\css\\/common.css\":\"6fb021ee75626e30361a9629272fe4c7\",\"module\\\\kevincalendar\\\\css\\/todo.css\":\"2151bc2c0e67f7a90225581e4f5d01b4\",\"module\\\\kevincalendar\\\\js\\/common.js\":\"d54f9b311891b5ed31d6c6c4a259b8b3\",\"module\\\\kevincalendar\\\\lang\\/en.php\":\"52af6e7eca10274deedf594084f643a1\",\"module\\\\kevincalendar\\\\lang\\/zh-cn.php\":\"5878c12406a12997a4e814fa946af959\",\"module\\\\kevincalendar\\\\lang\\/zh-tw.php\":\"80b03ac46b719874138872e6eea521b9\",\"module\\\\kevincalendar\\/model.php\":\"1ccbb4e85edecfa3f0a60d5f7807e9ad\",\"module\\\\kevincalendar\\\\view\\/batchcreate.html.php\":\"c4c194d3e9cb9dde3c352ee20c688e8b\",\"module\\\\kevincalendar\\\\view\\/create.html.php\":\"acaff413662e65cd9bd7b3fe44e2ac57\",\"module\\\\kevincalendar\\\\view\\/edit.html.php\":\"76aefeb45dfa507a4e832a9267ebd0e4\",\"module\\\\kevincalendar\\\\view\\/index.html.php\":\"acf8a5e6a3b138a37cc0c6e140050305\",\"module\\\\kevincalendar\\\\view\\/lists.html.php\":\"c71b576b084ad6f2739a2e46a1230675\",\"module\\\\kevincalendar\\\\view\\/log.html.php\":\"ce93b2fe1202420a19f8dcaf714f8e6d\",\"module\\\\kevincalendar\\\\view\\/titlebar.html.php\":\"3ae3c99f702d8b43444cf783f60a9418\",\"module\\\\kevincalendar\\\\view\\/todo.html.php\":\"577a3d247831abd0e8e62a935286f097\"}', 'installed');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_file
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_history
-- ----------------------------
INSERT INTO `zt_history` VALUES ('1', '21', 'assignedTo', 'jiaxn', 'liangxw', '');

-- ----------------------------
-- Table structure for `zt_kevin_chartexample`
-- ----------------------------
DROP TABLE IF EXISTS `zt_kevin_chartexample`;
CREATE TABLE `zt_kevin_chartexample` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `start` int(6) unsigned NOT NULL DEFAULT '0',
  `total` int(6) unsigned NOT NULL DEFAULT '0',
  `monitor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zt_kevin_chartexample
-- ----------------------------
INSERT INTO `zt_kevin_chartexample` VALUES ('1', '1446630600', '1200', '632');
INSERT INTO `zt_kevin_chartexample` VALUES ('2', '1446631800', '540', '302');
INSERT INTO `zt_kevin_chartexample` VALUES ('3', '1446632400', '790', '427');
INSERT INTO `zt_kevin_chartexample` VALUES ('4', '1446633000', '1198', '631');
INSERT INTO `zt_kevin_chartexample` VALUES ('5', '1446633600', '692', '378');
INSERT INTO `zt_kevin_chartexample` VALUES ('6', '1446634200', '656', '360');
INSERT INTO `zt_kevin_chartexample` VALUES ('7', '1446634800', '924', '494');
INSERT INTO `zt_kevin_chartexample` VALUES ('8', '1446635400', '102', '83');
INSERT INTO `zt_kevin_chartexample` VALUES ('9', '1446636600', '636', '350');
INSERT INTO `zt_kevin_chartexample` VALUES ('10', '1446637200', '792', '428');
INSERT INTO `zt_kevin_chartexample` VALUES ('11', '1446637800', '226', '145');
INSERT INTO `zt_kevin_chartexample` VALUES ('12', '1446638400', '970', '517');
INSERT INTO `zt_kevin_chartexample` VALUES ('13', '1446639000', '1138', '601');
INSERT INTO `zt_kevin_chartexample` VALUES ('14', '1446639600', '338', '201');
INSERT INTO `zt_kevin_chartexample` VALUES ('15', '1446640800', '974', '519');
INSERT INTO `zt_kevin_chartexample` VALUES ('16', '1446641400', '982', '523');
INSERT INTO `zt_kevin_chartexample` VALUES ('17', '1446698232', '34', '49');
INSERT INTO `zt_kevin_chartexample` VALUES ('18', '1446698400', '30', '47');
INSERT INTO `zt_kevin_chartexample` VALUES ('19', '1446699000', '206', '135');
INSERT INTO `zt_kevin_chartexample` VALUES ('20', '1446699600', '24', '44');
INSERT INTO `zt_kevin_chartexample` VALUES ('21', '1446700200', '1190', '627');
INSERT INTO `zt_kevin_chartexample` VALUES ('22', '1446700800', '960', '512');
INSERT INTO `zt_kevin_chartexample` VALUES ('23', '1446701400', '1026', '545');
INSERT INTO `zt_kevin_chartexample` VALUES ('24', '1446702000', '464', '264');
INSERT INTO `zt_kevin_chartexample` VALUES ('25', '1446702600', '558', '311');
INSERT INTO `zt_kevin_chartexample` VALUES ('26', '1446703200', '408', '236');
INSERT INTO `zt_kevin_chartexample` VALUES ('27', '1446703800', '44', '54');
INSERT INTO `zt_kevin_chartexample` VALUES ('28', '1446705600', '18', '41');
INSERT INTO `zt_kevin_chartexample` VALUES ('29', '1446706200', '888', '476');
INSERT INTO `zt_kevin_chartexample` VALUES ('30', '1446706800', '778', '421');
INSERT INTO `zt_kevin_chartexample` VALUES ('31', '1446707400', '914', '489');
INSERT INTO `zt_kevin_chartexample` VALUES ('32', '1446711600', '36', '50');
INSERT INTO `zt_kevin_chartexample` VALUES ('33', '1446712200', '768', '416');
INSERT INTO `zt_kevin_chartexample` VALUES ('34', '1446712800', '1038', '551');
INSERT INTO `zt_kevin_chartexample` VALUES ('35', '1446713400', '150', '107');
INSERT INTO `zt_kevin_chartexample` VALUES ('36', '1446714000', '1034', '549');
INSERT INTO `zt_kevin_chartexample` VALUES ('37', '1446714600', '884', '474');
INSERT INTO `zt_kevin_chartexample` VALUES ('38', '1446715200', '1200', '632');
INSERT INTO `zt_kevin_chartexample` VALUES ('39', '1446715800', '1200', '632');
INSERT INTO `zt_kevin_chartexample` VALUES ('40', '1446716400', '812', '438');
INSERT INTO `zt_kevin_chartexample` VALUES ('41', '1446717000', '416', '240');
INSERT INTO `zt_kevin_chartexample` VALUES ('42', '1446717600', '768', '416');
INSERT INTO `zt_kevin_chartexample` VALUES ('43', '1446718200', '432', '248');
INSERT INTO `zt_kevin_chartexample` VALUES ('44', '1446718800', '204', '134');
INSERT INTO `zt_kevin_chartexample` VALUES ('45', '1446719400', '168', '116');
INSERT INTO `zt_kevin_chartexample` VALUES ('46', '1446720000', '36', '50');

-- ----------------------------
-- Table structure for `zt_kevincalendar`
-- ----------------------------
DROP TABLE IF EXISTS `zt_kevincalendar`;
CREATE TABLE `zt_kevincalendar` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `calendar` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` enum('nor','hol','law') NOT NULL DEFAULT 'nor',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zt_kevincalendar
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_lang
-- ----------------------------

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
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(60) NOT NULL DEFAULT '',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `short` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`root`,`type`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_module
-- ----------------------------
INSERT INTO `zt_module` VALUES ('1', '3', '0', '后台', '0', ',1,', '1', '10', 'story', '', '');
INSERT INTO `zt_module` VALUES ('2', '3', '0', '前台', '0', ',2,', '1', '20', 'story', '', '');
INSERT INTO `zt_module` VALUES ('3', '3', '0', '登录', '1', ',1,3,', '2', '10', 'story', '', '');
INSERT INTO `zt_module` VALUES ('4', '3', '0', '首页', '1', ',1,4,', '2', '20', 'story', '', '');
INSERT INTO `zt_module` VALUES ('5', '3', '0', '首页', '2', ',2,5,', '2', '10', 'story', '', '');
INSERT INTO `zt_module` VALUES ('6', '3', '0', '关于我们', '2', ',2,6,', '2', '20', 'story', '', '');
INSERT INTO `zt_module` VALUES ('7', '3', '0', '产品列表', '2', ',2,7,', '2', '30', 'story', '', '');
INSERT INTO `zt_module` VALUES ('8', '3', '0', '产品详情', '2', ',2,8,', '2', '40', 'story', '', '');

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
  `adder` varchar(10) DEFAULT NULL COMMENT '添加者',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `record` varchar(15) DEFAULT NULL COMMENT '备案号',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_product
-- ----------------------------
INSERT INTO `zt_product` VALUES ('1', '秀丽广告', 'Xiuli', 'normal', 'normal', '', 'zhangxl', 'jiaxn', 'yaolh', 'private', '', 'admin', '2017-01-08 22:23:39', '8.2.4', '5', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_product` VALUES ('2', '拓才教育', 'Tuocai', 'normal', 'normal', '', 'liangxw', 'jiaxn', 'yaolh', 'private', '', 'admin', '2017-01-08 22:24:09', '8.2.4', '10', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_product` VALUES ('3', '麦田双辉', 'Mtsh', 'normal', 'normal', '', 'yangyh', 'jiaxn', 'yaolh', 'private', '', 'admin', '2017-01-08 22:24:52', '8.2.4', '15', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_product` VALUES ('4', '安顺汽修', 'Anshun', 'normal', 'normal', '', 'wangxl', 'jiaxn', 'yaolh', 'private', '', 'admin', '2017-01-08 22:25:22', '8.2.4', '20', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_product` VALUES ('5', '测试平台', 'Test', 'normal', 'normal', '', 'yaolh', 'jiaxn', 'yaolh', 'private', '', 'yaolh', '2017-01-08 22:29:58', '8.2.4', '25', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_product` VALUES ('10', '太平洋加达软件产品', 'PJD', 'platform', 'normal', '', 'dengye', 'yao', 'jeff', 'private', '', 'yao', '2016-12-20 10:44:17', '8.2.4', '50', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_productplan
-- ----------------------------

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
  `prodid` smallint(6) DEFAULT NULL,
  `testgp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project` (`parent`,`begin`,`end`,`status`,`order`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_project
-- ----------------------------
INSERT INTO `zt_project` VALUES ('2', '0', '0', 'sprint', '0', '测试平台 V1.0', '111', '2017-01-08', '2017-01-15', '5', 'wait', '1', '1', 'qwuyequiwyeiqu', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', 'qwewq', 'private', '', '5', '0', null, null);
INSERT INTO `zt_project` VALUES ('1', '0', '0', 'sprint', '0', '海房项目', '001', '2016-08-04', '2016-08-18', '11', 'done', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '海房项目', 'open', '', '5', '0', null, null);
INSERT INTO `zt_project` VALUES ('7', '0', '0', 'sprint', '0', '统一资源权限系统1.0', '1.0', '2016-11-29', '2016-12-13', '11', 'suspended', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '统一资源权限系统1.0', 'private', '', '35', '0', null, null);
INSERT INTO `zt_project` VALUES ('8', '0', '0', 'sprint', '0', '12.20：公司名片和商务合作', 'PJD1612.1', '2016-12-05', '2016-12-21', '13', 'doing', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', 'lily_deng', 'yao', 'benjamin', 'yangyi', '公司名片和商务合作', 'private', '', '40', '1', null, null);
INSERT INTO `zt_project` VALUES ('9', '0', '0', 'sprint', '0', '微网站1月份上线', 'PJD1612.6', '2016-12-21', '2017-01-10', '15', 'done', '1', '1', '<p>1.微网站登录</p>\n<p>&nbsp;2.移民项目</p>\n<p>&nbsp;3.专享活动</p>\n<p>&nbsp;4.生活体验&nbsp;</p>\n<p>5.移民评估&nbsp;</p>\n<p>6.国家管理</p>\n<p>&nbsp;7.微网站后台修改个人密码</p>\n<p>&nbsp;8.公司名片的项目列表，加载后台项目管理的项目，且添加项目详情的链接 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '', '0', '8.2.4', '', '0', '', '0', 'dengye', 'Wain', 'yao', 'jeff', 'PJD', 'private', '', '45', '0', null, null);
INSERT INTO `zt_project` VALUES ('10', '0', '0', 'sprint', '0', '顾问名片优化', '互联网', '2016-12-27', '2017-01-20', '19', 'wait', '1', '1', '', '', '0', '8.2.4', '', '0', '', '0', '', '', '', '', '顾问名片优化', 'private', '', '50', '0', null, null);

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
INSERT INTO `zt_projectproduct` VALUES ('1', '5', '0');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_release
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_story
-- ----------------------------
INSERT INTO `zt_story` VALUES ('1', '5', '0', '0', '', '', '', '0', 'asdadsa', '', '', '0', '0', 'active', '', 'wait', '', 'admin', '2017-01-08 22:39:56', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00', '', '0000-00-00 00:00:00', '', '0', '', '', '0', '1', '0');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_task
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_taskestimate
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_todo
-- ----------------------------

-- ----------------------------
-- Table structure for `zt_user`
-- ----------------------------
DROP TABLE IF EXISTS `zt_user`;
CREATE TABLE `zt_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `role` char(10) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '',
  `nickname` char(60) NOT NULL DEFAULT '',
  `commiter` varchar(100) NOT NULL,
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `gender` enum('f','m') NOT NULL DEFAULT 'f',
  `email` char(90) NOT NULL DEFAULT '',
  `skype` char(90) NOT NULL DEFAULT '',
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `address` char(120) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `last` int(10) unsigned NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `user` (`dept`,`email`,`commiter`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_user
-- ----------------------------
INSERT INTO `zt_user` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '5', '127.0.0.1', '1483885996', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('2', '6', 'yaolh', 'c33367701511b4f6020ec61ded352059', 'dev', '腰立辉', '', '', '', '0000-00-00', 'm', '83000892@qq.com', '', '83000892', '', '', '', '18801043607', '', '', '', '2017-01-08', '5', '119.61.24.226', '1484186379', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('3', '6', 'jiaxn', 'e10adc3949ba59abbe56e057f20f883e', 'qa', '贾晓宁', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('4', '1', 'zhangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '张秀丽', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('5', '2', 'masf', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '马双峰', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('6', '3', 'liangxw', 'e10adc3949ba59abbe56e057f20f883e', 'po', '梁小伟', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('7', '4', 'liuyj', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '刘燕军', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('8', '5', 'wangxl', 'e10adc3949ba59abbe56e057f20f883e', 'po', '王晓亮', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('9', '5', 'jiaxy', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '贾晓月', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('10', '1', 'yaojq', 'e10adc3949ba59abbe56e057f20f883e', 'pm', '腰建强', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('11', '6', 'xingl', 'e10adc3949ba59abbe56e057f20f883e', 'dev', '邢丽', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '0', '', '0', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `zt_user` VALUES ('12', '2', 'yangyh', 'e10adc3949ba59abbe56e057f20f883e', 'po', '杨艳辉', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '2017-01-08', '1', '127.0.0.1', '1483885906', '0', '0000-00-00 00:00:00', '', '0');

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
INSERT INTO `zt_usergroup` VALUES ('masf', '4');
INSERT INTO `zt_usergroup` VALUES ('wangxl', '5');
INSERT INTO `zt_usergroup` VALUES ('xingl', '2');
INSERT INTO `zt_usergroup` VALUES ('yangyh', '5');
INSERT INTO `zt_usergroup` VALUES ('yaojq', '4');
INSERT INTO `zt_usergroup` VALUES ('yaolh', '1');
INSERT INTO `zt_usergroup` VALUES ('yaolh', '2');
INSERT INTO `zt_usergroup` VALUES ('zhangxl', '5');

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
