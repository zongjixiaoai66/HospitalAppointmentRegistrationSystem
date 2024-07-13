/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t198`;
CREATE DATABASE IF NOT EXISTS `t198` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t198`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-28 05:58:54'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-28 05:58:54'),
	(3, 'keshi_types', '科室', 1, '外科', NULL, NULL, '2022-03-28 05:58:54'),
	(4, 'keshi_types', '科室', 2, '内科', NULL, NULL, '2022-03-28 05:58:54'),
	(5, 'keshi_types', '科室', 3, '耳鼻喉科', NULL, NULL, '2022-03-28 05:58:54'),
	(6, 'keshi_types', '科室', 4, '骨科', NULL, NULL, '2022-03-28 05:58:55'),
	(7, 'zhiwei_types', '职位', 1, '普通医师', NULL, NULL, '2022-03-28 05:58:55'),
	(8, 'zhiwei_types', '职位', 2, '主治医师', NULL, NULL, '2022-03-28 05:58:55'),
	(9, 'zhiwei_types', '职位', 3, '主任医师', NULL, NULL, '2022-03-28 05:58:55'),
	(10, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-03-28 05:58:55'),
	(11, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2022-03-28 05:58:55'),
	(12, 'zhuanjia_order_yesno_types', '状态', 1, '待审核', NULL, NULL, '2022-03-28 05:58:55'),
	(13, 'zhuanjia_order_yesno_types', '状态', 2, '同意', NULL, NULL, '2022-03-28 05:58:55'),
	(14, 'zhuanjia_order_yesno_types', '状态', 3, '拒绝', NULL, NULL, '2022-03-28 05:58:55'),
	(15, 'shijianduan_types', '时间段', 1, '08:00-09:00', NULL, NULL, '2022-03-28 05:58:55'),
	(16, 'shijianduan_types', '时间段', 2, '09:00-10:00', NULL, NULL, '2022-03-28 05:58:55'),
	(17, 'shijianduan_types', '时间段', 3, '10:00-11:00', NULL, NULL, '2022-03-28 05:58:55'),
	(18, 'shijianduan_types', '时间段', 4, '11:00-12:00', NULL, NULL, '2022-03-28 05:58:55'),
	(19, 'shijianduan_types', '时间段', 5, '14:00-15:00', NULL, NULL, '2022-03-28 05:58:55'),
	(20, 'shijianduan_types', '时间段', 6, '15:00-16:00', NULL, NULL, '2022-03-28 05:58:55'),
	(21, 'shijianduan_types', '时间段', 7, '16:00-17:00', NULL, NULL, '2022-03-28 05:58:55'),
	(22, 'shijianduan_types', '时间段', 8, '17:00-18:00', NULL, NULL, '2022-03-28 05:58:55'),
	(23, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2022-03-28 05:58:55'),
	(24, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2022-03-28 05:58:55'),
	(25, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2022-03-28 05:58:55'),
	(26, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-28 05:58:55'),
	(27, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-28 05:58:55'),
	(28, 'forum_types', '帖子类型', 4, '帖子类型4', NULL, '', '2022-03-28 06:16:29');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `huiyuan_id`, `zhuanjia_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, NULL, '发布内容1', NULL, 1, 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(2, '帖子标题2', 2, NULL, NULL, '发布内容2', NULL, 1, 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(3, '帖子标题3', 2, NULL, NULL, '发布内容3', NULL, 2, 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', NULL, 3, 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', NULL, 3, 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(6, NULL, 1, NULL, NULL, '33333', 5, NULL, 2, '2022-03-28 06:15:20', NULL, '2022-03-28 06:15:20'),
	(7, NULL, NULL, NULL, 6, '3333', 5, NULL, 2, '2022-03-28 06:16:36', NULL, '2022-03-28 06:16:36'),
	(8, NULL, NULL, 1, NULL, '333', 5, NULL, 2, '2022-03-28 06:17:41', NULL, '2022-03-28 06:17:41'),
	(9, NULL, 1, NULL, NULL, '333', 5, NULL, 2, '2022-03-28 06:18:35', NULL, '2022-03-28 06:18:35');

DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号',
  `huiyuan_photo` varchar(200) DEFAULT NULL COMMENT '会员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `huiyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `huiyuan_content` text COMMENT '会员介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='会员 show2 photoShow';

DELETE FROM `huiyuan`;
INSERT INTO `huiyuan` (`id`, `username`, `password`, `huiyuan_name`, `huiyuan_phone`, `huiyuan_id_number`, `huiyuan_photo`, `sex_types`, `huiyuan_email`, `new_money`, `huiyuan_content`, `create_time`) VALUES
	(1, '会员1', '123456', '会员姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/huiyuan1.jpg', 2, '1@qq.com', 99090.25, '会员介绍1', '2022-03-28 05:58:58'),
	(2, '会员2', '123456', '会员姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/huiyuan2.jpg', 2, '2@qq.com', 242.79, '会员介绍2', '2022-03-28 05:58:58'),
	(3, '会员3', '123456', '会员姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/huiyuan3.jpg', 1, '3@qq.com', 257.14, '<p>会员介绍31111</p>', '2022-03-28 05:58:58');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '联系我们', 2, '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p>', '2022-03-28 06:13:50'),
	(2, '网站介绍', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍</p>', '2022-03-28 06:14:00');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'gg050o7mnkrppw1ut8iqzjuocdk372tc', '2022-03-28 05:54:00', '2024-05-17 03:57:38'),
	(2, 1, 'a1', 'huiyuan', '会员 show2 photoShow', '4sofzwlempzfbgfla62yhe4sx8w9hxe1', '2022-03-28 05:54:25', '2022-03-28 06:54:26'),
	(3, 1, 'a1', 'huiyuan', '会员', 'wkp12rxgejv0zwigq9h8cbh02r9j9bjf', '2022-03-28 06:14:16', '2024-05-17 03:58:58'),
	(4, 1, 'a1', 'zhuanjia', '专家', 'mx6z16vqidyj3rlk62ae7e1lqfx4xia4', '2022-03-28 06:17:17', '2024-05-17 03:58:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `zhuanjia`;
CREATE TABLE IF NOT EXISTS `zhuanjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '专家姓名 Search111 ',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '专家手机号',
  `zhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '专家身份证号',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '专家头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `keshi_types` int DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `guahao_money` decimal(10,2) DEFAULT NULL COMMENT '挂号费 ',
  `zhuanjia_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zhuanjia_content` text COMMENT '专家介绍',
  `zhuanjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='专家';

DELETE FROM `zhuanjia`;
INSERT INTO `zhuanjia` (`id`, `username`, `password`, `zhuanjia_name`, `zhuanjia_phone`, `zhuanjia_id_number`, `zhuanjia_photo`, `sex_types`, `keshi_types`, `zhiwei_types`, `guahao_money`, `zhuanjia_email`, `zhuanjia_content`, `zhuanjia_delete`, `insert_time`, `create_time`) VALUES
	(1, '专家1', '123456', '专家姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/zhuanjia1.jpg', 1, 4, 3, 394.11, '12@qq.com', '<p>专家介绍1</p>', 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(2, '专家2', '123456', '专家姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/zhuanjia2.jpg', 1, 2, 2, 248.01, '2@qq.com', '专家介绍2', 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(3, '专家3', '123456', '专家姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/wenlixueyuanyuyueguahao/upload/zhuanjia3.jpg', 2, 2, 2, 383.86, '3@qq.com', '专家介绍3', 1, '2022-03-28 05:58:58', '2022-03-28 05:58:58');

DROP TABLE IF EXISTS `zhuanjia_liuyan`;
CREATE TABLE IF NOT EXISTS `zhuanjia_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `zhuanjia_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='专家留言';

DELETE FROM `zhuanjia_liuyan`;
INSERT INTO `zhuanjia_liuyan` (`id`, `zhuanjia_id`, `huiyuan_id`, `zhuanjia_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, 3, '留言内容1', '2022-03-28 05:58:58', '回复信息1', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(2, 1, 1, '留言内容2', '2022-03-28 05:58:58', '回复信息2', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(3, 3, 2, '留言内容3', '2022-03-28 05:58:58', '回复信息3', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(4, 3, 3, '留言内容4', '2022-03-28 05:58:58', '回复信息4', '2022-03-28 05:58:58', '2022-03-28 05:58:58'),
	(5, 1, 3, '留言内容5', '2022-03-28 05:58:58', '回复信息5222', '2022-03-28 06:17:50', '2022-03-28 05:58:58'),
	(6, 1, 1, '33333', '2022-03-28 06:18:06', '444444444', '2022-03-28 06:18:12', '2022-03-28 06:18:06');

DROP TABLE IF EXISTS `zhuanjia_order`;
CREATE TABLE IF NOT EXISTS `zhuanjia_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanjia_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '号 Search111 ',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `guahao_time` date DEFAULT NULL COMMENT '挂号日期 Search111 ',
  `shijianduan_types` int DEFAULT NULL COMMENT '时间段 Search111 ',
  `zhuanjia_order_yesno_types` int DEFAULT NULL COMMENT '状态 Search111 ',
  `zhuanjia_order_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='专家挂号订单';

DELETE FROM `zhuanjia_order`;
INSERT INTO `zhuanjia_order` (`id`, `zhuanjia_order_uuid_number`, `zhuanjia_id`, `huiyuan_id`, `guahao_time`, `shijianduan_types`, `zhuanjia_order_yesno_types`, `zhuanjia_order_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '1648448105964', 3, 1, '2022-03-30', 3, 1, NULL, '2022-03-28 06:15:06', '2022-03-28 06:15:06'),
	(2, '1648448133121', 3, 1, '2022-03-30', 5, 1, NULL, '2022-03-28 06:15:33', '2022-03-28 06:15:33'),
	(3, '1648448154038', 1, 1, '2022-03-31', 6, 2, 'enen', '2022-03-28 06:15:54', '2022-03-28 06:15:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
