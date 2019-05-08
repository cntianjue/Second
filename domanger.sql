/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : domanger

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2019-05-08 15:26:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `tid` (`tid`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '一年级一班', '1', '2019-05-03 13:48:34');
INSERT INTO `class` VALUES ('2', '一年级二班', '2', '2019-05-03 13:48:34');
INSERT INTO `class` VALUES ('3', '二年级一班', '3', '2019-05-03 13:48:34');
INSERT INTO `class` VALUES ('4', '二年级二班', '4', '2019-05-03 13:48:34');

-- ----------------------------
-- Table structure for dorminfo
-- ----------------------------
DROP TABLE IF EXISTS `dorminfo`;
CREATE TABLE `dorminfo` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `saddress` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `have` int(11) DEFAULT '0',
  `master` varchar(255) DEFAULT NULL,
  `phone` mediumtext,
  `type` varchar(255) DEFAULT NULL,
  `rtype` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `rtime` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `dif` int(255) DEFAULT '1',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorminfo
-- ----------------------------
INSERT INTO `dorminfo` VALUES ('101', '成都市锦江区芙蓉西路530号', '4', '4', '劫', '666666', '男生宿舍', '四室一厅', '半年付', '2019-05-03 13:48:34', '1000/月', '1', '1');
INSERT INTO `dorminfo` VALUES ('102', '四川省成都市武侯区燃灯寺街', '4', '3', '火影劫', '888888', '男生宿舍', '四室一厅', '半年付', '2019-05-03 13:48:34', '1200/月', '1', '1');
INSERT INTO `dorminfo` VALUES ('103', '黄土镇汉源路40号', '2', '2', '儿童劫', '777777', '男生宿舍', '二室一厅', '半年付', '2019-05-03 13:48:34', '1600/月', '1', '1');
INSERT INTO `dorminfo` VALUES ('104', '成都市锦江区东大街下东大街段', '4', '3', '圣诞劫', '999999', '男生宿舍', '四室一厅', '半年付', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `dorminfo` VALUES ('105', '四川省成都市武侯区芳草东街', '3', '1', '情人劫', '222222', '男生宿舍', '三室一厅', '一年付', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `dorminfo` VALUES ('107', '21·3', '31', '0', '321321', '332131', 'c', '3213', '321', '2019-05-07 12:02:50', '3213', '1', '0');

-- ----------------------------
-- Table structure for fault
-- ----------------------------
DROP TABLE IF EXISTS `fault`;
CREATE TABLE `fault` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `htime` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fault
-- ----------------------------
INSERT INTO `fault` VALUES ('1', '水龙头坏了', '2019-05-03 13:48:34', '已解决', '101');
INSERT INTO `fault` VALUES ('2', '厕所堵塞', '2019-05-03 13:48:34', '已解决', '101');
INSERT INTO `fault` VALUES ('3', '天然气故障', '2019-05-03 13:48:34', '已解决', '102');
INSERT INTO `fault` VALUES ('4', '灯坏了', '2019-05-03 13:48:34', '已解决', '103');
INSERT INTO `fault` VALUES ('5', '漏水', '2019-05-03 13:48:34', '已解决', '104');
INSERT INTO `fault` VALUES ('17', '有点坏了', '2019-05-07 00:00:00', '已解决', '105');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` char(20) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'users');
INSERT INTO `role` VALUES ('2', 'admins');
INSERT INTO `role` VALUES ('3', 'superadmins');
INSERT INTO `role` VALUES ('11', 'superadmins');

-- ----------------------------
-- Table structure for roomifo
-- ----------------------------
DROP TABLE IF EXISTS `roomifo`;
CREATE TABLE `roomifo` (
  `sname` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `riphone` varchar(255) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL,
  `livetime` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `ifs` int(255) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomifo
-- ----------------------------
INSERT INTO `roomifo` VALUES ('小劫', '101', '111111', '1', '1', '2019-05-03 13:48:34', '1000/月', '1', '1');
INSERT INTO `roomifo` VALUES ('小小劫', '101', '222222', '2', '2', '2019-05-03 13:48:34', '1000/月', '1', '1');
INSERT INTO `roomifo` VALUES ('小小小劫', '101', '333333', '3', '3', '2019-05-03 13:48:34', '1000/月', '1', '1');
INSERT INTO `roomifo` VALUES ('劫小', '101', '111112', '1', '4', '2019-05-03 13:48:34', '1200/月', '1', '1');
INSERT INTO `roomifo` VALUES ('劫小小', '102', '222221', '2', '5', '2019-05-03 13:48:34', '1200/月', '1', '1');
INSERT INTO `roomifo` VALUES ('小劫小', '102', '111113', '1', '6', '2019-05-03 13:48:34', '1600/月', '1', '1');
INSERT INTO `roomifo` VALUES ('特小劫', '102', '111115', '2', '7', '2019-05-03 13:48:34', '1600/月', '1', '1');
INSERT INTO `roomifo` VALUES ('中劫', '103', '222225', '1', '8', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `roomifo` VALUES ('中中劫', '103', '000001', '2', '9', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `roomifo` VALUES ('劫中劫', '104', '000002', '3', '10', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `roomifo` VALUES ('大劫', '104', '999991', '1', '11', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `roomifo` VALUES ('大大劫', '104', '999992', '2', '12', '2019-05-03 13:48:34', '800/月', '1', '1');
INSERT INTO `roomifo` VALUES ('超大劫', '105', '888888', '3', '13', '2019-05-03 13:48:34', '800/月', '1', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `sif` int(255) DEFAULT '1',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小劫', '男', '111111', '1', '/images/123232131313.jpg', '1');
INSERT INTO `student` VALUES ('2', '小小劫', '男', '222222', '1', '/images/1.jpg', '1');
INSERT INTO `student` VALUES ('3', '小小小劫', '男', '333333', '1', '/images/2.jpg', '1');
INSERT INTO `student` VALUES ('4', '劫小', '男', '111112', '2', '/images/3.jpg', '1');
INSERT INTO `student` VALUES ('5', '劫小小', '男', '222221', '2', '/images/4.jpg', '1');
INSERT INTO `student` VALUES ('6', '小劫小', '男', '111113', '2', '/images/5.jpg', '1');
INSERT INTO `student` VALUES ('7', '特小劫', '男', '111115', '2', '/images/6.jpg', '1');
INSERT INTO `student` VALUES ('8', '中劫', '男', '222225', '3', '/images/7.jpg', '1');
INSERT INTO `student` VALUES ('9', '中中劫', '男', '000001', '3', '/images/8.jpg', '1');
INSERT INTO `student` VALUES ('10', '劫中劫', '男', '000002', '3', '/images/9.jpg', '1');
INSERT INTO `student` VALUES ('11', '大劫', '男', '999991', '4', '/images/10.jpg', '1');
INSERT INTO `student` VALUES ('12', '大大劫', '男', '999992', '4', '/images/11.jpg', '1');
INSERT INTO `student` VALUES ('13', '超大劫', '男', '888888', '4', '/images/6.jpg', '1');
INSERT INTO `student` VALUES ('27', '张三', '男', '110', '4', '/images/1557231568305.jpg', '0');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '老师1');
INSERT INTO `teacher` VALUES ('2', '老师2');
INSERT INTO `teacher` VALUES ('3', '老师3');
INSERT INTO `teacher` VALUES ('4', '老师4');
INSERT INTO `teacher` VALUES ('5', '小王');
INSERT INTO `teacher` VALUES ('6', '小张');
INSERT INTO `teacher` VALUES ('7', '小刘');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `account` char(20) NOT NULL DEFAULT '',
  `pwd` char(32) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '038bdaf98f2037b31f1e75b5b4c9b26e');
INSERT INTO `user` VALUES ('lisi', '8c702ae443795331c91cfab48f3f3833');
INSERT INTO `user` VALUES ('superadmin', '8a10e09438073ba4a7b3fcbb1caee578');
INSERT INTO `user` VALUES ('zhangsan', '2a0d136ceacafe198ea64ac09daaf1b6');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `account` char(20) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  KEY `user_role_ibfk_2` (`rid`),
  KEY `user_role_ibfk_3` (`account`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_ibfk_3` FOREIGN KEY (`account`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('zhangsan', '1');
INSERT INTO `user_role` VALUES ('admin', '2');
INSERT INTO `user_role` VALUES ('superadmin', '3');
INSERT INTO `user_role` VALUES ('lisi', '11');
