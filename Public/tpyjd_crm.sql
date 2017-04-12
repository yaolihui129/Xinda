/*
Navicat MySQL Data Transfer

Source Server         : 192.168.21.10
Source Server Version : 50630
Source Host           : 192.168.21.10:3306
Source Database       : tpyjd_crm

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-04-12 18:38:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `console_user`
-- ----------------------------
DROP TABLE IF EXISTS `console_user`;
CREATE TABLE `console_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(32) NOT NULL COMMENT '登录名称，要保证唯一性',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户姓名',
  `english_name` varchar(50) DEFAULT NULL COMMENT '用户英文名',
  `password` varchar(128) DEFAULT NULL COMMENT '用户密码',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '用户昵称',
  `com_id` int(11) DEFAULT NULL COMMENT '公司ID',
  `dep_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `gender` varchar(20) DEFAULT NULL COMMENT '性别  1 男 2  女',
  `phone` varchar(128) DEFAULT NULL COMMENT '座机',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq号码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `head_img` varchar(256) DEFAULT NULL COMMENT '头像',
  `introduce` varchar(512) DEFAULT NULL COMMENT '个人介绍',
  `note` varchar(256) DEFAULT NULL COMMENT '备注信息（备用）',
  `province_id` varchar(50) DEFAULT NULL COMMENT '省份',
  `city_id` varchar(50) DEFAULT NULL COMMENT '城市',
  `district` varchar(50) DEFAULT NULL COMMENT '街区',
  `sort` int(11) DEFAULT NULL COMMENT '用户排序号(备用)',
  `address` varchar(256) DEFAULT NULL COMMENT '地址（备用）',
  `delete_flag` int(1) DEFAULT '0' COMMENT '删除标识    未删除 , 已经删除',
  `create_user` char(21) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_number` varchar(50) DEFAULT NULL COMMENT '工号',
  `update_user` char(21) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wechat` varchar(300) DEFAULT NULL COMMENT '微信',
  `job_title` varchar(50) DEFAULT NULL COMMENT '职称',
  `data_range` char(20) DEFAULT '0' COMMENT '数据分流标识 0:所有数据 1:自身及部门以下所有数据（分配及未分配） 2：自身及未被分配的数据 3：分配给自身的数据',
  `seat_number` varchar(50) DEFAULT NULL COMMENT '坐席号',
  `openid` varchar(128) DEFAULT NULL COMMENT '绑定公众号的openid',
  `bind_status` varchar(20) DEFAULT '0' COMMENT '是否绑定微信openid',
  `frozen` int(1) DEFAULT '0' COMMENT '冻结',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of console_user
-- ----------------------------
INSERT INTO `console_user` VALUES ('1', 'admin', '超级管理员', 'jeff', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '1', 'MALE', '18630680889', null, '1111111123', null, 'wupeng@tset.com', 'http://tpyjd-10066870.image.myqcloud.com/47b7c01a-e1a5-4e78-b980-9ec62786ea4d', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', null, '2016-12-21 18:42:59', null, '超级管理员', '2016-11-18 16:36:05', '2222222', '资深管理员', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('2', 'admin1', '管理员1', null, '21218cca77804d2ba1922c33e0151105', null, '16', '16', 'MALE', '18600812648', null, null, null, '187320223@qq.com', null, null, 'liuguodong', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '2016-07-29 09:21:04', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('3', 'admin2', '管理员2', null, '21218cca77804d2ba1922c33e0151105', null, '12', '12', 'MALE', '13622222222', null, null, null, '17812655@qq.com', null, null, '', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, '超级管理员', '2016-08-09 15:40:24', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('4', 'test06123', '刘国栋', null, '21218cca77804d2ba1922c33e0151105', null, '12', '12', 'MALE', '18522021214', null, null, null, '187320222@qq.com', null, null, '', null, null, null, null, null, '1', '刘国栋', '2016-12-15 17:42:32', null, '超级管理员', '2016-08-09 15:40:06', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('5', 'tiger', '刘国栋', null, '21218cca77804d2ba1922c33e0151105', null, '36', '36', 'MALE', '18600812640', null, null, null, 'tiger@yimin.la', null, null, '', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('6', 'julia', '景德君', null, '21218cca77804d2ba1922c33e0151105', null, '25', '25', 'FEMALE', '13910937588', null, null, null, 'julia@yimin.la', null, null, '', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('7', 'elliot', '朱望平', null, '21218cca77804d2ba1922c33e0151105', null, '25', '25', 'MALE', '13911852829', null, null, null, 'elliot@yimin.la', null, null, '总经理', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('8', 'leo', '李俊', null, '21218cca77804d2ba1922c33e0151105', null, '25', '25', 'MALE', '15810423673', null, null, null, 'leo@yimin.la', null, null, '总裁助理', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('9', 'snow', '石诺', null, '21218cca77804d2ba1922c33e0151105', null, '26', '26', 'FEMALE', '18513995355', null, null, null, 'snow@yimin.la', null, null, '副总裁', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('10', 'barbra', '白濛', null, '21218cca77804d2ba1922c33e0151105', null, '26', '26', 'FEMALE', '18513991633', null, null, null, 'barbra@yimin.la', null, null, '欧洲项目经理', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('11', 'yan', '颜秉刚', null, '21218cca77804d2ba1922c33e0151105', null, '33', '33', 'MALE', '18513992355', null, null, null, 'yan@yimin.la', null, null, '行政部副经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:41:40', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('12', 'judygao', '郜秋荣', null, '21218cca77804d2ba1922c33e0151105', null, '26', '26', 'MALE', '18513990877', null, null, null, 'judy_gao@yimin.la', null, null, '美国项目经理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:54:11', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('13', 'zack', '何由之', '1423', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '18515237572', null, '12341', null, 'zack@yimin.la', '', null, '项目专员', '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-19 17:52:58', '0090', '超级管理员', '2016-12-19 17:52:58', '12341234', '13123', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('14', 'coco', '邸亚飞', null, '21218cca77804d2ba1922c33e0151105', null, '33', '33', 'FEMALE', '17310051993', null, null, null, 'tu@yimin.la', null, null, '行政前台', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('15', 'sunshine', '王丽丽', null, '21218cca77804d2ba1922c33e0151105', null, '33', '33', 'FEMALE', '15811179059', null, null, null, 'sunshine@yimin.la', null, null, '行政前台', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('16', 'karen', '王瑞', null, '21218cca77804d2ba1922c33e0151105', null, '33', '33', 'MALE', '18513998277', null, null, null, 'karen_wang@yimin.la', null, null, '行政专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('17', 'yang', '杨洋', null, '21218cca77804d2ba1922c33e0151105', null, '33', '33', 'MALE', '18513991233', null, null, null, 'yang@yimin.la', null, null, '网络管理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('18', 'amy', '周婷婷', null, '21218cca77804d2ba1922c33e0151105', null, '34', '34', 'FEMALE', '18513997155', null, null, null, 'amy@yimin.la', null, null, 'amy@yimin.la', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('19', 'tina', '梁影', null, '21218cca77804d2ba1922c33e0151105', null, '34', '34', 'FEMALE', '13522170110', null, null, null, 'tina@yimin.la', null, null, '客服经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('20', 'alisa', '狄春祥', null, '21218cca77804d2ba1922c33e0151105', null, '34', '34', 'FEMALE', '18513996255', null, null, null, 'alisa@yimin.la', null, null, '客服助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('21', 'cynthia', '陈国凤', null, '21218cca77804d2ba1922c33e0151105', null, '34', '34', 'MALE', '18513992911', null, null, null, 'cynthia@yimin.la', null, null, '客服助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('22', 'zoey', '林苏莹', null, '21218cca77804d2ba1922c33e0151105', null, '26', '26', 'MALE', '18513996833', null, null, null, 'zoey@yimin.la', null, null, '项目专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('23', 'nadia', '蔡晓唯', null, '21218cca77804d2ba1922c33e0151105', null, '26', '26', 'MALE', '18513997377', null, null, null, 'nadia@yimin.la', null, null, '欧洲项目经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('24', 'happy', '邹海平', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513992977', null, null, null, 'happy@yimin.la', null, null, '初级渠道专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('25', 'nancy', '戴默', null, '21218cca77804d2ba1922c33e0151105', null, '27', '27', 'MALE', '13810705696', null, null, null, 'nancy_dai@yimin.la', null, null, '顾问助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('26', 'rex', '关书舟', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513995211', null, null, null, 'rex@yimin.la', null, null, '初级渠道专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('27', 'wendy', '刘雯', 'Wendy', '21218cca77804d2ba1922c33e0151105', null, '1', '27', 'FEMALE', '18513998255', null, '12434545', null, 'wendy@yimin.la', '', '服务理念：全心全意为客户提供移民服务，用我的专业为您的移民保驾护航！', '顾问', '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-22 10:28:31', '2', '超级管理员', '2016-12-21 12:12:40', '1', '资深移民专家', '0', null, '', '1', '0');
INSERT INTO `console_user` VALUES ('28', 'david', '胡旭', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513995655', null, null, null, 'sy_david@yimin.la', null, null, '高级渠道专员兼司机', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('29', 'adawu', '吴颖', null, '21218cca77804d2ba1922c33e0151105', null, '27', '27', 'FEMALE', '13811390527', null, null, null, 'ada_wu@yimin.la', null, null, '顾问助理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:55:07', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('30', 'tim', '郝辰杰', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18201012646', null, null, null, 'tim@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('31', 'lily', '范诗绮', 'Lily', '21218cca77804d2ba1922c33e0151105', null, '1', '27', 'FEMALE', '13691318477', null, '12434545', null, 'lily@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/f2ba1b75-9e33-41fc-8285-bf040761ffea', '服务理念：耐心细心用心，从客户切身利益出发', '顾问', '0003000200010001', '00030002000100010001', null, null, null, '0', '超级管理员', '2017-03-08 11:53:06', '1', '超级管理员', '2017-03-08 11:53:06', 'http://tpyjd-10066870.image.myqcloud.com/9c1fc9cf-145e-4aec-9254-1b4620d49cee', '资深移民专家', '0', null, '', '1', '0');
INSERT INTO `console_user` VALUES ('32', 'ida', '边冀', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513991355', null, null, null, 'Ida@yimin.la', null, null, '初级渠道专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('33', 'rey', '石锐', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513992655', null, null, null, 'rey@yimin.la', null, null, '高级渠道经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('34', 'michelle', '李影', null, '21218cca77804d2ba1922c33e0151105', null, '27', '27', 'FEMALE', '18513992577', null, null, null, 'michelle@yimin.la', null, null, '顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('35', 'kevin', '崔伟', null, '21218cca77804d2ba1922c33e0151105', null, '35', '35', 'MALE', '18513990155', null, null, null, 'kevin@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('36', 'serena', '梁婧', null, '21218cca77804d2ba1922c33e0151105', null, '27', '27', 'FEMALE', '18513991077', null, null, null, 'serena@yimin.la', null, null, '顾问助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('37', 'ada', '刘红利', null, '21218cca77804d2ba1922c33e0151105', null, '27', '27', 'FEMALE', '13810326257', null, null, null, 'ada@yimin.la', null, null, '初级顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('38', 'danny', '张丹', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '13811925571', null, null, null, 'danny@yimin.la', null, null, '留学部总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('39', '张敏', 'daisyzh', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '18513991811', null, null, null, 'daisy_zhang@yimin.la', null, null, '留学项目部经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('40', 'frieda', '沈洪芳', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '18513991655', null, null, null, 'frieda@yimin.la', null, null, '留学部文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('41', 'sissie', '李烨', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '18513998677', null, null, null, 'sissie@yimin.la', null, null, '留学项目部', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('42', 'stephanie', '孙慧菲', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '18513990622', null, null, null, 'stephanie@yimin.la', null, null, '留学部顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('43', 'gene', '纪英涛', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'MALE', '18888820615', null, null, null, 'gene@yimin.la', null, null, '留学部总经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('44', 'jeannie', '王静', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'FEMALE', '18513992611', null, null, null, 'jeannie@yimin.la', null, null, '留学部顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('45', 'daisy', '姚云鹏', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'MALE', '15901536644', null, null, null, 'daisy@yimin.la', null, null, '留学部顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('46', 'lvy', '吕杨', null, '21218cca77804d2ba1922c33e0151105', null, '28', '28', 'MALE', '13811431783', null, null, null, 'lvy@yimin.la', null, null, '留学部市场', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('47', 'betty', '白莹', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'FEMALE', '18513992322', null, null, null, 'betty@yimin.la', null, null, '运营总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('48', 'iris', '吕佳恩', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'FEMALE', '18513996233', null, null, null, 'iris@yimin.la', null, null, '海外项目专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('49', 'evagao', '高运彩', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'FEMALE', '18513996511', null, null, null, 'eva_gao@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('50', 'vance', '王思程', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'MALE', '18513996355', null, null, null, 'vance@yimin.la', null, null, '运营总监助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('51', 'mayumi', '中村真由美', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'FEMALE', '18513996155', null, null, null, 'mayumi@yimin.la', null, null, '海外项目专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('52', 'ecco', '代海琴', null, '21218cca77804d2ba1922c33e0151105', null, '29', '29', 'FEMALE', '18513996822', null, null, null, 'ecco@yimin.la', null, null, '海外项目专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('53', 'sara', '郑海霞', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513992955', null, null, null, 'sara@yimin.la', null, null, '见习资深投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('54', 'lucy', '张莹', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '15010218831', null, null, null, 'lucy@yimin.la', null, null, '投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('55', 'twinkle', '任佳佳', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18610957395', null, null, null, 'twinkle@yimin.la', null, null, '初级文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('56', 'daisy2', '俞海芬', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513998511', null, null, null, 'daisy2@yimin.la', null, null, '投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('57', 'lydiawang', '王丽华', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '17746557101', null, null, null, 'lydia_wang@yimin.la', null, null, '投资文案助理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:50:06', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('58', 'amyjin', '金宁宁', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '15811433753', null, null, null, 'amy_jin@yimin.la', null, null, '投资文案助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('59', 'olivia', '王峰', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513991822', null, null, null, 'olivia@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('60', 'dana', '李丹丹', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513992622', null, null, null, 'dana@yimin.la', null, null, '资深投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('61', 'bella', '杨光', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18600577967', null, null, null, 'bella@yimin.la', null, null, '技术文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('62', 'fanny', '王晨晨', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '13522331154', null, null, null, 'fanny@yimin.la', null, null, '投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('63', 'sandy', '齐天山', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18710286269', null, null, null, 'sandy@yimin.la', null, null, '移民文案助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('64', 'lacy', '朱志乐', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'MALE', '18513998177', null, null, null, 'lacy@yimin.la', null, null, 'CP', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('65', 'yarina', '金岩', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18810478626', null, null, null, 'yarina@yimin.la', null, null, '投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('66', 'Jenny', '郝杰', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513998122', null, null, null, 'Jenny@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('67', 'cherry', '赵蕊', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513995611', null, null, null, 'cherry@yimin.la', null, null, '投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('68', 'grace', '梁广慧', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'FEMALE', '18513998977', null, null, null, 'grace@yimin.la', null, null, '资深投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('69', 'mayer', '马云雷', null, '21218cca77804d2ba1922c33e0151105', null, '40', '40', 'MALE', '18513998577', null, null, null, 'mayer@yimin.la', null, null, 'CP', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('70', 'nancy2', '石耀阁', null, '21218cca77804d2ba1922c33e0151105', null, '41', '41', 'MALE', '18310265609', null, null, null, 'nancy2@yimina.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('71', '18513998655', '张菱', null, '21218cca77804d2ba1922c33e0151105', null, '30', '30', 'FEMALE', '18513998655', null, null, null, 'catherine@yimin.la', null, null, '文案总监', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:50:30', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('72', 'Helenwang', '王继宏', null, '21218cca77804d2ba1922c33e0151105', null, '41', '41', 'FEMALE', '18513998611', null, null, null, 'Helen_wang@yimin.la', null, null, '见习高级美投文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('73', 'karen2', '郭莹莹', null, '21218cca77804d2ba1922c33e0151105', null, '42', '42', 'FEMALE', '18811210649', null, null, null, 'karen2@yimin.la', null, null, '欧洲技术文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('74', 'tessa', '王晋芳', null, '21218cca77804d2ba1922c33e0151105', null, '42', '42', 'FEMALE', '18335833367', null, null, null, 'tessa@yimin.la', null, null, '文案助理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:50:37', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('75', 'nancyhe', '何楠', null, '21218cca77804d2ba1922c33e0151105', null, '42', '42', 'FEMALE', '18222108326', null, null, null, 'nancy_he@yimin.la', null, null, '投资文案助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('76', 'lynnlin', '林琼', null, '21218cca77804d2ba1922c33e0151105', null, '42', '42', 'FEMALE', '18513998633', null, null, null, 'lynn_lin@yimin.la', null, null, '见习中级资深投资文案', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('77', 'florafan', '范禹彤', null, '21218cca77804d2ba1922c33e0151105', null, '42', '42', 'FEMALE', '18643770847', null, null, null, 'flora_fan@yimin.la', null, null, '技术文案助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('78', 'gracewang', '王瑶', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'MALE', '18513992855', null, null, null, 'grace_wang@yimin.la', null, null, '财务总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('79', 'chenya', '陈亚', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'FEMALE', '13672075067', null, null, null, 'chenya@yimin.la', null, null, '实习会计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('80', 'aimee', '杨彩云', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'FEMALE', '18811531969', null, null, null, 'aimee@yimin.la', null, null, '实习会计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('81', 'arr', '刘雅方', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'FEMALE', '18611960323', null, null, null, 'arry@yimin.la', null, null, '出纳', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('82', 'xieyuanyuan', '解园园', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'FEMALE', '15210731345', null, null, null, 'xieyuanyuan@yimin.la', null, null, '会计', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:54:34', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('83', 'hedy', '李晓青', null, '21218cca77804d2ba1922c33e0151105', null, '31', '31', 'FEMALE', '13810633671', null, null, null, 'hedy@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('84', 'Ella', '吕晓霞', 'ella', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'FEMALE', '18210137741', null, '234234', null, 'ella@yimin.la', '', null, '员工关系专员', '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-20 17:06:00', '342', '超级管理员', '2016-12-20 17:06:00', 'dfsdf', '人力', '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('85', 'emily', '韩文红', null, '21218cca77804d2ba1922c33e0151105', null, '32', '32', 'FEMALE', '18511792497', null, null, null, 'emily@yimin.la', null, null, '招聘经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('86', 'phoebe', '郭月梅', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'MALE', '15010103286', null, null, null, 'phoebe@yimin.la', null, null, '策划', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('87', 'harry', '徐正华', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'MALE', '13641187215', null, null, null, 'harry@yimin.la', null, null, '品牌策划主管', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('88', 'clover', '匡倩茹', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'FEMALE', '13466370108', null, null, null, 'clover@yimin.la', null, null, '平面设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('89', 'rachel', '张莉', null, '21218cca77804d2ba1922c33e0151105', null, '32', '32', 'FEMALE', '18513992677', null, null, null, 'rachel@yimin.la', null, null, '行政人力总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('90', 'kellyzhang', '张明明', null, '21218cca77804d2ba1922c33e0151105', null, '32', '32', 'MALE', '13552963162', null, null, null, 'kelly_zhang@yimin.la', null, null, '招聘主管', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:54:41', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('91', 'vicky', '丛维家', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'MALE', '13581809802', null, null, null, 'vicky_cong@yimin.la', null, null, '平面设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('92', 'elva', '刘杨', null, '21218cca77804d2ba1922c33e0151105', null, '32', '32', 'MALE', '15010684886', null, null, null, 'elva@yimin.la', null, null, '人力资源主管', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('93', 'fannie', '石慧敏', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'FEMALE', '18513998622', null, null, null, 'fannie@yimin.la', null, null, '平面设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('94', 'alisayang', '杨丽静', null, '21218cca77804d2ba1922c33e0151105', null, '43', '43', 'FEMALE', '18611991329', null, null, null, 'alisa_yang@yimin.la', null, null, '网络编辑', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:55:25', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('95', 'candy', '吕小溪', null, '21218cca77804d2ba1922c33e0151105', null, '44', '44', 'FEMALE', '13810987752', null, null, null, 'candy@yimin.la', null, null, '网络客服', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('96', 'alisadong', '董晶', null, '21218cca77804d2ba1922c33e0151105', null, '44', '44', 'FEMALE', '15330081757', null, null, null, 'alisa_dong@yimin.la', null, null, 'SEM', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:50:56', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('97', 'elina', '曲文丽', null, '21218cca77804d2ba1922c33e0151105', null, '44', '44', 'FEMALE', '18513990577', null, null, null, 'elina@yimin.la', null, null, '网络推广经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('98', 'rick', '邢琛', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '13488877925', null, null, null, 'rick@yimin.la', null, null, '新媒体营销主管', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:01', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('99', 'evita', '廖婉如', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '15810351066', null, null, null, 'evita@yimin.la', null, null, '策划编辑主管', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('100', 'tong', '周彤', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '18513996977', null, null, null, 'tong@yimin.la', null, null, '新媒体运营经理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:04', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('101', 'lillian', '李艳', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '18720955271', null, null, null, 'lillian@yimin.la', null, null, '新媒体策划', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('102', 'luck', '袁毓泽', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '18510971936', null, null, null, 'luck@yimin.la', null, null, '视频剪辑', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('103', 'gracewanglu', '王路', null, '21218cca77804d2ba1922c33e0151105', null, '45', '45', 'FEMALE', '15011520263', null, null, null, 'grace_wanglu@yimin.la', null, null, '新媒体运营', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('104', 'ron', '韩志莹', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'MALE', '18610532256', null, null, null, 'ron@yimin.la', null, null, '产品总监', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:13', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('105', 'lilydeng', '邓晔', 'lily', '21218cca77804d2ba1922c33e0151105', null, '1', '47', 'FEMALE', '13581675496', null, '13522568780', null, 'lily_deng@yimin.la', '', null, '产品经理', '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-20 18:12:53', '1', '超级管理员', '2016-12-20 15:47:14', '1', '产品经理', '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('106', 'yaozong', '薛耀宗', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'MALE', '18612882480', null, null, null, 'yaozong@yimin.la', null, null, '网页设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('107', 'sarah', '董小双', null, '21218cca77804d2ba1922c33e0151105', null, '48', '48', 'FEMALE', '13522568780', null, null, null, 'sarah@yimin.la', null, null, '行政前台', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('108', 'amyma', '马海荣', null, '21218cca77804d2ba1922c33e0151105', null, '48', '48', 'MALE', '13683051718', null, null, null, 'amy_ma@dingtalk.com', null, null, '总经理', null, null, null, null, null, '1', '超级管理员', '2016-12-27 16:03:02', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('109', 'robin', '张少欣', null, '21218cca77804d2ba1922c33e0151105', null, '50', '50', 'MALE', '18513990633', null, null, null, 'robin@yimin.la', null, null, '市场经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('110', 'vivian', '齐晓巍', null, '21218cca77804d2ba1922c33e0151105', null, '48', '48', 'FEMALE', '15911098950', null, null, null, 'vivian@yimin.la', null, null, '行政前台', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('111', 'judyyang', '杨艳芝', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'FEMALE', '15711460513', null, null, null, 'judy_yang@yimin.la', null, null, '网页设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('112', 'samjia', '贾张', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'MALE', '15510656727', null, null, null, 'samjia@yimin.la', null, null, '资深UI设计师', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:20', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('113', 'benjamin', '魏斌', 'benjamin', '21218cca77804d2ba1922c33e0151105', null, '1', '47', 'MALE', '13522900089', null, '4534534534', null, 'benjamin@yimin.la', '', null, '测试工程师', '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-21 10:52:54', '001', '超级管理员', '2016-12-15 17:39:54', '45345345335', '测试', '0', null, '', '1', '0');
INSERT INTO `console_user` VALUES ('114', 'annie', '杨雪玲', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'FEMALE', '15510880973', null, null, null, 'annie@yimin.la', null, null, '需求分析工程师', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:41:41', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('115', 'abby', '王婷婷', null, '21218cca77804d2ba1922c33e0151105', null, '47', '47', 'MALE', '13810704159', null, null, null, 'abby@yimin.la', null, null, '资深UI设计师', null, null, null, null, null, '1', '超级管理员', '2016-12-15 17:41:42', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('116', 'eric', '王涛', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '13641065257', null, null, null, 'eric_wang@yimin.la', null, null, 'JAVA软件开发工程师', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('117', 'flora', '刘雨熙', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'FEMALE', '18811719040', null, null, null, 'flora@yimin.la', null, null, 'WEB前端工程师', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:41:43', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('118', 'yangyi', '杨学毅', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '13717917691', null, null, null, 'yangyi@yimin.la', null, null, 'Java软件工程师', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:41:45', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('119', 'veren', '李景伦', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '15010006632', null, null, null, 'veren@yimin.la', null, null, 'Java软件工程师', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:23', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('120', 'oliver', '陈静', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'FEMALE', '18514590413', null, null, null, 'oliver@yimin.la', null, null, 'WEB前端', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('121', 'frank', '郭增', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '13439986634', null, null, null, 'frank@yimin.la', null, null, '网页设计', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('122', 'kuangdong', '邝东', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '18500657018', null, null, null, 'kuangdong@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('123', 'ice', '韩伟', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '18910430371', null, null, null, 'ice@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('124', 'patrick', '刘振波', null, '21218cca77804d2ba1922c33e0151105', null, '46', '46', 'MALE', '13581932009', null, null, null, 'patrick@yimin.la', null, null, '', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:51:30', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('125', 'jean', '王金梅', null, '21218cca77804d2ba1922c33e0151105', null, '52', '52', 'FEMALE', '18513992511', null, null, null, 'jean@yimin.la', null, null, '集团副总裁', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('126', 'mia', '高紫临', null, '21218cca77804d2ba1922c33e0151105', null, '52', '52', 'FEMALE', '18513998755', null, null, null, 'mia@yimin.la', null, null, '总裁助理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('127', 'hongzhang', '张宏', null, '21218cca77804d2ba1922c33e0151105', null, '53', '53', 'MALE', '18513997355', null, null, null, 'hongzhang@yimin.la', null, null, '澳洲房产投资总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('128', 'sunny', '郝娜', null, '21218cca77804d2ba1922c33e0151105', null, '54', '54', 'FEMALE', '18513995322', null, null, null, 'sunny_hao@yimin.la', null, null, '澳洲房产销售专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('129', 'jerry', '柴进', null, '21218cca77804d2ba1922c33e0151105', null, '54', '54', 'MALE', '18513997822', null, null, null, 'jerry@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('130', 'lynn', '郜琳', null, '21218cca77804d2ba1922c33e0151105', null, '54', '54', 'FEMALE', '18513995822', null, null, null, 'lynn@yimin.la', null, null, '顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('131', 'yuki', '徐梦娴', null, '21218cca77804d2ba1922c33e0151105', null, '54', '54', 'FEMALE', '18513997622', null, null, null, 'yuki@yimin.la', null, null, '试用期初级顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('132', 'judy', '孙东雪', null, '21218cca77804d2ba1922c33e0151105', null, '55', '55', 'FEMALE', '18513995922', null, null, null, 'judy_sun@yimin.la', null, null, '中级顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('133', 'hazel', '张小彤', null, '21218cca77804d2ba1922c33e0151105', null, '55', '55', 'FEMALE', '18513997811', null, null, null, 'hazel@yimin.la', null, null, '美国房产销售总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('134', 'chris', '安海搏', null, '21218cca77804d2ba1922c33e0151105', null, '55', '55', 'MALE', '18513996922', null, null, null, 'chris@yimin.la', null, null, '高级顾问', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('135', 'ericcao', '曹朝晖', null, '21218cca77804d2ba1922c33e0151105', null, '55', '55', 'MALE', '18513997911', null, null, null, 'eric@yimin.la', null, null, '海外房产销售专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('136', 'selina', '王晓彤', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'FEMALE', '18513992133', null, null, null, 'selina@yimin.la', null, null, '宅天下市场部专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('137', 'toben', '何正恒', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '18513995622', null, null, null, 'toben@yimin.la', null, null, '海房初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('138', 'sz', '潘洪蕾', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'FEMALE', '18513996711', null, null, null, 'sz@yimin.la', null, null, '市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('139', 'jennycheng', '程虞佳', null, '21218cca77804d2ba1922c33e0151105', null, '57', '57', 'FEMALE', '18210585945', null, null, null, 'jenny_cheng@yimin.la', null, null, '市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:27', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('140', 'revincao', '曹东辉', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '18513995833', null, null, null, 'revin_cao@yimin.la', null, null, '初级市场总监', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:31', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('141', 'andyhou', '侯焕强', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '18500858852', null, null, null, 'andy_hou@yimin.la', null, null, '市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:35', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('142', 'aaron', '来飞飞', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '15101085543', null, null, null, 'aaron@yimin.la', null, null, '海房高级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('143', 'arthur', '辛会举', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '13810466181', null, null, null, 'arthur@yimin.la', null, null, '高级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('144', 'peter', '张力川', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '13716172762', null, null, null, 'peter@yimin.la', null, null, '海房中级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('145', 'phil', '张占兵', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '18513998911', null, null, null, 'phil@yimin.la', null, null, '海房高级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('146', 'tinafeng', '冯亚平', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'MALE', '13717673467', null, null, null, 'tina_feng@yimin.la', null, null, '市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:03', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('147', 'may', '许冬梅', null, '21218cca77804d2ba1922c33e0151105', null, '56', '56', 'FEMALE', '13391964417', null, null, null, 'may@yimin.la', null, null, '市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('148', 'lisa', '鲁新艳', null, '21218cca77804d2ba1922c33e0151105', null, '57', '57', 'FEMALE', '18612081180', null, null, null, 'lisa@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('149', 'yoyo', '黄优优', null, '21218cca77804d2ba1922c33e0151105', null, '39', '39', 'FEMALE', '13911842636', null, null, null, 'yoyo@yimin.la', null, null, '市场部总经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('150', 'alex', '陈轶斌', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'MALE', '18513996955', null, null, null, 'alex@yimin.la', null, null, '市场一部初级总监兼副总经理', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('151', 'evan', '丁可心', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18910313186', null, null, null, 'evan@yimin.la', null, null, '试用期初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('152', 'asa', '高强', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'MALE', '18513991511', null, null, null, 'asa@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('153', 'anna', '李大珍', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18513990355', null, null, null, 'anna@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('154', 'wendyli', '李珊珊', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18811210546', null, null, null, 'wendyli@yimin.la', null, null, '初级市场经理', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:58', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('155', 'liudong', '刘东', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'MALE', '15901154533', null, null, null, 'liudong@yimin.la', null, null, '试用期中级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:41', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('156', 'nicole', '刘景双', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '15201663740', null, null, null, 'nicole@yimin.la', null, null, '市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('157', 'amyliu', '刘媛', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18911702892', null, null, null, 'amy_liu@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:15', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('158', 'sunnysun', '孙玉杰', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'MALE', '15910808829', null, null, null, 'sunny@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:36', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('159', 'michele', '吴慧芳', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18513990277', null, null, null, 'michele@yimin.la', null, null, '正式员工', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('160', 'chrisyang', '杨思梦', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'FEMALE', '18330683448', null, null, null, 'chris_yang@yimin.la', null, null, '实习期初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:30', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('161', 'crease', '张泽明', null, '21218cca77804d2ba1922c33e0151105', null, '58', '58', 'MALE', '13011121963', null, null, null, 'crease@yimin.la', null, null, '试用期初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('162', 'flower', '张小花', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'FEMALE', '18811210846', null, null, null, 'flower@yimin.la', null, null, '见习市场总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('163', 'alisachen', '陈利琳', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'FEMALE', '18513992155', null, null, null, 'alisa_chen@yimin.la', null, null, '实习期初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:25', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('164', 'light', '杜建豹', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'MALE', '13311245296', null, null, null, 'light@yimin.la', null, null, '市场', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('165', 'jasonli', '李佳杰', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'MALE', '18513997655', null, null, null, 'jason_li@yimin.la', null, null, '中级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:54', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('166', 'vicliu', '刘孔煌', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'MALE', '18513991322', null, null, null, 'vic_liu@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:56:49', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('167', 'allenming', '明邦望', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'MALE', '18513992633', null, null, null, 'allen_ming@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:55:25', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('168', 'jessie', '聂梦婷', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'FEMALE', '18330687418', null, null, null, 'jessie@yimin.la', null, null, '实习期初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('169', 'vickynie', '聂雪飞', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'FEMALE', '18513998922', null, null, null, 'vicky@yimin.la', null, null, '市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('170', 'liay', '杨兴华', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'MALE', '18513991277', null, null, null, 'liay@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('171', 'micky', '袁明君', null, '21218cca77804d2ba1922c33e0151105', null, '59', '59', 'FEMALE', '18710080464', null, null, null, 'micky@yimin.la', null, null, '试用期初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('172', 'jane', '辛佳英', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'FEMALE', '18888843093', null, null, null, 'jane@yimin.la', null, null, '见习市场总监', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('173', 'an', '蔡建国', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'MALE', '18611278086', null, null, null, 'an@yimin.la', null, null, '中级市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:58:00', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '1');
INSERT INTO `console_user` VALUES ('174', 'henny', '江忠诚', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'MALE', '18513992822', null, null, null, 'henny@yimin.la', null, null, '中级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('175', 'sam', '刘圣海', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'MALE', '18513996377', null, null, null, 'sam@yimin.la', null, null, '中级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('176', 'devin', '李占朋', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'MALE', '18513995177', null, null, null, 'devin@yimin.la', null, null, '', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('177', 'nick', '鲁逸飞', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'MALE', '18519216341', null, null, null, 'nick@yimin.la', null, null, '实习期初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('178', 'anne', '杨保云', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'FEMALE', '13811053673', null, null, null, 'anne@yimin.la', null, null, '初级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('179', 'alma', '杨杰', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'FEMALE', '18401565456', null, null, null, 'alma@yimin.la', null, null, '市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('180', 'summer', '赵雅杰', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'FEMALE', '18513991711', null, null, null, 'summer@yimin.la', null, null, '中级市场专员', null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('181', 'ellaguan', '关湘杰', null, '21218cca77804d2ba1922c33e0151105', null, '60', '60', 'FEMALE', '18513995977', null, null, null, 'ellaguan@yimin.la', null, null, '市场专员', null, null, null, null, null, '1', '超级管理员', '2016-12-20 17:52:54', null, null, '0000-00-00 00:00:00', null, null, '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('184', 'crmtest', 'crm系统权限测试', null, '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '234234123234', null, null, null, '13@163.com', null, null, null, null, null, null, null, null, '0', '超级管理员', '2016-12-15 17:42:32', null, null, '2016-10-08 11:55:37', null, null, '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('209', 'kfgyc', '谷一创', 'Gorge', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '15101053870', null, '279312780', null, '279312780@qq.com', 'http://tpyjd-10066870.image.myqcloud.com/e173132b-dc4f-4194-a686-7a310d1fe4e7', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-20 17:53:02', null, '超级管理员', '2016-10-28 14:35:14', '15101053870', '开发', '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('210', 'wuxin', '李锦伦', 'wuxin', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '15010006632', null, '1260978581', null, '1260978581@qq.com', 'http://tpyjd-10066870.image.myqcloud.com/e173132b-dc4f-4194-a686-7a310d1fe4e7', '超级跑偏', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-15 17:42:32', null, '超级管理员', '2016-10-28 16:17:49', '1260978581', '高级移民管家', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('211', 'yangxueyi', '杨学毅', 'yangyi', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '13899999998', '123', '123123', null, '123@qq.com', 'http://tpyjd-10066870.image.myqcloud.com/537c33b9-41ea-4bb2-9160-7aec6df12c72', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-15 17:40:42', null, '超级管理员', '2016-11-29 14:39:01', '1231', '开发', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('212', 'jeff', '褚秀良', 'jeff', '21218cca77804d2ba1922c33e0151105', null, '1', '1', 'MALE', '18630680596', null, '914962516', null, 'qwer@aaf.com', 'http://tpyjd-10066870.image.myqcloud.com/a1b7d7b4-6a1a-4e95-a472-a006b2b3e4dd', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', 'admin', '2016-12-15 17:40:45', '0001', '超级管理员', '2016-12-15 12:42:14', '123234', '架构师', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('223', 'yaolihui', '腰立辉', 'yao', '21218cca77804d2ba1922c33e0151105', null, '1', '47', 'MALE', '18801043607', null, '83000892', null, 'yao@yimini.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-01-10 17:17:47', '342432', '超级管理员', '2017-01-10 17:15:10', 'yaolihui129', 'yy', '1', null, null, '1', '0');
INSERT INTO `console_user` VALUES ('225', 'ceshi', '测试', 'ceshi', '21218cca77804d2ba1922c33e0151105', null, '1', '47', 'FEMALE', '13810291535', null, '123456', null, '23423@4234.com', 'http://tpyjd-10066870.image.myqcloud.com/c3b18eea-a74d-4f04-90af-7f359a604c41', '服务理念测试一下#$%12312', null, '0003000200010001', '00030002000100010001', null, null, null, '0', '超级管理员', '2017-03-08 14:37:46', 'ceshi123', '超级管理员', '2017-03-08 14:37:46', 'tpy13810291535', '测试手机', '0', '8001', '', '0', '0');
INSERT INTO `console_user` VALUES ('226', 'sarah_wu', '吴双平', 'Sarah', '21218cca77804d2ba1922c33e0151105', null, '1', '27', 'FEMALE', '13522568780', null, '13522568780', null, 'sarah_wu@yimin.com', 'http://tpyjd-10066870.image.myqcloud.com/bb528623-79a2-4e5f-9114-e6700c3b3d89', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-21 12:15:18', 'sarah_wu', '超级管理员', '2016-12-21 12:11:26', 'tpy13522568780', '资深移民顾问', '0', null, '', '1', '0');
INSERT INTO `console_user` VALUES ('227', 'dfsdfsdfsdf', 'dsfsdfsdfds', 'dsfsdfsd', '21218cca77804d2ba1922c33e0151105', null, '20', '60', 'FEMALE', '13212323232', null, '3423423', null, 'fsdfsd@34234.com', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-15 17:40:49', '23423', '超级管理员', '2016-12-15 10:31:42', '435345', 'dsfsdfsfs', '0', null, '', '0', '0');
INSERT INTO `console_user` VALUES ('228', 'macy', '李小爽', 'macy', '21218cca77804d2ba1922c33e0151105', null, '20', '27', 'FEMALE', '15011200012', null, '3423423', null, 'macy@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/53ece338-9578-469b-a822-5203539bb067', '优势：具备资深职业背景，专长于加拿大、澳洲和美国等国家移民。\r\n服务理念：专业、细致、热情和周到', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-21 12:15:09', '555', '超级管理员', '2016-12-15 10:47:10', 'tpy15011200012', '资深移民顾问', '0', null, null, '1', '0');
INSERT INTO `console_user` VALUES ('229', 'Fionahu', '胡艳青', 'Fionahu', '21218cca77804d2ba1922c33e0151105', null, '38', '49', 'FEMALE', '18513991022', null, '7777777', null, 'fionahu@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/8f7fb1ca-909e-4a80-870a-d38ca55adf1d', '优势：从事海外投资移民多年，精通各国移民政策法规和申请流程\r\n服务理念：认真，以客户的需求和目标为出发点。', null, '0003000200010001', '00030002000100010001', null, null, null, '0', '超级管理员', '2017-03-31 11:53:04', '777', '邓晔', '2017-03-31 11:53:04', 'tpy18513991022', '资深移民顾问', '0', null, null, '1', '0');
INSERT INTO `console_user` VALUES ('230', 'jessie_wang', '汪津希', 'jessie', '21218cca77804d2ba1922c33e0151105', null, '20', '67', 'FEMALE', '18513992177', null, '32343423', null, 'jessie_wang@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-15 15:10:11', '345345', '超级管理员', '2016-12-15 15:10:11', '18513992177', '商务经理', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('231', 'dfsdfs', 'dsfsdfsd', 'dfsdfasdf', '21218cca77804d2ba1922c33e0151105', null, '1', '33', 'FEMALE', '13212323236', null, '234234', null, '23423@4234.com', '', '4234234', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-19 15:13:38', 'dfsdfs地方撒旦', '超级管理员', '2016-12-19 15:13:30', '342432', 'sdfsdfsda', '0', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('232', 'yaolh', '幺儿', 'yaolh', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '47', 'MALE', '18801043606', null, '12210557', null, 'yaolihui129@sina.com', 'http://tpyjd-10066870.image.myqcloud.com/a5d187d5-268e-42ef-abe8-0211c5a7d7cf', '等我有了钱，我也买一个130斤的大金链子，白天自己戴，晚上栓狗', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-21 10:25:20', '1234', '幺儿', '2016-12-21 09:44:00', 'yaolh129', '二手砖家', '2', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('233', 'lily_deng', '邓晔', 'Lily', '21218cca77804d2ba1922c33e0151105', null, '1', '47', 'FEMALE', '13581675496', null, '12434545', null, 'lily_deng@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/76a61278-b29c-45c7-a44f-2627eb000a91', '太平洋出国移民圆您移民梦', null, '0003000200010001', '00030002000100010001', null, null, null, '0', '超级管理员', '2017-03-10 14:39:11', '123', '超级管理员', '2017-03-10 14:39:11', 'http://tpyjd-10066870.image.myqcloud.com/e0c4a322-a593-42ab-b629-e50a1b283f66', '资深移民专家', '0', '8000', '', '1', '0');
INSERT INTO `console_user` VALUES ('234', 'yangxueling', 'yxl', 'yxl', '21218cca77804d2ba1922c33e0151105', null, '1', '22', 'FEMALE', '13334545540', null, '1333434', null, '232@233.com', 'http://tpyjd-10066870.image.myqcloud.com/a0b1364d-e348-455e-9936-77df2a2e01bb', '司法所打的', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '1', '超级管理员', '2016-12-21 10:25:20', 'ad', '超级管理员', '2016-12-20 19:00:04', '23', '我', '3', null, '', '2', '0');
INSERT INTO `console_user` VALUES ('235', 'leo', '李俊', 'Leo', 'b7e6cb4f7d79f22c90df9b65ef98071e', null, '1', '84', 'FEMALE', '18811210549', null, '18811210549', null, 'leo@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-26 11:37:50', '123456', '超级管理员', '2016-12-21 19:07:29', '18811210549', '总裁助理', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('236', 'will', '赵起超', 'will', '403da28ed472af4a3be8d0e8ebbb5b37', null, '1', '32', 'MALE', '15901598396', null, '15901598396', null, 'will@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-01-04 08:56:06', 'will', '超级管理员', '2016-12-22 10:47:26', '15901598396', '人力', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('237', 'vernica', '吴静', 'vernica', '21218cca77804d2ba1922c33e0151105', null, '1', '27', 'FEMALE', '18513991922', null, '18513991922', null, 'vernica@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-22 14:24:02', 'tpy', '超级管理员', '2016-12-22 14:24:02', '18513991922', '资深移民专家', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('238', 'amy_ma', '马海荣', 'Amy', '21218cca77804d2ba1922c33e0151105', null, '38', '38', 'FEMALE', '13671150898', null, '13671150898', null, 'amy_ma@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/0e911f67-f5aa-4d4f-9ecc-a5e3765a9438', '问问乔恩', null, '0003000200010003', '00030002000100030001', null, null, null, '0', '超级管理员', '2017-03-08 15:16:53', 'amy_ma', '超级管理员', '2017-03-08 15:09:51', '13671150898', '资深移民专家', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('239', 'alice', '王倩', 'Alice', '21218cca77804d2ba1922c33e0151105', null, '1', '67', 'FEMALE', '15011275667', null, '15011275667', null, 'alice@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-27 16:18:50', 'alice', '超级管理员', '2016-12-27 16:18:50', '15011275667', null, '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('240', 'julia', '景德君', 'Julia', '21218cca77804d2ba1922c33e0151105', null, '1', '84', 'FEMALE', '13910937588', null, '13910937588', null, 'julia@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2016-12-29 18:19:41', 'julia', '超级管理员', '2016-12-29 18:19:41', '13910937588', '董事长', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('241', 'test2', 'test2', 'test2', '21218cca77804d2ba1922c33e0151105', null, '1', '36', 'FEMALE', '13581675496', null, '13581675496', null, 'lily_deng@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-01-04 08:58:53', 'test2', '超级管理员', '2017-01-03 16:34:38', '13581675496', '产品经理', '0', null, null, '0', '1');
INSERT INTO `console_user` VALUES ('242', 'chloe', '楼莎莎', 'Chloe', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '27', 'FEMALE', '13391399910', null, '13391399910', null, 'chloe@yimin.la', 'http://tpyjd-10066870.image.myqcloud.com/e5a54737-37a1-4866-931f-48677e8eb981', '“干练、高效，细致周全，能力超强”，这是客户对于我最中肯也最直接的评价。 入行至今在移民届服务数以千计家庭，有口碑，有实力', null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-02-09 09:38:07', 'chloe', '超级管理员', '2017-02-09 09:35:28', '13391399910', '资深移民专家', '0', null, null, '1', '0');
INSERT INTO `console_user` VALUES ('243', 'annie_yan', '颜坤', 'Annie', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '27', 'FEMALE', '18516967355', null, '18516967355', null, 'annie_yan@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-02-10 15:47:53', 'annie_yan', '超级管理员', '2017-02-09 09:54:37', '18516967355', '资深移民顾问', '0', null, null, '1', '0');
INSERT INTO `console_user` VALUES ('244', 'felix_jing', '景德宇', 'Felix', '21218cca77804d2ba1922c33e0151105', null, '1', '34', 'MALE', '18640588827', null, '18640588827', null, 'felix_jing@yimin.la', '', null, null, '006-ea2297be-da85-45bd-926f-5dcbbbaa359f', null, null, null, null, '0', '超级管理员', '2017-03-02 14:14:38', 'felix_jing', '超级管理员', '2017-03-02 14:10:30', '18640588827', '系统管理员', '0', null, null, '0', '0');
INSERT INTO `console_user` VALUES ('245', 'loki', 'loki', 'loki', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '47', 'MALE', '13111110000', null, '21221212', null, 'loki@yimin.la', '', null, null, '0003000200010001', '00030002000100010001', null, null, null, '0', '超级管理员', '2017-03-09 09:36:16', '1111', '超级管理员', '2017-03-09 09:36:16', null, null, '0', null, null, '0', '0');

-- ----------------------------
-- Table structure for `tpyjd_account`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_account`;
CREATE TABLE `tpyjd_account` (
  `AccountId` char(40) NOT NULL COMMENT '客户ID',
  `AccountName` varchar(100) NOT NULL COMMENT '客户姓名',
  `AccountNumber` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `ParentAccountId` char(40) DEFAULT NULL COMMENT '父级客户编号',
  `QuickCode` varchar(50) DEFAULT NULL COMMENT '助记码',
  `TerritoryId` char(40) DEFAULT NULL COMMENT '领域',
  `KeyWord` varchar(50) DEFAULT NULL COMMENT '关键字',
  `PrimaryContactId` char(40) DEFAULT NULL,
  `CountryId` char(40) DEFAULT NULL,
  `ProvinceId` char(40) DEFAULT NULL,
  `CityId` char(40) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `WebSiteURL` varchar(150) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL,
  `Revenue` int(11) DEFAULT NULL,
  `NumberOfEmployees` int(11) DEFAULT NULL,
  `NextTouchTime` datetime DEFAULT NULL,
  `TouchPeriod` int(11) DEFAULT NULL,
  `CustomerTypeCode` int(11) DEFAULT NULL,
  `IndustryCode` int(11) DEFAULT NULL,
  `SourceCode` int(11) DEFAULT NULL,
  `RatingCode` int(11) DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `Bank` varchar(50) DEFAULT NULL,
  `BankAccount` varchar(50) DEFAULT NULL,
  `Description` text,
  `FirstTouchTime` datetime DEFAULT NULL,
  `LastTouchTime` datetime DEFAULT NULL,
  `FirstBuyTime` datetime DEFAULT NULL,
  `LastBuyTime` datetime DEFAULT NULL,
  `OriginatingLeadId` char(40) DEFAULT NULL,
  `IsPrivate` int(11) DEFAULT NULL,
  `OwningBusinessUnit` char(40) NOT NULL,
  `OwningTeam` char(40) DEFAULT NULL,
  `OwningUser` char(40) NOT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` char(40) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` char(40) DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `VersionNumber` int(11) DEFAULT NULL,
  `recentTouchDate` datetime DEFAULT NULL,
  `recentQuoteDate` datetime DEFAULT NULL,
  `recentSalesOrderDate` datetime DEFAULT NULL,
  `recentPurchaseDate` datetime DEFAULT NULL,
  `recentServiceComplainDate` datetime DEFAULT NULL,
  `recentServiceCaseDate` datetime DEFAULT NULL,
  `recentReturnVisitDate` datetime DEFAULT NULL,
  `totalExpenseAmount` decimal(19,4) DEFAULT NULL,
  `totalSalesOrderAmount` decimal(19,4) DEFAULT NULL,
  `totalSalesOrderUnpaidAmount` decimal(19,4) DEFAULT NULL,
  `totalPurchaseAmount` decimal(19,4) DEFAULT NULL,
  `totalPurchaseUnpaidAmount` decimal(19,4) DEFAULT NULL,
  `totalServiceCaseAmount` decimal(19,4) DEFAULT NULL,
  `totalServiceContractAmount` decimal(19,4) DEFAULT NULL,
  `totalServiceContractUnpaidAmount` decimal(19,4) DEFAULT NULL,
  `systemObjectTypeCode` int(11) DEFAULT NULL,
  `parentChannelId` char(40) DEFAULT NULL,
  `channelLevelCode` int(11) DEFAULT NULL,
  `channelTypeCode` int(11) DEFAULT NULL,
  `areaCode` int(11) DEFAULT NULL,
  `parentProviderId` char(40) DEFAULT NULL,
  `providerLevelCode` int(11) DEFAULT NULL,
  `providerTypeCode` int(11) DEFAULT NULL,
  `AccountLevelId` char(40) DEFAULT NULL,
  `IntroduceBy` char(40) DEFAULT NULL,
  `recentReturnedGoodsDate` datetime DEFAULT NULL,
  `totalReturnedGoodsAmount` decimal(19,4) DEFAULT NULL,
  `totalReturnedGoodsUnpaidAmount` decimal(19,4) DEFAULT NULL,
  `totalPoints` decimal(18,6) DEFAULT NULL,
  `countryCode` varchar(10) DEFAULT NULL,
  `cityCode` varchar(10) DEFAULT NULL,
  `creditLimit` decimal(19,4) DEFAULT NULL,
  `totalConsignmentAmount` decimal(19,4) DEFAULT NULL,
  `totalReceivableAmount` decimal(19,4) DEFAULT NULL,
  `photograph` text,
  `c__q1` int(11) DEFAULT NULL,
  `c__q3` datetime DEFAULT NULL,
  `c__q4` datetime DEFAULT NULL,
  `c__q5` int(11) DEFAULT NULL,
  `c__q6` varchar(100) DEFAULT NULL,
  `c__q7` varchar(100) DEFAULT NULL,
  `c__q8` varchar(100) DEFAULT NULL,
  `c__q9` varchar(100) DEFAULT NULL,
  `c__q10` varchar(100) DEFAULT NULL,
  `c__q11` varchar(100) DEFAULT NULL,
  `c__q12` varchar(100) DEFAULT NULL,
  `c__q13` varchar(100) DEFAULT NULL,
  `c__q14` varchar(100) DEFAULT NULL,
  `c__q15` varchar(100) DEFAULT NULL,
  `c__q16` varchar(100) DEFAULT NULL,
  `c__q17` varchar(100) DEFAULT NULL,
  `c__q18` varchar(100) DEFAULT NULL,
  `c__q19` varchar(100) DEFAULT NULL,
  `c__q20` varchar(100) DEFAULT NULL,
  `c__q21` int(11) DEFAULT NULL,
  `c__q22` varchar(100) DEFAULT NULL,
  `c__q23` varchar(100) DEFAULT NULL,
  `c__q24` varchar(100) DEFAULT NULL,
  `c__q25` varchar(100) DEFAULT NULL,
  `c__q26` varchar(100) DEFAULT NULL,
  `c__q27` varchar(100) DEFAULT NULL,
  `c__q28` varchar(254) DEFAULT NULL,
  `c__q29` varchar(254) DEFAULT NULL,
  `c__q30` varchar(254) DEFAULT NULL,
  `c__q31` varchar(100) DEFAULT NULL,
  `c__q32` varchar(100) DEFAULT NULL,
  `c__q33` varchar(100) DEFAULT NULL,
  `c__q34` int(11) DEFAULT NULL,
  `c__q35` varchar(100) DEFAULT NULL,
  `c__q36` datetime DEFAULT NULL,
  `c__q37` varchar(100) DEFAULT NULL,
  `c__q38` datetime DEFAULT NULL,
  `c__q39` varchar(100) DEFAULT NULL,
  `c__q40` datetime DEFAULT NULL,
  `c__q41` varchar(100) DEFAULT NULL,
  `c__q42` datetime DEFAULT NULL,
  `c__q43` varchar(100) DEFAULT NULL,
  `c__q44` varchar(100) DEFAULT NULL,
  `c__q45` varchar(100) DEFAULT NULL,
  `c__q46` varchar(100) DEFAULT NULL,
  `c__q48` datetime DEFAULT NULL,
  `c__q50` varchar(254) DEFAULT NULL,
  `c__q51` varchar(100) DEFAULT NULL,
  `c__q53` varchar(254) DEFAULT NULL,
  `c__q55` varchar(254) DEFAULT NULL,
  `c__q56` int(11) DEFAULT NULL,
  `c__q57` text,
  `c__q58` varchar(254) DEFAULT NULL,
  `c__h1` varchar(100) DEFAULT NULL,
  `isDeleted` int(11) DEFAULT NULL,
  `currentPoints` decimal(18,6) DEFAULT NULL,
  `currentAdvancePaymentAmount` decimal(19,4) DEFAULT NULL,
  `recentUpgradeTime` datetime DEFAULT NULL,
  `recentPointsResetTime` datetime DEFAULT NULL,
  `c__yyah` varchar(100) DEFAULT NULL,
  `c__sfcjkh` int(11) DEFAULT NULL,
  `c__sgxdah` datetime DEFAULT NULL,
  `c__shijian` varchar(100) DEFAULT NULL,
  `c__beizhu` text,
  `c__sgxbl` varchar(100) DEFAULT NULL,
  `c__dtzk` varchar(100) DEFAULT NULL,
  `c__sz` varchar(100) DEFAULT NULL,
  `c__gsmc` varchar(100) DEFAULT NULL,
  `c__khlypt` varchar(100) DEFAULT NULL,
  `c__nl` varchar(100) DEFAULT NULL,
  `c__bankAccount` varchar(100) DEFAULT NULL,
  `c__c_q43` varchar(100) DEFAULT NULL,
  `c__c_q46` varchar(100) DEFAULT NULL,
  `c__q68` varchar(50) DEFAULT NULL,
  `c__sfyxkh` int(11) DEFAULT NULL,
  `c__c_q30` int(11) DEFAULT NULL,
  `c__c_q60` int(11) DEFAULT NULL,
  `c__c_q61` int(11) DEFAULT NULL,
  `c__c_q64` datetime DEFAULT NULL,
  `c__c_q66` text,
  `c__c_a1` varchar(100) DEFAULT NULL,
  `c__c_a2` varchar(100) DEFAULT NULL,
  `c__c_a3` varchar(100) DEFAULT NULL,
  `c__c_a4` int(11) DEFAULT NULL,
  `c__c_a5` varchar(100) DEFAULT NULL,
  `c__coultant` varchar(100) DEFAULT NULL,
  `c__stage` int(11) DEFAULT NULL,
  `c__c_q31` int(11) DEFAULT NULL,
  `c__ymxm` varchar(100) DEFAULT NULL,
  `poolState` int(11) DEFAULT NULL,
  `groups` varchar(255) DEFAULT NULL,
  `recentAssignDate` datetime DEFAULT NULL,
  `recentShareDate` datetime DEFAULT NULL,
  `c__blsj1` datetime DEFAULT NULL,
  `c__bldjsj1` datetime DEFAULT NULL,
  `c__xblsj2` datetime DEFAULT NULL,
  `c__bldjsj2` datetime DEFAULT NULL,
  `c__xblsj3` datetime DEFAULT NULL,
  `c__bldjsj3` datetime DEFAULT NULL,
  `c__mspqsj` datetime DEFAULT NULL,
  `c__mstzsj` datetime DEFAULT NULL,
  `c__mscgzlbsj` datetime DEFAULT NULL,
  `c__lbdahsj` datetime DEFAULT NULL,
  `c__hqsj` datetime DEFAULT NULL,
  `c__jqsj` datetime DEFAULT NULL,
  `c__jqyy` varchar(100) DEFAULT NULL,
  `c__casj` datetime DEFAULT NULL,
  `c__cayy` varchar(100) DEFAULT NULL,
  `c__tfsj` datetime DEFAULT NULL,
  `c__tfyy` varchar(100) DEFAULT NULL,
  `c__yqhxfsj` datetime DEFAULT NULL,
  `c__swkchqsj` datetime DEFAULT NULL,
  `c__stmsj` datetime DEFAULT NULL,
  `c__xtjbsj` datetime DEFAULT NULL,
  `c__kdrq` datetime DEFAULT NULL,
  `c__zwarq` datetime DEFAULT NULL,
  `c__ywmz` varchar(100) DEFAULT NULL,
  `c__clwa` varchar(100) DEFAULT NULL,
  `c__sczgwrq` datetime DEFAULT NULL,
  `c__zxmrq` datetime DEFAULT NULL,
  `c__ysqxm` int(11) DEFAULT NULL,
  `c__scgjry` int(11) DEFAULT NULL,
  `c__qdgzry` int(11) DEFAULT NULL,
  `c__dktz` datetime DEFAULT NULL,
  `c__qqtz` datetime DEFAULT NULL,
  `c__yjzxg` datetime DEFAULT NULL,
  `c__jsrmc` varchar(100) DEFAULT NULL,
  `c__swkckasj` datetime DEFAULT NULL,
  `c__swkcjssj` datetime DEFAULT NULL,
  `c__sczxrq` datetime DEFAULT NULL,
  `c__wxbdhm` varchar(100) DEFAULT NULL,
  `c__wxq` int(11) DEFAULT NULL,
  `c__gjkf` varchar(100) DEFAULT NULL,
  `c__xmmc` varchar(100) DEFAULT NULL,
  `c__dsffyzsr` decimal(18,6) DEFAULT NULL,
  `c__dsffyzsr2` decimal(18,6) DEFAULT NULL,
  `c__jwfyzzc` decimal(18,6) DEFAULT NULL,
  `c__jwfyzsr` decimal(18,6) DEFAULT NULL,
  `c__yxgjhf` varchar(100) DEFAULT NULL,
  `c__yxcshf` varchar(100) DEFAULT NULL,
  `c__yxlphf` varchar(100) DEFAULT NULL,
  `c__zysjhf` varchar(100) DEFAULT NULL,
  `c__gfmd` varchar(100) DEFAULT NULL,
  `c__wylxhf` varchar(100) DEFAULT NULL,
  `c__fczjhf` varchar(100) DEFAULT NULL,
  `c__gzjdhf` varchar(100) DEFAULT NULL,
  `c__sfyyxdqqzhf` int(11) DEFAULT NULL,
  `c__sfykfxqhf` int(11) DEFAULT NULL,
  `c__sfxyjjhf` int(11) DEFAULT NULL,
  `c__hfgjry` varchar(100) DEFAULT NULL,
  `c__scgjry2` varchar(100) DEFAULT NULL,
  `c__wagxrq` datetime DEFAULT NULL,
  `c__I526` datetime DEFAULT NULL,
  `c__I829` datetime DEFAULT NULL,
  `c__qdhzf` varchar(100) DEFAULT NULL,
  `c__xxmmff` text,
  `c__hfsc` varchar(100) DEFAULT NULL,
  `c__yxrq` datetime DEFAULT NULL,
  `c__mstgsj` datetime DEFAULT NULL,
  `c__qugjry` varchar(100) DEFAULT NULL,
  `c__hzsr` datetime DEFAULT NULL,
  `c__hzsl` int(11) DEFAULT NULL,
  `c__zszy` varchar(100) DEFAULT NULL,
  `c__arzy` varchar(100) DEFAULT NULL,
  `c__jtzzc` int(11) DEFAULT NULL,
  `c__zsqysds` int(11) DEFAULT NULL,
  `c__poqysds` int(11) DEFAULT NULL,
  `c__zsgrsds` varchar(100) DEFAULT NULL,
  `c__pogrsds` varchar(100) DEFAULT NULL,
  `c__zssb` int(11) DEFAULT NULL,
  `c__zssbjnje` varchar(100) DEFAULT NULL,
  `c__posb` int(11) DEFAULT NULL,
  `c__posbjnje` varchar(100) DEFAULT NULL,
  `c__qyzczj` int(11) DEFAULT NULL,
  `c__qyzcsj` datetime DEFAULT NULL,
  `c__qyqksfygbg` int(11) DEFAULT NULL,
  `c__qybgqk` varchar(100) DEFAULT NULL,
  `c__qyzgbl` varchar(100) DEFAULT NULL,
  `c__zsxl` int(11) DEFAULT NULL,
  `c__zsyysp` int(11) DEFAULT NULL,
  `c__znbmgjry` varchar(100) DEFAULT NULL,
  `c__ymlsdz` varchar(100) DEFAULT NULL,
  `c__ymlsdh` varchar(100) DEFAULT NULL,
  `c__ymlse` varchar(100) DEFAULT NULL,
  `c__ymlswz` varchar(100) DEFAULT NULL,
  `c__djdkrq` datetime DEFAULT NULL,
  `c__khdecdksj` datetime DEFAULT NULL,
  `c__khdscdksj` datetime DEFAULT NULL,
  `c__zscshy` varchar(100) DEFAULT NULL,
  `c__pocshy` varchar(100) DEFAULT NULL,
  `c__hzxm2` varchar(100) DEFAULT NULL,
  `c__hzxm3` varchar(100) DEFAULT NULL,
  `c__hzxm4` varchar(100) DEFAULT NULL,
  `c__hzsr2` datetime DEFAULT NULL,
  `c__hzsr3` datetime DEFAULT NULL,
  `c__hzsr4` datetime DEFAULT NULL,
  `c__hzxb` int(11) DEFAULT NULL,
  `c__hzxb2` int(11) DEFAULT NULL,
  `c__hzxb3` int(11) DEFAULT NULL,
  `c__hzxb4` int(11) DEFAULT NULL,
  `c__sqxx1` varchar(100) DEFAULT NULL,
  `c__sqxx2` varchar(100) DEFAULT NULL,
  `c__sqxx3` varchar(100) DEFAULT NULL,
  `c__sqxx4` varchar(100) DEFAULT NULL,
  `c__offer1` datetime DEFAULT NULL,
  `c__offer2` datetime DEFAULT NULL,
  `c__offer3` datetime DEFAULT NULL,
  `c__offer4` varchar(100) DEFAULT NULL,
  `c__lb` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AccountId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_account
-- ----------------------------
INSERT INTO `tpyjd_account` VALUES ('121', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'asd', null, '1212', null, '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tpyjd_accountlevel`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_accountlevel`;
CREATE TABLE `tpyjd_accountlevel` (
  `accountLevelId` char(40) NOT NULL DEFAULT '' COMMENT '等级ID',
  `levelName` varchar(50) DEFAULT NULL COMMENT '等级名称',
  `discountPercentage` double DEFAULT NULL COMMENT '折扣',
  `annualTotalTradeAmount` double DEFAULT NULL,
  `onceUpToAmount` double DEFAULT NULL,
  `requiredPoints` double DEFAULT NULL,
  `timeType` int(11) DEFAULT NULL,
  `timeSet` int(11) DEFAULT NULL,
  `yearlyDecreasePercentage` double DEFAULT NULL,
  PRIMARY KEY (`accountLevelId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_accountlevel
-- ----------------------------

-- ----------------------------
-- Table structure for `tpyjd_businessunit`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_businessunit`;
CREATE TABLE `tpyjd_businessunit` (
  `BusinessUnitId` char(40) NOT NULL DEFAULT '' COMMENT '企业编号',
  `ParentBusinessUnitId` char(40) DEFAULT NULL COMMENT '父级企业编号',
  `Name` varchar(255) DEFAULT NULL COMMENT '企业明细',
  `UnitCode` varchar(100) DEFAULT NULL COMMENT '企业CODE',
  `CountryId` char(40) DEFAULT NULL COMMENT '所属国家',
  `ProvinceId` char(40) DEFAULT NULL COMMENT '所属省份',
  `CityId` char(40) DEFAULT NULL COMMENT '所属城市',
  `PostalCode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `Address` varchar(150) DEFAULT NULL COMMENT '地址',
  `Phone` varchar(50) DEFAULT NULL COMMENT '手机',
  `Fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `WebSiteUrl` varchar(150) DEFAULT NULL COMMENT '网站',
  `EmailAddress` varchar(100) DEFAULT NULL COMMENT '电邮',
  `IsDisabled` int(11) DEFAULT NULL COMMENT '是否禁用',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL COMMENT '版本号',
  `servicePhone` varchar(50) DEFAULT NULL COMMENT '服务电话',
  `isDeleted` int(11) DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`BusinessUnitId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_businessunit
-- ----------------------------
INSERT INTO `tpyjd_businessunit` VALUES ('ZcHyru1dBhDmDLITDdFLrxXTQA9RaYXMZ0fn5q1s', '', 'qweqw1111', 'asdas', null, null, '', null, 'asdaa', 'asda', 'qweqw11', 'qwe11', 'qwe1', '0', '12312', '1', 'qweq11213', '0');
INSERT INTO `tpyjd_businessunit` VALUES ('OwZCAcloeiaMXaUt44S2yWwsRmwzDBuVUYoyzH6X', 'ZcHyru1dBhDmDLITDdFLrxXTQA9RaYXMZ0fn5q1s', '太平洋加达', 'Tpyjd', null, null, '1312', null, '建国门', '18801043607', '010-5688555', 'http://www.picc.com', 'yao@mini.la', '0', 'qweqweqwe', '1', '400-820-4568', '0');

-- ----------------------------
-- Table structure for `tpyjd_city`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_city`;
CREATE TABLE `tpyjd_city` (
  `CityId` char(40) NOT NULL DEFAULT '' COMMENT '城市ID',
  `CountryId` char(40) DEFAULT NULL COMMENT '所属国家ID',
  `ProvinceId` char(40) DEFAULT NULL COMMENT '所属省份ID',
  `CityName` varchar(50) DEFAULT NULL COMMENT '城市',
  `AreaCode` varchar(50) DEFAULT NULL COMMENT '区域代码',
  `PostalCode` varchar(50) DEFAULT NULL COMMENT '邮政编码',
  `QuickCode` varchar(50) DEFAULT NULL COMMENT '助记码',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`CityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_city
-- ----------------------------
INSERT INTO `tpyjd_city` VALUES ('2VUrAw8rD3e2vDWUYDgllQdzogLlPLGAlFMlbj6i', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', 'QL2x00SIn3Xn5wOhkeZh6dD11rsPqog2PSDe3FYT', '北京市', 'HB', '100000', 'BJS', '&lt;font face=&quot;Arial, Verdana&quot;&gt;&lt;span style=&quot;font-size: 13.3333px;&quot;&gt;北京市&lt;/span&gt;&lt;/font&gt;', '1');
INSERT INTO `tpyjd_city` VALUES ('9eUZ6KxQhdUrftY1Cw6S1AdHMM53vtxvxbCSApHi', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', 'iZqbBLuCc2x0PA3INepjqyNZh8FVGXZlMDu4NaPe', '天津市1', '天津市1', '天津市1', '天津市1', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">天津市1</span></font>', '1');

-- ----------------------------
-- Table structure for `tpyjd_contact`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_contact`;
CREATE TABLE `tpyjd_contact` (
  `ContactId` char(40) NOT NULL DEFAULT '',
  `ContactName` varchar(50) DEFAULT NULL,
  `QuickCode` varchar(50) DEFAULT NULL,
  `AccountId` char(40) DEFAULT NULL,
  `SalutationCode` int(11) DEFAULT NULL,
  `DepartmentCode` int(11) DEFAULT NULL,
  `JobTitleCode` int(11) DEFAULT NULL,
  `ManagerId` char(40) DEFAULT NULL,
  `CountryId` char(40) DEFAULT NULL,
  `ProvinceId` char(40) DEFAULT NULL,
  `CityId` char(40) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `WorkPhone` varchar(50) DEFAULT NULL,
  `MobilePhone` varchar(50) DEFAULT NULL,
  `HomePhone` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL,
  `PagerNumber` varchar(150) DEFAULT NULL,
  `GenderCode` int(11) DEFAULT NULL,
  `Birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IdNumber` varchar(50) DEFAULT NULL,
  `FamilyStatusCode` int(11) DEFAULT NULL,
  `EducationCode` int(11) DEFAULT NULL,
  `Hobby` varchar(50) DEFAULT NULL,
  `Description` longtext,
  `OriginatingLeadId` char(40) DEFAULT NULL,
  `OwningBusinessUnit` char(40) DEFAULT NULL,
  `OwningTeam` char(40) DEFAULT NULL,
  `OwningUser` char(40) DEFAULT NULL,
  `IsPrivate` int(11) DEFAULT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CreatedBy` char(40) DEFAULT NULL,
  `ModifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ModifiedBy` char(40) DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `VersionNumber` int(11) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `countryCode` varchar(10) DEFAULT NULL,
  `cityCode` varchar(10) DEFAULT NULL,
  `Portrait` longblob,
  `isDeleted` int(11) DEFAULT NULL,
  `groups` varchar(255) DEFAULT NULL,
  `recentAssignDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recentShareDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ContactId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `tpyjd_country`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_country`;
CREATE TABLE `tpyjd_country` (
  `CountryId` char(40) NOT NULL DEFAULT '' COMMENT '国家ID',
  `CountryName` varchar(50) DEFAULT NULL COMMENT '国家',
  `CountryCode` varchar(50) DEFAULT NULL COMMENT '代码',
  `QuickCode` varchar(50) DEFAULT NULL COMMENT '助记码',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`CountryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_country
-- ----------------------------
INSERT INTO `tpyjd_country` VALUES ('ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '中国', 'China', 'ZG', '中华人民共和国', '1');

-- ----------------------------
-- Table structure for `tpyjd_dictmap`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_dictmap`;
CREATE TABLE `tpyjd_dictmap` (
  `ObjectTypeCode` int(11) NOT NULL AUTO_INCREMENT,
  `FieldName` varchar(100) DEFAULT NULL,
  `FieldValue` int(11) DEFAULT NULL,
  `DictId` char(40) DEFAULT NULL,
  `DisplayText` varchar(255) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `VersionNumber` int(11) DEFAULT NULL,
  `isDefault` int(11) DEFAULT NULL,
  PRIMARY KEY (`ObjectTypeCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_dictmap
-- ----------------------------

-- ----------------------------
-- Table structure for `tpyjd_province`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_province`;
CREATE TABLE `tpyjd_province` (
  `ProvinceId` char(40) NOT NULL DEFAULT '' COMMENT '省份ID',
  `CountryId` char(40) DEFAULT NULL COMMENT '所属国家ID',
  `ProvinceName` varchar(50) DEFAULT NULL COMMENT '省份',
  `QuickCode` varchar(50) DEFAULT NULL COMMENT '助记码',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`ProvinceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_province
-- ----------------------------
INSERT INTO `tpyjd_province` VALUES ('QL2x00SIn3Xn5wOhkeZh6dD11rsPqog2PSDe3FYT', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '北京', 'BJ', '北京市', '1');
INSERT INTO `tpyjd_province` VALUES ('Tdeqvq99Sm9zMxnbVJfgFJqTPwwgLf3XtRljPkAW', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '上海', 'SH', '&lt;font face=&quot;Arial, Verdana&quot;&gt;&lt;span style=&quot;font-size: 13.3333px;&quot;&gt;上海市&lt;/span&gt;&lt;/font&gt;', '1');
INSERT INTO `tpyjd_province` VALUES ('iZqbBLuCc2x0PA3INepjqyNZh8FVGXZlMDu4NaPe', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '天津', 'TJ', '天津市', '1');
INSERT INTO `tpyjd_province` VALUES ('6fcDwseyhF5ejB2Trf59TDLtNjNRvjHzyAfIqUcX', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '重庆', 'CQ', '重庆市', '1');
INSERT INTO `tpyjd_province` VALUES ('PhjSyF6GQ6Kf4kUtl8CfrjWEDW4F8xxyU1k8bCXu', 'ETGrKvPonCusyjqHiXpiL2wQiFm5AaRyY3WmD85j', '河北', 'HB', '河北省', '1');

-- ----------------------------
-- Table structure for `tpyjd_territory`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_territory`;
CREATE TABLE `tpyjd_territory` (
  `TerritoryId` char(40) NOT NULL DEFAULT '' COMMENT '领域ID',
  `ManagerId` char(40) DEFAULT NULL,
  `TerritoryName` varchar(100) DEFAULT NULL COMMENT '领域',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`TerritoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_territory
-- ----------------------------
INSERT INTO `tpyjd_territory` VALUES ('ols4nJfIwF8fc0LReauJORuWgYxlsN9Hos2mpXlT', 'yaolh', 'qweq112211', 'qweqweqw11142334', '1');
INSERT INTO `tpyjd_territory` VALUES ('20S4CbXPJ1fUwzDmDjzGhwMOWr99FChyyArsJV0K', 'yaolh', '新添加', '&lt;ol&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial, Verdana; font-size: 13.3333px;&quot;&gt;案件收到货&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial, Verdana; font-size: 13.3333px;&quot;&gt;2342i&lt;/span&gt;&lt;/li&gt;&lt;/ol&gt;', '103');

-- ----------------------------
-- Table structure for `tpyjd_user`
-- ----------------------------
DROP TABLE IF EXISTS `tpyjd_user`;
CREATE TABLE `tpyjd_user` (
  `UserId` char(40) DEFAULT NULL COMMENT '用户ID',
  `TerritoryId` char(40) DEFAULT NULL COMMENT '领域ID',
  `BusinessUnitId` char(40) DEFAULT NULL,
  `ManagerId` char(40) DEFAULT NULL COMMENT '管理员ID',
  `LoginName` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `Password` varchar(255) DEFAULT NULL COMMENT '密码',
  `FullName` varchar(100) DEFAULT NULL COMMENT '全名',
  `JobTitle` varchar(100) DEFAULT NULL COMMENT '头衔',
  `CountryId` char(40) DEFAULT NULL COMMENT '国家ID',
  `ProvinceId` char(40) DEFAULT NULL COMMENT '所属省份',
  `CityId` char(40) DEFAULT NULL COMMENT '所属城市',
  `PostalCode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `Address` varchar(150) DEFAULT NULL COMMENT '地址',
  `WorkPhone` varchar(50) DEFAULT NULL COMMENT '办公电话',
  `HomePhone` varchar(50) DEFAULT NULL COMMENT '家庭电话',
  `MobilePhone` varchar(50) DEFAULT NULL COMMENT '手机',
  `EmailAddress` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `PagerNumber` varchar(150) DEFAULT NULL COMMENT '寻呼机',
  `IsLicensed` int(11) DEFAULT NULL COMMENT '允许标识',
  `LicenseType` varchar(255) DEFAULT NULL COMMENT '执照类型',
  `IsDisabled` int(11) DEFAULT NULL COMMENT '是否为残疾人',
  `Description` longtext COMMENT '描述',
  `VersionNumber` int(11) DEFAULT NULL COMMENT '版本类型',
  `SMSQuota` int(11) DEFAULT NULL COMMENT '短信配额',
  `recentLoginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近登录时间',
  `servicePhone` varchar(50) DEFAULT NULL COMMENT '服务热线',
  `isDeleted` int(11) DEFAULT NULL COMMENT '删除标识',
  `ccServerId` char(40) DEFAULT NULL,
  `ccExtension` varchar(50) DEFAULT NULL,
  `ccChannel` varchar(50) DEFAULT NULL,
  `faxExtension` varchar(50) DEFAULT NULL,
  `MACAddress` varchar(50) DEFAULT NULL,
  `usingUSBKey` int(11) DEFAULT NULL,
  `USBKeySign` varchar(50) DEFAULT NULL,
  `roleId` char(40) DEFAULT NULL COMMENT '角色ID',
  `maxAppliesCount` int(11) DEFAULT NULL COMMENT '最大应用数量',
  `appliesForIsNeedAudit` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpyjd_user
-- ----------------------------
