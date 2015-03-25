/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : witkey

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-03-24 23:31:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bid`
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `bidId` int(11) NOT NULL AUTO_INCREMENT,
  `choose` bit(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  `serverName` varchar(255) DEFAULT NULL,
  `upload` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bidId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bid
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) DEFAULT NULL,
  `catNote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Java', 'Java语言开发项目');
INSERT INTO `category` VALUES ('2', 'C#', 'C#开发项目');
INSERT INTO `category` VALUES ('3', 'C++', 'C开发项目');
INSERT INTO `category` VALUES ('4', 'C', 'C');
INSERT INTO `category` VALUES ('5', 'Python', 'python');
INSERT INTO `category` VALUES ('6', 'android', 'android');
INSERT INTO `category` VALUES ('7', 'lua', 'lua');
INSERT INTO `category` VALUES ('8', 'vb', 'vb');

-- ----------------------------
-- Table structure for `result`
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `resultId` int(11) NOT NULL AUTO_INCREMENT,
  `serverId` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `Review` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `reviewContent` varchar(255) DEFAULT NULL,
  `reviewTime` varchar(255) DEFAULT NULL,
  `reviewName` varchar(255) DEFAULT NULL,
  `isAnnoymous` bit(1) DEFAULT NULL,
  `isAudit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Review`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------

-- ----------------------------
-- Table structure for `smallcategory`
-- ----------------------------
DROP TABLE IF EXISTS `smallcategory`;
CREATE TABLE `smallcategory` (
  `smallId` int(11) NOT NULL AUTO_INCREMENT,
  `smallName` varchar(255) DEFAULT NULL,
  `smallNote` varchar(255) DEFAULT NULL,
  `catId` int(11) DEFAULT NULL,
  PRIMARY KEY (`smallId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smallcategory
-- ----------------------------
INSERT INTO `smallcategory` VALUES ('1', '开发', '开发', '1');
INSERT INTO `smallcategory` VALUES ('2', '调试', '调试', '1');

-- ----------------------------
-- Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `taskContent` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `smallId` int(11) DEFAULT NULL,
  `way` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `taskState` bit(1) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `bonusState` int(11) DEFAULT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1', 'java项目开发', 'java项目开发', '2015-03-25', '100', '1', '0', '0', '', '2015-03-23 20:20:51', '0', '', '0', '0');
INSERT INTO `task` VALUES ('2', '调试', '帮忙调试一个java程序', '2016-01-01', '500', '1', '0', '0', '', '2015-03-23 20:41:17', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userAddress` varchar(255) DEFAULT NULL,
  `userState` int(11) DEFAULT NULL,
  `serverName` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `serverNote` varchar(255) DEFAULT NULL,
  `smallName` varchar(255) DEFAULT NULL,
  `serverState` int(11) DEFAULT NULL,
  `taskCount` int(11) DEFAULT NULL,
  `bidCount` int(11) DEFAULT NULL,
  `resultCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '1', 't', '15888888888', null, '122222@qq.com', null, '1', null, null, null, null, null, '0', null, null);
INSERT INTO `user` VALUES ('2', 'test1', '22', '', '', null, '', null, '1', null, null, null, null, null, '0', null, null);
INSERT INTO `user` VALUES ('3', 'admin', 'admin', 'admin', null, null, null, null, '0', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '222', '222', '222', '', null, '', null, '1', null, null, null, null, null, '0', null, null);
