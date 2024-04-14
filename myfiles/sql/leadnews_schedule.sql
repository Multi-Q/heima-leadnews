create database if not exists leadnews_schedule;
use leadnews_schedule;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for taskinfo
-- ----------------------------
DROP TABLE IF EXISTS `taskinfo`;
CREATE TABLE `taskinfo` (
  `task_id` bigint(20) NOT NULL COMMENT '任务id',
  `execute_time` datetime(3) NOT NULL COMMENT '执行时间',
  `parameters` longblob COMMENT '参数',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `task_type` int(11) NOT NULL COMMENT '任务类型',
  PRIMARY KEY (`task_id`),
  KEY `index_taskinfo_time` (`task_type`,`priority`,`execute_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskinfo
-- ----------------------------

-- ----------------------------
-- Table structure for taskinfo_logs
-- ----------------------------
DROP TABLE IF EXISTS `taskinfo_logs`;
CREATE TABLE `taskinfo_logs` (
  `task_id` bigint(20) NOT NULL COMMENT '任务id',
  `execute_time` datetime(3) NOT NULL COMMENT '执行时间',
  `parameters` longblob COMMENT '参数',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `task_type` int(11) NOT NULL COMMENT '任务类型',
  `version` int(11) NOT NULL COMMENT '版本号,用乐观锁',
  `status` int(11) DEFAULT '0' COMMENT '状态 0=初始化状态 1=EXECUTED 2=CANCELLED',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskinfo_logs
-- ----------------------------
