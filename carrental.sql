/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_3306
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : carrental

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 06/04/2022 13:06:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car`  (
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `rentprice` double(10, 2) NULL DEFAULT NULL,
  `deposit` double NULL DEFAULT NULL,
  `isrenting` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('赣G1563R9', 'SUV', '白色', 350000.00, 3500.00, 35000, 0, '奥迪Q5', '2019-10-27/201910270931596284786.jpg', '2019-10-27 09:33:08');
INSERT INTO `bus_car` VALUES ('赣G361B4', '轿车', '白色', 900000.00, 9000.00, 90000, 1, '奥迪RS7', '2019-10-27/201910270930535788138.jpg', '2019-10-27 09:31:50');
INSERT INTO `bus_car` VALUES ('赣G5634E1', '轿车', '白色', 250000.00, 2500.00, 25000, 1, '本田雅阁', '2019-10-27/201910270933143194309.jpg', '2019-10-27 09:34:05');
INSERT INTO `bus_car` VALUES ('赣G563T2', '轿车', '银色', 600000.00, 6000.00, 60000, 1, '奔驰A级车', '2019-10-27/201910270927076533976.jpg', '2019-10-27 09:27:10');
INSERT INTO `bus_car` VALUES ('赣G6934C5', '轿车', '黑色', 180000.00, 2000.00, 110000, 0, '帕萨特', '2019-10-27/201910270934101143360.jpg', '2019-10-27 09:35:28');
INSERT INTO `bus_car` VALUES ('赣G7D8965', 'SUV', '未知', 300000.00, 3000.00, 30000, 1, '路虎揽胜', 'images/defaultcarimage.jpg', '2019-10-15 20:19:19');
INSERT INTO `bus_car` VALUES ('赣G856F3', '轿车', '红色', 800000.00, 8000.00, 80000, 1, '法拉利', '2019-10-15/201910152025189633940.jpg', '2019-10-15 20:25:19');
INSERT INTO `bus_car` VALUES ('鄂A77777', 'SUV', '白色', 350000.00, 1500.00, 12000, 1, '宝马X3', 'images/002.jpg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A88888', '轿车', '黑色', 880000.00, 4500.00, 10000, 0, '保时捷 卡宴', 'images/003.jpg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A99999', '皮卡', '黄色', 500000.00, 3000.00, 20000, 0, '福特猛禽', 'images/defaultcarimage.jpg', '2019-06-10 14:50:12');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check`  (
  `checkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checkdate` datetime NULL DEFAULT NULL,
  `checkdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymoney` double(255, 0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', 500, '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '向左变道没打灯', '违规变道', 200, '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', 200, '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', 0, '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', 500, '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', 100, '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190611_111021_41215259', '2019-06-11 11:10:21', '没有1', '无1', 0, '超级管理员', 'CZ_20190611_094617_32192683', '2019-06-11 11:10:32');
INSERT INTO `bus_check` VALUES ('JC_20191022_093748_536_20362', '2019-10-22 09:37:48', '闯红灯', '闯红灯', 500, '超级管理员', 'CZ_20191020_193117_163_87219', '2019-10-22 09:39:48');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `career` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('360421199906212428', '叶夕水', 0, '上海', '15278450366', '程序员', '2019-10-24 08:27:57');
INSERT INTO `bus_customer` VALUES ('360421199906242316', '徐三石', 1, '深圳', '15279364588', '老师', '2019-10-24 08:30:12');
INSERT INTO `bus_customer` VALUES ('360421199908162526', '李蓝', 0, '武昌', '15278654188', '部门经理', '2019-10-24 09:05:36');
INSERT INTO `bus_customer` VALUES ('362421199935265258', '朗普', 1, '天津', '15247856988', '工人', '2019-10-14 20:05:42');
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', 1, '武昌', '13456788987', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('43131334113331131', '习元', 1, '北京', '13888888888', '领导', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331131', '张三', 1, '武昌', '13431334113', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331132', '孙山', 1, '汉口', '134131314131', '商人', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', 0, '汉阳', '13451313113', '工人', '2019-05-07 14:52:24');

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime NULL DEFAULT NULL,
  `returndate` datetime NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20180611_171304_0732_57330', 1600.00, '2017-01-01 00:00:00', '2017-06-18 00:00:00', 1, '421087133414144412', '鄂A77777', '李四', '2017-01-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164747_0573_26177', 500.00, '2018-01-13 00:00:00', '2018-06-23 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-01-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164808_0385_37625', 1000.00, '2018-03-13 00:00:00', '2018-06-15 00:00:00', 1, '421087133414144412', '鄂A88888', '王五', '2018-03-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', 500.00, '2018-05-18 00:00:00', '2018-07-21 00:00:00', 1, '421087133414144412', '鄂A66666', '张三', '2018-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', 500.00, '2018-07-23 10:23:27', '2018-10-31 10:23:29', 1, '421087133414144412', '鄂A66666', '李四', '2018-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', 1500.00, '2018-09-01 00:00:00', '2018-12-29 00:00:00', 1, '43131334113331131', '鄂A77777', '王五', '2018-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', 500.00, '2018-12-01 00:00:00', '2018-09-10 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190611_094617_32192683', 500.00, '2019-06-11 09:46:17', '2019-06-15 09:46:19', 1, '43131334113331131', '鄂A66666', '超级管理员', '2019-06-11 09:46:25');
INSERT INTO `bus_rent` VALUES ('CZ_20191020_193117_163_87219', 5000.00, '2019-10-20 11:31:17', '2019-10-31 00:00:00', 1, '362421199935265258', '赣G856F3', '超级管理员', '2019-10-20 19:31:28');
INSERT INTO `bus_rent` VALUES ('CZ_20191020_193245_774_68398', 1000.00, '2019-10-20 11:32:45', '2019-10-30 00:00:00', 1, '362421199935265258', '鄂A88888', '超级管理员', '2019-10-20 19:32:50');
INSERT INTO `bus_rent` VALUES ('CZ_20191023_085058_492_41834', 8000.00, '2019-10-23 00:50:58', '2019-10-30 00:00:00', 0, '421087133414144412', '赣G856F3', '旧城', '2019-10-23 08:51:05');
INSERT INTO `bus_rent` VALUES ('CZ_20220406_102037_263_44550', 2500.00, '2022-04-05 10:20:37', '2022-04-05 16:00:00', 0, '360421199906242316', '赣G5634E1', '徐三石', '2022-04-06 02:20:45');
INSERT INTO `bus_rent` VALUES ('CZ_20220406_103204_654_31238', 9000.00, '2022-04-05 10:32:04', '2022-04-05 16:00:00', 0, '421087133414144412', '赣G361B4', '张小明', '2022-04-06 02:32:22');
INSERT INTO `bus_rent` VALUES ('CZ_20220406_104649_675_97796', 6000.00, '2022-04-05 10:46:49', '2022-04-05 16:00:00', 0, '360421199906212428', '赣G563T2', '叶夕水', '2022-04-06 02:47:03');
INSERT INTO `bus_rent` VALUES ('CZ_20220406_105548_854_61716', 1500.00, '2022-04-05 10:55:48', '2022-04-05 16:00:00', 0, '362421199935265258', '鄂A77777', '朗普', '2022-04-06 02:56:08');
INSERT INTO `bus_rent` VALUES ('CZ_20220406_121515_931_11154', 3000.00, '2022-04-05 12:15:15', '2022-04-05 16:00:00', 0, '421087133414144412', '赣G7D8965', '张小明', '2022-04-06 04:15:25');

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 428 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (123, '小明-xm', '0:0:0:0:0:0:0:1', '2019-10-10 19:55:35');
INSERT INTO `sys_log_login` VALUES (124, '落亦-luoyi', '0:0:0:0:0:0:0:1', '2019-10-10 19:55:51');
INSERT INTO `sys_log_login` VALUES (125, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-11 09:24:28');
INSERT INTO `sys_log_login` VALUES (126, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-11 09:25:43');
INSERT INTO `sys_log_login` VALUES (127, '落亦-luoyi', '0:0:0:0:0:0:0:1', '2019-10-11 20:26:00');
INSERT INTO `sys_log_login` VALUES (128, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-12 08:55:40');
INSERT INTO `sys_log_login` VALUES (257, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 10:14:44');
INSERT INTO `sys_log_login` VALUES (258, '旦素一-dansuyi', '0:0:0:0:0:0:0:1', '2019-10-15 10:18:30');
INSERT INTO `sys_log_login` VALUES (259, '落亦-luoyi', '0:0:0:0:0:0:0:1', '2019-10-15 10:19:05');
INSERT INTO `sys_log_login` VALUES (260, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:08:18');
INSERT INTO `sys_log_login` VALUES (261, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:29:01');
INSERT INTO `sys_log_login` VALUES (262, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:30:54');
INSERT INTO `sys_log_login` VALUES (263, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:31:38');
INSERT INTO `sys_log_login` VALUES (264, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:34:08');
INSERT INTO `sys_log_login` VALUES (265, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:35:40');
INSERT INTO `sys_log_login` VALUES (266, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:36:29');
INSERT INTO `sys_log_login` VALUES (267, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:39:55');
INSERT INTO `sys_log_login` VALUES (268, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:40:48');
INSERT INTO `sys_log_login` VALUES (269, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:42:12');
INSERT INTO `sys_log_login` VALUES (270, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:44:14');
INSERT INTO `sys_log_login` VALUES (271, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:44:49');
INSERT INTO `sys_log_login` VALUES (272, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:45:08');
INSERT INTO `sys_log_login` VALUES (273, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:46:51');
INSERT INTO `sys_log_login` VALUES (274, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:47:33');
INSERT INTO `sys_log_login` VALUES (275, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:47:41');
INSERT INTO `sys_log_login` VALUES (276, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:49:13');
INSERT INTO `sys_log_login` VALUES (277, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:50:10');
INSERT INTO `sys_log_login` VALUES (278, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:50:42');
INSERT INTO `sys_log_login` VALUES (279, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:57:14');
INSERT INTO `sys_log_login` VALUES (280, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 14:59:34');
INSERT INTO `sys_log_login` VALUES (281, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:00:37');
INSERT INTO `sys_log_login` VALUES (282, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:01:48');
INSERT INTO `sys_log_login` VALUES (283, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:03:37');
INSERT INTO `sys_log_login` VALUES (284, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:04:23');
INSERT INTO `sys_log_login` VALUES (285, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:04:45');
INSERT INTO `sys_log_login` VALUES (286, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:05:42');
INSERT INTO `sys_log_login` VALUES (287, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:06:11');
INSERT INTO `sys_log_login` VALUES (288, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:06:33');
INSERT INTO `sys_log_login` VALUES (289, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:08:30');
INSERT INTO `sys_log_login` VALUES (290, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:09:07');
INSERT INTO `sys_log_login` VALUES (291, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:11:48');
INSERT INTO `sys_log_login` VALUES (292, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:11:57');
INSERT INTO `sys_log_login` VALUES (293, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:12:07');
INSERT INTO `sys_log_login` VALUES (294, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:14:55');
INSERT INTO `sys_log_login` VALUES (295, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 15:17:10');
INSERT INTO `sys_log_login` VALUES (296, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 20:02:44');
INSERT INTO `sys_log_login` VALUES (297, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 20:17:10');
INSERT INTO `sys_log_login` VALUES (298, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-15 20:18:24');
INSERT INTO `sys_log_login` VALUES (299, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 22:25:28');
INSERT INTO `sys_log_login` VALUES (300, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 22:33:26');
INSERT INTO `sys_log_login` VALUES (301, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 22:35:47');
INSERT INTO `sys_log_login` VALUES (302, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 23:14:56');
INSERT INTO `sys_log_login` VALUES (303, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 23:15:31');
INSERT INTO `sys_log_login` VALUES (304, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 23:15:58');
INSERT INTO `sys_log_login` VALUES (305, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-18 23:16:42');
INSERT INTO `sys_log_login` VALUES (306, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 11:21:31');
INSERT INTO `sys_log_login` VALUES (307, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 11:26:11');
INSERT INTO `sys_log_login` VALUES (308, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 16:59:47');
INSERT INTO `sys_log_login` VALUES (309, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 17:46:27');
INSERT INTO `sys_log_login` VALUES (310, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 17:46:52');
INSERT INTO `sys_log_login` VALUES (311, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 17:54:29');
INSERT INTO `sys_log_login` VALUES (312, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 17:56:04');
INSERT INTO `sys_log_login` VALUES (313, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 18:02:05');
INSERT INTO `sys_log_login` VALUES (314, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 18:03:16');
INSERT INTO `sys_log_login` VALUES (315, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 21:33:50');
INSERT INTO `sys_log_login` VALUES (316, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 21:37:18');
INSERT INTO `sys_log_login` VALUES (317, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 22:11:25');
INSERT INTO `sys_log_login` VALUES (318, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-19 22:17:45');
INSERT INTO `sys_log_login` VALUES (358, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-23 08:46:49');
INSERT INTO `sys_log_login` VALUES (359, '落亦-luoyi', '0:0:0:0:0:0:0:1', '2019-10-23 08:49:31');
INSERT INTO `sys_log_login` VALUES (360, '旧城-jiucheng', '0:0:0:0:0:0:0:1', '2019-10-23 08:50:39');
INSERT INTO `sys_log_login` VALUES (401, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-27 15:24:51');
INSERT INTO `sys_log_login` VALUES (402, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-27 16:49:00');
INSERT INTO `sys_log_login` VALUES (403, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-28 09:40:42');
INSERT INTO `sys_log_login` VALUES (404, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-28 12:38:24');
INSERT INTO `sys_log_login` VALUES (405, '落亦-luoyi', '0:0:0:0:0:0:0:1', '2019-10-28 13:08:47');
INSERT INTO `sys_log_login` VALUES (406, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2019-10-28 14:10:17');
INSERT INTO `sys_log_login` VALUES (407, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 01:49:19');
INSERT INTO `sys_log_login` VALUES (408, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 01:51:05');
INSERT INTO `sys_log_login` VALUES (409, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:00:52');
INSERT INTO `sys_log_login` VALUES (410, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:16:44');
INSERT INTO `sys_log_login` VALUES (411, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:17:16');
INSERT INTO `sys_log_login` VALUES (412, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:27:32');
INSERT INTO `sys_log_login` VALUES (413, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:28:02');
INSERT INTO `sys_log_login` VALUES (414, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:28:59');
INSERT INTO `sys_log_login` VALUES (415, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:31:14');
INSERT INTO `sys_log_login` VALUES (416, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:31:40');
INSERT INTO `sys_log_login` VALUES (417, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:35:21');
INSERT INTO `sys_log_login` VALUES (418, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:37:34');
INSERT INTO `sys_log_login` VALUES (419, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:38:06');
INSERT INTO `sys_log_login` VALUES (420, '超级管理员-admin', '127.0.0.1', '2022-04-06 02:39:46');
INSERT INTO `sys_log_login` VALUES (421, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:44:37');
INSERT INTO `sys_log_login` VALUES (422, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 02:45:13');
INSERT INTO `sys_log_login` VALUES (423, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 03:07:54');
INSERT INTO `sys_log_login` VALUES (424, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 03:11:10');
INSERT INTO `sys_log_login` VALUES (425, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 04:14:18');
INSERT INTO `sys_log_login` VALUES (426, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 04:46:34');
INSERT INTO `sys_log_login` VALUES (427, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2022-04-06 04:55:28');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` int(255) NULL DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(255) NULL DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '汽车租赁系统', NULL, 1, NULL, '&#xe68e;', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '基础管理', '', 0, '', '&#xe621;', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '业务管理', '', 0, '', '&#xe663;', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '系统管理', '', 1, '', '&#xe716;', 1);
INSERT INTO `sys_menu` VALUES (5, 1, '统计分析', NULL, 0, NULL, '&#xe629;', 1);
INSERT INTO `sys_menu` VALUES (6, 2, '客户管理', '../bus/toCustomerManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (7, 2, '车辆管理', '../bus/toCarManager.action', 0, '', '&#xe657;', 1);
INSERT INTO `sys_menu` VALUES (8, 3, '汽车出租', '../bus/toRentCarManager.action', 0, '', '&#xe65b;', 1);
INSERT INTO `sys_menu` VALUES (9, 3, '出租单管理', '../bus/toRentManager.action', 0, '', '&#xe6b2;', 1);
INSERT INTO `sys_menu` VALUES (10, 3, '汽车入库', '../bus/toCheckCarManager.action', 0, '', '&#xe65a;', 1);
INSERT INTO `sys_menu` VALUES (11, 3, '检查单管理', '../bus/toCheckManager.action', 0, '', '&#xe705', 1);
INSERT INTO `sys_menu` VALUES (12, 4, '菜单管理', '../sys/toMenuManager.action', 1, NULL, '&#xe60f', 1);
INSERT INTO `sys_menu` VALUES (13, 4, '角色管理', '../sys/toRoleManager.action', 1, '', '&#xe66f;', 1);
INSERT INTO `sys_menu` VALUES (14, 4, '用户管理', '../sys/toUserManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (15, 4, '日志管理', '../sys/toLogInfoManager.action', 0, '', '&#xe655;', 1);
INSERT INTO `sys_menu` VALUES (16, 4, '系统公告', '../sys/toNewsManager.action', 0, '', '&#xe645;', 1);
INSERT INTO `sys_menu` VALUES (17, 4, '数据源监控', '../druid/', 0, '', '&#xe857;', 1);
INSERT INTO `sys_menu` VALUES (18, 5, '客户地区统计', '../stat/toCustomerAreaStat.action', 0, '', '&#xe63c;', 1);
INSERT INTO `sys_menu` VALUES (19, 5, '客户地区性别统计', '../stat/toCustomerAreaSexStat.action', 0, NULL, '&#xe629;', 1);
INSERT INTO `sys_menu` VALUES (20, 5, '业务员年度销售额', '../stat/toOpernameYearGradeStat.action', 0, '', '&#xe62d;', 1);
INSERT INTO `sys_menu` VALUES (21, 5, '公司年度月份销售额', '../stat/toCompanyYearGradeStat.action', 0, '', '&#xe62c;', 1);

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES (10, '修复bug', '哈哈哈哈哈哈', '2019-10-12 14:32:21', '超级管理员');
INSERT INTO `sys_news` VALUES (11, '功能更新', '阿斯顿发生', '2019-10-12 14:42:25', '超级管理员');
INSERT INTO `sys_news` VALUES (12, '修复兼容性', '呃呃呃呃', '2019-10-12 14:56:14', '超级管理员');
INSERT INTO `sys_news` VALUES (15, '测试', '学习是一场修行，戒骄戒躁，稳扎稳打', '2019-10-13 10:59:23', '超级管理员');
INSERT INTO `sys_news` VALUES (16, '每个浏览器对layui的兼容性并不一样', 'layui的兼容性并不好', '2019-10-13 11:20:43', '超级管理员');
INSERT INTO `sys_news` VALUES (17, '修复了表格的一个bug', '当其中一页只有一条数据时，删除这条数据应该要重新加载上一页的数据', '2019-10-14 20:33:45', '超级管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所以业务菜单', 1);
INSERT INTO `sys_role` VALUES (3, '系统管理员', '管理系统', 1);
INSERT INTO `sys_role` VALUES (4, '数据统计管理员', '数据统计管理员', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (3, 17);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 18);
INSERT INTO `sys_role_menu` VALUES (4, 19);
INSERT INTO `sys_role_menu` VALUES (4, 20);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (3, 1);
INSERT INTO `sys_role_user` VALUES (4, 2);
INSERT INTO `sys_role_user` VALUES (5, 3);
INSERT INTO `sys_role_user` VALUES (6, 4);
INSERT INTO `sys_role_user` VALUES (7, 1);
INSERT INTO `sys_role_user` VALUES (8, 1);
INSERT INTO `sys_role_user` VALUES (12, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '4313341334413', '超级管理员', 1, '武汉', '134441331311', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', 1, 1);
INSERT INTO `sys_user` VALUES (3, 'zhangsan', '3413334134131131', '张三', 1, '武汉', '134131313111', 'e10adc3949ba59abbe56e057f20f883e', 'BA', 2, 1);
INSERT INTO `sys_user` VALUES (4, 'ls', '43311341311314341', '李四', 1, '武汉', '1341314113131', 'e10adc3949ba59abbe56e057f20f883e', '扫地的', 2, 1);
INSERT INTO `sys_user` VALUES (5, 'ww', '4313133131331312', '王五', 1, '武汉', '13413131131', 'e10adc3949ba59abbe56e057f20f883e', '领导', 2, 1);
INSERT INTO `sys_user` VALUES (6, 'xm', '45113141331131131', '小明', 1, '武昌', '13451333131', 'e10adc3949ba59abbe56e057f20f883e', '扫地地', 2, 1);
INSERT INTO `sys_user` VALUES (7, 'luoyi', '360421199805241424', '落亦', 1, '九江', '15207895200', 'e10adc3949ba59abbe56e057f20f883e', '学生', 2, 1);
INSERT INTO `sys_user` VALUES (8, 'jiucheng', '360421135820654875', '旧城', 1, '九江', '13614752569', 'e10adc3949ba59abbe56e057f20f883e', '', 2, 1);
INSERT INTO `sys_user` VALUES (9, 'sanpao', '360421198805142414', 'Alex', 1, '上海', '13064154936', 'e10adc3949ba59abbe56e057f20f883e', '主席', 2, 1);
INSERT INTO `sys_user` VALUES (10, 'jiashang', '360421199805122014', '佳上', 1, '北京', '15247856322', 'e10adc3949ba59abbe56e057f20f883e', '舰长', 2, 1);
INSERT INTO `sys_user` VALUES (11, 'liyuesu', '360421158902351452', '李约素', 1, '天津', '15219874522', 'e10adc3949ba59abbe56e057f20f883e', '舰长', 2, 1);
INSERT INTO `sys_user` VALUES (12, 'dansuyi', '360421185475452562', '旦素一', 0, '成都', '15279362588', 'e10adc3949ba59abbe56e057f20f883e', '舰长', 2, 1);
INSERT INTO `sys_user` VALUES (13, 'ww', '2131313131', '王五', 1, '武汉', '15279230588', 'e10adc3949ba59abbe56e057f20f883e', '程序员', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
