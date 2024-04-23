/*
 Navicat Premium Data Transfer

 Source Server         : msyql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : leadnews_article

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/04/2024 19:39:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ap_article
-- ----------------------------
DROP TABLE IF EXISTS `ap_article`;
CREATE TABLE `ap_article`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `author_id` int UNSIGNED NULL DEFAULT NULL COMMENT '文章作者的ID',
  `author_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者昵称',
  `channel_id` int UNSIGNED NULL DEFAULT NULL COMMENT '文章所属频道ID',
  `channel_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '频道名称',
  `layout` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '文章布局\r\n            0 无图文章\r\n            1 单图文章\r\n            2 多图文章',
  `flag` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '文章标记\r\n            0 普通文章\r\n            1 热点文章\r\n            2 置顶文章\r\n            3 精品文章\r\n            4 大V 文章',
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文章图片\r\n            多张逗号分隔',
  `labels` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文章标签最多3个 逗号分隔',
  `likes` int UNSIGNED NULL DEFAULT NULL COMMENT '点赞数量',
  `collection` int UNSIGNED NULL DEFAULT NULL COMMENT '收藏数量',
  `comment` int UNSIGNED NULL DEFAULT NULL COMMENT '评论数量',
  `views` int UNSIGNED NULL DEFAULT NULL COMMENT '阅读数量',
  `province_id` int UNSIGNED NULL DEFAULT NULL COMMENT '省市',
  `city_id` int UNSIGNED NULL DEFAULT NULL COMMENT '市区',
  `county_id` int UNSIGNED NULL DEFAULT NULL COMMENT '区县',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `publish_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `sync_status` tinyint(1) NULL DEFAULT 0 COMMENT '同步状态',
  `origin` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '来源',
  `static_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1780223656501317634 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文章信息表，存储已发布的文章' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ap_article
-- ----------------------------
INSERT INTO `ap_article` VALUES (1302862387124125698, '什么是Java语言', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl9V2CqAZe18AAOoOOsvWPc041.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 14:52:54', '2020-09-07 14:56:18', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302864436297482242, 'Java语言跨平台原理', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl9V2n6AArZsAAGMmaPdt7w502.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 15:01:02', '2020-09-07 15:01:02', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302864730402078722, '我是一个测试标题', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 15:02:12', '2020-09-07 15:02:12', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302865008438296577, '过山车故障20名游客倒挂空中', 4, 'admin', 1, 'java', 3, NULL, 'group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg,group1/M00/00/00/wKjIgl892xmAG_yjAAB6OkkuJd4819.jpg,group1/M00/00/00/wKjIgl892wKAZLhtAASZUi49De0836.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 15:03:19', '2020-09-07 15:03:19', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302865306489733122, '武汉高校开学典礼万人歌唱祖国', 4, 'admin', 1, 'java', 3, NULL, 'group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg,group1/M00/00/00/wKjIgl892xGANV6qAABzWOH8KDY775.jpg,group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 15:04:30', '2020-09-07 15:04:30', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302865474094120961, '天降铁球砸死女婴整栋楼被判赔', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl892tyAFc60AAMUNUuOKPA619.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 15:05:10', '2020-09-07 15:05:10', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977178887004162, '央视曝光境外医疗豪华旅游套路', 4, 'admin', 1, 'java', 0, NULL, 'group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:29:02', '2020-09-07 22:29:02', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977458215067649, '10多名陌生人合力托举悬窗女童', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl892vOASiunAAGzs3UZ1Cg252.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:30:09', '2020-09-07 22:30:09', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977558807060482, '杨澜回应一秒变脸', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl892wKAZLhtAASZUi49De0836.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:30:33', '2020-09-07 22:30:33', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977754114826241, '黄龄工作室发视频回应', 4, 'admin', 4, 'Python', 1, NULL, 'group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:31:19', '2020-09-07 22:31:19', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977754114826242, '黄龄工作室发视频回应', 4, 'admin', 4, 'Python', 1, NULL, 'group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:31:19', '2020-09-07 22:31:19', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1302977754114826243, '黄龄工作室发视频回应', 4, 'admin', 4, 'Python', 1, NULL, 'group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 22:31:19', '2020-09-07 22:31:19', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1303156149041758210, '全国抗击新冠肺炎疫情表彰大会', 4, 'admin', 1, 'java', 1, NULL, 'group1/M00/00/00/wKjIgl9W6iOAD2doAAFY4E1K7-g384.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 10:20:12', '2020-09-08 10:20:12', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827787629252610, 'Kafka文件的存储机制', 4, 'admin', 1, 'java', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:00:29', '2021-04-19 00:20:17', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827888816836609, '为什么项目经理不喜欢重构？', 4, 'admin', 1, 'java', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:00:54', '2021-04-19 00:19:09', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827911810011137, 'Base64编解码原理', 4, 'admin', 1, 'java', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/b44c65376f12498e873223d9d6fdf523.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:00:59', '2021-04-19 00:17:42', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827952326987778, '工作线程数是不是设置的越大越好', 4, 'admin', 1, 'java', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/a3f0bc438c244f788f2df474ed8ecdc1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:01:09', '2021-04-19 00:16:52', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827976310018049, '小白如何辨别其真与伪&好与坏？', 4, 'admin', 1, 'java', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/1818283261e3401892e1383c1bd00596.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:01:14', '2021-04-19 00:14:58', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1383827995813531650, '学IT，为什么要学项目课程？', 4, 'admin', 1, 'java', 3, NULL, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/7d0911a41a3745efa8509a87f234813c.jpg,http://192.168.200.130:9000/leadnews/2021/4/20210418/c7c3d36d25504cf6aecdcd5710261773.jpg,http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 01:01:19', '2021-04-19 00:10:48', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1779151991222702081, '端午放假通知：3天，不调休！', 1102, 'admin', 7, '其他', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', '端午节', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-13 14:17:43', '2024-04-13 14:17:36', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1779152969195982849, '日本发现食用功能性标示食品后健康受损案例', 1102, 'admin', 7, '其他', 0, NULL, NULL, '健康', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-13 14:21:38', '2024-04-13 14:21:08', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1779155948103929857, '江西师大虐猫学生违反校规校纪被开除学籍', 1102, 'admin', 7, '其他', 0, NULL, NULL, '虐猫', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-13 14:33:27', '2024-04-13 14:33:16', 0, 0, 'http://192.168.200.130:9000/leadnews/2024/04/13/1779155948103929857.html');
INSERT INTO `ap_article` VALUES (1779156556462559234, '美媒：美国最大敌人是自身债务', 1102, 'admin', 7, '其他', 0, NULL, NULL, '债务', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-13 14:35:53', '2024-04-13 14:35:48', 0, 0, 'http://192.168.200.130:9000/leadnews/2024/04/13/1779156556462559234.html');
INSERT INTO `ap_article` VALUES (1779157319192547329, '西藏林芝：“十里桃花”美不胜收', 1102, 'admin', 7, '其他', 1, NULL, 'http://192.168.200.130:9000/leadnews/2024/04/13/418fbd3c717c47fa8ff7c2a2a09f776e.jpg', '美景', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-13 14:38:55', '2024-04-13 14:38:05', 0, 0, 'http://192.168.200.130:9000/leadnews/2024/04/13/1779157319192547329.html');
INSERT INTO `ap_article` VALUES (1780220707326791682, '123411', 1102, 'admin', 7, '其他', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-16 13:02:55', '2024-04-16 13:01:10', 0, 0, NULL);
INSERT INTO `ap_article` VALUES (1780223656501317633, '她因“发育过猛”被迫退出国家队 ', 1102, 'admin', 7, '其他', 1, NULL, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', '发育过猛', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-16 13:16:09', '2024-04-16 13:15:08', 0, 0, NULL);

-- ----------------------------
-- Table structure for ap_article_config
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_config`;
CREATE TABLE `ap_article_config`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '文章ID',
  `is_comment` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否可评论',
  `is_forward` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否转发',
  `is_down` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否下架',
  `is_delete` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1780223656622952451 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'APP已发布文章配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ap_article_config
-- ----------------------------
INSERT INTO `ap_article_config` VALUES (1302862387933626369, 1302862387124125698, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302864437425750018, 1302864436297482242, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302864731203190785, 1302864730402078722, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302865009533009922, 1302865008438296577, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302865307408285697, 1302865306489733122, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302865475297886209, 1302865474094120961, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977180199821313, 1302977178887004162, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977459322363905, 1302977458215067649, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977559788527618, 1302977558807060482, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977754882383873, 1302977754114826241, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977754882383874, 1302977754114826242, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1302977754882383875, 1302977754114826243, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1303156149909979137, 1303156149041758210, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827787704750082, 1383827787629252610, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827888829419522, 1383827888816836609, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827911822594049, 1383827911810011137, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827952326987779, 1383827952326987778, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827976322600962, 1383827976310018049, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383827995821920257, 1383827995813531650, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1383828014645956609, 1383828014629179393, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1779151991533080578, 1779151991222702081, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1779152969233731585, 1779152969195982849, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1779155948347199490, 1779155948103929857, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1779156556491919362, 1779156556462559234, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1779157319247073282, 1779157319192547329, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1780220707565867010, 1780220707326791682, 1, 1, 0, 0);
INSERT INTO `ap_article_config` VALUES (1780223656622952450, 1780223656501317633, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for ap_article_content
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_content`;
CREATE TABLE `ap_article_content`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '文章ID',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '文章内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1780223656639729666 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'APP已发布文章内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ap_article_content
-- ----------------------------
INSERT INTO `ap_article_content` VALUES (1302862388957036545, 1302862387124125698, '[{\"type\":\"text\",\"value\":\"Java语言是美国Sun公司（Stanford University Network），在1995年推出的高级的编程语言。所谓编程语言，是计算机的语言，人们可以使用编程语言对计算机下达命令，让计算机完成人们需要的功能。\\n\\n2009年，Sun公司被甲骨文公司收购，所以我们现在访问oracle官网即可：https://www.oracle.com\\nJava语言共同创始人之一：詹姆斯·高斯林 （James Gosling），被称为“Java之父”\\n\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl9V2CqAZe18AAOoOOsvWPc041.png\"},{\"type\":\"text\",\"value\":\"Java语言发展历史\\n\\n- 1995年Sun公司推出Java语言\\n- 1996年发布Java 1.0版本\\n- 1997年发布Java 1.1版本\\n- 1998年发布Java 1.2版本\\n- 2000年发布Java 1.3版本\\n- 2002年发布Java 1.4版本\\n- 2004年发布Java 5.0版本\\n- 2006年发布Java 6.0版本\\n- 2009年Oracle甲骨文公司收购Sun公司\\n- 2011年发布Java 7.0版本\\n- 2014年发布Java 8.0版本\\n- 2017年9月发布Java 9.0版本\\n- 2018年3月发布Java 10.0版本\\n- 2018年9月发布Java 11.0版本\\n\"},{\"type\":\"text\",\"value\":\"Java 语言的三个版本\\n\\n- JavaSE：标准版，用于桌面应用的开发，是其他两个版本的基础。\\n  - 学习JavaSE的目的, 是为了就业班要学习的JavaEE打基础.\\n\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl9V2F6AdQxAAAGyaOdp4gk784.png\"},{\"type\":\"text\",\"value\":\"- JavaEE：企业版，用于Web方向的网站开发\\n  - 网站：网页 + 后台服务器\\n\\nJava语言主要应用在互联网程序的开发领域。常见的互联网程序比如天猫、京东、物流系统、网银系统等，以及服务器后台处理大数据的存储、查询、数据挖掘等也有很多应用。\\n\"}]');
INSERT INTO `ap_article_content` VALUES (1302864438885367810, 1302864436297482242, '[{\"type\":\"text\",\"value\":\"Java虚拟机——JVM\\n\\n- JVM（Java Virtual Machine ）：Java虚拟机，简称JVM，是运行所有Java程序的假想计算机，是Java程序的运行环境，是Java 最具吸引力的特性之一。我们编写的Java代码，都运行在JVM 之上。\\n- 跨平台：任何软件的运行，都必须要运行在操作系统之上，而我们用Java编写的软件可以运行在任何的操作系统上，这个特性称为Java语言的跨平台特性。该特性是由JVM实现的，我们编写的程序运行在JVM上，而JVM运行在操作系统上。\\n\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl9V2n6AArZsAAGMmaPdt7w502.png\"},{\"type\":\"text\",\"value\":\"如图所示，Java的虚拟机本身不具备跨平台功能的，每个操作系统下都有不同版本的虚拟机。\\n\\n问题1: Java 是如何实现跨平台的呢？\\n\\n- 答：因为在不同操作系统中都安装了对应版本的 JVM 虚拟机\\n- 注意: Java程序想要运行, 必须依赖于JVM虚拟机.\\n\\n问题2: JVM 本身是否允许跨平台呢？\\n\\n- 答：不允许，允许跨平台的是 Java 程序，而不是虚拟机。\\n\"}]');
INSERT INTO `ap_article_content` VALUES (1302864732679585794, 1302864730402078722, '[{\"type\":\"text\",\"value\":\"这些都是测试这些都是测试这些都是测试这些都是测试这些都是测试这些都是测试\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg\"},{\"type\":\"text\",\"value\":\"这些都是测试这些都是测试这些都是测试这些都是测试\"}]');
INSERT INTO `ap_article_content` VALUES (1302865011026182145, 1302865008438296577, '[{\"type\":\"text\",\"value\":\"过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892uyAR12rAADi7UxPXeM267.jpg\"},{\"type\":\"text\",\"value\":\"过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中过山车故障20名游客倒挂空中\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1302865308704325633, 1302865306489733122, '[{\"type\":\"text\",\"value\":\"武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg\"},{\"type\":\"text\",\"value\":\"武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国武汉高校开学典礼万人歌唱祖国v\"}]');
INSERT INTO `ap_article_content` VALUES (1302865476799447041, 1302865474094120961, '[{\"type\":\"text\",\"value\":\"天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892tyAFc60AAMUNUuOKPA619.jpg\"},{\"type\":\"text\",\"value\":\"天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔天降铁球砸死女婴整栋楼被判赔vv\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1302977181835599873, 1302977178887004162, '[{\"type\":\"text\",\"value\":\"央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路央视曝光境外医疗豪华旅游套路\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892wqAANwOAAJW8oQUlAc087.jpg\"}]');
INSERT INTO `ap_article_content` VALUES (1302977460907810818, 1302977458215067649, '[{\"type\":\"text\",\"value\":\"510多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892vOASiunAAGzs3UZ1Cg252.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892uyAR12rAADi7UxPXeM267.jpg\"},{\"type\":\"text\",\"value\":\"10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童v\"},{\"type\":\"text\",\"value\":\"请10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童10多名陌生人合力托举悬窗女童v\"}]');
INSERT INTO `ap_article_content` VALUES (1302977561034235906, 1302977558807060482, '[{\"type\":\"text\",\"value\":\"杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892wKAZLhtAASZUi49De0836.jpg\"},{\"type\":\"text\",\"value\":\"杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸杨澜回应一秒变脸\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1302977755742216193, 1302977754114826241, '[{\"type\":\"text\",\"value\":\"3黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl892vuAXr_MAASCMYD0yzc919.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应黄龄工作室发视频回应\"}]');
INSERT INTO `ap_article_content` VALUES (1303156151151493121, 1303156149041758210, '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl9W6iOAD2doAAFY4E1K7-g384.png\"},{\"type\":\"text\",\"value\":\"全国抗击新冠肺炎疫情表彰大会开始15家“文化会客厅”展现产业发展的集群效应全球疫情简报:印度新冠确诊病例超420万 升至全球第二中方提出《全球数据安全倡议》\"}]');
INSERT INTO `ap_article_content` VALUES (1383827787742498817, 1383827787629252610, '[{\"type\":\"text\",\"value\":\"Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1383827888833613826, 1383827888816836609, '[{\"type\":\"text\",\"value\":\"经常听到开发人员抱怨 ，“这么烂的代码，我来重构一下！”，“这代码怎么能这么写呢？谁来重构一下？”，“这儿有个坏味道，重构吧！”\\n\\n作为一名项目经理，每次听到“重构”两个字，既想给追求卓越代码的开发人员点个赞，同时又会感觉非常紧张，为什么又要重构？马上就要上线了，怎么还要改？是不是应该阻止开发人员做重构？\\n\\n重构几乎是开发人员最喜欢的一项实践了，可项目经理们却充满了顾虑，那么为什么项目经理不喜欢重构呢？\\n\\n老功能被破坏\\n不止一次遇到这样的场景，某一天一个老功能突然被破坏了，项目经理们感到奇怪，产品这块儿的功能已经很稳定了，也没有在这部分开发什么新功能，为什么突然出问题了呢？\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1383827911826788353, 1383827911810011137, '[{\"type\":\"text\",\"value\":\"我在面试过程中，问过很多高级java工程师，是否了解Base64？部分人回答了解，部分人直接回答不了解。而说了解的那部分人却回答不上来它的原理。\\n\\nBase64 的由来\\nBase64是网络上最常见的用于传输8Bit字节代码的编码方式之一，大家可以查看RFC2045～RFC2049，上面有MIME的详细规范。它是一种基于用64个可打印字符来表示二进制数据的表示方法。它通常用作存储、传输一些二进制数据编码方法！也是MIME（多用途互联网邮件扩展，主要用作电子邮件标准）中一种可打印字符表示二进制数据的常见编码方法！它其实只是定义用可打印字符传输内容一种方法，并不会产生新的字符集！\\n\\n传统的邮件只支持可见字符的传送，像ASCII码的控制字符就 不能通过邮件传送。这样用途就受到了很大的限制，比如图片二进制流的每个字节不可能全部是可见字符，所以就传送不了。最好的方法就是在不改变传统协议的情 况下，做一种扩展方案来支持二进制文件的传送。把不可打印的字符也能用可打印字符来表示，问题就解决了。Base64编码应运而生，Base64就是一种 基于64个可打印字符来表示二进制数据的表示方法。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/b44c65376f12498e873223d9d6fdf523.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1383827952335376385, 1383827952326987778, '[{\"type\":\"text\",\"value\":\"根据经验来看，jdk api 一般推荐的线程数为CPU核数的2倍。但是有些书籍要求可以设置为CPU核数的8倍，也有的业务设置为CPU核数的32倍。\\n“工作线程数”的设置依据是什么，到底设置为多少能够最大化CPU性能，是本文要讨论的问题。\\n\\n工作线程数是不是设置的越大越好\\n显然不是的。使用java.lang.Thread类或者java.lang.Runnable接口编写代码来定义、实例化和启动新线程。\\n一个Thread类实例只是一个对象，像Java中的任何其他对象一样，具有变量和方法，生死于堆上。\\nJava中，每个线程都有一个调用栈，即使不在程序中创建任何新的线程，线程也在后台运行着。\\n一个Java应用总是从main()方法开始运行，main()方法运行在一个线程内，它被称为主线程。\\n一旦创建一个新的线程，就产生一个新的调用栈。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/a3f0bc438c244f788f2df474ed8ecdc1.jpg\"}]');
INSERT INTO `ap_article_content` VALUES (1383827976322600963, 1383827976310018049, '[{\"type\":\"text\",\"value\":\"通过上篇《IT培训就业艰难，行业乱象频发，如何破解就业难题?》一文，相信大家已初步了解“项目课程”对程序员能否就业且高薪就业的重要性。\\n\\n　　因此，小白在选择IT培训机构时，关注的重点就在于所学“项目课程”能否真正帮你增加就业筹码。当然，前提必须是学到“真”项目。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/1818283261e3401892e1383c1bd00596.jpg\"}]');
INSERT INTO `ap_article_content` VALUES (1383827995834503170, 1383827995813531650, '[{\"type\":\"text\",\"value\":\"在选择IT培训机构时，你应该有注意到，很多机构都将“项目课程”作为培训中的重点。那么，为什么要学习项目课程?为什么项目课程才是IT培训课程的核心?\\n\\n　　1\\n\\n　　在这个靠“技术经验说话”的IT行业里，假如你是一个计算机或IT相关专业毕业生，在没有实际项目开发经验的情况下，“找到第一份全职工作”可能是你职业生涯中遇到的最大挑战。\\n\\n　　为什么说找第一份工作很难?\\n\\n　　主要在于：实际企业中用到的软件开发知识和在学校所学的知识是完全不同的。假设你已经在学校和同学做过周期长达2-3个月的项目，但真正工作中的团队协作与你在学校中经历的协作也有很多不同。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg\"},{\"type\":\"text\",\"value\":\"在实际团队中，每一位成员彼此团结一致，为项目的交付而努力，这也意味着你必须要理解好在项目中负责的那部分任务，在规定时间交付还需确保你负责的功能，在所有环境中都能很好地发挥作用，而不仅仅是你的本地机器。\\n\\n　　这需要你对项目中的每一行代码严谨要求。学校练习的项目中，对bug的容忍度很大，而在实际工作中是绝对不能容忍的。项目中的任何一个环节都涉及公司利益，任何一个bug都可能影响公司的收入及形象。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/c7c3d36d25504cf6aecdcd5710261773.jpg\"}]');
INSERT INTO `ap_article_content` VALUES (1779151991562440706, 1779151991222702081, '[{\"type\":\"text\",\"value\":\"根据国务院办公厅通知精神\\n\\n2024年劳动节放假安排通知如下\\n\\n5月1日至5月5日\\n\\n放假调休\\n\\n共5天\\n\\n4月28日（星期日）\\n\\n5月11日（星期六）\\n\\n上班\\n\\n紧随其后的端午节\\n\\n放假安排也来了\\n\\n6月10日（星期一）端午节当天放假\\n\\n与周末相连\\n\\n共3天\\n\\n因此今年的端午节假期无需调休\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg\"},{\"type\":\"text\",\"value\":\"接下来还有哪些假期呢？\\n\\n中秋节\\n\\n9月15日至17日\\n\\n放假调休\\n\\n共3天\\n\\n9月14日（星期六）上班\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"国庆节\\n\\n10月1日至7日\\n\\n放假调休\\n\\n共7天\\n\\n9月29日（星期日）\\n\\n10月12日（星期六）\\n\\n上班\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/9f8a93931ab646c0a754475e0c4b0a98.jpg\"},{\"type\":\"text\",\"value\":\"打算自驾出游的小伙伴请注意\\n\\n劳动节和国庆节假期期间\\n\\n高速公路免费通行\\n\\n根据国务院发布的《关于批转交通运输部等部门重大节假日免收小型客车通行费实施方案的通知》（国发〔2012〕37号），收费公路免费通行的时间范围为春节、清明节、劳动节、国庆节等四个国家法定节假日。\\n\\n开始期待了吗？\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1779152969258897409, 1779152969195982849, '[{\"type\":\"text\",\"value\":\"新华社东京4月13日电　日本消费者厅12日说，受小林制药公司含红曲成分问题保健品事件影响，他们对数千种功能性标示食品实施了紧急检查，发现上百例消费者健康受损案例。\\n\\n　　小林制药问题保健品事件曝光后，日本消费者厅对所有备案过的近6800款产品涉及的约1700家生产商实施了整体排查，询问生产商是否接到过来自医生等渠道的消费者健康受损信息，并检查了相关信息的收集以及向政府报告的机制。\\n\\n　　据日本媒体报道，调查截止时间为12日，日本消费者厅共收到近1400家生产商就5500余款功能性标示食品的回答。日本消费者厅当天公布的统计结果显示，不包括小林制药的产品在内，共有11家厂商接到117个健康受损案例的信息，涉及18款产品。\\n\\n　　据报道，这117个健康受损案例中没有死亡案例，多数是腹泻、湿疹等轻症，有几个因病情较严重需要住院的案例。由于尚未证实相关产品和消费者健康受损的因果关系，日本消费者厅没有公布具体的产品名称。日本消费者厅计划听取生产商的解释并请专家进行医学评估，以彻底梳理本次排查结果。\\n\\n　　小林制药问题保健品事件是日本2015年开始实施功能性标示食品制度后，生产商首次因消费者健康受损问题而召回产品。根据这一制度，生产商只需在产品上市销售前向日本消费者厅提交与其声称功能相符的科学依据进行备案即可，不需要政府部门的审批许可。\\n\\n　　小林制药问题保健品事件暴露出日本功能性标示食品制度的安全隐患。日本消费者厅计划在此次排查基础上，讨论修订相关制度，包括将报告健康受损相关信息定为生产商的义务等。\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1779155948372365314, 1779155948103929857, '[{\"type\":\"text\",\"value\":\"4月13日，记者经多方核实，江西师范大学瑶湖校区虐猫学生郭某因违反校规校纪被开除学籍。\\n\\n　　今年3月29日夜间，网络上出现江西师范大学学生虐猫相关视频和图片。3月30日，江西师范大学学生处发布情况通报，称学校成立调查组开展调查核实，并将根据调查情况，本着实事求是的原则，依法依规处理。\\n\\n　　经学校调查发现，该学生系江西师范大学瑶湖校区某学院2022级学生，在宿舍饲养宠物猫并存在多次虐猫行为，同时该生存在传播淫秽视频、旷课12节等违反校规校纪行为。根据《江西师范大学学生违纪处分管理办法》相关规定，学校给予郭某开除学籍处分。（总台记者 刘昀彤 杨萍）\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1779156556504502274, 1779156556462559234, '[{\"type\":\"text\",\"value\":\"新华社华盛顿4月13日电　美国《国家利益》双月刊网站日前刊文指出，随着美国联邦政府债务规模不断扩大，美国最大的敌人是其逼近35万亿美元的债务。\\n\\n　　文章说，第一次世界大战后，美国成为财力枯竭大国的净债权国。此后，美国逐渐确保了它的经济主导地位，并确保了其货币成为主要储备货币。\\n\\n　　文章指出，美国认为只要自己仍然是世界经济体系的主导力量，财政赤字就无关紧要，可以随心所欲地大肆挥霍。然而，随着时间推移，美国经济经历动荡，特朗普和拜登政府均出现美国历史上最不负责任的财政赤字，导致通胀和利率双双飙升，商品价格变得难以承受，美国中产阶级陷入困境。\\n\\n　　文章说，世界其他国家，尤其是全球南方国家，开始认为美国经济的繁荣不可持续。同时，全球南方的许多国家担心，“武器化的美元”可能被用来对付它们，因此这些国家正在寻找对冲手段。\\n\\n　　文章指出，一旦美元不再是世界主要储备货币，整个美国金融体系就会崩溃。债务是一场即将到来的国家安全危机。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1779157319259656193, 1779157319192547329, '[{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/9f8a93931ab646c0a754475e0c4b0a98.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1780220707578449921, 1780220707326791682, '[{\"type\":\"text\",\"value\":\"2112312312312312\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');
INSERT INTO `ap_article_content` VALUES (1780223656639729665, 1780223656501317633, '[{\"type\":\"text\",\"value\":\"陈小纭，一个曾在泳池中奋力拼搏的少女，用她的青春和汗水书写着对体育的热爱。那时的她，如同一条在水中自由游弋的美人鱼，灵动而优雅。\\n\\n但命运似乎总爱开玩笑，就在她准备在体育界大展拳脚的时候，身体的快速发育却成了她运动生涯的绊脚石。这突如其来的变化，让她不得不提前告别了心爱的泳池。\"},{\"type\":\"text\",\"value\":\"陈小纭没有就此沉沦。她转身投入了娱乐圈的怀抱，开始了新的征程。起初，这条路并不平坦，挑战和困难接踵而至。娱乐圈的复杂和竞争让她倍感压力，但她从未放弃过对梦想的追逐。\\n\\n终于，在一次偶然的机会下，陈小纭得到了一档综艺节目的邀请。这个节目，成了她人生的新起点。在节目中，她以真实的自我、坚韧的性格和出色的表现赢得了观众的喜爱和认可。\"},{\"type\":\"text\",\"value\":\"那一刻，她仿佛又找回了在泳池中畅游的感觉，只是这次，她是在娱乐圈的海洋中遨游。\\n\\n当然，背后的艰辛只有她自己知道。每一次的彩排、每一次的录制都充满了挑战和考验。\\n\\n但正是这些经历，让她更加坚定了自己的信念和追求。她用实际行动证明了自己的价值，也让我们看到了她内心的坚持和勇气。\"},{\"type\":\"text\",\"value\":\"如今，陈小纭已经成为娱乐圈中一颗璀璨的明星。\\n\\n说起来，陈小纭的转型之路并非一帆风顺，但她凭借自己的努力和才华成功地在娱乐圈站稳了脚跟。\\n\\n陈小纭的故事还在继续，她的未来充满了无限可能。我们期待她在娱乐圈能够继续发光发热，为我们带来更多精彩的作品和表演。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]');

-- ----------------------------
-- Table structure for ap_author
-- ----------------------------
DROP TABLE IF EXISTS `ap_author`;
CREATE TABLE `ap_author`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者名称',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '0 爬取数据\r\n            1 签约合作商\r\n            2 平台自媒体人\r\n            ',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '社交账号ID',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `wm_user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '自媒体账号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_type_name`(`type`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'APP文章作者信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_author
-- ----------------------------
INSERT INTO `ap_author` VALUES (1, 'zhangsan', 2, 1, '2020-03-19 23:43:54', NULL);
INSERT INTO `ap_author` VALUES (2, 'lisi', 2, 2, '2020-03-19 23:47:44', NULL);
INSERT INTO `ap_author` VALUES (3, 'wangwu', 2, 3, '2020-03-19 23:50:09', NULL);
INSERT INTO `ap_author` VALUES (4, 'admin', 2, 4, '2020-03-30 16:36:41', NULL);

-- ----------------------------
-- Table structure for ap_collection
-- ----------------------------
DROP TABLE IF EXISTS `ap_collection`;
CREATE TABLE `ap_collection`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `entry_id` int UNSIGNED NULL DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '文章ID',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '点赞内容类型\r\n            0文章\r\n            1动态',
  `collection_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `published_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_type`(`entry_id`, `article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'APP收藏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ap_collection
-- ----------------------------
INSERT INTO `ap_collection` VALUES (1, 1, 1303156149041758210, 0, '2020-04-07 23:46:47', '2020-04-07 23:46:50');

SET FOREIGN_KEY_CHECKS = 1;
