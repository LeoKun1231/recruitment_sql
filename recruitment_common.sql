/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : recruitment_common

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 04/05/2023 13:10:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `comment_count` bigint(20) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000000000000 COMMENT '评论数',
  `content_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章预览',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章类型',
  `topic_id` bigint UNSIGNED NOT NULL COMMENT '话题Id',
  `major_id` bigint NOT NULL COMMENT '创建者所在组织id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章标题',
  `watch_count` bigint(20) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000000000000 COMMENT '文章浏览量',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (88, 00000000000000000000, '那个时候 TyepScript 的发展正在如日中天的时候，广大库的作者普遍拥抱 TS，比如于2020年9月18日正式发布的Vue3 ，代号为 One Piece(海贼王)。 三年过去了，再好看的媳妇也', '<p>那个时候 TyepScript 的发展正在如日中天的时候，广大库的作者普遍拥抱 TS，比如于2020年9月18日正式发布的Vue3 ，代号为 One Piece(海贼王)。</p><p>三年过去了，再好看的媳妇也看腻了，大家就开始挑毛病了，你（TyepScript）可能并不完美。</p><p>回归了理性，大家就开始思考使用 TyepScript 的初心是什么了，意识吼出了灵魂一问？我们为什么使用 TypeScript？</p><p>没错，这个问题很简单，因为 TypeScript 提供了<strong>类型检查</strong>，弥补了 JavaScript 只有逻辑没有类型的问题，也就是讲我们不需要 TypeScript 的逻辑，只需要它的的类型提示功能。但是不知不觉之间，我们在逻辑的道路上越走越远。</p><p>比如下面是 Vue3 watch API 的类型声明，我估计给一天时间，大多数人可能都不太能整的明白里面的逻辑：<br></p><p><br></p>', '提问题', 2, 9, '还没用熟 TypeScript 社区已经开始抛弃了😭', 00000000000000000123, 948, '2023-04-16 18:56:17');
INSERT INTO `article` VALUES (89, 00000000000000000000, '在我看来，管清友的这个建议可以说是掏心掏肺，非常真诚，他在视频里也说了，他是基于很多实际案例才说的这些话，不是说教。 为什么我这么肯定呢？ 很简单，我就是代表案例。 我第一家公司在浦东陆家嘴，四号线浦', '<p>在我看来，管清友的这个建议可以说是掏心掏肺，非常真诚，他在视频里也说了，他是基于很多实际案例才说的这些话，不是说教。</p><p>为什么我这么肯定呢？</p><p>很简单，我就是代表案例。</p><p>我第一家公司在浦东陆家嘴，四号线浦东大道地铁站旁边，我当时来上海的时候身无分文，借的家里的钱过来的，我是贫困家庭。</p><p>但，为了节约时间，我就在公司附近居住，步行五分钟，洗头洗澡都是中午回住的地方完成，晚上几乎都是11:00之后回去，倒头就睡，因为时间可以充分利用。</p><p>节约的时间，我就来研究前端技术，写代码，写文章，做项目，做业务，之前的<a href=\"https://juejin.cn/book/7184663814950879270/section/7184663329015595020\" target=\"_blank\">小册</a>（免费章节，可<a href=\"https://juejin.cn/book/7184663814950879270/section/7184663329015595020\" target=\"_blank\">直接访问</a>）我也提过，有兴趣的可以去看看。</p><p>现在回过头来看那段岁月，那是充满了感激和庆幸，自己绝对做了一个非常正确的决定，让自己的职业发展后劲十足。</p><p>所以，当看到管清友建议就近租房的建议，我是非常有共鸣的，可惜世界是参差的，管清友忽略了一个事实，那就是优秀的人毕竟是少数，知道如何主动投资自己的人也是凤毛麟角，他们根本就无法理解。</p><p>又或者，有些人知道应该要投资自己，但是就是做不到，毕竟辛苦劳累，何苦呢，做人，不就是应该开心快乐吗？<br></p><p><br></p>', '提建议', 9, 9, '为什么我这么肯定呢？ 很简单，我就是代表案例', 00000000000000000003, 948, '2023-04-16 18:57:13');
INSERT INTO `article` VALUES (90, 00000000000000000000, '在现实世界中，物理是无处不在的。从行星和恒星的运动到电子的运动，物理定律描述了我们周围几乎所有事物的运动和相互作用。 在计算机科学中，物理引擎是一种模拟物理现象的软件程序。它们通常用于创建物理游戏、虚', '<p><br></p><p>在现实世界中，物理是无处不在的。从行星和恒星的运动到电子的运动，物理定律描述了我们周围几乎所有事物的运动和相互作用。</p><p>在计算机科学中，物理引擎是一种模拟物理现象的软件程序。它们通常用于创建物理游戏、虚拟现实和仿真等应用程序。物理引擎可以模拟各种现象，例如重力、碰撞和摩擦等。物理引擎通常是非常复杂的，因为它必须模拟现实世界中的各种效果。</p><p>在Web浏览器想模拟真实世界的物理现象其实也有很多库，2D方面有 <a href=\"https://link.juejin.cn?target=https%3A%2F%2Fbrm.io%2Fmatter-js%2F\" target=\"_blank\"><code>Matter.js</code></a>、<a href=\"https://link.juejin.cn?target=https%3A%2F%2Fgithub.com%2Fschteppe%2Fp2.js\" target=\"_blank\"><code>P2.js</code></a> 等，3D方面有 <a href=\"https://link.juejin.cn?target=https%3A%2F%2Fgithub.com%2Fschteppe%2Fcannon.js\" target=\"_blank\"><code>Cannon.js</code></a>、<a href=\"https://link.juejin.cn?target=https%3A%2F%2Fgithub.com%2Fkripken%2Fammo.js%2F\" target=\"_blank\"><code>ammo.js</code></a> 等。</p><p>而本文是将 <code>Matter.js</code> 的，所以我在这只会说 <code>Matter.js</code> 的好话。</p><p><code>Matter.js</code> 是一个非常强大的 <code>JavaScript</code> 2D物理引擎，它能够帮助你在Web应用程序中实现逼真的物理效果。</p><p><code>Matter.js</code> 提供了可定制的碰撞检测、重力、力学效应和运动控制等功能，让你可以快速、简单地构建交互式的物理模拟。无论是模拟游戏、建筑模型还是实验室实验，<code>Matter.js</code> 都可以满足你的需求。<br></p><p><br></p>', '闲聊', 2, 9, '物理世界的互动之旅：Matter.js入门指南', 00000000000000000004, 948, '2023-04-16 18:58:43');
INSERT INTO `article` VALUES (91, 00000000000000000000, '22222222222222222222222222222 11111111111111111111111 4444444444444444444444444 55555555555555555555', '<h1>22222222222222222222222222222</h1><h2>11111111111111111111111</h2><h3>4444444444444444444444444</h3><h4>5555555555555555555555555</h4><table style=\"width: auto;\"><tbody><tr><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">1</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">2</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">3</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">4</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">5</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">6</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">7</th><th colSpan=\"1\" rowSpan=\"1\" width=\"auto\">8</th></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">2</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">3</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">4</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">5</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">6</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">7</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">8</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">9</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td></tr><tr><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">0</td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\"></td><td colSpan=\"1\" rowSpan=\"1\" width=\"auto\">1</td></tr></tbody></table><p><br></p><hr/><ol><li>1111111111111111111111111111</li><li>22222222222222222222222222222</li><li>33333333333333333</li><li>444444</li></ol><p>111111111111111111111111111</p><p>阿萨大厦阿三大</p>', '闲聊', 7, 9, '1111111111111111111111111', 00000000000000000019, 948, '2023-04-16 19:00:48');
INSERT INTO `article` VALUES (93, 00000000000000000000, '大家好，我是沐华，本文主要剖析 TS 开发中常见工具类型的源码实现及使用方式，并且搭配与内容结合的练习，方便更好的理解和掌握，本文目标： 更加深入的理解和掌握泛型 更加熟练这些内置工具类型在项目中的运', '<p>大家好，我是沐华，本文主要剖析 <code>TS</code> 开发中常见工具类型的源码实现及使用方式，并且搭配与内容结合的练习，方便更好的理解和掌握，本文目标：</p><ul><li>更加深入的理解和掌握泛型</li><li>更加熟练这些内置工具类型在项目中的运用</li></ul><h3>Exclude</h3><p><code>Exclude&lt;T, U&gt;</code>：作用简单说就是把 <code>T</code> 里面的 <code>U</code> 去掉，再返回 <code>T</code> 里还剩下的。<code>T</code> 和 <code>U</code> 必须是同种类型(具体类型/字面量类型)。如下<br></p><pre><code class=\"language-typescript\">type T1 = Exclude&lt;string | number, string&gt;;\n// type T1  = number; \n\n// 上面这个肯定一看就懂，那下面这样呢\n\ntype T2 = Exclude&lt;\'a\' | \'b\' | \'c\', \'b\' | \'d\'&gt;;\n// type T2  = \'a\' | \'c\';</code></pre><p><br></p>', '提建议', 7, 9, 'TS泛型进阶', 00000000000000000006, 949, '2023-04-24 13:35:24');
INSERT INTO `article` VALUES (94, 00000000000000000000, '测试测试测试测试测试测试测试测试测试测试测试测试测试', '<h1>测试测试测试测试测试测试测试测试测试测试测试测试测试</h1><h1><img src=\"https://hqk10.oss-cn-hangzhou.aliyuncs.com/2023/04/24/ece3acdebdb8492ba51f7649f1aac7a7code.png\" alt=\"\" data-href=\"\" style=\"\"/></h1>', '闲聊', 1, 9, '测试上传图片', 00000000000000000001, 949, '2023-04-24 14:17:09');
INSERT INTO `article` VALUES (95, 00000000000000000000, 'asadasdsadsadsadsad', 'asadasdsadsadsadsad', '闲聊', 1, 9, 'asadasda', 00000000000000000000, 948, '2023-04-26 11:15:37');
INSERT INTO `article` VALUES (96, 00000000000000000000, 'casadadasdweqweqweqwe', 'casadadasdweqweqweqwe', '提问题', 2, 9, '测试测试啊', 00000000000000000009, 948, '2023-04-26 11:23:15');
INSERT INTO `article` VALUES (97, 00000000000000000000, 'aaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa', '提问题', 1, 9, 'aaaaaaaaaaaaaaaaa', 00000000000000000000, 948, '2023-04-26 11:24:32');
INSERT INTO `article` VALUES (98, 00000000000000000000, 'sssssssssssssssss', 'sssssssssssssssss', '提建议', 0, 9, 'aaaaaaaaaa', 00000000000000000000, 948, '2023-04-26 11:25:25');
INSERT INTO `article` VALUES (99, 00000000000000000000, '@PostMapping(\"/add\")\r\n    public  R addArticle(@RequestBody ArticleVo articleVo){\r\n        boolean i', '<p><img src=\"https://hqk10.oss-cn-hangzhou.aliyuncs.com/2023/04/30/eec0b7b4a76246e4ae79e9f079d92302未命名文件 (1).jpg\" alt=\"\" data-href=\"\" style=\"width: 775.00px;height: 207.21px;\"/></p><pre><code class=\"language-java\">   @PostMapping(\"/add\")\r\n    public  R addArticle(@RequestBody ArticleVo articleVo){\r\n        boolean isAdd=articleService.addArticle(articleVo);\r\n        if(isAdd){\r\n            return R.ok().message(\"添加成功\");\r\n        }else{\r\n            return R.error().code(20000).message(\"添加失败\");\r\n        }\r\n    }</code></pre><h1>测试文章发表</h1>', '提问题', 18, 9, '测试发表文章', 00000000000000000001, 948, '2023-04-30 22:48:26');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `article_id` bigint NULL DEFAULT NULL COMMENT '模块id',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父级评论id',
  `root_id` bigint NULL DEFAULT NULL COMMENT '根评论',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `target_id` bigint NULL DEFAULT NULL COMMENT '恢复对象id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 406 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `article_id` bigint NULL DEFAULT NULL COMMENT '文章id',
  `comment_id` bigint NULL DEFAULT NULL COMMENT '评论id',
  `report_count` bigint NULL DEFAULT 0 COMMENT '举报次数',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (00000000000000000043, NULL, 1, 1, '2023-04-25 19:40:20');
INSERT INTO `report` VALUES (00000000000000000044, NULL, 376, 2, '2023-04-25 19:42:12');
INSERT INTO `report` VALUES (00000000000000000045, 88, NULL, 2, '2023-04-25 20:07:16');

-- ----------------------------
-- Table structure for report_reason
-- ----------------------------
DROP TABLE IF EXISTS `report_reason`;
CREATE TABLE `report_reason`  (
  `id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `report_id` bigint NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_reason
-- ----------------------------
INSERT INTO `report_reason` VALUES (00000000000000000059, 43, '测试sh手机端举报');
INSERT INTO `report_reason` VALUES (00000000000000000060, 44, '测试shou\'ji\'dua手机端举报');
INSERT INTO `report_reason` VALUES (00000000000000000061, 44, 'a\'aa\'a\'a\'a\'a\'aa\'a\'a\'a\'a\'a\'a\'a\'aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `report_reason` VALUES (00000000000000000062, 45, '手机端测试举报wen文章。');
INSERT INTO `report_reason` VALUES (00000000000000000063, 45, 'aaa');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `count` bigint NULL DEFAULT NULL COMMENT '被提及次数',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (0, '全部', 1, '2023-03-14 16:06:38', '2023-03-14 16:06:38');
INSERT INTO `topic` VALUES (1, '前端求职面试那些事儿', 3, '2023-03-03 21:09:54', '2023-03-03 21:09:54');
INSERT INTO `topic` VALUES (2, '零基础入行互联网', 3, '2023-03-03 21:10:16', '2023-03-03 21:10:16');
INSERT INTO `topic` VALUES (3, '技术那些事儿', 0, '2023-03-03 21:10:33', '2023-03-03 21:10:33');
INSERT INTO `topic` VALUES (4, '前端面试题交流', 0, '2023-03-03 21:11:24', '2023-03-03 21:11:24');
INSERT INTO `topic` VALUES (5, '每天一道算法题', 0, '2023-03-03 21:11:34', '2023-03-03 21:11:34');
INSERT INTO `topic` VALUES (6, '程序员职场百科', 0, '2023-03-03 21:11:58', '2023-03-03 21:11:58');
INSERT INTO `topic` VALUES (7, '程序员初学避坑指南', 2, '2023-03-03 21:12:11', '2023-03-03 21:12:11');
INSERT INTO `topic` VALUES (8, '行政求职面试交流', 0, '2023-03-03 21:12:26', '2023-03-03 21:12:26');
INSERT INTO `topic` VALUES (9, 'docker 专业问答', 1, '2023-03-03 21:12:39', '2023-03-03 21:12:39');
INSERT INTO `topic` VALUES (10, '技术支个招儿', 0, '2023-03-03 21:12:54', '2023-03-03 21:12:54');
INSERT INTO `topic` VALUES (11, '技术简历常见问题', 0, '2023-03-03 21:13:13', '2023-03-03 21:13:13');
INSERT INTO `topic` VALUES (12, '有效的招聘方式', 0, '2023-03-03 21:13:18', '2023-03-03 21:13:18');
INSERT INTO `topic` VALUES (13, '应届生求职指南', 0, '2023-03-03 21:14:19', '2023-03-03 21:14:19');
INSERT INTO `topic` VALUES (14, 'HR 必知必会', 0, '2023-03-03 21:14:24', '2023-03-03 21:14:24');
INSERT INTO `topic` VALUES (15, '面试须知', 0, '2023-03-03 21:14:43', '2023-03-03 21:14:43');
INSERT INTO `topic` VALUES (16, '走出待业迷茫期', 0, '2023-03-03 21:15:32', '2023-03-03 21:15:32');
INSERT INTO `topic` VALUES (17, '年底职场生存指南', 0, '2023-03-03 21:15:48', '2023-03-03 21:15:48');
INSERT INTO `topic` VALUES (18, 'Java 常见问题', 1, '2023-03-03 21:16:14', '2023-03-03 21:16:14');
INSERT INTO `topic` VALUES (19, '新媒体运营那些事儿', 0, '2023-03-03 21:16:27', '2023-03-03 21:16:27');
INSERT INTO `topic` VALUES (20, '求职笔记', 0, '2023-03-03 21:16:37', '2023-03-03 21:16:37');
INSERT INTO `topic` VALUES (21, '我遇到的奇葩面试官', 0, '2023-03-03 21:16:54', '2023-03-03 21:16:54');
INSERT INTO `topic` VALUES (22, '求职前必知那些事', 0, '2023-03-03 21:17:00', '2023-03-03 21:17:00');

SET FOREIGN_KEY_CHECKS = 1;
