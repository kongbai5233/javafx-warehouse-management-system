/*
 Navicat Premium Dump SQL

 Source Server         : Kong
 Source Server Type    : MySQL
 Source Server Version : 90100 (9.1.0)
 Source Host           : localhost:3306
 Source Schema         : jdbc

 Target Server Type    : MySQL
 Target Server Version : 90100 (9.1.0)
 File Encoding         : 65001

 Date: 09/02/2026 22:48:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `NO` int NOT NULL AUTO_INCREMENT,
  `物料号` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `物料描述` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `单位` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `出入数量` int NULL DEFAULT NULL,
  `操作人员` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `操作时间` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `操作` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, '2314', 'PCS', '六角螺母', 120, 'kong', '2024-06-19', '删');
INSERT INTO `history` VALUES (2, '1232', '八角螺丝', 'PCS', 1500, 'kong', '2024-06-19', '增');
INSERT INTO `history` VALUES (3, '1002', '左后门上铰链', 'PCS', -3799, 'kong', '2024-06-19', '改');
INSERT INTO `history` VALUES (4, '1002', 'PCS', '左后门上铰链', 5222, 'kong', '2024-06-19', '改');
INSERT INTO `history` VALUES (5, '242', '六角法兰面螺栓', 'PCS', -20112, 'kong', '2024-06-19', '改');
INSERT INTO `history` VALUES (6, '2422', '六角测试', 'PCS', 1, 'kong', '2024-06-19', '增');
INSERT INTO `history` VALUES (7, '2422', '六角测试', 'PCS', 1, 'kong', '2024-06-19', '删');
INSERT INTO `history` VALUES (8, '1002', '左后门上铰链', 'PCS', 5555, '123', '2024-06-19', '删');
INSERT INTO `history` VALUES (9, '242', 'PCS', '六角法兰面螺栓', 1200, 'li', '2024-06-19', '删');
INSERT INTO `history` VALUES (10, '214', '测试', 'CC', 111, 'wang', '2024-06-19', '增');
INSERT INTO `history` VALUES (11, '214', '测试', 'CC', 111, 'chen', '2024-06-19', '删');
INSERT INTO `history` VALUES (12, '12', '八角螺栓', 'PCS', 3400, 'bai', '2024-06-19', '增');
INSERT INTO `history` VALUES (13, '343', '三角螺母', 'PCS', 2233, 'bai', '2024-06-19', '增');
INSERT INTO `history` VALUES (14, '241', '四角螺丝', 'PCS', 3441, 'bai', '2024-06-19', '增');
INSERT INTO `history` VALUES (15, '12', '八角螺栓', 'PCS', -3060, '123', '2024-06-19', '改');
INSERT INTO `history` VALUES (16, '1232', '八角螺丝', 'PCS', -1400, 'kong', '2024-06-21', '改');
INSERT INTO `history` VALUES (17, '12345', '1233', '1233', 1233, 'kong', '2024-06-21', '增');
INSERT INTO `history` VALUES (18, '12345', '1233', '1233', 1233, 'kong', '2024-06-21', '删');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `账号` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `密码` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `用户名` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`账号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('', '', '这是个Bug');
INSERT INTO `manager` VALUES ('123', '123', 'csrat');
INSERT INTO `manager` VALUES ('123345', '213', '213123');
INSERT INTO `manager` VALUES ('1234', '1234', '1234');
INSERT INTO `manager` VALUES ('12345', '12345', '12345');
INSERT INTO `manager` VALUES ('456', '456', '465');
INSERT INTO `manager` VALUES ('bai', '123', '白');
INSERT INTO `manager` VALUES ('kong', '123', '123');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('“一带一路”：心相通，信致远');
INSERT INTO `notice` VALUES ('宪法之力 守护你我');
INSERT INTO `notice` VALUES ('首尔万人集会 要求尹锡悦下台');
INSERT INTO `notice` VALUES ('年轻的你们 千万不要轻易放弃生命');
INSERT INTO `notice` VALUES ('lol新赛季ig全神班强度如何');
INSERT INTO `notice` VALUES ('太难做了，css为何如此折磨');

-- ----------------------------
-- Table structure for storehouse
-- ----------------------------
DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE `storehouse`  (
  `物料号` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `物料描述` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `单位` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `数量` int NULL DEFAULT NULL,
  PRIMARY KEY (`物料号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storehouse
-- ----------------------------
INSERT INTO `storehouse` VALUES ('1004', '左前门下铰链', 'PCS', 2312);
INSERT INTO `storehouse` VALUES ('112', '前舱盖左铰链总成', 'PCS', 4132);
INSERT INTO `storehouse` VALUES ('12', 'PCS', '八角螺栓', 340);
INSERT INTO `storehouse` VALUES ('123', '前副车架后螺丝套', 'PCS', 3212);
INSERT INTO `storehouse` VALUES ('1232', 'PCS', '八角螺丝', 100);
INSERT INTO `storehouse` VALUES ('1234', '前舱盖右铰链总成', 'PCS', 3213);
INSERT INTO `storehouse` VALUES ('213', '背门铰链', 'PCS', 4142);
INSERT INTO `storehouse` VALUES ('231', '结构胶', '桶', 200);
INSERT INTO `storehouse` VALUES ('241', '四角螺丝', 'PCS', 3441);
INSERT INTO `storehouse` VALUES ('321', '焊接方螺母', 'PCS', 1221);
INSERT INTO `storehouse` VALUES ('341', '左B柱内下阻断片', 'PCS', 1200);
INSERT INTO `storehouse` VALUES ('342', '右B柱内下阻断片', 'PCS', 1200);
INSERT INTO `storehouse` VALUES ('343', '三角螺母', 'PCS', 2233);

-- ----------------------------
-- Table structure for storehouse_zhu
-- ----------------------------
DROP TABLE IF EXISTS `storehouse_zhu`;
CREATE TABLE `storehouse_zhu`  (
  `物料号` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `物料描述` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `单位` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `数量` int NULL DEFAULT NULL,
  PRIMARY KEY (`物料号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storehouse_zhu
-- ----------------------------
INSERT INTO `storehouse_zhu` VALUES ('1002', '左后门上铰链', 'PCS', 4132);
INSERT INTO `storehouse_zhu` VALUES ('1004', '左前门下铰链', 'PCS', 2312);
INSERT INTO `storehouse_zhu` VALUES ('112', '前舱盖左铰链总成', 'PCS', 4132);
INSERT INTO `storehouse_zhu` VALUES ('123', '前副车架后螺丝套', 'PCS', 3212);
INSERT INTO `storehouse_zhu` VALUES ('1234', '前舱盖右铰链总成', 'PCS', 3213);
INSERT INTO `storehouse_zhu` VALUES ('213', '背门铰链', 'PCS', 4142);
INSERT INTO `storehouse_zhu` VALUES ('231', '结构胶', '桶', 200);
INSERT INTO `storehouse_zhu` VALUES ('242', '六角法兰面螺栓', 'PCS', 21312);
INSERT INTO `storehouse_zhu` VALUES ('321', '焊接方螺母', 'PCS', 1221);
INSERT INTO `storehouse_zhu` VALUES ('341', '左B柱内下阻断片', 'PCS', 1200);
INSERT INTO `storehouse_zhu` VALUES ('342', '右B柱内下阻断片', 'PCS', 1200);

-- ----------------------------
-- Table structure for users_zzw_19
-- ----------------------------
DROP TABLE IF EXISTS `users_zzw_19`;
CREATE TABLE `users_zzw_19`  (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `major` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业',
  `num` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_zzw_19
-- ----------------------------
INSERT INTO `users_zzw_19` VALUES (1, '空白', '计算机', '213803019');
INSERT INTO `users_zzw_19` VALUES (2, '奶龙', '移动', '221308888');
INSERT INTO `users_zzw_19` VALUES (3, '东雪莲', '电信', '221208888');
INSERT INTO `users_zzw_19` VALUES (4, '龙傲天', '联通', '221108888');
INSERT INTO `users_zzw_19` VALUES (5, '天外飞仙', '天天和', '214589484');
INSERT INTO `users_zzw_19` VALUES (6, '还珠格格', '妃子', '29');
INSERT INTO `users_zzw_19` VALUES (7, '白空', '布吉岛', '22');

SET FOREIGN_KEY_CHECKS = 1;
