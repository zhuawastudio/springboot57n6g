/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot57n6g
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot57n6g` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot57n6g`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumen` (`bumen`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`addtime`,`bumen`) values (21,'2021-05-07 10:42:42','部门1');
insert  into `bumen`(`id`,`addtime`,`bumen`) values (22,'2021-05-07 10:42:42','部门2');
insert  into `bumen`(`id`,`addtime`,`bumen`) values (23,'2021-05-07 10:42:42','部门3');
insert  into `bumen`(`id`,`addtime`,`bumen`) values (24,'2021-05-07 10:42:42','部门4');
insert  into `bumen`(`id`,`addtime`,`bumen`) values (25,'2021-05-07 10:42:42','部门5');
insert  into `bumen`(`id`,`addtime`,`bumen`) values (26,'2021-05-07 10:42:42','部门6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot57n6g/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot57n6g/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot57n6g/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gangwei` */

DROP TABLE IF EXISTS `gangwei`;

CREATE TABLE `gangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangwei` (`gangwei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='岗位';

/*Data for the table `gangwei` */

insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (31,'2021-05-07 10:42:42','岗位1');
insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (32,'2021-05-07 10:42:42','岗位2');
insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (33,'2021-05-07 10:42:42','岗位3');
insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (34,'2021-05-07 10:42:42','岗位4');
insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (35,'2021-05-07 10:42:42','岗位5');
insert  into `gangwei`(`id`,`addtime`,`gangwei`) values (36,'2021-05-07 10:42:42','岗位6');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-05-07 10:42:42','公告标题1','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-05-07');
insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (12,'2021-05-07 10:42:42','公告标题2','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-05-07');
insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (13,'2021-05-07 10:42:42','公告标题3','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-05-07');
insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (14,'2021-05-07 10:42:42','公告标题4','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-05-07');
insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (15,'2021-05-07 10:42:42','公告标题5','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-05-07');
insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (16,'2021-05-07 10:42:42','公告标题6','http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-05-07');

/*Table structure for table `jixiaokaohe` */

DROP TABLE IF EXISTS `jixiaokaohe`;

CREATE TABLE `jixiaokaohe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `jixiaoyuefen` varchar(200) DEFAULT NULL COMMENT '绩效月份',
  `yuangongkaoqin` int(11) DEFAULT NULL COMMENT '员工考勤',
  `gongzuotaidu` int(11) DEFAULT NULL COMMENT '工作态度',
  `yewujineng` int(11) DEFAULT NULL COMMENT '业务技能',
  `gongzuojixiao` int(11) DEFAULT NULL COMMENT '工作绩效',
  `zongdefen` varchar(200) DEFAULT NULL COMMENT '总得分',
  `jixiaodengji` varchar(200) DEFAULT NULL COMMENT '绩效等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='绩效考核';

/*Data for the table `jixiaokaohe` */

insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (61,'2021-05-07 10:42:42','员工工号1','员工姓名1','部门1','岗位1','绩效月份1',10,10,10,10,'总得分1','优秀');
insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (62,'2021-05-07 10:42:42','员工工号2','员工姓名2','部门2','岗位2','绩效月份2',10,10,10,10,'总得分2','优秀');
insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (63,'2021-05-07 10:42:42','员工工号3','员工姓名3','部门3','岗位3','绩效月份3',10,10,10,10,'总得分3','优秀');
insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (64,'2021-05-07 10:42:42','员工工号4','员工姓名4','部门4','岗位4','绩效月份4',10,10,10,10,'总得分4','优秀');
insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (65,'2021-05-07 10:42:42','员工工号5','员工姓名5','部门5','岗位5','绩效月份5',10,10,10,10,'总得分5','优秀');
insert  into `jixiaokaohe`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`jixiaoyuefen`,`yuangongkaoqin`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`zongdefen`,`jixiaodengji`) values (66,'2021-05-07 10:42:42','员工工号6','员工姓名6','部门6','岗位6','绩效月份6',10,10,10,10,'总得分6','优秀');

/*Table structure for table `jixiaozhibiao` */

DROP TABLE IF EXISTS `jixiaozhibiao`;

CREATE TABLE `jixiaozhibiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `jixiaoxiangmu` varchar(200) DEFAULT NULL COMMENT '绩效项目',
  `jixiaozhibiao1` varchar(200) DEFAULT NULL COMMENT '绩效指标1',
  `fenzhi1` int(11) DEFAULT NULL COMMENT '分值1',
  `jixiaozhibiao2` varchar(200) DEFAULT NULL COMMENT '绩效指标2',
  `fenzhi2` int(11) DEFAULT NULL COMMENT '分值2',
  `jixiaozhibiao3` varchar(200) DEFAULT NULL COMMENT '绩效指标3',
  `fenzhi3` int(11) DEFAULT NULL COMMENT '分值3',
  `zongpingfen` varchar(200) DEFAULT NULL COMMENT '总评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='绩效指标';

/*Data for the table `jixiaozhibiao` */

insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (51,'2021-05-07 10:42:42','部门1','岗位1','绩效项目1','绩效指标11',1,'绩效指标21',1,'绩效指标31',1,'总评分1');
insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (52,'2021-05-07 10:42:42','部门2','岗位2','绩效项目2','绩效指标12',2,'绩效指标22',2,'绩效指标32',2,'总评分2');
insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (53,'2021-05-07 10:42:42','部门3','岗位3','绩效项目3','绩效指标13',3,'绩效指标23',3,'绩效指标33',3,'总评分3');
insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (54,'2021-05-07 10:42:42','部门4','岗位4','绩效项目4','绩效指标14',4,'绩效指标24',4,'绩效指标34',4,'总评分4');
insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (55,'2021-05-07 10:42:42','部门5','岗位5','绩效项目5','绩效指标15',5,'绩效指标25',5,'绩效指标35',5,'总评分5');
insert  into `jixiaozhibiao`(`id`,`addtime`,`bumen`,`gangwei`,`jixiaoxiangmu`,`jixiaozhibiao1`,`fenzhi1`,`jixiaozhibiao2`,`fenzhi2`,`jixiaozhibiao3`,`fenzhi3`,`zongpingfen`) values (56,'2021-05-07 10:42:42','部门6','岗位6','绩效项目6','绩效指标16',6,'绩效指标26',6,'绩效指标36',6,'总评分6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-07 10:42:42');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuangongyouxiang` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (41,'2021-05-07 10:42:42','员工1','123456','员工姓名1','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian1.jpg','部门1','岗位1','13823888881','773890001@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (42,'2021-05-07 10:42:42','员工2','123456','员工姓名2','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian2.jpg','部门2','岗位2','13823888882','773890002@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (43,'2021-05-07 10:42:42','员工3','123456','员工姓名3','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian3.jpg','部门3','岗位3','13823888883','773890003@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (44,'2021-05-07 10:42:42','员工4','123456','员工姓名4','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian4.jpg','部门4','岗位4','13823888884','773890004@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (45,'2021-05-07 10:42:42','员工5','123456','员工姓名5','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian5.jpg','部门5','岗位5','13823888885','773890005@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`bumen`,`gangwei`,`lianxidianhua`,`yuangongyouxiang`) values (46,'2021-05-07 10:42:42','员工6','123456','员工姓名6','男','http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian6.jpg','部门6','岗位6','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
