/*
 Navicat Premium Data Transfer

 Source Server         : 176.198.115.190
 Source Server Type    : MySQL
 Source Server Version : 50519
 Source Host           : localhost:3306
 Source Schema         : rongmusic

 Target Server Type    : MySQL
 Target Server Version : 50519
 File Encoding         : 65001

 Date: 15/10/2019 15:46:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `user_id` int(11) NOT NULL,
  `isAdmin` int(255) NOT NULL COMMENT '是否为管理员（1：管理员 2：非管理员）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 1);
INSERT INTO `admin` VALUES (2, 0);

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_id` int(11) NOT NULL,
  `music_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `music_lyric` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `music_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`music_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, '告白气球', 1, 'music/ 告白气球.mp3', 'music/lyric', 'music/1.');
INSERT INTO `music` VALUES (2, '童话镇', 3, 'music/童话镇.mp3', NULL, NULL);

-- ----------------------------
-- Table structure for music_and_musictype
-- ----------------------------
DROP TABLE IF EXISTS `music_and_musictype`;
CREATE TABLE `music_and_musictype`  (
  `music_id` int(11) NOT NULL,
  `musicType_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music_and_musictype
-- ----------------------------
INSERT INTO `music_and_musictype` VALUES (1, 1);
INSERT INTO `music_and_musictype` VALUES (2, 3);

-- ----------------------------
-- Table structure for music_hot
-- ----------------------------
DROP TABLE IF EXISTS `music_hot`;
CREATE TABLE `music_hot`  (
  `music_id` int(11) NOT NULL,
  `music_hotPoint` int(255) NOT NULL COMMENT '歌曲热度（用户每点击一次音乐，热度值加1，收藏进歌单热度值加3）',
  PRIMARY KEY (`music_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music_hot
-- ----------------------------
INSERT INTO `music_hot` VALUES (1, 5);
INSERT INTO `music_hot` VALUES (2, 10);

-- ----------------------------
-- Table structure for music_type
-- ----------------------------
DROP TABLE IF EXISTS `music_type`;
CREATE TABLE `music_type`  (
  `musicType_id` int(11) NOT NULL AUTO_INCREMENT,
  `musicType_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`musicType_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music_type
-- ----------------------------
INSERT INTO `music_type` VALUES (1, '小清新');
INSERT INTO `music_type` VALUES (2, '激情');
INSERT INTO `music_type` VALUES (3, '爱情');
INSERT INTO `music_type` VALUES (4, '伤感');

-- ----------------------------
-- Table structure for music_vip
-- ----------------------------
DROP TABLE IF EXISTS `music_vip`;
CREATE TABLE `music_vip`  (
  `music_id` int(11) NOT NULL,
  `music_isVIP` int(10) NOT NULL COMMENT '是否为vip专属歌曲（1：isVIP 2：notVIP）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music_vip
-- ----------------------------
INSERT INTO `music_vip` VALUES (1, 1);
INSERT INTO `music_vip` VALUES (2, 0);

-- ----------------------------
-- Table structure for playlist_and_music
-- ----------------------------
DROP TABLE IF EXISTS `playlist_and_music`;
CREATE TABLE `playlist_and_music`  (
  `list_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of playlist_and_music
-- ----------------------------
INSERT INTO `playlist_and_music` VALUES (1, 1);
INSERT INTO `playlist_and_music` VALUES (1, 2);
INSERT INTO `playlist_and_music` VALUES (2, 2);
INSERT INTO `playlist_and_music` VALUES (3, 1);
INSERT INTO `playlist_and_music` VALUES (3, 2);
INSERT INTO `playlist_and_music` VALUES (4, 1);

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`singer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, '周杰伦', '1', '著名歌手');
INSERT INTO `singer` VALUES (2, '许嵩', '1', '青年歌手');
INSERT INTO `singer` VALUES (3, '陈一发儿', '0', '网络主播，已被封杀');

-- ----------------------------
-- Table structure for singer_and_music
-- ----------------------------
DROP TABLE IF EXISTS `singer_and_music`;
CREATE TABLE `singer_and_music`  (
  `singer_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of singer_and_music
-- ----------------------------
INSERT INTO `singer_and_music` VALUES (1, 1);
INSERT INTO `singer_and_music` VALUES (3, 2);

-- ----------------------------
-- Table structure for singer_hot
-- ----------------------------
DROP TABLE IF EXISTS `singer_hot`;
CREATE TABLE `singer_hot`  (
  `singer_id` int(11) NOT NULL,
  `singer_hotPoint` int(10) NOT NULL COMMENT '歌手热度（歌手每一首歌曲热度相加）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of singer_hot
-- ----------------------------
INSERT INTO `singer_hot` VALUES (1, 5);
INSERT INTO `singer_hot` VALUES (2, 0);
INSERT INTO `singer_hot` VALUES (3, 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_sex` int(255) NULL DEFAULT NULL COMMENT '用户性别（1：男性 0：女性）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lily', '123', 'lily@qq.com', '成都', 0);
INSERT INTO `user` VALUES (2, 'tom', '123', 'tom@163.com', '武汉', 1);

-- ----------------------------
-- Table structure for user_playlist
-- ----------------------------
DROP TABLE IF EXISTS `user_playlist`;
CREATE TABLE `user_playlist`  (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_playlist
-- ----------------------------
INSERT INTO `user_playlist` VALUES (1, '夏日蝉歌', 1);
INSERT INTO `user_playlist` VALUES (2, '秋日落叶', 2);
INSERT INTO `user_playlist` VALUES (3, '春风沐雨', 1);
INSERT INTO `user_playlist` VALUES (4, '冬去春来', 1);

-- ----------------------------
-- Table structure for user_vip
-- ----------------------------
DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip`  (
  `user_id` int(255) NOT NULL,
  `user_isVIP` int(10) NOT NULL COMMENT '用户是否为VIP（1：是VIP 0：不是VIP）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_vip
-- ----------------------------
INSERT INTO `user_vip` VALUES (1, 0);
INSERT INTO `user_vip` VALUES (2, 1);

SET FOREIGN_KEY_CHECKS = 1;
