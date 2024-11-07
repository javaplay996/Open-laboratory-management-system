/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kaifangshiyanshi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kaifangshiyanshi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kaifangshiyanshi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-22 15:22:01'),(2,'sex_types','性别',2,'女',NULL,'2021-04-22 15:22:01'),(3,'yuye_types','预约状态',1,'拒绝',NULL,'2021-04-22 15:22:01'),(4,'yuye_types','预约状态',2,'同意',NULL,'2021-04-22 15:22:01'),(5,'shiyan_types','实验进度',1,'未开始',NULL,'2021-04-22 15:22:01'),(6,'shiyan_types','实验进度',2,'进行中',NULL,'2021-04-22 15:22:01'),(7,'shiyan_types','实验进度',3,'已结束',NULL,'2021-04-22 15:22:01'),(8,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-22 15:22:01'),(9,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-22 15:22:01');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_bianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_bumen` varchar(200) DEFAULT NULL COMMENT '教师部门',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_bianhao`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_number`,`jiaoshi_phone`,`jiaoshi_photo`,`jiaoshi_bumen`,`create_time`) values (1,'教师编号1','333','123456','教师1',2,'410882200011121111','17789955641','http://localhost:8080/kaifangshiyanshi/upload/1619417280461.jpg','教师部门1','2021-04-22 15:34:36'),(2,'教师编号2','444','123456','教师2',2,'410882200011121112','17789955642','http://localhost:8080/kaifangshiyanshi/upload/1619417242850.jpg','教师部门2','2021-04-22 15:34:53');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/kaifangshiyanshi/upload/1619417477287.jpg','2021-04-26 14:11:19','<p>公告详情1</p>','2021-04-23 10:44:24'),(2,'公告名称2',2,'http://localhost:8080/kaifangshiyanshi/upload/1619417468393.jpg','2021-04-26 14:11:10','<p>公告详情2</p>','2021-04-23 10:44:31');

/*Table structure for table `shiyan` */

DROP TABLE IF EXISTS `shiyan`;

CREATE TABLE `shiyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '实验学生',
  `shiyanxiangmu_types` int(11) DEFAULT NULL COMMENT '实验项目',
  `shiyan_types` int(11) DEFAULT NULL COMMENT '实验进度',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '实验时间',
  `shiyan_content` text COMMENT '实验结果',
  `shiyanxiangmu_number` int(11) DEFAULT NULL COMMENT '教师评分',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='学生实验';

/*Data for the table `shiyan` */

insert  into `shiyan`(`id`,`yonghu_types`,`shiyanxiangmu_types`,`shiyan_types`,`insert_time`,`shiyan_content`,`shiyanxiangmu_number`,`create_time`) values (2,1,1,3,'2021-04-23 09:59:10','123123121111\r\n',100,'2021-04-23 09:59:10'),(6,1,3,2,'2021-04-26 11:55:50',NULL,NULL,'2021-04-26 11:55:50'),(7,2,3,3,'2021-04-23 10:53:39','实验结果实验结果实验结果实验结果111\r\n',10111,'2021-04-23 10:53:39'),(8,2,1,3,'2021-04-23 10:53:56',NULL,NULL,'2021-04-23 10:53:56');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_name` varchar(200) DEFAULT NULL COMMENT '实验室名称 Search',
  `shiyanshi_dizhi` varchar(200) DEFAULT NULL COMMENT '实验室地址 ',
  `shiyanshi_photo` varchar(200) DEFAULT NULL COMMENT '实验室图片 ',
  `shiyanshi_content` text COMMENT '实验室描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`shiyanshi_name`,`shiyanshi_dizhi`,`shiyanshi_photo`,`shiyanshi_content`,`create_time`) values (22,'实验室名称1','实验室地址1','http://localhost:8080/kaifangshiyanshi/upload/1619417447960.jpg','<p>实验室描述1</p>','2021-04-22 15:41:11'),(23,'实验室名称2','实验室地址2','http://localhost:8080/kaifangshiyanshi/upload/1619417440436.jpeg','<p>实验室描述2</p>','2021-04-22 15:41:23'),(24,'实验室名称3','实验室地址3','http://localhost:8080/kaifangshiyanshi/upload/1619417425584.jpeg','<p>实验室描述3</p>','2021-04-23 10:18:48');

/*Table structure for table `shiyanxiangmu` */

DROP TABLE IF EXISTS `shiyanxiangmu`;

CREATE TABLE `shiyanxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '负责教师',
  `yuye` int(11) DEFAULT NULL COMMENT '使用实验室',
  `shiyanxiangmu_name` varchar(11) DEFAULT NULL COMMENT '项目名称',
  `shiyanxiangmu_content` text COMMENT '项目内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='实验项目';

/*Data for the table `shiyanxiangmu` */

insert  into `shiyanxiangmu`(`id`,`jiaoshi_types`,`yuye`,`shiyanxiangmu_name`,`shiyanxiangmu_content`,`create_time`) values (1,1,24,'项目名称1','项目内容1\r\n','2021-04-22 19:45:42'),(2,1,25,NULL,NULL,'2021-04-23 10:11:19'),(3,2,26,'xxx实验项目','很多很多复炸的东西    ·······································\r\n','2021-04-23 10:51:26'),(4,2,26,NULL,NULL,'2021-04-26 10:42:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','q3xfiil3hgd3kyr9rdkebzu5bdzm85av','2021-04-22 15:29:39','2021-04-26 15:02:12'),(2,1,'333','jiaoshi','用户','qdqbcboc31zpuax9iwu5o451is93pdaq','2021-04-22 16:15:05','2021-04-26 14:53:50'),(3,1,'333','jiaoshi','教师','ym0zx4nefwbh4olaqr3dqs7jguh4o6cu','2021-04-23 09:51:43','2021-04-23 11:44:39'),(4,2,'444','jiaoshi','教师','4lygak8z91dbeoiw9rz96umbc8ciz50s','2021-04-23 10:45:04','2021-04-23 11:45:04'),(5,2,'222','yonghu','用户','c95gd6xcjytbx8terqhqd2jfakn2ed7x','2021-04-23 10:53:28','2021-04-23 11:55:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882200011064871','17789944561','http://localhost:8080/kaifangshiyanshi/upload/1619417304335.jpg','2021-04-22 15:35:54'),(2,'222','123456','用户2',2,'410882200011064872','17789944562','http://localhost:8080/kaifangshiyanshi/upload/1619417293270.jpg','2021-04-22 15:36:07');

/*Table structure for table `yuye` */

DROP TABLE IF EXISTS `yuye`;

CREATE TABLE `yuye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_types` int(200) DEFAULT NULL COMMENT '实验室',
  `jiaoshi_types` int(200) DEFAULT NULL COMMENT '教师 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yuye_types` int(200) DEFAULT NULL COMMENT '预约状态 Search',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `yuye` */

insert  into `yuye`(`id`,`shiyanshi_types`,`jiaoshi_types`,`insert_time`,`yuye_types`,`create_time`) values (23,23,1,'2021-04-22 17:42:41',0,'2021-04-22 17:42:41'),(24,22,1,'2021-04-22 17:42:44',2,'2021-04-22 17:42:44'),(25,23,1,'2021-04-23 10:08:56',2,'2021-04-23 10:08:56'),(26,24,2,'2021-04-23 10:50:18',2,'2021-04-23 10:50:18'),(27,23,2,'2021-04-23 10:50:35',1,'2021-04-23 10:50:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
