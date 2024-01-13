/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmjxtr8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmjxtr8` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmjxtr8`;

/*Table structure for table `caipinfenlei` */

DROP TABLE IF EXISTS `caipinfenlei`;

CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615179643208 DEFAULT CHARSET=utf8 COMMENT='菜品分类';

/*Data for the table `caipinfenlei` */

insert  into `caipinfenlei`(`id`,`addtime`,`caipinfenlei`) values (21,'2021-03-08 12:31:48','面食类'),(22,'2021-03-08 12:31:48','下午茶'),(23,'2021-03-08 12:31:48','家常菜'),(24,'2021-03-08 12:31:48','龙虾烧烤'),(1615179643207,'2021-03-08 13:00:42','日式料理');

/*Table structure for table `caipinpingjia` */

DROP TABLE IF EXISTS `caipinpingjia`;

CREATE TABLE `caipinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180391816 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipinpingjia` */

insert  into `caipinpingjia`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (61,'2021-03-08 12:31:48','订单编号1','菜品名称1','菜品分类1','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian1.jpg','评价内容1','2021-03-08','用户名1','联系电话1','是','',1),(62,'2021-03-08 12:31:48','订单编号2','菜品名称2','菜品分类2','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian2.jpg','评价内容2','2021-03-08','用户名2','联系电话2','是','',2),(63,'2021-03-08 12:31:48','订单编号3','菜品名称3','菜品分类3','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian3.jpg','评价内容3','2021-03-08','用户名3','联系电话3','是','',3),(64,'2021-03-08 12:31:48','订单编号4','菜品名称4','菜品分类4','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian4.jpg','评价内容4','2021-03-08','用户名4','联系电话4','是','',4),(65,'2021-03-08 12:31:48','订单编号5','菜品名称5','菜品分类5','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian5.jpg','评价内容5','2021-03-08','用户名5','联系电话5','是','',5),(66,'2021-03-08 12:31:48','订单编号6','菜品名称6','菜品分类6','1','http://localhost:8080/ssmjxtr8/upload/caipinpingjia_tianjiatupian6.jpg','评价内容6','2021-03-08','用户名6','联系电话6','是','',6),(1615179929472,'2021-03-08 13:05:29','1615179752126','麻辣小龙虾','龙虾烧烤','5','http://localhost:8080/ssmjxtr8/upload/1615179946732.jpg','配送很快，很不错的小龙虾','2021-03-08','1','12312312345','是','感谢支持',1615179191269),(1615180391815,'2021-03-08 13:13:11','1615180242573','麻辣小龙虾','龙虾烧烤','5','http://localhost:8080/ssmjxtr8/upload/1615180381031.jpg','很不错的小龙虾，鲜香麻辣','2021-03-08','2','12345678945','是','感谢支持',1615180098036);

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `caipinjiage` int(11) NOT NULL COMMENT '菜品价格',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '份量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615179699296 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`cailiao`,`fenliang`,`caipinjieshao`,`clicktime`,`clicknum`) values (31,'2021-03-08 12:31:48','菜品名称1','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/caipinxinxi_tupian1.jpg',1,'材料1','份量1','<p>菜品介绍1</p>','2021-03-08 12:59:01',2),(32,'2021-03-08 12:31:48','菜品名称2','下午茶','http://localhost:8080/ssmjxtr8/upload/1615179556387.jpg',2,'材料2','份量2','<p>菜品介绍2</p>','2021-03-08 13:11:04',4),(33,'2021-03-08 12:31:48','菜品名称3','家常菜','http://localhost:8080/ssmjxtr8/upload/caipinxinxi_tupian3.jpg',3,'材料3','份量3','<p>菜品介绍3</p>','2021-03-08 12:59:20',4),(34,'2021-03-08 12:31:48','菜品名称4','面食类','http://localhost:8080/ssmjxtr8/upload/1615179574156.jpg',4,'材料4','份量4','<p>菜品介绍4</p>','2021-03-08 13:09:34',13),(35,'2021-03-08 12:31:48','菜品名称5','家常菜','http://localhost:8080/ssmjxtr8/upload/1615179585646.jpg',5,'材料5','份量5','<p>菜品介绍5</p>','2021-03-08 12:59:38',6),(1615179699295,'2021-03-08 13:01:39','麻辣小龙虾','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg',88,'小龙虾','约450g','<p>花式麻辣小龙虾是一道色香味俱全的名肴，属于川菜系。肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。</p><p><img src=\"http://localhost:8080/ssmjxtr8/upload/1615179698271.jpg\"></p>','2021-03-08 13:11:02',4);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180333430 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-03-08 12:31:48',1,1,'提问1','回复1',1),(72,'2021-03-08 12:31:48',2,2,'提问2','回复2',2),(73,'2021-03-08 12:31:48',3,3,'提问3','回复3',3),(74,'2021-03-08 12:31:48',4,4,'提问4','回复4',4),(75,'2021-03-08 12:31:48',5,5,'提问5','回复5',5),(76,'2021-03-08 12:31:48',6,6,'提问6','回复6',6),(1615179779899,'2021-03-08 13:02:58',1615179191269,NULL,'请问有糖醋鱼吗',NULL,0),(1615179874876,'2021-03-08 13:04:34',1615179191269,1,NULL,'有的',NULL),(1615180292289,'2021-03-08 13:11:32',1615180098036,NULL,'请问有红烧肉吗',NULL,0),(1615180333429,'2021-03-08 13:12:13',1615180098036,1,NULL,'有的，可直接搜索',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmjxtr8/upload/1615179708395.jpg'),(2,'picture2','http://localhost:8080/ssmjxtr8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmjxtr8/upload/1615179717146.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpeisong` */

DROP TABLE IF EXISTS `dingdanpeisong`;

CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180315076 DEFAULT CHARSET=utf8 COMMENT='订单配送';

/*Data for the table `dingdanpeisong` */

insert  into `dingdanpeisong`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`shuliang`,`zongjine`,`peisongzhuangtai`,`gengxinshijian`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (51,'2021-03-08 12:31:48','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian1.jpg','数量1','总金额1','配送中','2021-03-08 12:31:48','用户名1','联系电话1','是','',1),(52,'2021-03-08 12:31:48','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian2.jpg','数量2','总金额2','配送中','2021-03-08 12:31:48','用户名2','联系电话2','是','',2),(53,'2021-03-08 12:31:48','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian3.jpg','数量3','总金额3','配送中','2021-03-08 12:31:48','用户名3','联系电话3','是','',3),(54,'2021-03-08 12:31:48','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian4.jpg','数量4','总金额4','配送中','2021-03-08 12:31:48','用户名4','联系电话4','是','',4),(55,'2021-03-08 12:31:48','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian5.jpg','数量5','总金额5','配送中','2021-03-08 12:31:48','用户名5','联系电话5','是','',5),(56,'2021-03-08 12:31:48','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/ssmjxtr8/upload/dingdanpeisong_tupian6.jpg','数量6','总金额6','配送中','2021-03-08 12:31:48','用户名6','联系电话6','是','',6),(1615179833495,'2021-03-08 13:03:53','1615179752126','麻辣小龙虾','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg','2','176','已完成','2021-03-08 14:03:52','1','12312312345','是','已收到',1615179191269),(1615180315075,'2021-03-08 13:11:55','1615180242573','麻辣小龙虾','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg','2','176','已完成','2021-03-08 13:11:54','2','12345678945','是','已收到',1615180098036);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjiage` int(11) DEFAULT NULL COMMENT '菜品价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime NOT NULL COMMENT '下单时间',
  `songcandizhi` varchar(200) NOT NULL COMMENT '送餐地址',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180261043 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`shuliang`,`zongjine`,`xiadanshijian`,`songcandizhi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-03-08 12:31:48','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian1.jpg',1,1,'总金额1','2021-03-08 12:31:48','送餐地址1','用户名1','联系电话1','是','','未支付',1),(42,'2021-03-08 12:31:48','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian2.jpg',2,2,'总金额2','2021-03-08 12:31:48','送餐地址2','用户名2','联系电话2','是','','未支付',2),(43,'2021-03-08 12:31:48','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian3.jpg',3,3,'总金额3','2021-03-08 12:31:48','送餐地址3','用户名3','联系电话3','是','','未支付',3),(44,'2021-03-08 12:31:48','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian4.jpg',4,4,'总金额4','2021-03-08 12:31:48','送餐地址4','用户名4','联系电话4','是','','未支付',4),(45,'2021-03-08 12:31:48','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian5.jpg',5,5,'总金额5','2021-03-08 12:31:48','送餐地址5','用户名5','联系电话5','是','','未支付',5),(46,'2021-03-08 12:31:48','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/ssmjxtr8/upload/dingdanxinxi_tupian6.jpg',6,6,'总金额6','2021-03-08 12:31:48','送餐地址6','用户名6','联系电话6','是','','未支付',6),(1615179761957,'2021-03-08 13:02:41','1615179752126','麻辣小龙虾','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg',88,2,'176','2021-03-08 13:00:32','梅州市新县城','1','12312312345','是','ok','已支付',1615179191269),(1615180261042,'2021-03-08 13:11:00','1615180242573','麻辣小龙虾','龙虾烧烤','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg',88,2,'176','2021-03-08 13:10:42','梅州市新县城中大街9号','2','12345678945','是','ok','已支付',1615180098036);

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2021-03-08 12:31:48',1,1,'评论内容1','回复内容1'),(102,'2021-03-08 12:31:48',2,2,'评论内容2','回复内容2'),(103,'2021-03-08 12:31:48',3,3,'评论内容3','回复内容3'),(104,'2021-03-08 12:31:48',4,4,'评论内容4','回复内容4'),(105,'2021-03-08 12:31:48',5,5,'评论内容5','回复内容5'),(106,'2021-03-08 12:31:48',6,6,'评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615179740375 DEFAULT CHARSET=utf8 COMMENT='美食资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-08 12:31:48','标题1','简介1','http://localhost:8080/ssmjxtr8/upload/1615179354744.jpg','<p>内容1</p>'),(92,'2021-03-08 12:31:48','标题2','简介2','http://localhost:8080/ssmjxtr8/upload/1615179368764.jpg','<p>内容2</p>'),(93,'2021-03-08 12:31:48','标题3','简介3','http://localhost:8080/ssmjxtr8/upload/news_picture3.jpg','内容3'),(94,'2021-03-08 12:31:48','标题4','简介4','http://localhost:8080/ssmjxtr8/upload/1615179397343.jpg','<p>内容4</p>'),(95,'2021-03-08 12:31:48','标题5','简介5','http://localhost:8080/ssmjxtr8/upload/1615179379016.jpg','<p>内容5</p>'),(1615179740374,'2021-03-08 13:02:20','新菜品上市','新菜品上市','http://localhost:8080/ssmjxtr8/upload/1615179727580.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/ssmjxtr8/upload/1615179739096.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180265985 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615180226499,'2021-03-08 13:10:25',1615180098036,1615179699295,'caipinxinxi','麻辣小龙虾','http://localhost:8080/ssmjxtr8/upload/1615179656915.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','66kc9z9twal4bf8uowwgz2klu8qnxwlq','2021-03-08 12:42:10','2021-03-08 14:00:30'),(2,11,'用户1','yonghu','用户','pzucy1s7ckggookfki0f1su6qi0mcid9','2021-03-08 12:44:32','2021-03-08 13:44:32'),(3,1615179191269,'1','yonghu','用户','5z5qt9nknftegbbfznfnh8j2cnhg5qpw','2021-03-08 12:53:17','2021-03-08 13:53:17'),(4,1615180098036,'2','yonghu','用户','4arxokkssrx4egk28gni0u87bynoj8ho','2021-03-08 13:09:00','2021-03-08 14:09:01');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-08 12:31:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615180098037 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-03-08 12:31:48','用户1','123456','姓名1','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-08 12:31:48','用户2','123456','姓名2','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-08 12:31:48','用户3','123456','姓名3','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-08 12:31:48','用户4','123456','姓名4','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-08 12:31:48','用户5','123456','姓名5','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-08 12:31:48','用户6','123456','姓名6','男','http://localhost:8080/ssmjxtr8/upload/yonghu_touxiang6.jpg','13823888886'),(1615179191269,'2021-03-08 12:53:11','1','1','陈一','女','http://localhost:8080/ssmjxtr8/upload/1615179238874.jpeg','12312312345'),(1615180098036,'2021-03-08 13:08:18','2','2','陈一一','女','http://localhost:8080/ssmjxtr8/upload/1615180148842.jpg','12345678945');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
