/*
 Navicat Premium Data Transfer

 Source Server         : FIRST
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/06/2020 23:02:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for i_user
-- ----------------------------
DROP TABLE IF EXISTS `i_user`;
CREATE TABLE `i_user`  (
  `user_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of i_user
-- ----------------------------
INSERT INTO `i_user` VALUES ('001', '本伟', '男', '25', '资环', '斗地主', '十七张牌你能秒我？', '123456');
INSERT INTO `i_user` VALUES ('002', '韩金龙', '男', '30', '航空航天', '起飞', '这波啊，这波是肉蛋冲击！', '123456');
INSERT INTO `i_user` VALUES ('003', '慧玲', '女', '19', '信息安全', '看小说，画画', '改革春风吹满地', '111111');
INSERT INTO `i_user` VALUES ('007', '阿东', '男', '20', '信安', '吃吃吃', '食色，性也！', '123456');

SET FOREIGN_KEY_CHECKS = 1;
