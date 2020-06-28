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

 Date: 01/06/2020 23:02:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `post_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `ptime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pkind` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hostid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pstatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `heat` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`) USING BTREE,
  INDEX `promulgator`(`hostid`) USING BTREE,
  CONSTRAINT `FK_hostid` FOREIGN KEY (`hostid`) REFERENCES `i_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('5ed4c2b487a96', '2020-06-01 16:56:20', '学习', '有人约自习吗？', '001', '0', '2', '自己一个人学习效率太低了，期末了不想挂科555<img src=\"http://shinan.com/res/js/plugins/emoticons/18.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" /><br />\r\n');
INSERT INTO `post` VALUES ('5ed4eb9f90c97', '2020-06-01 19:50:55', '兴趣', '兄弟们，这波该冲吗？', '002', '0', '1', '《C语言从入门到放弃》618<span style=\"color:#f10b00;\">五折</span>啊！！！很想买又没钱怎么办？？？<img src=\"http://shinan.com/res/js/plugins/emoticons/36.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" /><br />\r\n');
INSERT INTO `post` VALUES ('5ed4f616b6931', '2020-06-01 20:35:34', '交友', '找个螺友一起吃螺蛳粉', '003', '0', '0', '<img src=\"http://shinan.com/res/js/plugins/emoticons/2.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" />好久没吃了，怪想念的<br />\r\n');
INSERT INTO `post` VALUES ('5ed4f8255f42a', '2020-06-01 20:44:21', '学习', '用一句话证明你的英语水平', '003', '0', '2', '<img src=\"http://shinan.com/res/js/plugins/emoticons/13.gif\" alt=\"\" width=\"24\" height=\"24\" border=\"0\" />我先来，How are you?<br />\r\n');
INSERT INTO `post` VALUES ('5ed50df65e962', '2020-06-01 22:17:26', '交易', '每天爬绝望坡太累了！诚心求购一台电动车', '002', '0', '0', '如题，非诚勿扰<br />\r\n');

SET FOREIGN_KEY_CHECKS = 1;
