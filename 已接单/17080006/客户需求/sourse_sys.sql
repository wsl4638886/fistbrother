/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : sourse_sys

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-08-15 17:10:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `ID` varchar(64) NOT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `REMARK` varchar(500) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('402880e85de37669015de37901930002', '9', '九年级', '', '2017-08-15 09:19:05');
INSERT INTO `class_info` VALUES ('402880ea5dc48480015dc485422d0025', '7', '七年级', '', '2017-08-09 09:04:14');
INSERT INTO `class_info` VALUES ('402880eb5dcf5c75015dcf70d0860053', '8', '八年级', '', '2017-08-11 11:57:43');

-- ----------------------------
-- Table structure for class_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `class_info_detail`;
CREATE TABLE `class_info_detail` (
  `ID` varchar(64) NOT NULL,
  `CLASS_CODE` int(3) DEFAULT NULL,
  `CLASS_NAME` varchar(1000) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `CLASS_ID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info_detail
-- ----------------------------
INSERT INTO `class_info_detail` VALUES ('402880e85de37669015de37901930003', '1', '(一)班', '9', '九年级', '402880e85de37669015de37901930002');
INSERT INTO `class_info_detail` VALUES ('402880e85de37669015de37901930004', '2', '(二)班', '9', '九年级', '402880e85de37669015de37901930002');
INSERT INTO `class_info_detail` VALUES ('402880e85de37669015de37901930005', '3', '(三)班', '9', '九年级', '402880e85de37669015de37901930002');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422d0026', '1', '(一)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422d0027', '2', '(二)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0028', '3', '(三)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0029', '4', '(四)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002a', '5', '(五)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002b', '6', '(六)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002c', '7', '(七)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002d', '8', '(八)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002e', '9', '(九)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e002f', '10', '(十)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0030', '11', '(十一)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0031', '12', '(十二)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0032', '13', '(十三)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880ea5dc48480015dc485422e0033', '14', '(十四)班', '7', '七年级', '402880ea5dc48480015dc485422d0025');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870054', '1', '(一)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870055', '2', '(二)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870056', '3', '(三)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870057', '4', '(四)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870058', '5', '(五)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0870059', '6', '(六)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005a', '7', '(七)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005b', '8', '(八)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005c', '9', '(九)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005d', '10', '(十)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005e', '11', '(十一)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d087005f', '12', '(十二)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0880060', '13', '(十三)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0880061', '14', '(十四)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');
INSERT INTO `class_info_detail` VALUES ('402880eb5dcf5c75015dcf70d0880062', '15', '(十五)班', '8', '八年级', '402880eb5dcf5c75015dcf70d0860053');

-- ----------------------------
-- Table structure for class_teacher_km
-- ----------------------------
DROP TABLE IF EXISTS `class_teacher_km`;
CREATE TABLE `class_teacher_km` (
  `ID` varchar(64) NOT NULL,
  `KCB_ID` varchar(64) DEFAULT NULL,
  `TEACHER_ID` varchar(64) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `CLASS_CODE` int(3) DEFAULT NULL,
  `CLASS_NAME` varchar(50) DEFAULT NULL,
  `KM_CODE` int(3) DEFAULT NULL,
  `KM_NAME` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_teacher_km
-- ----------------------------
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf2d3a0000', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2bddae006a', '7', '七年级', '9', '(九)班', '1', '语文', '2017-08-09 19:44:13');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf2d410001', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2bddae006a', '7', '七年级', '10', '(十)班', '1', '语文', '2017-08-09 19:44:13');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf3eb40002', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2b90540069', '7', '七年级', '8', '(八)班', '1', '语文', '2017-08-09 19:44:17');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf4c6a0003', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2b33980068', '7', '七年级', '7', '(七)班', '1', '语文', '2017-08-09 19:44:21');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf5ca90004', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2a9c530066', '7', '七年级', '3', '(三)班', '1', '语文', '2017-08-09 19:44:25');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf5ca90005', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2a9c530066', '7', '七年级', '4', '(四)班', '1', '语文', '2017-08-09 19:44:25');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf6ae30006', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2a3bb30065', '7', '七年级', '1', '(一)班', '1', '语文', '2017-08-09 19:44:28');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf6ae30007', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2a3bb30065', '7', '七年级', '2', '(二)班', '1', '语文', '2017-08-09 19:44:28');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf7cea0008', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2f0cf70074', '7', '七年级', '13', '(十三)班', '2', '数学', '2017-08-09 19:44:33');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6cf7cea0009', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2f0cf70074', '7', '七年级', '14', '(十四)班', '2', '数学', '2017-08-09 19:44:33');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6d1427f000a', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab340d2c0081', '7', '七年级', '5', '(五)班', '5', '历史', '2017-08-09 19:46:29');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6d1427f000b', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab340d2c0081', '7', '七年级', '6', '(六)班', '5', '历史', '2017-08-09 19:46:29');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6d1427f000c', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab340d2c0081', '7', '七年级', '7', '(七)班', '5', '历史', '2017-08-09 19:46:29');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6d1427f000d', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab340d2c0081', '7', '七年级', '8', '(八)班', '5', '历史', '2017-08-09 19:46:29');
INSERT INTO `class_teacher_km` VALUES ('402881e45dc6cf0e015dc6d1427f000e', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab340d2c0081', '7', '七年级', '9', '(九)班', '5', '历史', '2017-08-09 19:46:29');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab39ea0e008f', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2cb4df006c', '7', '七年级', '13', '(十三)班', '1', '语文', '2017-08-04 11:11:26');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab39ea0e0090', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2cb4df006c', '7', '七年级', '14', '(十四)班', '1', '语文', '2017-08-04 11:11:26');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3a38840091', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2c3138006b', '7', '七年级', '11', '(十一)班', '1', '语文', '2017-08-04 11:11:46');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3a38850092', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2c3138006b', '7', '七年级', '12', '(十二)班', '1', '语文', '2017-08-04 11:11:46');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3b3d8a0097', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2ae2220067', '7', '七年级', '5', '(五)班', '1', '语文', '2017-08-04 11:12:53');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3b3d8a0098', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2ae2220067', '7', '七年级', '6', '(六)班', '1', '语文', '2017-08-04 11:12:53');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3be5eb009d', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2d1dad006d', '7', '七年级', '1', '(一)班', '2', '数学', '2017-08-04 11:13:36');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3c1fb9009e', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2d4b7e006e', '7', '七年级', '2', '(二)班', '2', '数学', '2017-08-04 11:13:51');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3c454b009f', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2d9af3006f', '7', '七年级', '3', '(三)班', '2', '数学', '2017-08-04 11:14:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3c454b00a0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2d9af3006f', '7', '七年级', '4', '(四)班', '2', '数学', '2017-08-04 11:14:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3c7a2300a1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2df5da0070', '7', '七年级', '5', '(五)班', '2', '数学', '2017-08-04 11:14:14');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3c7a2300a2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2df5da0070', '7', '七年级', '6', '(六)班', '2', '数学', '2017-08-04 11:14:14');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3cac7900a3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2e44430071', '7', '七年级', '7', '(七)班', '2', '数学', '2017-08-04 11:14:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3cac7a00a4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2e44430071', '7', '七年级', '8', '(八)班', '2', '数学', '2017-08-04 11:14:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3cd6f100a5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2e704d0072', '7', '七年级', '9', '(九)班', '2', '数学', '2017-08-04 11:14:37');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3cd6f100a6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2e704d0072', '7', '七年级', '10', '(十)班', '2', '数学', '2017-08-04 11:14:37');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3d16c400a7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2eb4460073', '7', '七年级', '11', '(十一)班', '2', '数学', '2017-08-04 11:14:54');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3d16c400a8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2eb4460073', '7', '七年级', '12', '(十二)班', '2', '数学', '2017-08-04 11:14:54');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3d79dc00ab', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2f6d230075', '7', '七年级', '1', '(一)班', '3', '英语', '2017-08-04 11:15:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3d916100ac', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2fab190076', '7', '七年级', '2', '(二)班', '3', '英语', '2017-08-04 11:15:25');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3db73100ad', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2ff4350077', '7', '七年级', '3', '(三)班', '3', '英语', '2017-08-04 11:15:35');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3db73100ae', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab2ff4350077', '7', '七年级', '4', '(四)班', '3', '英语', '2017-08-04 11:15:35');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3ddea200af', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3048e70078', '7', '七年级', '5', '(五)班', '3', '英语', '2017-08-04 11:15:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3ddea200b0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3048e70078', '7', '七年级', '6', '(六)班', '3', '英语', '2017-08-04 11:15:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3dfd4a00b1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab30ccf40079', '7', '七年级', '7', '(七)班', '3', '英语', '2017-08-04 11:15:53');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3dfd4a00b2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab30ccf40079', '7', '七年级', '8', '(八)班', '3', '英语', '2017-08-04 11:15:53');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e24f600b3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab30fbc5007a', '7', '七年级', '9', '(九)班', '3', '英语', '2017-08-04 11:16:03');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e24f700b4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab30fbc5007a', '7', '七年级', '10', '(十)班', '3', '英语', '2017-08-04 11:16:03');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e4b7200b5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab315912007b', '7', '七年级', '11', '(十一)班', '3', '英语', '2017-08-04 11:16:13');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e4b7200b6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab315912007b', '7', '七年级', '12', '(十二)班', '3', '英语', '2017-08-04 11:16:13');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e5bb900b7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab31dc51007c', '7', '七年级', '13', '(十三)班', '3', '英语', '2017-08-04 11:16:17');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3e5bba00b8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab31dc51007c', '7', '七年级', '14', '(十四)班', '3', '英语', '2017-08-04 11:16:17');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00b9', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '1', '(一)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00ba', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '2', '(二)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00bb', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '3', '(三)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00bc', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '4', '(四)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00bd', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '5', '(五)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3eaddd00be', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab322ed1007d', '7', '七年级', '6', '(六)班', '4', '政治', '2017-08-04 11:16:38');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00bf', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '7', '(七)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00c0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '8', '(八)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00c1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '9', '(九)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00c2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '10', '(十)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00c3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '11', '(十一)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f03af00c4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab326432007e', '7', '七年级', '12', '(十二)班', '4', '政治', '2017-08-04 11:17:00');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f1bfc00c5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab329e78007f', '7', '七年级', '13', '(十三)班', '4', '政治', '2017-08-04 11:17:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f1bfc00c6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab329e78007f', '7', '七年级', '14', '(十四)班', '4', '政治', '2017-08-04 11:17:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f7fca00c7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab33205a0080', '7', '七年级', '1', '(一)班', '5', '历史', '2017-08-04 11:17:32');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f7fca00c8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab33205a0080', '7', '七年级', '2', '(二)班', '5', '历史', '2017-08-04 11:17:32');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f7fca00c9', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab33205a0080', '7', '七年级', '3', '(三)班', '5', '历史', '2017-08-04 11:17:32');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab3f7fca00ca', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab33205a0080', '7', '七年级', '4', '(四)班', '5', '历史', '2017-08-04 11:17:32');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40105c00d0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3445df0082', '7', '七年级', '10', '(十)班', '5', '历史', '2017-08-04 11:18:09');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40105c00d1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3445df0082', '7', '七年级', '11', '(十一)班', '5', '历史', '2017-08-04 11:18:09');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40105c00d2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3445df0082', '7', '七年级', '12', '(十二)班', '5', '历史', '2017-08-04 11:18:09');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40105c00d3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3445df0082', '7', '七年级', '13', '(十三)班', '5', '历史', '2017-08-04 11:18:09');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40105c00d4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3445df0082', '7', '七年级', '14', '(十四)班', '5', '历史', '2017-08-04 11:18:09');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4056a600d5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab34cdad0083', '7', '七年级', '1', '(一)班', '6', '地理', '2017-08-04 11:18:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4056a600d6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab34cdad0083', '7', '七年级', '2', '(二)班', '6', '地理', '2017-08-04 11:18:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4056a600d7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab34cdad0083', '7', '七年级', '3', '(三)班', '6', '地理', '2017-08-04 11:18:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab409d0f00d8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3534550084', '7', '七年级', '4', '(四)班', '6', '地理', '2017-08-04 11:18:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab409d0f00d9', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3534550084', '7', '七年级', '5', '(五)班', '6', '地理', '2017-08-04 11:18:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab409d0f00da', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3534550084', '7', '七年级', '6', '(六)班', '6', '地理', '2017-08-04 11:18:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab409d0f00db', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3534550084', '7', '七年级', '7', '(七)班', '6', '地理', '2017-08-04 11:18:45');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40f02300dc', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab358db20085', '7', '七年级', '8', '(八)班', '6', '地理', '2017-08-04 11:19:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40f02300dd', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab358db20085', '7', '七年级', '9', '(九)班', '6', '地理', '2017-08-04 11:19:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40f02300de', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab358db20085', '7', '七年级', '10', '(十)班', '6', '地理', '2017-08-04 11:19:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab40f02300df', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab358db20085', '7', '七年级', '11', '(十一)班', '6', '地理', '2017-08-04 11:19:06');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab41217f00e0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab35ebcb0086', '7', '七年级', '12', '(十二)班', '6', '地理', '2017-08-04 11:19:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab41217f00e1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab35ebcb0086', '7', '七年级', '13', '(十三)班', '6', '地理', '2017-08-04 11:19:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab41218000e2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab35ebcb0086', '7', '七年级', '14', '(十四)班', '6', '地理', '2017-08-04 11:19:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab464fb600e3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab36b9600087', '7', '七年级', '1', '(一)班', '9', '生物', '2017-08-04 11:24:58');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab464fb600e4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab36b9600087', '7', '七年级', '2', '(二)班', '9', '生物', '2017-08-04 11:24:58');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab464fb600e5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab36b9600087', '7', '七年级', '3', '(三)班', '9', '生物', '2017-08-04 11:24:58');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab464fb600e6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab36b9600087', '7', '七年级', '4', '(四)班', '9', '生物', '2017-08-04 11:24:58');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab464fb600e7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab36b9600087', '7', '七年级', '5', '(五)班', '9', '生物', '2017-08-04 11:24:58');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00e8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '6', '(六)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00e9', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '7', '(七)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00ea', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '8', '(八)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00eb', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '9', '(九)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00ec', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '10', '(十)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab46bf4e00ed', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3701190088', '7', '七年级', '11', '(十一)班', '9', '生物', '2017-08-04 11:25:27');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47798c00ee', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3766fd0089', '7', '七年级', '12', '(十二)班', '9', '生物', '2017-08-04 11:26:14');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47798c00ef', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3766fd0089', '7', '七年级', '13', '(十三)班', '9', '生物', '2017-08-04 11:26:14');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47798c00f0', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3766fd0089', '7', '七年级', '14', '(十四)班', '9', '生物', '2017-08-04 11:26:14');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f1', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '1', '(一)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f2', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '2', '(二)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f3', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '3', '(三)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f4', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '4', '(四)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f5', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '5', '(五)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f6', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '6', '(六)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47c3ff00f7', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab37bbcd008a', '7', '七年级', '7', '(七)班', '10', '体育', '2017-08-04 11:26:33');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7b00f8', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '8', '(八)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7b00f9', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '9', '(九)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7c00fa', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '10', '(十)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7c00fb', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '11', '(十一)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7c00fc', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '12', '(十二)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7c00fd', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '13', '(十三)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab47fc7c00fe', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38223a008b', '7', '七年级', '14', '(十四)班', '10', '体育', '2017-08-04 11:26:48');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a300ff', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '1', '(一)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30100', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '2', '(二)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30101', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '3', '(三)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30102', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '4', '(四)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30103', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '5', '(五)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30104', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '6', '(六)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30105', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '7', '(七)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30106', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '8', '(八)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30107', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '9', '(九)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30108', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '10', '(十)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a30109', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '11', '(十一)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a3010a', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '12', '(十二)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a3010b', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '13', '(十三)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4847a3010c', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab38eb07008d', '7', '七年级', '14', '(十四)班', '11', '美术', '2017-08-04 11:27:07');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab487790010d', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '1', '(一)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab487790010e', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '2', '(二)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab487790010f', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '3', '(三)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900110', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '4', '(四)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900111', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '5', '(五)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900112', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '6', '(六)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900113', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '7', '(七)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900114', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '8', '(八)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900115', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '9', '(九)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900116', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '10', '(十)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900117', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '11', '(十一)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900118', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '12', '(十二)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab4877900119', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '13', '(十三)班', '12', '音乐', '2017-08-04 11:27:19');
INSERT INTO `class_teacher_km` VALUES ('8a9495685daac1bf015dab487790011a', '8a9495685daac1bf015dab398b90008e', '8a9495685daac1bf015dab3883ea008c', '7', '七年级', '14', '(十四)班', '12', '音乐', '2017-08-04 11:27:19');

-- ----------------------------
-- Table structure for grade_km
-- ----------------------------
DROP TABLE IF EXISTS `grade_km`;
CREATE TABLE `grade_km` (
  `ID` varchar(64) NOT NULL,
  `GRADE_CODE` varchar(50) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `REMARK` varchar(500) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade_km
-- ----------------------------
INSERT INTO `grade_km` VALUES ('402880ea5dc48480015dc485249c000b', '7', '七年级', '', '2017-08-09 09:04:06');
INSERT INTO `grade_km` VALUES ('8a9495685daac1bf015daac31e62000b', '8', '八年级', '', '2017-08-04 09:01:40');
INSERT INTO `grade_km` VALUES ('8a9495685daac1bf015daac3b88b0037', '9', '九年级', '', '2017-08-04 09:02:20');

-- ----------------------------
-- Table structure for grade_km_detail
-- ----------------------------
DROP TABLE IF EXISTS `grade_km_detail`;
CREATE TABLE `grade_km_detail` (
  `ID` varchar(64) NOT NULL,
  `KM_CODE` int(3) DEFAULT NULL,
  `KM_NAME` varchar(50) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `KM_NUM` int(11) DEFAULT NULL,
  `GRADE_KM_ID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade_km_detail
-- ----------------------------
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c000c', '1', '语文', '7', '七年级', '6', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c000d', '2', '数学', '7', '七年级', '5', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c000e', '3', '英语', '7', '七年级', '5', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c000f', '4', '政治', '7', '七年级', '4', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c0010', '5', '历史', '7', '七年级', '3', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249c0011', '6', '地理', '7', '七年级', '3', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249d0012', '9', '生物', '7', '七年级', '3', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249d0013', '10', '体育', '7', '七年级', '2', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249f0014', '11', '美术', '7', '七年级', '1', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('402880ea5dc48480015dc485249f0015', '12', '音乐', '7', '七年级', '1', '402880ea5dc48480015dc485249c000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e62000c', '1', '语文', '8', '八年级', '6', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e62000d', '2', '数学', '8', '八年级', '5', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e62000e', '3', '英语', '8', '八年级', '3', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e62000f', '4', '政治', '8', '八年级', '4', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e620010', '5', '历史', '8', '八年级', '2', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e620011', '6', '地理', '8', '八年级', '3', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e630012', '7', '物理', '8', '八年级', '4', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e630013', '10', '体育', '8', '八年级', '2', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e630014', '11', '美术', '8', '八年级', '1', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac31e630015', '12', '音乐', '8', '八年级', '1', '8a9495685daac1bf015daac31e62000b');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88b0038', '1', '语文', '9', '九年级', '3', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88b0039', '2', '数学', '9', '九年级', '5', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88b003a', '3', '英语', '9', '九年级', '3', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88c003b', '4', '政治', '9', '九年级', '4', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88c003c', '5', '历史', '9', '九年级', '2', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88c003d', '7', '物理', '9', '九年级', '3', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88c003e', '10', '体育', '9', '九年级', '2', '8a9495685daac1bf015daac3b88b0037');
INSERT INTO `grade_km_detail` VALUES ('8a9495685daac1bf015daac3b88d003f', '11', '美术', '9', '九年级', '1', '8a9495685daac1bf015daac3b88b0037');

-- ----------------------------
-- Table structure for jkb_grade
-- ----------------------------
DROP TABLE IF EXISTS `jkb_grade`;
CREATE TABLE `jkb_grade` (
  `ID` varchar(64) NOT NULL,
  `JKB_ID` varchar(64) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkb_grade
-- ----------------------------
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d520970001', '402880e85de3c694015de3d5208d0000', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d520970002', '402880e85de3c694015de3d5208d0000', '8', '八年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d520970003', '402880e85de3c694015de3d5208d0000', '9', '九年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d64ea40045', '402880e85de3c694015de3d64ea40044', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d64ea40046', '402880e85de3c694015de3d64ea40044', '8', '八年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d64ea40047', '402880e85de3c694015de3d64ea40044', '9', '九年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d74b850109', '402880e85de3c694015de3d74b850108', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d7f7300143', '402880e85de3c694015de3d7f7300142', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d7f7300144', '402880e85de3c694015de3d7f7300142', '9', '九年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d84af60146', '402880e85de3c694015de3d84af60145', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d8c38c0164', '402880e85de3c694015de3d8c38c0163', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3d8c38c0165', '402880e85de3c694015de3d8c38c0163', '8', '八年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3dbf42801a1', '402880e85de3c694015de3dbf42801a0', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3dbf42801a2', '402880e85de3c694015de3dbf42801a0', '8', '八年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3c694015de3dbf42801a3', '402880e85de3c694015de3dbf42801a0', '9', '九年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3e3da015de3e4906c0001', '402880e85de3e3da015de3e490600000', '7', '七年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3e3da015de3e4906c0002', '402880e85de3e3da015de3e490600000', '8', '八年级');
INSERT INTO `jkb_grade` VALUES ('402880e85de3e3da015de3e4906c0003', '402880e85de3e3da015de3e490600000', '9', '九年级');

-- ----------------------------
-- Table structure for jkb_info
-- ----------------------------
DROP TABLE IF EXISTS `jkb_info`;
CREATE TABLE `jkb_info` (
  `ID` varchar(64) NOT NULL,
  `JKB_NAME` varchar(200) DEFAULT NULL,
  `JKB_RULE` varchar(2) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `JKB_STATUS` varchar(2) DEFAULT NULL,
  `JKB_IS_CREATE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkb_info
-- ----------------------------
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d5208d0000', '实打实大多数', '0', null, '2017-08-15 10:59:42', '0', '1');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d64ea40044', '问问', '1', null, '2017-08-15 11:00:59', '0', '1');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d74b850108', '三十多岁的', '0', null, '2017-08-15 11:02:04', '0', '1');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d7f7300142', '4545', '1', null, '2017-08-15 11:02:48', '1', '0');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d84af60145', '都是第三代', '1', null, '2017-08-15 11:03:09', '0', '1');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3d8c38c0163', '颠三倒四', '1', null, '2017-08-15 11:03:40', '0', '1');
INSERT INTO `jkb_info` VALUES ('402880e85de3c694015de3dbf42801a0', '都是第三代', '0', null, '2017-08-15 11:07:09', '0', '0');
INSERT INTO `jkb_info` VALUES ('402880e85de3e3da015de3e490600000', '实打实的', '0', null, '2017-08-15 11:16:34', '0', '1');

-- ----------------------------
-- Table structure for jkb_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `jkb_info_detail`;
CREATE TABLE `jkb_info_detail` (
  `ID` varchar(64) NOT NULL,
  `JKB_ID` varchar(64) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `CLASS_CODE` int(3) DEFAULT NULL,
  `CLASS_NAME` varchar(50) DEFAULT NULL,
  `TEACHER_ID` varchar(64) DEFAULT NULL,
  `TEACHER_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jkb_info_detail
-- ----------------------------
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab4a0004', '402880e85de3c694015de3d5208d0000', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab326432007e', '南红霞');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab4b0005', '402880e85de3c694015de3d5208d0000', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2c3138006b', '李紫薇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab4c0006', '402880e85de3c694015de3d5208d0000', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab4d0007', '402880e85de3c694015de3d5208d0000', '7', '七年级', '2', '(二)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab4f0008', '402880e85de3c694015de3d5208d0000', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab3701190088', '范亚磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab500009', '402880e85de3c694015de3d5208d0000', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2a3bb30065', '王向真');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab51000a', '402880e85de3c694015de3d5208d0000', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2e704d0072', '吴文杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab53000b', '402880e85de3c694015de3d5208d0000', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab38223a008b', '宗艳君');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab54000c', '402880e85de3c694015de3d5208d0000', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab34cdad0083', '王欣');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab55000d', '402880e85de3c694015de3d5208d0000', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab33205a0080', '杨灿昌');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab56000e', '402880e85de3c694015de3d5208d0000', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab57000f', '402880e85de3c694015de3d5208d0000', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab340d2c0081', '范净洁');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab590010', '402880e85de3c694015de3d5208d0000', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab3534550084', '刘利军');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab5a0011', '402880e85de3c694015de3d5208d0000', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab358db20085', '石玉磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab5b0012', '402880e85de3c694015de3d5208d0000', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab2f6d230075', '娄改云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab5c0013', '402880e85de3c694015de3d5208d0000', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab5e0014', '402880e85de3c694015de3d5208d0000', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab37bbcd008a', '徐丹丹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab5f0015', '402880e85de3c694015de3d5208d0000', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2b90540069', '赵红娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab600016', '402880e85de3c694015de3d5208d0000', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab30fbc5007a', '郭艳丽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab600017', '402880e85de3c694015de3d5208d0000', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab610018', '402880e85de3c694015de3d5208d0000', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab620019', '402880e85de3c694015de3d5208d0000', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab2a9c530066', '南艳杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab63001a', '402880e85de3c694015de3d5208d0000', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab35ebcb0086', '董耀中');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab64001b', '402880e85de3c694015de3d5208d0000', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab65001c', '402880e85de3c694015de3d5208d0000', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2fab190076', '张玉珍');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab65001d', '402880e85de3c694015de3d5208d0000', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab31dc51007c', '程新鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab66001e', '402880e85de3c694015de3d5208d0000', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab2bddae006a', '穆晓燕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab67001f', '402880e85de3c694015de3d5208d0000', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab6c0020', '402880e85de3c694015de3d5208d0000', '8', '八年级', '1', '(一)班', '402880eb5dcf5c75015dcf678bde0041', '小明');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab6d0021', '402880e85de3c694015de3d5208d0000', '8', '八年级', '1', '(一)班', '402880eb5dcf5c75015dcf64f2220039', '李四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab6e0022', '402880e85de3c694015de3d5208d0000', '8', '八年级', '2', '(二)班', '402880eb5dcf5c75015dcf6e45a3004d', '吴京');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab6f0023', '402880e85de3c694015de3d5208d0000', '8', '八年级', '2', '(二)班', null, '5');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab700024', '402880e85de3c694015de3d5208d0000', '8', '八年级', '3', '(三)班', '402880eb5dcf5c75015dcf6ce3a9004a', '刘德华');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab710025', '402880e85de3c694015de3d5208d0000', '8', '八年级', '3', '(三)班', null, '都是');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab720026', '402880e85de3c694015de3d5208d0000', '8', '八年级', '4', '(四)班', '402880eb5dcf5c75015dcf67f9dc0042', '小张');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab730027', '402880e85de3c694015de3d5208d0000', '8', '八年级', '4', '(四)班', null, '的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab740028', '402880e85de3c694015de3d5208d0000', '8', '八年级', '5', '(五)班', '402880eb5dcf5c75015dcf65adfb003c', '钱七');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab750029', '402880e85de3c694015de3d5208d0000', '8', '八年级', '5', '(五)班', '402880eb5dcf5c75015dcf64c2370038', '张三');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab75002a', '402880e85de3c694015de3d5208d0000', '8', '八年级', '6', '(六)班', '402880eb5dcf5c75015dcf6e97a1004e', '谢楠');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab76002b', '402880e85de3c694015de3d5208d0000', '8', '八年级', '6', '(六)班', '402880eb5dcf5c75015dcf683c460043', '小菜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab77002c', '402880e85de3c694015de3d5208d0000', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf6990690046', '小川');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab78002d', '402880e85de3c694015de3d5208d0000', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf70148a0051', '张国立');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab79002e', '402880e85de3c694015de3d5208d0000', '8', '八年级', '8', '(八)班', null, '3');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7a002f', '402880e85de3c694015de3d5208d0000', '8', '八年级', '8', '(八)班', '402880eb5dcf5c75015dcf6d1d06004b', '周星驰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7b0030', '402880e85de3c694015de3d5208d0000', '8', '八年级', '9', '(九)班', '402880eb5dcf5c75015dcf673f9e0040', '小红');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7c0031', '402880e85de3c694015de3d5208d0000', '8', '八年级', '9', '(九)班', '402880eb5dcf5c75015dcf66f63b003f', '小刚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7d0032', '402880e85de3c694015de3d5208d0000', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf66c36b003e', '小米');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7e0033', '402880e85de3c694015de3d5208d0000', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf69ef3a0047', '小谢');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7e0034', '402880e85de3c694015de3d5208d0000', '8', '八年级', '11', '(十一)班', null, '发');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7f0035', '402880e85de3c694015de3d5208d0000', '8', '八年级', '11', '(十一)班', '402880eb5dcf5c75015dcf65368f003b', '赵六');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab7f0036', '402880e85de3c694015de3d5208d0000', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6d50a7004c', '成龙');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab810037', '402880e85de3c694015de3d5208d0000', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf65d941003d', '黑八');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab810038', '402880e85de3c694015de3d5208d0000', '8', '八年级', '13', '(十三)班', '402880eb5dcf5c75015dcf6514c9003a', '王五');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab820039', '402880e85de3c694015de3d5208d0000', '8', '八年级', '13', '(十三)班', '402880eb5dcf5c75015dcf6bfb1d0049', '小龙女');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab83003a', '402880e85de3c694015de3d5208d0000', '8', '八年级', '14', '(十四)班', '402880eb5dcf5c75015dcf6a37a20048', '小妹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab84003b', '402880e85de3c694015de3d5208d0000', '8', '八年级', '14', '(十四)班', '402880eb5dcf5c75015dcf6f2313004f', '谢先生说');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab85003c', '402880e85de3c694015de3d5208d0000', '8', '八年级', '15', '(十五)班', '402880eb5dcf5c75015dcf6f8d1b0050', '孟非');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab85003d', '402880e85de3c694015de3d5208d0000', '8', '八年级', '15', '(十五)班', '402880eb5dcf5c75015dcf68fffd0045', '小刘');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab8b003e', '402880e85de3c694015de3d5208d0000', '9', '九年级', '1', '(一)班', '402880e85de37669015de37934c60006', '大锅饭');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab8c003f', '402880e85de3c694015de3d5208d0000', '9', '九年级', '1', '(一)班', '402880e85de37669015de37964450007', '方法对方的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab8d0040', '402880e85de3c694015de3d5208d0000', '9', '九年级', '2', '(二)班', '402880e85de37669015de378be810001', '颠三倒四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab8e0041', '402880e85de3c694015de3d5208d0000', '9', '九年级', '2', '(二)班', null, '人');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab8f0042', '402880e85de3c694015de3d5208d0000', '9', '九年级', '3', '(三)班', '402880e85de37669015de3789df90000', '谁说的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d5ab900043', '402880e85de3c694015de3d5208d0000', '9', '九年级', '3', '(三)班', null, '发');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7071c00c8', '402880e85de3c694015de3d64ea40044', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2eb4460073', '吴长春');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7071d00c9', '402880e85de3c694015de3d64ea40044', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2e704d0072', '吴文杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7071e00ca', '402880e85de3c694015de3d64ea40044', '7', '七年级', '2', '(二)班', '402880eb5dcf5c75015dcf683c460043', '小菜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072000cb', '402880e85de3c694015de3d64ea40044', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab33205a0080', '杨灿昌');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072100cc', '402880e85de3c694015de3d64ea40044', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072200cd', '402880e85de3c694015de3d64ea40044', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072300ce', '402880e85de3c694015de3d64ea40044', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab34cdad0083', '王欣');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072400cf', '402880e85de3c694015de3d64ea40044', '7', '七年级', '4', '(四)班', '402880eb5dcf5c75015dcf66c36b003e', '小米');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072500d0', '402880e85de3c694015de3d64ea40044', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab2fab190076', '张玉珍');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072600d1', '402880e85de3c694015de3d64ea40044', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072700d2', '402880e85de3c694015de3d64ea40044', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072900d3', '402880e85de3c694015de3d64ea40044', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab2f6d230075', '娄改云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072a00d4', '402880e85de3c694015de3d64ea40044', '7', '七年级', '7', '(七)班', '402880eb5dcf5c75015dcf68fffd0045', '小刘');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072b00d5', '402880e85de3c694015de3d64ea40044', '7', '七年级', '7', '(七)班', '402880eb5dcf5c75015dcf6ce3a9004a', '刘德华');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072c00d6', '402880e85de3c694015de3d64ea40044', '7', '七年级', '8', '(八)班', '402880eb5dcf5c75015dcf66f63b003f', '小刚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072e00d7', '402880e85de3c694015de3d64ea40044', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7072f00d8', '402880e85de3c694015de3d64ea40044', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2a3bb30065', '王向真');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073000d9', '402880e85de3c694015de3d64ea40044', '7', '七年级', '9', '(九)班', '402880e85de37669015de3789df90000', '谁说的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073100da', '402880e85de3c694015de3d64ea40044', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab31dc51007c', '程新鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073300db', '402880e85de3c694015de3d64ea40044', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab315912007b', '窦娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073400dc', '402880e85de3c694015de3d64ea40044', '7', '七年级', '11', '(十一)班', '402880eb5dcf5c75015dcf6f2313004f', '谢先生说');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073500dd', '402880e85de3c694015de3d64ea40044', '7', '七年级', '11', '(十一)班', '402880eb5dcf5c75015dcf6990690046', '小川');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073600de', '402880e85de3c694015de3d64ea40044', '7', '七年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6a37a20048', '小妹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073700df', '402880e85de3c694015de3d64ea40044', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab2d4b7e006e', '王江水');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073900e0', '402880e85de3c694015de3d64ea40044', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073a00e1', '402880e85de3c694015de3d64ea40044', '7', '七年级', '13', '(十三)班', '402880eb5dcf5c75015dcf69ef3a0047', '小谢');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073b00e2', '402880e85de3c694015de3d64ea40044', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab340d2c0081', '范净洁');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073c00e3', '402880e85de3c694015de3d64ea40044', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab3701190088', '范亚磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073d00e4', '402880e85de3c694015de3d64ea40044', '8', '八年级', '1', '(一)班', '8a9495685daac1bf015dab2b90540069', '赵红娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7073e00e5', '402880e85de3c694015de3d64ea40044', '8', '八年级', '1', '(一)班', '8a9495685daac1bf015dab37bbcd008a', '徐丹丹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074000e6', '402880e85de3c694015de3d64ea40044', '8', '八年级', '2', '(二)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074100e7', '402880e85de3c694015de3d64ea40044', '8', '八年级', '2', '(二)班', '402880e85de37669015de37964450007', '方法对方的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074200e8', '402880e85de3c694015de3d64ea40044', '8', '八年级', '3', '(三)班', '402880eb5dcf5c75015dcf67f9dc0042', '小张');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074400e9', '402880e85de3c694015de3d64ea40044', '8', '八年级', '3', '(三)班', '8a9495685daac1bf015dab36b9600087', '张本裕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074500ea', '402880e85de3c694015de3d64ea40044', '8', '八年级', '4', '(四)班', '8a9495685daac1bf015dab35ebcb0086', '董耀中');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074600eb', '402880e85de3c694015de3d64ea40044', '8', '八年级', '4', '(四)班', '402880eb5dcf5c75015dcf65d941003d', '黑八');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074700ec', '402880e85de3c694015de3d64ea40044', '8', '八年级', '5', '(五)班', '8a9495685daac1bf015dab2ff4350077', '王素芳');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074800ed', '402880e85de3c694015de3d64ea40044', '8', '八年级', '5', '(五)班', '8a9495685daac1bf015dab38223a008b', '宗艳君');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074a00ee', '402880e85de3c694015de3d64ea40044', '8', '八年级', '6', '(六)班', '402880eb5dcf5c75015dcf678bde0041', '小明');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074b00ef', '402880e85de3c694015de3d64ea40044', '8', '八年级', '6', '(六)班', '402880eb5dcf5c75015dcf64c2370038', '张三');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074c00f0', '402880e85de3c694015de3d64ea40044', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf6e45a3004d', '吴京');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074d00f1', '402880e85de3c694015de3d64ea40044', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf6bfb1d0049', '小龙女');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074e00f2', '402880e85de3c694015de3d64ea40044', '8', '八年级', '8', '(八)班', '8a9495685daac1bf015dab2a9c530066', '南艳杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7074f00f3', '402880e85de3c694015de3d64ea40044', '8', '八年级', '8', '(八)班', '8a9495685daac1bf015dab38eb07008d', '郑信东');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075100f4', '402880e85de3c694015de3d64ea40044', '8', '八年级', '9', '(九)班', '8a9495685daac1bf015dab326432007e', '南红霞');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075200f5', '402880e85de3c694015de3d64ea40044', '8', '八年级', '9', '(九)班', '8a9495685daac1bf015dab2bddae006a', '穆晓燕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075300f6', '402880e85de3c694015de3d64ea40044', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf6d1d06004b', '周星驰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075400f7', '402880e85de3c694015de3d64ea40044', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf64f2220039', '李四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075600f8', '402880e85de3c694015de3d64ea40044', '8', '八年级', '11', '(十一)班', '402880eb5dcf5c75015dcf70148a0051', '张国立');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075700f9', '402880e85de3c694015de3d64ea40044', '8', '八年级', '11', '(十一)班', '8a9495685daac1bf015dab329e78007f', '张丽英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075800fa', '402880e85de3c694015de3d64ea40044', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6d50a7004c', '成龙');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075900fb', '402880e85de3c694015de3d64ea40044', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6e97a1004e', '谢楠');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075b00fc', '402880e85de3c694015de3d64ea40044', '8', '八年级', '13', '(十三)班', '8a9495685daac1bf015dab2e44430071', '叶向辉');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075c00fd', '402880e85de3c694015de3d64ea40044', '8', '八年级', '13', '(十三)班', '8a9495685daac1bf015dab2cb4df006c', '殷鑫鑫');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075d00fe', '402880e85de3c694015de3d64ea40044', '8', '八年级', '14', '(十四)班', '8a9495685daac1bf015dab3445df0082', '李菊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7075e00ff', '402880e85de3c694015de3d64ea40044', '8', '八年级', '14', '(十四)班', '402880e85de37669015de378be810001', '颠三倒四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d707610100', '402880e85de3c694015de3d64ea40044', '8', '八年级', '15', '(十五)班', '402880e85de37669015de37934c60006', '大锅饭');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d707630101', '402880e85de3c694015de3d64ea40044', '8', '八年级', '15', '(十五)班', '8a9495685daac1bf015dab30ccf40079', '史少英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d707640102', '402880e85de3c694015de3d64ea40044', '9', '九年级', '1', '(一)班', '402880eb5dcf5c75015dcf6f8d1b0050', '孟非');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d707680103', '402880e85de3c694015de3d64ea40044', '9', '九年级', '1', '(一)班', '8a9495685daac1bf015dab2b33980068', '赵秋鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7076a0104', '402880e85de3c694015de3d64ea40044', '9', '九年级', '2', '(二)班', '402880eb5dcf5c75015dcf6514c9003a', '王五');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7076b0105', '402880e85de3c694015de3d64ea40044', '9', '九年级', '2', '(二)班', '8a9495685daac1bf015dab358db20085', '石玉磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7076c0106', '402880e85de3c694015de3d64ea40044', '9', '九年级', '3', '(三)班', '8a9495685daac1bf015dab3534550084', '刘利军');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d7076f0107', '402880e85de3c694015de3d64ea40044', '9', '九年级', '3', '(三)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fbd0126', '402880e85de3c694015de3d74b850108', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab358db20085', '石玉磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fbd0127', '402880e85de3c694015de3d74b850108', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab3701190088', '范亚磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fbe0128', '402880e85de3c694015de3d74b850108', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab3534550084', '刘利军');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fbf0129', '402880e85de3c694015de3d74b850108', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab3445df0082', '李菊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc0012a', '402880e85de3c694015de3d74b850108', '7', '七年级', '3', '(三)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc1012b', '402880e85de3c694015de3d74b850108', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab36b9600087', '张本裕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc1012c', '402880e85de3c694015de3d74b850108', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc2012d', '402880e85de3c694015de3d74b850108', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2b90540069', '赵红娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc2012e', '402880e85de3c694015de3d74b850108', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab2fab190076', '张玉珍');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc3012f', '402880e85de3c694015de3d74b850108', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab2bddae006a', '穆晓燕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc30130', '402880e85de3c694015de3d74b850108', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab2b33980068', '赵秋鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc40131', '402880e85de3c694015de3d74b850108', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab38eb07008d', '郑信东');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc50132', '402880e85de3c694015de3d74b850108', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc50133', '402880e85de3c694015de3d74b850108', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2f0cf70074', '宋鲁娟');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc60134', '402880e85de3c694015de3d74b850108', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab31dc51007c', '程新鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc60135', '402880e85de3c694015de3d74b850108', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab329e78007f', '张丽英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc70136', '402880e85de3c694015de3d74b850108', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc80137', '402880e85de3c694015de3d74b850108', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab30fbc5007a', '郭艳丽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc80138', '402880e85de3c694015de3d74b850108', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab2c3138006b', '李紫薇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc90139', '402880e85de3c694015de3d74b850108', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fc9013a', '402880e85de3c694015de3d74b850108', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fca013b', '402880e85de3c694015de3d74b850108', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab38223a008b', '宗艳君');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fca013c', '402880e85de3c694015de3d74b850108', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fcb013d', '402880e85de3c694015de3d74b850108', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab315912007b', '窦娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fcc013e', '402880e85de3c694015de3d74b850108', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2d9af3006f', '李帅奇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fcd013f', '402880e85de3c694015de3d74b850108', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2ff4350077', '王素芳');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fcf0140', '402880e85de3c694015de3d74b850108', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d76fd00141', '402880e85de3c694015de3d74b850108', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab2f6d230075', '娄改云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862650147', '402880e85de3c694015de3d84af60145', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862660148', '402880e85de3c694015de3d84af60145', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab36b9600087', '张本裕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862670149', '402880e85de3c694015de3d84af60145', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab37bbcd008a', '徐丹丹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86268014a', '402880e85de3c694015de3d84af60145', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86268014b', '402880e85de3c694015de3d84af60145', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2e704d0072', '吴文杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86269014c', '402880e85de3c694015de3d84af60145', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2eb4460073', '吴长春');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626a014d', '402880e85de3c694015de3d84af60145', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab358db20085', '石玉磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626b014e', '402880e85de3c694015de3d84af60145', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2a9c530066', '南艳杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626b014f', '402880e85de3c694015de3d84af60145', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab2e44430071', '叶向辉');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626c0150', '402880e85de3c694015de3d84af60145', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626d0151', '402880e85de3c694015de3d84af60145', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab2bddae006a', '穆晓燕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626d0152', '402880e85de3c694015de3d84af60145', '7', '七年级', '6', '(六)班', null, '的士速递');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626e0153', '402880e85de3c694015de3d84af60145', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab3701190088', '范亚磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626f0154', '402880e85de3c694015de3d84af60145', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab329e78007f', '张丽英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d8626f0155', '402880e85de3c694015de3d84af60145', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862700156', '402880e85de3c694015de3d84af60145', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862710157', '402880e85de3c694015de3d84af60145', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab340d2c0081', '范净洁');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862710158', '402880e85de3c694015de3d84af60145', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2f0cf70074', '宋鲁娟');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862720159', '402880e85de3c694015de3d84af60145', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab2d4b7e006e', '王江水');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86273015a', '402880e85de3c694015de3d84af60145', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86273015b', '402880e85de3c694015de3d84af60145', '7', '七年级', '11', '(十一)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86274015c', '402880e85de3c694015de3d84af60145', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab3445df0082', '李菊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86275015d', '402880e85de3c694015de3d84af60145', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86275015e', '402880e85de3c694015de3d84af60145', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab2d9af3006f', '李帅奇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d86276015f', '402880e85de3c694015de3d84af60145', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab315912007b', '窦娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862770160', '402880e85de3c694015de3d84af60145', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2b90540069', '赵红娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862770161', '402880e85de3c694015de3d84af60145', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab3534550084', '刘利军');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3c694015de3d862780162', '402880e85de3c694015de3d84af60145', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab34cdad0083', '王欣');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec70b0000', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab3445df0082', '李菊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7150001', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2ff4350077', '王素芳');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7170002', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab2b33980068', '赵秋鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7180003', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec71a0004', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '3', '(三)班', '402880eb5dcf5c75015dcf68fffd0045', '小刘');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec71c0005', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2fab190076', '张玉珍');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec71e0006', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2d9af3006f', '李帅奇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7220007', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2f0cf70074', '宋鲁娟');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7240008', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '5', '(五)班', '402880eb5dcf5c75015dcf6e45a3004d', '吴京');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7290009', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '5', '(五)班', '402880eb5dcf5c75015dcf6a37a20048', '小妹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec72b000a', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '6', '(六)班', '402880eb5dcf5c75015dcf66c36b003e', '小米');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec72d000b', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '6', '(六)班', '402880eb5dcf5c75015dcf6d50a7004c', '成龙');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec731000c', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec733000d', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2e44430071', '叶向辉');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec734000e', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab36b9600087', '张本裕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec736000f', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab34cdad0083', '王欣');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7370010', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '9', '(九)班', '402880eb5dcf5c75015dcf6ce3a9004a', '刘德华');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7380011', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '9', '(九)班', '402880eb5dcf5c75015dcf66f63b003f', '小刚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7390012', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '10', '(十)班', '402880eb5dcf5c75015dcf65368f003b', '赵六');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec73b0013', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab38223a008b', '宗艳君');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec73c0014', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '11', '(十一)班', '402880eb5dcf5c75015dcf67f9dc0042', '小张');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec73e0015', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab30fbc5007a', '郭艳丽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec73f0016', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab37bbcd008a', '徐丹丹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7410017', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab31dc51007c', '程新鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7420018', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '13', '(十三)班', '402880eb5dcf5c75015dcf678bde0041', '小明');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7430019', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2e704d0072', '吴文杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec744001a', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab2d4b7e006e', '王江水');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec746001b', '402880e85de3c694015de3d8c38c0163', '7', '七年级', '14', '(十四)班', '402880eb5dcf5c75015dcf6990690046', '小川');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec747001c', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '1', '(一)班', '402880eb5dcf5c75015dcf683c460043', '小菜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec749001d', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '1', '(一)班', '8a9495685daac1bf015dab2f6d230075', '娄改云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec74b001e', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '2', '(二)班', '402880eb5dcf5c75015dcf6f2313004f', '谢先生说');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec74c001f', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '2', '(二)班', '402880eb5dcf5c75015dcf6f8d1b0050', '孟非');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec74f0020', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '3', '(三)班', '8a9495685daac1bf015dab326432007e', '南红霞');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7500021', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '3', '(三)班', '402880eb5dcf5c75015dcf65adfb003c', '钱七');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7540022', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '4', '(四)班', '8a9495685daac1bf015dab3534550084', '刘利军');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7560023', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '4', '(四)班', '402880eb5dcf5c75015dcf70148a0051', '张国立');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7580024', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '5', '(五)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec75c0025', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '5', '(五)班', '8a9495685daac1bf015dab2bddae006a', '穆晓燕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec75e0026', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '6', '(六)班', '8a9495685daac1bf015dab2cb4df006c', '殷鑫鑫');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec75f0027', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '6', '(六)班', '8a9495685daac1bf015dab2a3bb30065', '王向真');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7600028', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '7', '(七)班', '8a9495685daac1bf015dab2b90540069', '赵红娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7620029', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec763002a', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '8', '(八)班', '8a9495685daac1bf015dab2a9c530066', '南艳杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec764002b', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '8', '(八)班', '8a9495685daac1bf015dab38eb07008d', '郑信东');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec765002c', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '9', '(九)班', '402880eb5dcf5c75015dcf6514c9003a', '王五');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec766002d', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '9', '(九)班', '402880eb5dcf5c75015dcf64f2220039', '李四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec768002e', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '10', '(十)班', '8a9495685daac1bf015dab35ebcb0086', '董耀中');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec769002f', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf65d941003d', '黑八');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec76c0030', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '11', '(十一)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec76f0031', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '11', '(十一)班', '402880eb5dcf5c75015dcf6d1d06004b', '周星驰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7710032', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '12', '(十二)班', '8a9495685daac1bf015dab340d2c0081', '范净洁');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7730033', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf64c2370038', '张三');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7740034', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '13', '(十三)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7750035', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '13', '(十三)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7770036', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '14', '(十四)班', '8a9495685daac1bf015dab315912007b', '窦娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7780037', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '14', '(十四)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec7790038', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '15', '(十五)班', '402880eb5dcf5c75015dcf6bfb1d0049', '小龙女');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3dd2b015de3dec77a0039', '402880e85de3c694015de3d8c38c0163', '8', '八年级', '15', '(十五)班', '8a9495685daac1bf015dab30ccf40079', '史少英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9230004', '402880e85de3e3da015de3e490600000', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab38223a008b', '宗艳君');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9270005', '402880e85de3e3da015de3e490600000', '7', '七年级', '1', '(一)班', '8a9495685daac1bf015dab2eb4460073', '吴长春');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f92a0006', '402880e85de3e3da015de3e490600000', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab2d4b7e006e', '王江水');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9330007', '402880e85de3e3da015de3e490600000', '7', '七年级', '2', '(二)班', '8a9495685daac1bf015dab326432007e', '南红霞');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9350008', '402880e85de3e3da015de3e490600000', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab2f0cf70074', '宋鲁娟');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9360009', '402880e85de3e3da015de3e490600000', '7', '七年级', '3', '(三)班', '8a9495685daac1bf015dab3766fd0089', '宋利娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f938000a', '402880e85de3e3da015de3e490600000', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab30ccf40079', '史少英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f939000b', '402880e85de3e3da015de3e490600000', '7', '七年级', '4', '(四)班', '8a9495685daac1bf015dab2fab190076', '张玉珍');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f93a000c', '402880e85de3e3da015de3e490600000', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab3445df0082', '李菊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f93b000d', '402880e85de3e3da015de3e490600000', '7', '七年级', '5', '(五)班', '8a9495685daac1bf015dab3048e70078', '吴红亚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f93c000e', '402880e85de3e3da015de3e490600000', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab2df5da0070', '贾淑娜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f93d000f', '402880e85de3e3da015de3e490600000', '7', '七年级', '6', '(六)班', '8a9495685daac1bf015dab35ebcb0086', '董耀中');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f93e0010', '402880e85de3e3da015de3e490600000', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2e704d0072', '吴文杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9400011', '402880e85de3e3da015de3e490600000', '7', '七年级', '7', '(七)班', '8a9495685daac1bf015dab2d9af3006f', '李帅奇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9410012', '402880e85de3e3da015de3e490600000', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab2c3138006b', '李紫薇');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9430013', '402880e85de3e3da015de3e490600000', '7', '七年级', '8', '(八)班', '8a9495685daac1bf015dab2cb4df006c', '殷鑫鑫');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9440014', '402880e85de3e3da015de3e490600000', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2b33980068', '赵秋鸽');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9460015', '402880e85de3e3da015de3e490600000', '7', '七年级', '9', '(九)班', '8a9495685daac1bf015dab2ff4350077', '王素芳');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9470016', '402880e85de3e3da015de3e490600000', '7', '七年级', '10', '(十)班', '402880eb5dcf5c75015dcf6896570044', '小王');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9490017', '402880e85de3e3da015de3e490600000', '7', '七年级', '10', '(十)班', '8a9495685daac1bf015dab2a9c530066', '南艳杰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f94a0018', '402880e85de3e3da015de3e490600000', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab358db20085', '石玉磊');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f94b0019', '402880e85de3e3da015de3e490600000', '7', '七年级', '11', '(十一)班', '8a9495685daac1bf015dab322ed1007d', '杨国旗');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f94e001a', '402880e85de3e3da015de3e490600000', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab340d2c0081', '范净洁');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f94f001b', '402880e85de3e3da015de3e490600000', '7', '七年级', '12', '(十二)班', '8a9495685daac1bf015dab36b9600087', '张本裕');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f952001c', '402880e85de3e3da015de3e490600000', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2ae2220067', '候赛英');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f956001d', '402880e85de3e3da015de3e490600000', '7', '七年级', '13', '(十三)班', '8a9495685daac1bf015dab2d1dad006d', '鄂国文');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f958001e', '402880e85de3e3da015de3e490600000', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab3883ea008c', '李淼云');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f95a001f', '402880e85de3e3da015de3e490600000', '7', '七年级', '14', '(十四)班', '8a9495685daac1bf015dab37bbcd008a', '徐丹丹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9650020', '402880e85de3e3da015de3e490600000', '8', '八年级', '1', '(一)班', null, '对的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9660021', '402880e85de3e3da015de3e490600000', '8', '八年级', '1', '(一)班', null, '税所');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9680022', '402880e85de3e3da015de3e490600000', '8', '八年级', '2', '(二)班', '402880eb5dcf5c75015dcf6d50a7004c', '成龙');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9690023', '402880e85de3e3da015de3e490600000', '8', '八年级', '2', '(二)班', '402880eb5dcf5c75015dcf678bde0041', '小明');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f96b0024', '402880e85de3e3da015de3e490600000', '8', '八年级', '3', '(三)班', '402880eb5dcf5c75015dcf673f9e0040', '小红');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f96d0025', '402880e85de3e3da015de3e490600000', '8', '八年级', '3', '(三)班', '402880eb5dcf5c75015dcf65adfb003c', '钱七');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f96f0026', '402880e85de3e3da015de3e490600000', '8', '八年级', '4', '(四)班', '402880eb5dcf5c75015dcf70148a0051', '张国立');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9710027', '402880e85de3e3da015de3e490600000', '8', '八年级', '4', '(四)班', '402880eb5dcf5c75015dcf6ce3a9004a', '刘德华');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9730028', '402880e85de3e3da015de3e490600000', '8', '八年级', '5', '(五)班', '402880eb5dcf5c75015dcf65d941003d', '黑八');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9750029', '402880e85de3e3da015de3e490600000', '8', '八年级', '5', '(五)班', '402880eb5dcf5c75015dcf6d1d06004b', '周星驰');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f977002a', '402880e85de3e3da015de3e490600000', '8', '八年级', '6', '(六)班', '402880eb5dcf5c75015dcf6990690046', '小川');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f977002b', '402880e85de3e3da015de3e490600000', '8', '八年级', '6', '(六)班', null, '大幅度');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f978002c', '402880e85de3e3da015de3e490600000', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf65368f003b', '赵六');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97a002d', '402880e85de3e3da015de3e490600000', '8', '八年级', '7', '(七)班', '402880eb5dcf5c75015dcf6514c9003a', '王五');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97b002e', '402880e85de3e3da015de3e490600000', '8', '八年级', '8', '(八)班', null, '恩恩');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97c002f', '402880e85de3e3da015de3e490600000', '8', '八年级', '8', '(八)班', '402880eb5dcf5c75015dcf6e97a1004e', '谢楠');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97d0030', '402880e85de3e3da015de3e490600000', '8', '八年级', '9', '(九)班', '402880eb5dcf5c75015dcf67f9dc0042', '小张');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97e0031', '402880e85de3e3da015de3e490600000', '8', '八年级', '9', '(九)班', null, '22');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f97f0032', '402880e85de3e3da015de3e490600000', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf6f8d1b0050', '孟非');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9810033', '402880e85de3e3da015de3e490600000', '8', '八年级', '10', '(十)班', '402880eb5dcf5c75015dcf69ef3a0047', '小谢');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9820034', '402880e85de3e3da015de3e490600000', '8', '八年级', '11', '(十一)班', null, '33');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9830035', '402880e85de3e3da015de3e490600000', '8', '八年级', '11', '(十一)班', '402880eb5dcf5c75015dcf66c36b003e', '小米');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9860036', '402880e85de3e3da015de3e490600000', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6e45a3004d', '吴京');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9880037', '402880e85de3e3da015de3e490600000', '8', '八年级', '12', '(十二)班', '402880eb5dcf5c75015dcf6f2313004f', '谢先生说');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9890038', '402880e85de3e3da015de3e490600000', '8', '八年级', '13', '(十三)班', '402880eb5dcf5c75015dcf66f63b003f', '小刚');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f98b0039', '402880e85de3e3da015de3e490600000', '8', '八年级', '13', '(十三)班', '402880eb5dcf5c75015dcf6bfb1d0049', '小龙女');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f98c003a', '402880e85de3e3da015de3e490600000', '8', '八年级', '14', '(十四)班', '402880eb5dcf5c75015dcf64c2370038', '张三');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f98e003b', '402880e85de3e3da015de3e490600000', '8', '八年级', '14', '(十四)班', '402880eb5dcf5c75015dcf6a37a20048', '小妹');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f98f003c', '402880e85de3e3da015de3e490600000', '8', '八年级', '15', '(十五)班', '402880eb5dcf5c75015dcf64f2220039', '李四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f990003d', '402880e85de3e3da015de3e490600000', '8', '八年级', '15', '(十五)班', '402880eb5dcf5c75015dcf683c460043', '小菜');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f995003e', '402880e85de3e3da015de3e490600000', '9', '九年级', '1', '(一)班', '402880e85de37669015de37964450007', '方法对方的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f996003f', '402880e85de3e3da015de3e490600000', '9', '九年级', '1', '(一)班', null, '二位');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9970040', '402880e85de3e3da015de3e490600000', '9', '九年级', '2', '(二)班', null, '3232');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f9990041', '402880e85de3e3da015de3e490600000', '9', '九年级', '2', '(二)班', '402880e85de37669015de3789df90000', '谁说的');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f99a0042', '402880e85de3e3da015de3e490600000', '9', '九年级', '3', '(三)班', '402880e85de37669015de378be810001', '颠三倒四');
INSERT INTO `jkb_info_detail` VALUES ('402880e85de3e3da015de3e4f99b0043', '402880e85de3e3da015de3e490600000', '9', '九年级', '3', '(三)班', null, '的丰富的');

-- ----------------------------
-- Table structure for kcb_info
-- ----------------------------
DROP TABLE IF EXISTS `kcb_info`;
CREATE TABLE `kcb_info` (
  `KCB_ID` varchar(64) NOT NULL,
  `KCB_NAME` varchar(200) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `KCB_STATUS` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`KCB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kcb_info
-- ----------------------------
INSERT INTO `kcb_info` VALUES ('402880eb5dcf5c75015dcf706ede0052', '是大法官', '8', '八年级', '2017-08-11 11:57:00', '', '1');
INSERT INTO `kcb_info` VALUES ('402881e45dc6cf0e015dc6da1061000f', '反对党的', '7', '七年级', '2017-08-09 19:56:06', '', '1');
INSERT INTO `kcb_info` VALUES ('402881e45dc6cf0e015dc6da97b60010', '颠三倒四多所', '7', '七年级', '2017-08-09 19:56:41', '', '1');
INSERT INTO `kcb_info` VALUES ('402881e45dc6cf0e015dc6dcfeea0011', '连连看来看', '7', '七年级', '2017-08-09 19:59:00', '', '1');
INSERT INTO `kcb_info` VALUES ('8a9495685daac1bf015dab398b90008e', '1期课程表', '7', '七年级', '2017-08-04 11:11:00', '', '0');
INSERT INTO `kcb_info` VALUES ('8a9495685dac0c5e015dac7c21610000', 'dffffffffff', '7', '七年级', '2017-08-04 17:03:22', '', '1');

-- ----------------------------
-- Table structure for kcb_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `kcb_info_detail`;
CREATE TABLE `kcb_info_detail` (
  `ID` varchar(64) NOT NULL,
  `KCB_ID` varchar(64) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `CLASS_CODE` int(3) DEFAULT NULL,
  `CLASS_NAME` varchar(50) DEFAULT NULL,
  `KM_CODE` int(3) DEFAULT NULL,
  `KM_NAME` varchar(50) DEFAULT NULL,
  `TEACHER_ID` varchar(64) DEFAULT NULL,
  `TEACHER_NAME` varchar(50) DEFAULT NULL,
  `DAY_CODE` int(3) DEFAULT NULL,
  `DAY_NAME` varchar(20) DEFAULT NULL,
  `JIE_CODE` int(3) DEFAULT NULL,
  `JIE_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kcb_info_detail
-- ----------------------------
INSERT INTO `kcb_info_detail` VALUES ('1', '1', '7', '七年级', '1', '一班', '1', '语文', '1', null, '1', '星期一', '1', '第一节');
INSERT INTO `kcb_info_detail` VALUES ('2', '1', '7', '七年级', '1', '一班', '2', '数学', '2', null, '2', '星期二', '2', '第二节');
INSERT INTO `kcb_info_detail` VALUES ('3', '1', '7', '七年级', '2', '二班', '1', '语文', '3', null, '3', '星期三', '5', '第五节');
INSERT INTO `kcb_info_detail` VALUES ('4', '1', '7', '七年级', '2', '二班', '1', '语文', '4', null, '3', '星期三', '3', '第三节');
INSERT INTO `kcb_info_detail` VALUES ('5', '1', '7', '七年级', '3', '三班', '1', '语文', '4', null, '3', '星期三', '3', '第三节');

-- ----------------------------
-- Table structure for kcb_rule
-- ----------------------------
DROP TABLE IF EXISTS `kcb_rule`;
CREATE TABLE `kcb_rule` (
  `ID` varchar(64) NOT NULL,
  `KCB_ID` varchar(64) DEFAULT NULL,
  `DAY_COUNT` int(11) DEFAULT NULL,
  `AM_COUNT` int(11) DEFAULT NULL,
  `PM_COUNT` int(11) DEFAULT NULL,
  `LPKMS` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kcb_rule
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `T_ID` varchar(64) NOT NULL,
  `T_NAME` varchar(50) DEFAULT NULL,
  `GRADE_CODE` int(3) DEFAULT NULL,
  `GRADE_NAME` varchar(50) DEFAULT NULL,
  `T_SEX` varchar(2) DEFAULT NULL,
  `T_AGE` varchar(3) DEFAULT NULL,
  `T_KM_CODE` int(3) DEFAULT NULL,
  `T_KM_NAME` varchar(50) DEFAULT NULL,
  `T_TEL` varchar(20) DEFAULT NULL,
  `T_ADD` varchar(200) DEFAULT NULL,
  `T_REMARK` varchar(500) DEFAULT NULL,
  `T_COUNT` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `T_STATUS` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`T_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('402880e85de37669015de3789df90000', '谁说的', '9', '九年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-15 09:18:39', '0');
INSERT INTO `teacher_info` VALUES ('402880e85de37669015de378be810001', '颠三倒四', '9', '九年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-15 09:18:47', '0');
INSERT INTO `teacher_info` VALUES ('402880e85de37669015de37934c60006', '大锅饭', '9', '九年级', '0', null, '3', '英语', '', '', '', '2', '2017-08-15 09:19:18', '0');
INSERT INTO `teacher_info` VALUES ('402880e85de37669015de37964450007', '方法对方的', '9', '九年级', '0', null, '4', '政治', '', '', '', '8', '2017-08-15 09:19:30', '0');
INSERT INTO `teacher_info` VALUES ('402880ea5dc46abb015dc46baa570000', '111', '7', '七年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-09 08:36:17', '1');
INSERT INTO `teacher_info` VALUES ('402880ea5dc48480015dc485b43a0034', 'jjh很纠结', '8', '八年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-09 09:04:00', '1');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf64c2370038', '张三', '8', '八年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-11 11:44:33', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf64f2220039', '李四', '8', '八年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-11 11:44:46', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6514c9003a', '王五', '8', '八年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-11 11:44:54', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf65368f003b', '赵六', '8', '八年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-11 11:45:03', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf65adfb003c', '钱七', '8', '八年级', '0', null, '3', '英语', '', '', '', '2', '2017-08-11 11:45:34', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf65d941003d', '黑八', '8', '八年级', '0', null, '3', '英语', '', '', '', '2', '2017-08-11 11:45:45', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf66c36b003e', '小米', '8', '八年级', '0', null, '4', '政治', '', '', '', '8', '2017-08-11 11:46:45', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf66f63b003f', '小刚', '8', '八年级', '0', null, '4', '政治', '', '', '', '8', '2017-08-11 11:46:58', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf673f9e0040', '小红', '8', '八年级', '1', null, '5', '历史', '', '', '', '8', '2017-08-11 11:47:17', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf678bde0041', '小明', '8', '八年级', '0', null, '5', '历史', '', '', '', '8', '2017-08-11 11:47:36', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf67f9dc0042', '小张', '8', '八年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-11 11:48:04', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf683c460043', '小菜', '8', '八年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-11 11:48:21', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6896570044', '小王', '7', '七年级', '0', null, '9', '生物', '', '', '', '8', '2017-08-11 11:48:44', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf68fffd0045', '小刘', '8', '八年级', '0', null, '9', '生物', '', '', '', '8', '2017-08-11 11:49:00', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6990690046', '小川', '8', '八年级', '1', null, '10', '体育', '', '', '', '8', '2017-08-11 11:49:48', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf69ef3a0047', '小谢', '8', '八年级', '0', null, '10', '体育', '', '', '', '8', '2017-08-11 11:50:13', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6a37a20048', '小妹', '8', '八年级', '1', null, '11', '美术', '', '', '', '16', '2017-08-11 11:50:31', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6bfb1d0049', '小龙女', '8', '八年级', '1', null, '12', '音乐', '', '', '', '16', '2017-08-11 11:52:27', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6ce3a9004a', '刘德华', '8', '八年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-11 11:53:26', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6d1d06004b', '周星驰', '8', '八年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-11 11:53:41', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6d50a7004c', '成龙', '8', '八年级', '0', null, '3', '英语', '', '', '', '2', '2017-08-11 11:53:54', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6e45a3004d', '吴京', '8', '八年级', '0', null, '4', '政治', '', '', '', '8', '2017-08-11 11:54:57', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6e97a1004e', '谢楠', '8', '八年级', '0', null, '5', '历史', '', '', '', '8', '2017-08-11 11:55:18', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6f2313004f', '谢先生说', '8', '八年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-11 11:55:53', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf6f8d1b0050', '孟非', '8', '八年级', '0', null, '7', '物理', '', '', '', '8', '2017-08-11 11:56:21', '0');
INSERT INTO `teacher_info` VALUES ('402880eb5dcf5c75015dcf70148a0051', '张国立', '8', '八年级', '0', null, '10', '体育', '', '', '', '8', '2017-08-11 11:56:55', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2a3bb30065', '王向真', '7', '七年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-04 10:54:18', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2a9c530066', '南艳杰', '7', '七年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-04 10:54:43', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2ae2220067', '候赛英', '7', '七年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-04 10:55:01', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2b33980068', '赵秋鸽', '7', '七年级', '1', null, '1', '语文', '', '', '', '2', '2017-08-04 10:55:21', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2b90540069', '赵红娜', '7', '七年级', '1', null, '1', '语文', '', '', '', '2', '2017-08-04 10:55:45', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2bddae006a', '穆晓燕', '7', '七年级', '1', null, '1', '语文', '', '', '', '2', '2017-08-04 10:56:05', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2c3138006b', '李紫薇', '7', '七年级', '0', null, '1', '语文', '', '', '', '2', '2017-08-04 10:56:26', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2cb4df006c', '殷鑫鑫', '7', '七年级', '1', null, '1', '语文', '', '', '', '2', '2017-08-04 10:57:00', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2d1dad006d', '鄂国文', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:57:27', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2d4b7e006e', '王江水', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:57:39', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2d9af3006f', '李帅奇', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:57:59', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2df5da0070', '贾淑娜', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:58:22', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2e44430071', '叶向辉', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:58:42', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2e704d0072', '吴文杰', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:58:54', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2eb4460073', '吴长春', '7', '七年级', '0', null, '2', '数学', '', '', '', '2', '2017-08-04 10:59:11', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2f0cf70074', '宋鲁娟', '7', '七年级', '1', null, '2', '数学', '', '', '', '2', '2017-08-04 10:59:34', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2f6d230075', '娄改云', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 10:59:58', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2fab190076', '张玉珍', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:00:14', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab2ff4350077', '王素芳', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:00:33', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3048e70078', '吴红亚', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:00:55', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab30ccf40079', '史少英', '7', '七年级', '0', null, '3', '英语', '', '', '', '2', '2017-08-04 11:01:28', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab30fbc5007a', '郭艳丽', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:01:40', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab315912007b', '窦娜', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:02:04', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab31dc51007c', '程新鸽', '7', '七年级', '1', null, '3', '英语', '', '', '', '2', '2017-08-04 11:02:38', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab322ed1007d', '杨国旗', '7', '七年级', '0', null, '4', '政治', '', '', '', '8', '2017-08-04 11:02:59', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab326432007e', '南红霞', '7', '七年级', '1', null, '4', '政治', '', '', '', '8', '2017-08-04 11:03:13', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab329e78007f', '张丽英', '7', '七年级', '1', null, '4', '政治', '', '', '', '8', '2017-08-04 11:03:28', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab33205a0080', '杨灿昌', '7', '七年级', '0', null, '5', '历史', '', '', '', '8', '2017-08-04 11:04:01', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab340d2c0081', '范净洁', '7', '七年级', '0', null, '5', '历史', '', '', '', '8', '2017-08-04 11:05:01', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3445df0082', '李菊', '7', '七年级', '1', null, '5', '历史', '', '', '', '8', '2017-08-04 11:05:16', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab34cdad0083', '王欣', '7', '七年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-04 11:05:51', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3534550084', '刘利军', '7', '七年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-04 11:06:17', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab358db20085', '石玉磊', '7', '七年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-04 11:06:40', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab35ebcb0086', '董耀中', '7', '七年级', '0', null, '6', '地理', '', '', '', '8', '2017-08-04 11:07:04', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab36b9600087', '张本裕', '7', '七年级', '0', null, '9', '生物', '', '', '', '8', '2017-08-04 11:07:57', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3701190088', '范亚磊', '7', '七年级', '0', null, '9', '生物', '', '', '', '8', '2017-08-04 11:08:15', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3766fd0089', '宋利娜', '7', '七年级', '1', null, '9', '生物', '', '', '', '8', '2017-08-04 11:08:41', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab37bbcd008a', '徐丹丹', '7', '七年级', '0', null, '10', '体育', '', '', '', '8', '2017-08-04 11:09:03', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab38223a008b', '宗艳君', '7', '七年级', '0', null, '10', '体育', '', '', '', '8', '2017-08-04 11:09:29', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab3883ea008c', '李淼云', '7', '七年级', '1', null, '12', '音乐', '', '', '', '16', '2017-08-04 11:09:54', '0');
INSERT INTO `teacher_info` VALUES ('8a9495685daac1bf015dab38eb07008d', '郑信东', '7', '七年级', '0', null, '11', '美术', '', '', '', '16', '2017-08-04 11:10:00', '0');
