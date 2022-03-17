/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : myshop15

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 09/10/2021 14:23:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advert
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES (1, 'adv1.png', 1, 'http://www.baidu.com');
INSERT INTO `advert` VALUES (2, 'adv2.png', 0, 'http://www.qq.com');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '苹果', 1);
INSERT INTO `brand` VALUES (2, '三星', 1);
INSERT INTO `brand` VALUES (3, '联想', 2);
INSERT INTO `brand` VALUES (4, '雷神', 3);
INSERT INTO `brand` VALUES (5, '戴尔', 2);
INSERT INTO `brand` VALUES (6, '双飞燕', 3);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '手机');
INSERT INTO `class` VALUES (2, '电脑');
INSERT INTO `class` VALUES (3, '鼠标');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `shop_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (7, 42, '很强', 1, 1625202674);
INSERT INTO `comment` VALUES (8, 44, 'henqiang', 1, 1625314537);

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `touch_id` int(11) NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `num` int(10) UNSIGNED NOT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1625202521337471051', 14, 42, 1625202521, 1, 9, 1, 5000, 1, 1);
INSERT INTO `indent` VALUES ('16253144931123216330', 15, 44, 1625314493, 2, 10, 1, 5000, 1, 1);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `shelf` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '苹果-1', '1625289130232583794.jpg', 5000, 6, 1, 1);
INSERT INTO `shop` VALUES (2, '苹果-2', '16252380991634125808.jpg', 6000, 8, 1, 1);
INSERT INTO `shop` VALUES (3, '苹果-3', '16252381142048787661.jpg', 4000, 6, 1, 1);
INSERT INTO `shop` VALUES (4, '三星', '16252405461653095679.jpg', 3000, 8, 2, 1);
INSERT INTO `shop` VALUES (5, '联想-1', '16252411401076916006.jpg', 7000, 8, 3, 1);
INSERT INTO `shop` VALUES (6, '联想-2', '1625241149774039851.jpg', 6900, 9, 3, 1);
INSERT INTO `shop` VALUES (7, '联想-3', '1625241157269282588.jpg', 6800, 9, 3, 1);
INSERT INTO `shop` VALUES (8, '联想-4', '16252411671323171128.jpg', 6500, 9, 3, 1);
INSERT INTO `shop` VALUES (9, '雷蛇-1', '16252415511294470334.jpg', 300, 10, 4, 1);
INSERT INTO `shop` VALUES (10, '雷蛇-2', '1625241565871697407.jpg', 350, 10, 4, 1);
INSERT INTO `shop` VALUES (11, '雷蛇-3', '16252415731535812174.jpg', 400, 9, 4, 1);
INSERT INTO `shop` VALUES (12, '雷蛇-4', '16252415841752256814.jpg', 450, 10, 4, 1);
INSERT INTO `shop` VALUES (13, '戴尔-1', '1625241178407027854.jpg', 5400, 9, 5, 1);
INSERT INTO `shop` VALUES (14, '戴尔-2', '1625241187860449290.jpg', 6000, 9, 5, 1);
INSERT INTO `shop` VALUES (15, '三星-1', '16252405572100827418.jpg', 2000, 7, 2, 1);
INSERT INTO `shop` VALUES (16, '三星-2', '16252408751802560814.jpg', 1900, 6, 2, 1);
INSERT INTO `shop` VALUES (17, '罗技', '1625241594256672117.jpg', 600, 10, 4, 1);
INSERT INTO `shop` VALUES (18, '戴尔-3', '16252896151749005134.jpg', 4000, 9, 5, 1);
INSERT INTO `shop` VALUES (19, '双飞燕-1', '16252899151947303054.jpg', 300, 10, 6, 1);
INSERT INTO `shop` VALUES (20, '双飞燕-2', '16252899371063892828.jpg', 299, 10, 6, 1);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, '未发货');
INSERT INTO `status` VALUES (2, '已发货');
INSERT INTO `status` VALUES (3, '未付款');
INSERT INTO `status` VALUES (5, '已付款');

-- ----------------------------
-- Table structure for touch
-- ----------------------------
DROP TABLE IF EXISTS `touch`;
CREATE TABLE `touch`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of touch
-- ----------------------------
INSERT INTO `touch` VALUES (3, '王伟', '冰岛', '0898', '2364', 39);
INSERT INTO `touch` VALUES (5, '陈翔', '地球', '1192', 'huq@qq.com2', 14);
INSERT INTO `touch` VALUES (6, '马龙', '内陆', '110', 'wen@qq.com', 14);
INSERT INTO `touch` VALUES (7, '赵强', '台湾', '0089', '2324', 39);
INSERT INTO `touch` VALUES (8, '李四', '香港', '0898', '123', 40);
INSERT INTO `touch` VALUES (9, '张三', '香港', '00852', '123', 42);
INSERT INTO `touch` VALUES (10, 'lin', '123', '456', '789', 44);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isadmin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '900150983cd24fb0d6963f7d28e17f72', 1);
INSERT INTO `user` VALUES (44, 'user3', '202cb962ac59075b964b07152d234b70', 0);

SET FOREIGN_KEY_CHECKS = 1;
