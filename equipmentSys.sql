/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : db_equipment

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-06-22 10:12:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', '工程一部2', '工程一部。2');
INSERT INTO `t_department` VALUES ('2', '工程二部', '工程二部。');
INSERT INTO `t_department` VALUES ('3', '工程三部', '工程三部。');
INSERT INTO `t_department` VALUES ('4', '1', null);
INSERT INTO `t_department` VALUES ('5', '2', null);
INSERT INTO `t_department` VALUES ('7', '4', null);

-- ----------------------------
-- Table structure for `t_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `t_equipment`;
CREATE TABLE `t_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `no` varchar(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_equipment` (`typeId`),
  CONSTRAINT `FK_t_equipment` FOREIGN KEY (`typeId`) REFERENCES `t_equipmenttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_equipment
-- ----------------------------
INSERT INTO `t_equipment` VALUES ('1', '发电机', '001', '1', '1', '发电机。');
INSERT INTO `t_equipment` VALUES ('2', '电路板', '002', '2', '1', '电路板。');
INSERT INTO `t_equipment` VALUES ('3', '压缩机', '003', '1', '1', '压缩机设备');

-- ----------------------------
-- Table structure for `t_equipmenttype`
-- ----------------------------
DROP TABLE IF EXISTS `t_equipmenttype`;
CREATE TABLE `t_equipmenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_equipmenttype
-- ----------------------------
INSERT INTO `t_equipmenttype` VALUES ('1', '强电型', '强电型。');
INSERT INTO `t_equipmenttype` VALUES ('2', '弱电型', '弱电型。');

-- ----------------------------
-- Table structure for `t_repair`
-- ----------------------------
DROP TABLE IF EXISTS `t_repair`;
CREATE TABLE `t_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentId` int(11) DEFAULT NULL,
  `userman` varchar(20) DEFAULT NULL,
  `repairman` varchar(20) DEFAULT NULL,
  `repairTime` datetime DEFAULT NULL,
  `finishTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `finishState` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair
-- ----------------------------
INSERT INTO `t_repair` VALUES ('24', '1', 'jack', 'marry', '2015-02-02 16:26:50', '2015-02-02 16:26:59', '1', '2');
INSERT INTO `t_repair` VALUES ('25', '1', 'jack', 'marry', '2015-02-02 16:27:11', '2015-02-02 16:27:18', '1', '2');
INSERT INTO `t_repair` VALUES ('26', '1', 'jack', 'marry', '2015-02-02 16:27:31', '2015-02-02 16:27:35', '2', '2');
INSERT INTO `t_repair` VALUES ('27', '2', 'jack', 'marry', '2015-03-25 08:57:19', '2015-03-31 09:01:08', '2', '2');
INSERT INTO `t_repair` VALUES ('28', '1', 'jack', 'marry', '2015-03-31 09:03:03', '2015-03-31 09:03:37', '1', '2');
INSERT INTO `t_repair` VALUES ('29', '2', 'jack', 'marry', '2018-05-31 11:21:50', '2018-05-31 11:22:10', '1', '2');
INSERT INTO `t_repair` VALUES ('30', '1', 'jack', 'marry', '2018-06-01 16:05:40', '2018-06-01 16:06:28', '1', '2');
INSERT INTO `t_repair` VALUES ('31', '3', 'jack', 'marry', '2018-06-18 09:51:55', '2018-06-18 09:56:30', '1', '2');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `trueName` varchar(20) DEFAULT NULL,
  `roleName` varchar(20) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_user` (`deptId`),
  CONSTRAINT `FK_t_user` FOREIGN KEY (`deptId`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '领导', '管理员', '1');
INSERT INTO `t_user` VALUES ('2', 'jack', '123', '杰克', '使用者', '2');
INSERT INTO `t_user` VALUES ('3', 'marry', '123', '玛丽', '维修者', '3');
INSERT INTO `t_user` VALUES ('4', 'json2', '12322', '汤姆', '维修者', '3');
INSERT INTO `t_user` VALUES ('5', 'tom', '123', 'tom', '使用者', '2');
