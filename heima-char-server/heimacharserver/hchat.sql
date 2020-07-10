/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : hchat

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-07-10 16:00:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_chat_record`;
CREATE TABLE `tb_chat_record` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `friendid` varchar(255) DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `has_delete` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_chat_record
-- ----------------------------

-- ----------------------------
-- Table structure for tb_friend
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend`;
CREATE TABLE `tb_friend` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `friends_id` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_friend
-- ----------------------------

-- ----------------------------
-- Table structure for tb_friend_req
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend_req`;
CREATE TABLE `tb_friend_req` (
  `id` varchar(255) NOT NULL,
  `from_userid` varchar(255) DEFAULT NULL,
  `to_userid` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_friend_req
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pic_small` varchar(255) DEFAULT NULL,
  `pic_normal` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
