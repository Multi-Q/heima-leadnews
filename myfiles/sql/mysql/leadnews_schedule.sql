/*
 Navicat Premium Data Transfer

 Source Server         : msyql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : leadnews_schedule

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/04/2024 19:39:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for taskinfo
-- ----------------------------
DROP TABLE IF EXISTS `taskinfo`;
CREATE TABLE `taskinfo`  (
  `task_id` bigint NOT NULL COMMENT '任务id',
  `execute_time` datetime(3) NOT NULL COMMENT '执行时间',
  `parameters` longblob NULL COMMENT '参数',
  `priority` int NOT NULL COMMENT '优先级',
  `task_type` int NOT NULL COMMENT '任务类型',
  PRIMARY KEY (`task_id`) USING BTREE,
  INDEX `index_taskinfo_time`(`task_type`, `priority`, `execute_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taskinfo
-- ----------------------------

-- ----------------------------
-- Table structure for taskinfo_logs
-- ----------------------------
DROP TABLE IF EXISTS `taskinfo_logs`;
CREATE TABLE `taskinfo_logs`  (
  `task_id` bigint NOT NULL COMMENT '任务id',
  `execute_time` datetime(3) NOT NULL COMMENT '执行时间',
  `parameters` longblob NULL COMMENT '参数',
  `priority` int NOT NULL COMMENT '优先级',
  `task_type` int NOT NULL COMMENT '任务类型',
  `version` int NOT NULL COMMENT '版本号,用乐观锁',
  `status` int NULL DEFAULT 0 COMMENT '状态 0=初始化状态 1=EXECUTED 2=CANCELLED',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taskinfo_logs
-- ----------------------------
INSERT INTO `taskinfo_logs` VALUES (1780218314346201089, '2024-04-16 12:53:00.000', 0x08F930, 1, 1001, 2, 1);
INSERT INTO `taskinfo_logs` VALUES (1780219939458646017, '2024-04-16 13:01:10.000', 0x08FA30, 1, 1001, 2, 1);
INSERT INTO `taskinfo_logs` VALUES (1780221699996778498, '2024-04-16 13:15:08.000', 0x08FB30, 1, 1001, 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
