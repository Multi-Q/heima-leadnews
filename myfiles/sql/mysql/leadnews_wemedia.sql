/*
 Navicat Premium Data Transfer

 Source Server         : msyql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : leadnews_wemedia

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/04/2024 19:39:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wm_channel
-- ----------------------------
DROP TABLE IF EXISTS `wm_channel`;
CREATE TABLE `wm_channel`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '频道名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '频道描述',
  `is_default` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否默认频道',
  `status` tinyint UNSIGNED NULL DEFAULT NULL,
  `ord` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '默认排序',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '频道信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_channel
-- ----------------------------
INSERT INTO `wm_channel` VALUES (1, 'java', '后端框架', 1, 1, 1, '2021-04-18 12:25:30');
INSERT INTO `wm_channel` VALUES (2, 'Mysql', '轻量级数据库', 1, 1, 4, '2021-04-18 10:55:41');
INSERT INTO `wm_channel` VALUES (3, 'Vue', '阿里前端框架', 1, 1, 5, '2021-04-18 10:55:41');
INSERT INTO `wm_channel` VALUES (4, 'Python', '未来的语言', 1, 1, 6, '2021-04-18 10:55:41');
INSERT INTO `wm_channel` VALUES (5, 'C++', 'C++', 1, 1, 7, '2021-04-18 10:55:41');
INSERT INTO `wm_channel` VALUES (6, '大数据', '不会，则不要说自己是搞互联网的', 1, 0, 10, '2021-04-18 10:55:41');
INSERT INTO `wm_channel` VALUES (7, '其他', '其他', 1, 1, 12, '2021-04-18 10:55:41');

-- ----------------------------
-- Table structure for wm_fans_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_fans_statistics`;
CREATE TABLE `wm_fans_statistics`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '主账号ID',
  `article` int UNSIGNED NULL DEFAULT NULL COMMENT '子账号ID',
  `read_count` int UNSIGNED NULL DEFAULT NULL,
  `comment` int UNSIGNED NULL DEFAULT NULL,
  `follow` int UNSIGNED NULL DEFAULT NULL,
  `collection` int UNSIGNED NULL DEFAULT NULL,
  `forward` int UNSIGNED NULL DEFAULT NULL,
  `likes` int UNSIGNED NULL DEFAULT NULL,
  `unlikes` int UNSIGNED NULL DEFAULT NULL,
  `unfollow` int UNSIGNED NULL DEFAULT NULL,
  `burst` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_user_id_time`(`user_id`, `created_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体粉丝数据统计表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_fans_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_material`;
CREATE TABLE `wm_material`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '自媒体用户ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '素材类型\r\n            0 图片\r\n            1 视频',
  `is_collection` tinyint(1) NULL DEFAULT NULL COMMENT '是否收藏',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文素材信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_material
-- ----------------------------
INSERT INTO `wm_material` VALUES (67, 1102, 'http://192.168.200.130:9000/leadnews/2021/04/26/a73f5b60c0d84c32bfe175055aaaac40.jpg', 0, 0, '2021-04-26 00:14:01');
INSERT INTO `wm_material` VALUES (68, 1102, 'http://192.168.200.130:9000/leadnews/2021/04/26/d4f6ef4c0c0546e69f70bd3178a8c140.jpg', 0, 0, '2021-04-26 00:18:20');
INSERT INTO `wm_material` VALUES (69, 1102, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', 0, 0, '2021-04-26 00:18:27');
INSERT INTO `wm_material` VALUES (70, 1102, 'http://192.168.200.130:9000/leadnews/2021/04/26/9f8a93931ab646c0a754475e0c4b0a98.jpg', 0, 0, '2021-04-26 00:18:34');
INSERT INTO `wm_material` VALUES (71, 1102, 'http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg', 0, 0, '2021-04-26 00:18:39');
INSERT INTO `wm_material` VALUES (72, 1102, 'http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg', 0, 0, '2024-04-10 14:00:29');
INSERT INTO `wm_material` VALUES (73, 1102, 'http://192.168.200.130:9000/leadnews/2024/04/13/418fbd3c717c47fa8ff7c2a2a09f776e.jpg', 0, 0, '2024-04-13 14:38:37');

-- ----------------------------
-- Table structure for wm_news
-- ----------------------------
DROP TABLE IF EXISTS `wm_news`;
CREATE TABLE `wm_news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '自媒体用户ID',
  `title` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图文内容',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '文章布局\r\n            0 无图文章\r\n            1 单图文章\r\n            3 多图文章',
  `channel_id` int UNSIGNED NULL DEFAULT NULL COMMENT '图文频道ID',
  `labels` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `submited_time` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `status` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '当前状态\r\n            0 草稿\r\n            1 提交（待审核）\r\n            2 审核失败\r\n            3 人工审核\r\n            4 人工审核通过\r\n            8 审核通过（待发布）\r\n            9 已发布',
  `publish_time` datetime NULL DEFAULT NULL COMMENT '定时发布时间，不定时则为空',
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '拒绝理由',
  `article_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '发布库文章ID',
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '//图片用逗号分隔',
  `enable` tinyint UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6269 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文内容信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_news
-- ----------------------------
INSERT INTO `wm_news` VALUES (6226, 1102, '学IT，为什么要学项目课程？', '[{\"type\":\"text\",\"value\":\"在选择IT培训机构时，你应该有注意到，很多机构都将“项目课程”作为培训中的重点。那么，为什么要学习项目课程?为什么项目课程才是IT培训课程的核心?\\n\\n　　1\\n\\n　　在这个靠“技术经验说话”的IT行业里，假如你是一个计算机或IT相关专业毕业生，在没有实际项目开发经验的情况下，“找到第一份全职工作”可能是你职业生涯中遇到的最大挑战。\\n\\n　　为什么说找第一份工作很难?\\n\\n　　主要在于：实际企业中用到的软件开发知识和在学校所学的知识是完全不同的。假设你已经在学校和同学做过周期长达2-3个月的项目，但真正工作中的团队协作与你在学校中经历的协作也有很多不同。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg\"},{\"type\":\"text\",\"value\":\"在实际团队中，每一位成员彼此团结一致，为项目的交付而努力，这也意味着你必须要理解好在项目中负责的那部分任务，在规定时间交付还需确保你负责的功能，在所有环境中都能很好地发挥作用，而不仅仅是你的本地机器。\\n\\n　　这需要你对项目中的每一行代码严谨要求。学校练习的项目中，对bug的容忍度很大，而在实际工作中是绝对不能容忍的。项目中的任何一个环节都涉及公司利益，任何一个bug都可能影响公司的收入及形象。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/c7c3d36d25504cf6aecdcd5710261773.jpg\"}]', 3, 1, '项目课程', '2021-04-19 00:13:58', '2021-04-19 00:13:58', 9, '2021-04-19 00:10:48', '审核成功', 1383827995813531650, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/7d0911a41a3745efa8509a87f234813c.jpg,http://192.168.200.130:9000/leadnews/2021/4/20210418/c7c3d36d25504cf6aecdcd5710261773.jpg,http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg', 1);
INSERT INTO `wm_news` VALUES (6227, 1102, '小白如何辨别其真与伪&好与坏？', '[{\"type\":\"text\",\"value\":\"通过上篇《IT培训就业艰难，行业乱象频发，如何破解就业难题?》一文，相信大家已初步了解“项目课程”对程序员能否就业且高薪就业的重要性。\\n\\n　　因此，小白在选择IT培训机构时，关注的重点就在于所学“项目课程”能否真正帮你增加就业筹码。当然，前提必须是学到“真”项目。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/1818283261e3401892e1383c1bd00596.jpg\"}]', 1, 1, '小白', '2021-04-19 00:15:05', '2021-04-19 00:15:05', 9, '2021-04-19 00:14:58', '审核成功', 1383827976310018049, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/1818283261e3401892e1383c1bd00596.jpg', 1);
INSERT INTO `wm_news` VALUES (6228, 1102, '工作线程数是不是设置的越大越好', '[{\"type\":\"text\",\"value\":\"根据经验来看，jdk api 一般推荐的线程数为CPU核数的2倍。但是有些书籍要求可以设置为CPU核数的8倍，也有的业务设置为CPU核数的32倍。\\n“工作线程数”的设置依据是什么，到底设置为多少能够最大化CPU性能，是本文要讨论的问题。\\n\\n工作线程数是不是设置的越大越好\\n显然不是的。使用java.lang.Thread类或者java.lang.Runnable接口编写代码来定义、实例化和启动新线程。\\n一个Thread类实例只是一个对象，像Java中的任何其他对象一样，具有变量和方法，生死于堆上。\\nJava中，每个线程都有一个调用栈，即使不在程序中创建任何新的线程，线程也在后台运行着。\\n一个Java应用总是从main()方法开始运行，main()方法运行在一个线程内，它被称为主线程。\\n一旦创建一个新的线程，就产生一个新的调用栈。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/a3f0bc438c244f788f2df474ed8ecdc1.jpg\"}]', 1, 1, '11', '2021-04-19 00:16:57', '2021-04-19 00:16:57', 9, '2021-04-19 00:16:52', '审核成功', 1383827952326987778, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/a3f0bc438c244f788f2df474ed8ecdc1.jpg', 1);
INSERT INTO `wm_news` VALUES (6229, 1102, 'Base64编解码原理', '[{\"type\":\"text\",\"value\":\"我在面试过程中，问过很多高级java工程师，是否了解Base64？部分人回答了解，部分人直接回答不了解。而说了解的那部分人却回答不上来它的原理。\\n\\nBase64 的由来\\nBase64是网络上最常见的用于传输8Bit字节代码的编码方式之一，大家可以查看RFC2045～RFC2049，上面有MIME的详细规范。它是一种基于用64个可打印字符来表示二进制数据的表示方法。它通常用作存储、传输一些二进制数据编码方法！也是MIME（多用途互联网邮件扩展，主要用作电子邮件标准）中一种可打印字符表示二进制数据的常见编码方法！它其实只是定义用可打印字符传输内容一种方法，并不会产生新的字符集！\\n\\n传统的邮件只支持可见字符的传送，像ASCII码的控制字符就 不能通过邮件传送。这样用途就受到了很大的限制，比如图片二进制流的每个字节不可能全部是可见字符，所以就传送不了。最好的方法就是在不改变传统协议的情 况下，做一种扩展方案来支持二进制文件的传送。把不可打印的字符也能用可打印字符来表示，问题就解决了。Base64编码应运而生，Base64就是一种 基于64个可打印字符来表示二进制数据的表示方法。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/b44c65376f12498e873223d9d6fdf523.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 1, '11', '2021-04-19 00:17:44', '2021-04-19 00:17:44', 9, '2021-04-19 00:17:42', '审核成功', 1383827911810011137, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/b44c65376f12498e873223d9d6fdf523.jpg', 1);
INSERT INTO `wm_news` VALUES (6230, 1102, '为什么项目经理不喜欢重构？', '[{\"type\":\"text\",\"value\":\"经常听到开发人员抱怨 ，“这么烂的代码，我来重构一下！”，“这代码怎么能这么写呢？谁来重构一下？”，“这儿有个坏味道，重构吧！”\\n\\n作为一名项目经理，每次听到“重构”两个字，既想给追求卓越代码的开发人员点个赞，同时又会感觉非常紧张，为什么又要重构？马上就要上线了，怎么还要改？是不是应该阻止开发人员做重构？\\n\\n重构几乎是开发人员最喜欢的一项实践了，可项目经理们却充满了顾虑，那么为什么项目经理不喜欢重构呢？\\n\\n老功能被破坏\\n不止一次遇到这样的场景，某一天一个老功能突然被破坏了，项目经理们感到奇怪，产品这块儿的功能已经很稳定了，也没有在这部分开发什么新功能，为什么突然出问题了呢？\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/e8113ad756a64ea6808f91130a6cd934.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 1, '11', '2021-04-19 00:19:23', '2021-04-19 00:19:23', 9, '2021-04-19 00:19:09', '审核成功', 1383827888816836609, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg', 1);
INSERT INTO `wm_news` VALUES (6231, 1102, 'Kafka文件的存储机制', '[{\"type\":\"text\",\"value\":\"Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制Kafka文件的存储机制\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 1, '11', '2021-04-19 00:58:47', '2021-04-19 00:58:47', 9, '2021-04-19 00:20:17', '审核成功', 1383827787629252610, 'http://192.168.200.130:9000/leadnews/2021/4/20210418/4a498d9cf3614570ac0cb2da3e51c164.jpg', 1);
INSERT INTO `wm_news` VALUES (6243, 1102, '端午放假通知：3天，不调休！', '[{\"type\":\"text\",\"value\":\"根据国务院办公厅通知精神\\n\\n2024年劳动节放假安排通知如下\\n\\n5月1日至5月5日\\n\\n放假调休\\n\\n共5天\\n\\n4月28日（星期日）\\n\\n5月11日（星期六）\\n\\n上班\\n\\n紧随其后的端午节\\n\\n放假安排也来了\\n\\n6月10日（星期一）端午节当天放假\\n\\n与周末相连\\n\\n共3天\\n\\n因此今年的端午节假期无需调休\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg\"},{\"type\":\"text\",\"value\":\"接下来还有哪些假期呢？\\n\\n中秋节\\n\\n9月15日至17日\\n\\n放假调休\\n\\n共3天\\n\\n9月14日（星期六）上班\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"国庆节\\n\\n10月1日至7日\\n\\n放假调休\\n\\n共7天\\n\\n9月29日（星期日）\\n\\n10月12日（星期六）\\n\\n上班\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/9f8a93931ab646c0a754475e0c4b0a98.jpg\"},{\"type\":\"text\",\"value\":\"打算自驾出游的小伙伴请注意\\n\\n劳动节和国庆节假期期间\\n\\n高速公路免费通行\\n\\n根据国务院发布的《关于批转交通运输部等部门重大节假日免收小型客车通行费实施方案的通知》（国发〔2012〕37号），收费公路免费通行的时间范围为春节、清明节、劳动节、国庆节等四个国家法定节假日。\\n\\n开始期待了吗？\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 7, '端午节', '2024-04-13 14:17:41', '2024-04-13 14:17:41', 9, '2024-04-13 14:17:36', '审核成功', 1779151991222702081, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', 1);
INSERT INTO `wm_news` VALUES (6244, 1102, '日本发现食用功能性标示食品后健康受损案例', '[{\"type\":\"text\",\"value\":\"新华社东京4月13日电　日本消费者厅12日说，受小林制药公司含红曲成分问题保健品事件影响，他们对数千种功能性标示食品实施了紧急检查，发现上百例消费者健康受损案例。\\n\\n　　小林制药问题保健品事件曝光后，日本消费者厅对所有备案过的近6800款产品涉及的约1700家生产商实施了整体排查，询问生产商是否接到过来自医生等渠道的消费者健康受损信息，并检查了相关信息的收集以及向政府报告的机制。\\n\\n　　据日本媒体报道，调查截止时间为12日，日本消费者厅共收到近1400家生产商就5500余款功能性标示食品的回答。日本消费者厅当天公布的统计结果显示，不包括小林制药的产品在内，共有11家厂商接到117个健康受损案例的信息，涉及18款产品。\\n\\n　　据报道，这117个健康受损案例中没有死亡案例，多数是腹泻、湿疹等轻症，有几个因病情较严重需要住院的案例。由于尚未证实相关产品和消费者健康受损的因果关系，日本消费者厅没有公布具体的产品名称。日本消费者厅计划听取生产商的解释并请专家进行医学评估，以彻底梳理本次排查结果。\\n\\n　　小林制药问题保健品事件是日本2015年开始实施功能性标示食品制度后，生产商首次因消费者健康受损问题而召回产品。根据这一制度，生产商只需在产品上市销售前向日本消费者厅提交与其声称功能相符的科学依据进行备案即可，不需要政府部门的审批许可。\\n\\n　　小林制药问题保健品事件暴露出日本功能性标示食品制度的安全隐患。日本消费者厅计划在此次排查基础上，讨论修订相关制度，包括将报告健康受损相关信息定为生产商的义务等。\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 0, 7, '健康', '2024-04-13 14:21:35', '2024-04-13 14:21:35', 9, '2024-04-13 14:21:08', '审核成功', 1779152969195982849, NULL, 1);
INSERT INTO `wm_news` VALUES (6245, 1102, '江西师大虐猫学生违反校规校纪被开除学籍', '[{\"type\":\"text\",\"value\":\"4月13日，记者经多方核实，江西师范大学瑶湖校区虐猫学生郭某因违反校规校纪被开除学籍。\\n\\n　　今年3月29日夜间，网络上出现江西师范大学学生虐猫相关视频和图片。3月30日，江西师范大学学生处发布情况通报，称学校成立调查组开展调查核实，并将根据调查情况，本着实事求是的原则，依法依规处理。\\n\\n　　经学校调查发现，该学生系江西师范大学瑶湖校区某学院2022级学生，在宿舍饲养宠物猫并存在多次虐猫行为，同时该生存在传播淫秽视频、旷课12节等违反校规校纪行为。根据《江西师范大学学生违纪处分管理办法》相关规定，学校给予郭某开除学籍处分。（总台记者 刘昀彤 杨萍）\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 0, 7, '虐猫', '2024-04-13 14:33:25', '2024-04-13 14:33:25', 9, '2024-04-13 14:33:16', '审核成功', 1779155948103929857, NULL, 1);
INSERT INTO `wm_news` VALUES (6246, 1102, '美媒：美国最大敌人是自身债务', '[{\"type\":\"text\",\"value\":\"新华社华盛顿4月13日电　美国《国家利益》双月刊网站日前刊文指出，随着美国联邦政府债务规模不断扩大，美国最大的敌人是其逼近35万亿美元的债务。\\n\\n　　文章说，第一次世界大战后，美国成为财力枯竭大国的净债权国。此后，美国逐渐确保了它的经济主导地位，并确保了其货币成为主要储备货币。\\n\\n　　文章指出，美国认为只要自己仍然是世界经济体系的主导力量，财政赤字就无关紧要，可以随心所欲地大肆挥霍。然而，随着时间推移，美国经济经历动荡，特朗普和拜登政府均出现美国历史上最不负责任的财政赤字，导致通胀和利率双双飙升，商品价格变得难以承受，美国中产阶级陷入困境。\\n\\n　　文章说，世界其他国家，尤其是全球南方国家，开始认为美国经济的繁荣不可持续。同时，全球南方的许多国家担心，“武器化的美元”可能被用来对付它们，因此这些国家正在寻找对冲手段。\\n\\n　　文章指出，一旦美元不再是世界主要储备货币，整个美国金融体系就会崩溃。债务是一场即将到来的国家安全危机。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 0, 7, '债务', '2024-04-13 14:35:51', '2024-04-13 14:35:51', 9, '2024-04-13 14:35:48', '审核成功', 1779156556462559234, NULL, 1);
INSERT INTO `wm_news` VALUES (6247, 1102, '西藏林芝：“十里桃花”美不胜收', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/9f8a93931ab646c0a754475e0c4b0a98.jpg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 7, '美景', '2024-04-13 14:38:52', '2024-04-13 14:38:52', 9, '2024-04-13 14:38:05', '审核成功', 1779157319192547329, 'http://192.168.200.130:9000/leadnews/2024/04/13/418fbd3c717c47fa8ff7c2a2a09f776e.jpg', 1);
INSERT INTO `wm_news` VALUES (6266, 1102, '123411', '[{\"type\":\"text\",\"value\":\"2112312312312312\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 7, '11', '2024-04-16 13:01:22', '2024-04-16 13:01:22', 9, '2024-04-16 13:01:10', '审核成功', 1780220707326791682, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', 1);
INSERT INTO `wm_news` VALUES (6267, 1102, '她因“发育过猛”被迫退出国家队 ', '[{\"type\":\"text\",\"value\":\"陈小纭，一个曾在泳池中奋力拼搏的少女，用她的青春和汗水书写着对体育的热爱。那时的她，如同一条在水中自由游弋的美人鱼，灵动而优雅。\\n\\n但命运似乎总爱开玩笑，就在她准备在体育界大展拳脚的时候，身体的快速发育却成了她运动生涯的绊脚石。这突如其来的变化，让她不得不提前告别了心爱的泳池。\"},{\"type\":\"text\",\"value\":\"陈小纭没有就此沉沦。她转身投入了娱乐圈的怀抱，开始了新的征程。起初，这条路并不平坦，挑战和困难接踵而至。娱乐圈的复杂和竞争让她倍感压力，但她从未放弃过对梦想的追逐。\\n\\n终于，在一次偶然的机会下，陈小纭得到了一档综艺节目的邀请。这个节目，成了她人生的新起点。在节目中，她以真实的自我、坚韧的性格和出色的表现赢得了观众的喜爱和认可。\"},{\"type\":\"text\",\"value\":\"那一刻，她仿佛又找回了在泳池中畅游的感觉，只是这次，她是在娱乐圈的海洋中遨游。\\n\\n当然，背后的艰辛只有她自己知道。每一次的彩排、每一次的录制都充满了挑战和考验。\\n\\n但正是这些经历，让她更加坚定了自己的信念和追求。她用实际行动证明了自己的价值，也让我们看到了她内心的坚持和勇气。\"},{\"type\":\"text\",\"value\":\"如今，陈小纭已经成为娱乐圈中一颗璀璨的明星。\\n\\n说起来，陈小纭的转型之路并非一帆风顺，但她凭借自己的努力和才华成功地在娱乐圈站稳了脚跟。\\n\\n陈小纭的故事还在继续，她的未来充满了无限可能。我们期待她在娱乐圈能够继续发光发热，为我们带来更多精彩的作品和表演。\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2021/04/26/ef3cbe458db249f7bd6fb4339e593e55.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 7, '发育过猛', '2024-04-16 13:08:23', '2024-04-16 13:08:23', 9, '2024-04-16 13:15:08', '审核成功', 1780223656501317633, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', 1);
INSERT INTO `wm_news` VALUES (6268, 1102, '这是我的一片问哈', '[{\"type\":\"text\",\"value\":\"122222222222222222222222222\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130:9000/leadnews/2024/04/10/13e7f1a5a12047aba601c4c3ef911132.jpg\"},{\"type\":\"text\",\"value\":\"请在这里输入正文\"}]', 1, 1, '1', '2024-04-23 11:29:36', '2024-04-23 11:29:36', 1, '2024-04-23 11:29:29', NULL, NULL, 'http://192.168.200.130:9000/leadnews/2021/04/26/5ddbdb5c68094ce393b08a47860da275.jpg', 1);

-- ----------------------------
-- Table structure for wm_news_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_material`;
CREATE TABLE `wm_news_material`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `material_id` int UNSIGNED NULL DEFAULT NULL COMMENT '素材ID',
  `news_id` int UNSIGNED NULL DEFAULT NULL COMMENT '图文ID',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '引用类型\r\n            0 内容引用\r\n            1 主图引用',
  `ord` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '引用排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文引用素材信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_news_material
-- ----------------------------
INSERT INTO `wm_news_material` VALUES (255, 61, 6232, 0, 0);
INSERT INTO `wm_news_material` VALUES (256, 61, 6232, 1, 0);
INSERT INTO `wm_news_material` VALUES (263, 61, 6231, 0, 0);
INSERT INTO `wm_news_material` VALUES (264, 61, 6231, 1, 0);
INSERT INTO `wm_news_material` VALUES (265, 57, 6230, 0, 0);
INSERT INTO `wm_news_material` VALUES (266, 61, 6230, 0, 1);
INSERT INTO `wm_news_material` VALUES (267, 61, 6230, 1, 0);
INSERT INTO `wm_news_material` VALUES (268, 58, 6229, 0, 0);
INSERT INTO `wm_news_material` VALUES (269, 58, 6229, 1, 0);
INSERT INTO `wm_news_material` VALUES (270, 62, 6228, 0, 0);
INSERT INTO `wm_news_material` VALUES (271, 62, 6228, 1, 0);
INSERT INTO `wm_news_material` VALUES (272, 66, 6227, 0, 0);
INSERT INTO `wm_news_material` VALUES (273, 66, 6227, 1, 0);
INSERT INTO `wm_news_material` VALUES (274, 57, 6226, 0, 0);
INSERT INTO `wm_news_material` VALUES (275, 64, 6226, 0, 1);
INSERT INTO `wm_news_material` VALUES (276, 65, 6226, 1, 0);
INSERT INTO `wm_news_material` VALUES (277, 64, 6226, 1, 1);
INSERT INTO `wm_news_material` VALUES (278, 57, 6226, 1, 2);
INSERT INTO `wm_news_material` VALUES (279, 65, 6225, 0, 0);
INSERT INTO `wm_news_material` VALUES (280, 65, 6225, 1, 0);
INSERT INTO `wm_news_material` VALUES (281, 72, 6232, 1, 0);
INSERT INTO `wm_news_material` VALUES (282, 72, 6233, 1, 0);
INSERT INTO `wm_news_material` VALUES (283, 68, 6234, 0, 0);
INSERT INTO `wm_news_material` VALUES (284, 69, 6234, 1, 0);
INSERT INTO `wm_news_material` VALUES (285, 71, 6235, 0, 0);
INSERT INTO `wm_news_material` VALUES (286, 71, 6235, 1, 0);
INSERT INTO `wm_news_material` VALUES (287, 71, 6236, 0, 0);
INSERT INTO `wm_news_material` VALUES (288, 71, 6236, 1, 0);
INSERT INTO `wm_news_material` VALUES (289, 71, 6237, 0, 0);
INSERT INTO `wm_news_material` VALUES (290, 71, 6237, 1, 0);
INSERT INTO `wm_news_material` VALUES (291, 71, 6238, 0, 0);
INSERT INTO `wm_news_material` VALUES (292, 70, 6238, 1, 0);
INSERT INTO `wm_news_material` VALUES (293, 72, 6239, 0, 0);
INSERT INTO `wm_news_material` VALUES (294, 68, 6239, 1, 0);
INSERT INTO `wm_news_material` VALUES (295, 72, 6240, 0, 0);
INSERT INTO `wm_news_material` VALUES (296, 70, 6240, 1, 0);
INSERT INTO `wm_news_material` VALUES (297, 71, 6241, 0, 0);
INSERT INTO `wm_news_material` VALUES (298, 68, 6241, 1, 0);
INSERT INTO `wm_news_material` VALUES (299, 72, 6242, 0, 0);
INSERT INTO `wm_news_material` VALUES (300, 68, 6242, 1, 0);
INSERT INTO `wm_news_material` VALUES (301, 70, 6243, 0, 0);
INSERT INTO `wm_news_material` VALUES (302, 71, 6243, 0, 1);
INSERT INTO `wm_news_material` VALUES (303, 72, 6243, 0, 2);
INSERT INTO `wm_news_material` VALUES (304, 69, 6243, 1, 0);
INSERT INTO `wm_news_material` VALUES (305, 71, 6246, 0, 0);
INSERT INTO `wm_news_material` VALUES (306, 69, 6247, 0, 0);
INSERT INTO `wm_news_material` VALUES (307, 70, 6247, 0, 1);
INSERT INTO `wm_news_material` VALUES (308, 71, 6247, 0, 2);
INSERT INTO `wm_news_material` VALUES (309, 72, 6247, 0, 3);
INSERT INTO `wm_news_material` VALUES (310, 73, 6247, 1, 0);
INSERT INTO `wm_news_material` VALUES (311, 69, 6248, 0, 0);
INSERT INTO `wm_news_material` VALUES (312, 73, 6248, 0, 1);
INSERT INTO `wm_news_material` VALUES (313, 70, 6248, 1, 0);
INSERT INTO `wm_news_material` VALUES (314, 71, 6249, 0, 0);
INSERT INTO `wm_news_material` VALUES (315, 73, 6249, 1, 0);
INSERT INTO `wm_news_material` VALUES (316, 72, 6250, 1, 0);
INSERT INTO `wm_news_material` VALUES (317, 72, 6251, 1, 0);
INSERT INTO `wm_news_material` VALUES (318, 71, 6252, 0, 0);
INSERT INTO `wm_news_material` VALUES (319, 69, 6252, 1, 0);
INSERT INTO `wm_news_material` VALUES (320, 72, 6264, 0, 0);
INSERT INTO `wm_news_material` VALUES (321, 73, 6264, 0, 1);
INSERT INTO `wm_news_material` VALUES (322, 72, 6264, 1, 0);
INSERT INTO `wm_news_material` VALUES (323, 71, 6265, 0, 0);
INSERT INTO `wm_news_material` VALUES (324, 73, 6265, 1, 0);
INSERT INTO `wm_news_material` VALUES (325, 69, 6266, 1, 0);
INSERT INTO `wm_news_material` VALUES (326, 71, 6267, 0, 0);
INSERT INTO `wm_news_material` VALUES (327, 69, 6267, 1, 0);
INSERT INTO `wm_news_material` VALUES (328, 72, 6268, 0, 0);
INSERT INTO `wm_news_material` VALUES (329, 69, 6268, 1, 0);

-- ----------------------------
-- Table structure for wm_news_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_statistics`;
CREATE TABLE `wm_news_statistics`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '主账号ID',
  `article` int UNSIGNED NULL DEFAULT NULL COMMENT '子账号ID',
  `read_count` int UNSIGNED NULL DEFAULT NULL COMMENT '阅读量',
  `comment` int UNSIGNED NULL DEFAULT NULL COMMENT '评论量',
  `follow` int UNSIGNED NULL DEFAULT NULL COMMENT '关注量',
  `collection` int UNSIGNED NULL DEFAULT NULL COMMENT '收藏量',
  `forward` int UNSIGNED NULL DEFAULT NULL COMMENT '转发量',
  `likes` int UNSIGNED NULL DEFAULT NULL COMMENT '点赞量',
  `unlikes` int UNSIGNED NULL DEFAULT NULL COMMENT '不喜欢',
  `unfollow` int UNSIGNED NULL DEFAULT NULL COMMENT '取消关注量',
  `burst` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_user_id_time`(`user_id`, `created_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文数据统计表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_news_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_sensitive
-- ----------------------------
DROP TABLE IF EXISTS `wm_sensitive`;
CREATE TABLE `wm_sensitive`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sensitives` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '敏感词',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '敏感词信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_sensitive
-- ----------------------------
INSERT INTO `wm_sensitive` VALUES (3105, '法轮功', '2021-05-23 15:38:51');
INSERT INTO `wm_sensitive` VALUES (3106, '私人侦探', '2021-05-23 11:09:22');
INSERT INTO `wm_sensitive` VALUES (3107, '针孔摄象', '2021-05-23 11:09:52');
INSERT INTO `wm_sensitive` VALUES (3108, '信用卡提现', '2021-05-23 11:10:11');
INSERT INTO `wm_sensitive` VALUES (3109, '无抵押贷款', '2021-05-23 11:10:41');
INSERT INTO `wm_sensitive` VALUES (3110, '广告代理', '2021-05-23 11:10:59');
INSERT INTO `wm_sensitive` VALUES (3111, '代开发票', '2021-05-23 11:11:18');
INSERT INTO `wm_sensitive` VALUES (3112, '蚁力神', '2021-05-23 11:11:39');
INSERT INTO `wm_sensitive` VALUES (3113, '售肾', '2021-05-23 11:12:08');
INSERT INTO `wm_sensitive` VALUES (3116, '套牌车', '2021-05-23 11:12:37');
INSERT INTO `wm_sensitive` VALUES (3117, '足球投注', '2021-05-23 11:12:51');
INSERT INTO `wm_sensitive` VALUES (3118, '地下钱庄', '2021-05-23 11:13:07');
INSERT INTO `wm_sensitive` VALUES (3200, '小额贷款', '2021-05-23 11:13:40');
INSERT INTO `wm_sensitive` VALUES (3202, '摇头丸', '2024-04-18 08:52:04');
INSERT INTO `wm_sensitive` VALUES (3204, '赌博1', '2024-04-18 09:54:29');
INSERT INTO `wm_sensitive` VALUES (3205, '赌徒', '2024-04-18 09:59:08');

-- ----------------------------
-- Table structure for wm_user
-- ----------------------------
DROP TABLE IF EXISTS `wm_user`;
CREATE TABLE `wm_user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ap_user_id` int NULL DEFAULT NULL,
  `ap_author_id` int NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录用户名',
  `password` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '盐',
  `nickname` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `location` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '归属地',
  `phone` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '状态\r\n            0 暂时不可用\r\n            1 永久不可用\r\n            9 正常可用',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '账号类型\r\n            0 个人 \r\n            1 企业\r\n            2 子账号',
  `score` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '运营评分',
  `login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wm_user
-- ----------------------------
INSERT INTO `wm_user` VALUES (1100, NULL, NULL, 'zhangsan', 'ab8c7c1e66a164ab6891b927550ea39a', 'abc', '小张', NULL, NULL, '13588996789', 1, NULL, NULL, NULL, '2020-02-17 23:51:15', '2020-02-17 23:51:18');
INSERT INTO `wm_user` VALUES (1101, NULL, NULL, 'lisi', 'a6ecab0c246bbc87926e0fba442cc014', 'def', '小李', NULL, NULL, '13234567656', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wm_user` VALUES (1102, NULL, NULL, 'admin', 'a66abb5684c45962d887564f08346e8d', '123456', '管理', NULL, NULL, '13234567657', 1, NULL, NULL, NULL, NULL, '2020-03-14 09:35:13');
INSERT INTO `wm_user` VALUES (1118, NULL, NULL, 'lisi1', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wm_user` VALUES (1119, NULL, NULL, 'shaseng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
