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

 Date: 01/06/2020 23:02:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for reply_message
-- ----------------------------
DROP TABLE IF EXISTS `reply_message`;
CREATE TABLE `reply_message`  (
  `rm_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rp_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rper_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rcontent` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rm_id`) USING BTREE,
  INDEX `FK_rp`(`rp_id`) USING BTREE,
  INDEX `rper_id`(`rper_id`) USING BTREE,
  CONSTRAINT `FK_rp` FOREIGN KEY (`rp_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reply_message_ibfk_1` FOREIGN KEY (`rper_id`) REFERENCES `i_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply_message
-- ----------------------------
INSERT INTO `reply_message` VALUES ('5ed4e8480600a', '5ed4c2b487a96', '002', '2020-06-01 19:36:40', '0', '小伙子捞的淌口水，我街道口数据库小王子带你飞<img src=\"http://shinan.com/res/js/plugins/emoticons/4.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" /><br />\r\n');
INSERT INTO `reply_message` VALUES ('5ed4ea6843029', '5ed4c2b487a96', '002', '2020-06-01 19:45:44', '0', '今晚八点图书馆不见不散<br />\r\n');
INSERT INTO `reply_message` VALUES ('5ed4ec12dfdd0', '5ed4eb9f90c97', '002', '2020-06-01 19:52:50', '0', '鄙人还雅好文学，太宰治的《人间失格》我也中意很久了<img src=\"http://shinan.com/res/js/plugins/emoticons/91.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" />（欢迎加Q探讨）<br />\r\n');
INSERT INTO `reply_message` VALUES ('5ed4f83e891e6', '5ed4f8255f42a', '002', '2020-06-01 20:44:46', '666', 'abandon<img src=\"http://shinan.com/res/js/plugins/emoticons/51.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" /><br />\r\n');
INSERT INTO `reply_message` VALUES ('5ed5172e8636c', '5ed4f8255f42a', '007', '2020-06-01 22:56:46', '0', 'Are you ok?<br />\r\n');

SET FOREIGN_KEY_CHECKS = 1;
