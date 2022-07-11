/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.21 : Database - liminyougo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liminyougo` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `liminyougo`;

/*Table structure for table `details_image` */

DROP TABLE IF EXISTS `details_image`;

CREATE TABLE `details_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_src` varchar(100) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `details_image` */

insert  into `details_image`(`id`,`image_src`,`pid`,`createDate`) values 
(1,'http://localhost:8087/images/product-details/details_image/2efea04101e5f436.jpg',2,'2022-05-22 20:33:13'),
(2,'http://localhost:8087/images/product-details/details_image/e88388cbcc49e995.jpg',2,'2022-05-22 20:33:13'),
(3,'http://localhost:8087/images/product-details/details_image/30b70c240a0618c2.jpg',2,'2022-05-22 20:33:13'),
(4,'http://localhost:8087/images/product-details/details_image/b600d6ba8bcecb78.jpg',2,'2022-05-22 20:33:13'),
(5,'http://localhost:8087/images/product-details/details_image/f326fadb6f90a137.jpg',2,'2022-05-22 20:33:13'),
(6,'http://localhost:8087/images/product-details/details_image/7d90cc21c2e5b574.jpg',2,'2022-05-22 20:33:13'),
(7,'http://localhost:8087/images/product-details/details_image/fe9cf0d203dd7f51.jpg',2,'2022-05-22 20:33:13'),
(8,'http://localhost:8087/images/product-details/details_image/94fa0cbc7824a7a2.jpg',2,'2022-05-22 20:33:13'),
(9,'http://localhost:8087/images/product-details/details_image/5f8f23f557296875.jpg',2,'2022-05-22 20:33:13'),
(10,'http://localhost:8087/images/product-details/details_image/5c39134910b539b1.jpg',2,'2022-05-22 20:33:13'),
(11,'http://localhost:8087/images/product-details/details_image/bf1dd2f774e52499.jpg',2,'2022-05-22 20:33:13'),
(12,'http://localhost:8087/images/product-details/details_image/4190e85b7b1ef5b7.jpg',2,'2022-05-22 20:33:13'),
(13,'http://localhost:8087/images/product-details/details_image/91dfa9c0046495c1.jpg',2,'2022-05-22 20:33:13'),
(14,'http://localhost:8087/images/product-details/details_image/11ee9c46e792c760.jpg',2,'2022-05-22 20:33:13'),
(15,'http://localhost:8087/images/product-details/details_image/b35d78e0eab2212f.jpg',2,'2022-05-22 20:33:13'),
(16,'http://localhost:8087/images/product-details/details_image/68056e3a43c008fa.jpg',2,'2022-05-22 20:33:13'),
(17,'http://localhost:8087/images/product-details/details_image/2a846e3c2df21359.jpg',2,'2022-05-22 20:33:13'),
(18,'http://localhost:8087/images/product-details/details_image/b6ea1c1a8375bd21.jpg',2,'2022-05-22 20:33:13'),
(19,'http://localhost:8087/images/product-details/details_image/f493d9d24d75430a.jpg',2,'2022-05-22 20:33:13'),
(20,'http://localhost:8087/images/product-details/details_image/1.jpg',32,'2022-05-25 08:42:53'),
(21,'http://localhost:8087/images/product-details/details_image/2.jpg',32,'2022-05-25 08:42:53'),
(22,'http://localhost:8087/images/product-details/details_image/3jpg.jpg',32,'2022-05-25 08:42:53'),
(23,'http://localhost:8087/images/product-details/details_image/4.jpg',32,'2022-05-25 08:42:53'),
(24,'http://localhost:8087/images/product-details/details_image/5.jpg',32,'2022-05-25 08:42:53'),
(25,'http://localhost:8087/images/product-details/details_image/6.gif',32,'2022-05-25 08:42:53'),
(26,'http://localhost:8087/images/product-details/details_image/7.jpg',32,'2022-05-25 08:42:53'),
(27,'http://localhost:8087/images/product-details/details_image/8.jpg',32,'2022-05-25 08:42:53'),
(28,'http://localhost:8087/images/product-details/details_image/9.jpg',32,'2022-05-25 08:42:53'),
(30,'http://localhost:8087/images/product-details/details_image/11.jpg',32,'2022-05-25 08:42:53'),
(31,'http://localhost:8087/images/product-details/details_image/111.jpg',32,'2022-05-25 08:42:53');

/*Table structure for table `details_swiper` */

DROP TABLE IF EXISTS `details_swiper`;

CREATE TABLE `details_swiper` (
  `id` int NOT NULL AUTO_INCREMENT,
  `details_src` varchar(100) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `details_swiper` */

insert  into `details_swiper`(`id`,`details_src`,`pid`,`createDate`) values 
(1,'http://localhost:8087/images/product-details/details_swiper/f1290ebe4f6deca4.jpg',2,'2022-05-22 20:10:40'),
(2,'http://localhost:8087/images/product-details/details_swiper/f3e94f71b4f2119c.jpg',2,'2022-05-22 20:10:40'),
(3,'http://localhost:8087/images/product-details/details_swiper/2e2512b4cacd1cf5.jpg',2,'2022-05-22 20:10:40'),
(4,'http://localhost:8087/images/product-details/details_swiper/02af9d43574e125d.jpg',2,'2022-05-22 20:10:40'),
(5,'http://localhost:8087/images/product-details/details_swiper/5fac3cb5d0f1d8f6.jpg',2,'2022-05-22 20:10:40'),
(6,'http://localhost:8087/images/product-details/details_swiper/8d01432393b44191.jpg',32,'2022-05-22 20:10:40'),
(7,'http://localhost:8087/images/product-details/details_swiper/dd2b9945fafa30f2.jpg',32,'2022-05-22 20:10:40'),
(8,'\r\n\r\nhttp://localhost:8087/images/product-details/details_swiper/68c0b42155f0eb43.jpg',32,'2022-05-22 20:10:40'),
(9,'http://localhost:8087/images/product-details/details_swiper/735933d205596854.jpg',32,'2022-05-22 20:10:40'),
(10,'http://localhost:8087/images/product-details/details_swiper/dbaff47fd2253e35.jpg',32,'2022-05-22 20:10:40');

/*Table structure for table `floor_title` */

DROP TABLE IF EXISTS `floor_title`;

CREATE TABLE `floor_title` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image_src` varchar(100) DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `floor_title` */

insert  into `floor_title`(`id`,`name`,`image_src`,`createDate`) values 
(1,'时尚女装',NULL,NULL),
(2,'户外运动',NULL,NULL),
(3,'箱包配饰',NULL,NULL);

/*Table structure for table `nav` */

DROP TABLE IF EXISTS `nav`;

CREATE TABLE `nav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `navSrc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `navUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createDate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `nav` */

insert  into `nav`(`id`,`title`,`navSrc`,`navUrl`,`createDate`) values 
(1,'丽民超市','http://localhost:8087/images/nav/supermarket.png','/pages/category/category','2022-05-21 00:58:59'),
(2,'数码电器','http://localhost:8087/images/nav/ccf74d805a059a44.png','22222','2022-05-21 00:58:59'),
(3,'丽民服饰','http://localhost:8087/images/nav/758babcb4f911bf4.png','333333','2022-05-21 00:58:59'),
(4,'丽民生鲜','http://localhost:8087/images/nav/a0d5a68bf1461e6d.png','444444','2022-05-21 00:59:26'),
(5,'丽民到家','http://localhost:8087/images/nav/37c65625d94cae75.png','55555','2022-05-21 00:59:26'),
(6,'充值缴费','http://localhost:8087/images/nav/d86d463521140bb6.png','66666','2022-05-21 00:59:26'),
(7,'物流查询','http://localhost:8087/images/nav/d15aa650a0ebe596.png','777777','2022-05-21 00:59:26'),
(8,'领劵','http://localhost:8087/images/nav/c5acd2f8454c40e1.png','777777','2022-05-21 00:59:26'),
(9,'领金贴','http://localhost:8087/images/nav/38077313cb9eac4b.png','777777','2022-05-21 00:59:26'),
(10,'PLUS会员','http://localhost:8087/images/nav/a7d6b66354efb141.png',NULL,'2022-05-21 00:59:26');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_src` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `order_type` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`title`,`order_src`,`price`,`order_num`,`order_type`,`createDate`) values 
(1,'荣耀Play5T Pro 6400万双摄 6.6英寸全视屏 22.5W超级快充 4000mAh大电池 全网通版8GB+128GB 钛空银','http://localhost:8087/images/product/cell-phone/82b4fb0cf37fd718.jpg',1099,1,1,'2022-05-25 22:30:53'),
(2,'【官方旗舰店】克里特(kreta)M7高端轻奢智能商务手机适用mate40保时捷8848支持5g卡 小牛皮棕色','http://localhost:8087/images/product/cell-phone/43b543298de63394.jpg',3599,1,1,'2022-05-25 22:30:53'),
(3,'Redmi Note 11 5G 天玑810 33W Pro快充 5000mAh大电池  6GB +128GB 神秘黑境 智能手机 小米 红米','http://localhost:8087/images/product/cell-phone/e7e9251c410e526e.jpg',1199,1,1,'2022-05-25 22:30:53'),
(4,'vivo iQOO Neo6 12GB+256GB 蓝调 全新一代骁龙8 独立显示芯片Pro 双电芯80W闪充 双模5G全网通手机iqooneo6','http://localhost:8087/images/product/cell-phone/7a5d2c28850579e3.jpg',3299,1,1,'2022-05-25 22:30:53'),
(5,'vivo iQOO Neo5 12GB+256GB 夜影黑 骁龙870 独立显示芯片 66W闪充 专业电竞游戏手机 双模5G全网通iqooneo5','http://localhost:8087/images/product/cell-phone/d66023c96d9e46b7.jpg',2699,1,1,'2022-05-25 22:30:53');

/*Table structure for table `product_list` */

DROP TABLE IF EXISTS `product_list`;

CREATE TABLE `product_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image_src` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `fid` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  CONSTRAINT `fid` FOREIGN KEY (`fid`) REFERENCES `floor_title` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `product_list` */

insert  into `product_list`(`id`,`name`,`image_src`,`image_url`,`fid`,`createDate`) values 
(3,'优质服饰','http://localhost:8087/images/floor/quality-clothing.png','111111',1,'2022-05-21 01:53:32'),
(4,'时尚时装','http://localhost:8087/images/floor/fashion.png','shishangshizhuang',1,'2022-05-21 01:57:48'),
(5,'爆款清仓','http://localhost:8087/images/floor/clearance.png','333333',1,'2022-05-21 01:58:28'),
(6,'倒春寒','http://localhost:8087/images/floor/warm-spring.png','444444',1,'2022-05-21 01:59:30'),
(7,'砰砰心动','http://localhost:8087/images/floor/follow-fashion-trends.png','555555',1,'2022-05-21 02:00:27'),
(8,'勇往直前','http://localhost:8087/images/floor/enjoy-outdoor-sports.png','111111',2,'2022-05-21 02:01:18'),
(9,'户外登山包','http://localhost:8087/images/floor/outdoor-mountaineering-bag.png','111111',2,'2022-05-21 02:02:16'),
(11,'户外运动鞋','http://localhost:8087/images/floor/outdoor-sneakers.png','111111',2,'2022-05-21 02:04:26'),
(12,'冲锋衣系列','http://localhost:8087/images/floor/jacket-series.png','111111',2,'2022-05-21 02:05:27'),
(13,'清新气质','http://localhost:8087/images/floor/fresh-air.png','111111',3,'2022-05-21 02:06:35'),
(14,'复古胸针','http://localhost:8087/images/floor/vintage-brooch.png','111111',3,'2022-05-21 02:07:39'),
(15,'水晶项链','http://localhost:8087/images/floor/crystal-necklace.png','111111',3,'2022-05-21 02:08:48'),
(16,'韩版手链','http://localhost:8087/images/floor/korean-style-bracele.png','111111',3,'2022-05-21 02:09:42'),
(17,'情侣表','http://localhost:8087/images/floor/couple-watch.png','111111',3,'2022-05-21 02:10:27'),
(19,'超强手套','http://localhost:8087/images/floor/gloves.png','111111',2,'2022-05-22 11:09:32');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `product_src` varchar(100) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `sort_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`title`,`product_src`,`price`,`cid`,`createDate`) values 
(1,'荣耀Play5T Pro 6400万双摄 6.6英寸全视屏 22.5W超级快充 4000mAh大电池 全网通版8GB+128GB 钛空银','http://localhost:8087/images/product/cell-phone/82b4fb0cf37fd718.jpg','1099',1,'2022-05-23 13:30:53'),
(2,'【官方旗舰店】克里特(kreta)M7高端轻奢智能商务手机适用mate40保时捷8848支持5g卡 小牛皮棕色','http://localhost:8087/images/product/cell-phone/43b543298de63394.jpg','3599',1,'2022-05-23 13:30:53'),
(3,'Redmi Note 11 5G 天玑810 33W Pro快充 5000mAh大电池  6GB +128GB 神秘黑境 智能手机 小米 红米','http://localhost:8087/images/product/cell-phone/e7e9251c410e526e.jpg','1199',1,'2022-05-23 13:30:53'),
(4,'vivo iQOO Neo6 12GB+256GB 蓝调 全新一代骁龙8 独立显示芯片Pro 双电芯80W闪充 双模5G全网通手机iqooneo6','http://localhost:8087/images/product/cell-phone/7a5d2c28850579e3.jpg','3299',1,'2022-05-23 13:30:53'),
(5,'vivo iQOO Neo5 12GB+256GB 夜影黑 骁龙870 独立显示芯片 66W闪充 专业电竞游戏手机 双模5G全网通iqooneo5','http://localhost:8087/images/product/cell-phone/d66023c96d9e46b7.jpg','2699',1,'2022-05-23 13:30:53'),
(6,'Redmi Note 11 Pro 5G 三星AMOLED高刷屏 1亿像素 67W快充 VC液冷散热  6GB+128GB 迷雾森林 手机 小米 红米','http://localhost:8087/images/product/cell-phone/78e5dd0126b47d93.jpg','1499',1,'2022-05-23 13:30:53'),
(7,'Redmi K40S 骁龙870 三星E4 AMOLED 120Hz直屏 OIS光学防抖 67W快充 亮黑 8GB+128GB 5G智能手机 小米红米','http://localhost:8087/images/product/cell-phone/7b1384db0e2b4c57.jpg','4988',1,'2022-05-23 13:30:53'),
(8,'OPPO K7x 6+128GB 云之彼端 4800万四摄 5000mAh长续航 90Hz电竞屏  30W闪充 智能 5G手机','http://localhost:8087/images/product/cell-phone/f5184ff97d707746.jpg','1999',1,'2022-05-23 13:30:53'),
(9,'【1.2倍价保618】一加 9RT 5G 120Hz 高刷好屏12GB+256GB 青空结界 高通骁龙888 65T快充 原神拍照游戏手机','http://localhost:8087/images/product/cell-phone/49c1bc4da5347c22.jpg','1099',1,'2022-05-23 13:30:53'),
(10,'OPPO K9 Pro 8+128GB 冰河序曲 天玑1200 120Hz OLED电竞屏 60W超级闪充 6400万三摄 拍照 5G手机','http://localhost:8087/images/product/cell-phone/0ba1f19438fbc613.jpg','2899',1,'2022-05-23 13:30:53'),
(11,'荣耀Magic4 Pro  全新一代骁龙8 四曲屏设计 LTPO屏幕 潜望式长焦摄像头 全网通版12GB+256GB 亮黑','http://localhost:8087/images/product/cell-phone/d0c22e5f9ce220d9.jpg','1899',1,'2022-05-23 13:30:53'),
(12,'【1.2倍价保618】一加 Ace 天玑8100-MAX 150W闪充 120Hz电竞直屏 游戏独显芯片 12GB+256GB 开黑 5G游戏手机','http://localhost:8087/images/product/cell-phone/6f483772f1d38eb0.jpg','5899',1,'2022-05-23 13:30:53'),
(13,'vivo iQOO 9 Pro 12GB+256GB 传奇版 2KE5超视网膜屏 全新一代骁龙8 超声波指纹 双模5G全网通手机iqoo9pro','http://localhost:8087/images/product/cell-phone/75e7e30ed55f53f7.jpg','2999',1,'2022-05-23 13:30:53'),
(14,'小米（MI）  11','http://localhost:8087/images/product/cell-phone/3f900fb9d221c917.jpg','5199',1,'2022-05-23 13:30:53'),
(15,'魅族（meizu） 17','http://localhost:8087/images/product/cell-phone/302326ac2e323570.jpg','2999',1,'2022-05-23 13:30:53'),
(16,'摩托罗拉 edge s pro 旗舰骁龙870 1亿像素 50X潜望式变焦 10亿色144Hz臻彩屏 轻薄5G手机 12GB+256GB 静夜思','http://localhost:8087/images/product/cell-phone/6d45614ef21c7194.jpg','1799',1,'2022-05-23 13:30:53'),
(17,'小米（MI） 小米12','http://localhost:8087/images/product/cell-phone/a30305c65dbcede8.jpg','1699',1,'2022-05-23 13:30:53'),
(18,'Redmi K50 电竞版 全新骁龙8 双VC液冷散热 OLED柔性直屏 12GB+256GB 暗影 游戏电竞智能5G手机 小米 红米','http://localhost:8087/images/product/cell-phone/57c45da68f6c6f21.jpg','3999',1,'2022-05-23 13:30:53'),
(19,'vivo iQOO Neo6 12GB+256GB 蓝调 全新一代骁龙8 独立显示芯片Pro 双电芯80W闪充 双模5G全网通手机iqooneo6','http://localhost:8087/images/product/cell-phone/2a661a0c024c35da.jpg','3599',1,'2022-05-23 13:30:53'),
(20,'【1.2倍价保618】一加 10 Pro 全新骁龙8 120Hz柔性屏 哈苏影像2.0 80W超级闪充  12GB+256GB破界黑 5G手机','http://localhost:8087/images/product/cell-phone/7a5d2c28850579e3.jpg','3299',1,'2022-05-23 13:30:53'),
(21,'OPPO Find X5 Pro 12+256GB 白瓷 全新骁龙8 自研影像芯片 哈苏影像 5000万双主摄 120Hz 80W超级闪充 5G手机','http://localhost:8087/images/product/cell-phone/eb4797e17122bfce.jpg','5299',1,'2022-05-23 13:30:53'),
(22,'一加 OnePlus 9 5G 120Hz 柔性屏12GB+256GB 黑曜 骁龙888 65W快充 哈苏专业模式 超广角拍照游戏手机','http://localhost:8087/images/product/cell-phone/906ca881b96a7c0a.jpg','6299',1,'2022-05-23 13:30:53'),
(23,'小米11 Ultra 至尊 5G 骁龙888 2K AMOLED四曲面柔性屏 陶瓷工艺 8GB+256GB 黑色 游戏手机','http://localhost:8087/images/product/cell-phone/59e65df32e34a802.jpg','2999',1,'2022-05-23 13:30:53'),
(24,'vivo iQOO Neo5S 骁龙888 独显芯片Pro 双电芯66W闪充 专业电竞游戏手机 双模5G全网通 8GB+256GB 日落峡谷','http://localhost:8087/images/product/cell-phone/ca76a9542807babf.jpg','5499',1,'2022-05-23 13:30:53'),
(25,'小米（MI） 小米12 Pro','http://localhost:8087/images/product/cell-phone/2b757d39bd9a462c.jpg','2799',1,'2022-05-23 13:30:53'),
(26,'摩托罗拉moto edge S30冠军版 骁龙888+ 1亿像素 144Hz电竞屏 5000mAh大电池 5G手机 12GB+512GB 魅影黑','http://localhost:8087/images/product/cell-phone/3e9a5289300a6410.jpg','5399',1,'2022-05-23 13:30:53'),
(27,'OPPO K10 Pro 钛黑 12+256GB 高通骁龙888 80W超级闪充 索尼IMX766旗舰传感器 OLED屏幕 5G手机','http://localhost:8087/images/product/cell-phone/fd9c1b9595cc9f02.jpg','2499',1,'2022-05-23 13:30:53'),
(28,'小米（MI） 小米12X','http://localhost:8087/images/product/cell-phone/3c7a8b748177ad17.jpg','3199',1,'2022-05-23 13:30:53'),
(29,'vivo S12 12GB+256GB 暖金 一亿像素 4400万超清前置 KPL比赛用机测试认证 快充 智能 长续航 游戏 5G手机','http://localhost:8087/images/product/cell-phone/9a5baad0b3f4dd39.jpg','2999',1,'2022-05-23 13:30:53'),
(30,'三星 SAMSUNG Galaxy S22 Ultra 超视觉夜拍系统  超耐用精工设计 大屏S Pen书写 12GB+256GB 绯影红 5G手机','http://localhost:8087/images/product/cell-phone/86c6cf72de667cb9.jpg','9699',1,'2022-05-23 13:30:53'),
(31,'云妆蝶梦 2022夏季新款短袖t恤女纯棉亚麻简约显瘦减龄夏天打底衫半袖上衣女装 红色条纹 L（建议105-119斤）','http://localhost:8087/images/product/cell-phone/64b48d5ddcc73f15.jpg','77',81,'2022-05-25 09:42:53'),
(32,'京东京造 3A抗菌抗发黄T恤女40S新疆棉t恤女夏短袖百搭T白色 M','http://localhost:8087/images/product/cell-phone/8d01432393b44197.jpg','47',81,'2022-05-25 09:42:53'),
(33,'夏薇奇T恤女夏季2022新款大码女装短袖t恤棉韩版宽松中长款胖mm显瘦上衣 粉红豹-白色 请按体重拍正确的码数','http://localhost:8087/images/product/cell-phone/992887797b9253f2.jpg','69',81,'2022-05-25 09:42:53'),
(34,'眉梢芙语 2件装网红短袖t恤女2022新款印花短袖夏季韩版上衣体恤衫T恤女 白(握爪猫标右侧)+浅蓝(抱瓶兔) XXS 50斤以下','http://localhost:8087/images/product/cell-phone/b23b68b60e384b51.jpg','69',81,'2022-05-25 09:42:53'),
(35,'韩丝梵 短袖T恤女2022夏季新款韩版ins宽松原宿bf风百搭半袖女装休闲套装 5036黑色上衣 XL【建议110-130斤】','http://localhost:8087/images/product/cell-phone/e1886e9a8ba3dd5b.jpg','69',81,'2022-05-25 09:42:53'),
(36,'慕姿莎 t恤女短袖韩版宽松学生打底衫时尚女式女士上衣2022春夏装新款大码女装半袖 卡其色 L','http://localhost:8087/images/product/cell-phone/4fec3245d25aeab3.jpg','79',81,'2022-05-25 09:42:53'),
(37,'沁沫短袖t恤女2022夏季新款女装宽松韩版学生刺绣纯色纯棉T恤半袖百搭打底上衣服女 杏色2585 M','http://localhost:8087/images/product/cell-phone/cb65df7728b03532.jpg','49',81,'2022-05-25 09:42:53');

/*Table structure for table `sort_content` */

DROP TABLE IF EXISTS `sort_content`;

CREATE TABLE `sort_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `sort_src` varchar(100) DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `sort_title` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

/*Data for the table `sort_content` */

insert  into `sort_content`(`id`,`name`,`sort_src`,`tid`,`createDate`) values 
(1,'手机','http://localhost:8087/images/sort/recommend/popular/5be6ebd8Nb07ef492.png',1,'2022-05-22 21:46:37'),
(2,'口红','http://localhost:8087/images/sort/recommend/popular/bbc6e2cf5b10669e.jpg',1,'2022-05-22 21:46:37'),
(3,'空调','http://localhost:8087/images/sort/recommend/popular/898a7ac882ba6c63.jpg',1,'2022-05-22 21:46:37'),
(4,'冰箱','http://localhost:8087/images/sort/recommend/popular/260803efca5e8a73.jpg',1,'2022-05-22 21:46:37'),
(5,'跑包鞋','http://localhost:8087/images/sort/recommend/popular/5a1fb5e7N12a676b6.jpg',1,'2022-05-22 21:46:37'),
(6,'电风扇','http://localhost:8087/images/sort/recommend/popular/5a17c47dNca9d0918.jpg',1,'2022-05-22 21:46:37'),
(7,'平板电脑','http://localhost:8087/images/sort/recommend/popular/5a17f71eN25360979.jpg',1,'2022-05-22 21:46:37'),
(8,'蓝牙耳机','http://localhost:8087/images/sort/recommend/popular/5ac486d1Ncae5823b.jpg',1,'2022-05-22 21:46:37'),
(9,'白酒','http://localhost:8087/images/sort/recommend/popular/5afeb44dN71307ca2.jpg',1,'2022-05-22 21:46:37'),
(10,'笔记本','http://localhost:8087/images/sort/recommend/popular/5a17ba79N18b9f3d4.png',1,'2022-05-22 21:46:37'),
(11,'洗衣机','http://localhost:8087/images/sort/recommend/popular/5a17f6d4Ne2a84dc3.jpg',1,'2022-05-22 21:46:37'),
(12,'香水','http://localhost:8087/images/sort/recommend/popular/5afd3c4bNc8d91bef.jpg',1,'2022-05-22 21:46:37'),
(13,'电饭煲','http://localhost:8087/images/sort/recommend/popular/5a17f224Nea1d3f59.jpg',1,'2022-05-22 21:46:37'),
(14,'方便面','http://localhost:8087/images/sort/recommend/popular/5a0564d3N315cbc9d.jpg',1,'2022-05-22 21:46:37'),
(15,'外套','http://localhost:8087/images/sort/recommend/men/5a0e946eNa5bdc629.jpg',2,'2022-05-22 21:50:22'),
(16,'卫衣','http://localhost:8087/images/sort/recommend/men/5ac4782aN695a7262.jpg',2,'2022-05-22 21:50:22'),
(17,'牛仔裤','http://localhost:8087/images/sort/recommend/men/5ac47841Nff658599.jpg',2,'2022-05-22 21:50:22'),
(18,'休闲裤','http://localhost:8087/images/sort/recommend/men/5ac47845N7374a31d.jpg',2,'2022-05-22 21:50:22'),
(19,'棉服外套','http://localhost:8087/images/sort/recommend/men/5a0e9496Necd5bd0e.jpg',2,'2022-05-22 21:50:22'),
(20,'皮鞋','http://localhost:8087/images/sort/recommend/men/5a139440N023ac2b2.jpg',2,'2022-05-22 21:50:22'),
(21,'衬衫','http://localhost:8087/images/sort/recommend/miss/5a9fbfc7N33c2ad32.jpg',3,'2022-05-22 21:59:34'),
(22,'短外套女','http://localhost:8087/images/sort/recommend/miss/5a9fbfdcNc891be87.jpg',3,'2022-05-22 21:59:34'),
(23,'裤装','http://localhost:8087/images/sort/recommend/miss/5a126bcdN5660d28e.jpg',3,'2022-05-22 21:59:34'),
(24,'连衣裙','http://localhost:8087/images/sort/recommend/miss/5a1284e4N5f6ac63d.jpg',3,'2022-05-22 21:59:34'),
(25,'T恤','http://localhost:8087/images/sort/recommend/miss/5a9fb684Ne1ec9fe8.jpg',3,'2022-05-22 21:59:34'),
(26,'口红','http://localhost:8087/images/sort/recommend/miss/bbc6e2cf5b10669e.jpg',3,'2022-05-22 21:59:34'),
(27,'香水','http://localhost:8087/images/sort/recommend/miss/5afd3c4bNc8d91bef.jpg',3,'2022-05-22 21:59:34'),
(28,'护肤套装','http://localhost:8087/images/sort/recommend/miss/6a5aff8eeb02f29b.jpg',3,'2022-05-22 21:59:34'),
(29,'高跟鞋','http://localhost:8087/images/sort/recommend/miss/5aa640deNb3d97795.jpg',3,'2022-05-22 21:59:34'),
(30,'床','http://localhost:8087/images/sort/recommend/life/5a28e6d6N3a425bcc.jpg',4,'2022-05-22 22:03:34'),
(31,'被子','http://localhost:8087/images/sort/recommend/life/5a28d617N1dedd321.jpg',4,'2022-05-22 22:03:34'),
(32,'沙发','http://localhost:8087/images/sort/recommend/life/5a1eb080N38c2e7b7.jpg',4,'2022-05-22 22:03:34'),
(33,'儿童套装','http://localhost:8087/images/sort/recommend/life/5b02a109N15951410.jpg',4,'2022-05-22 22:03:34'),
(34,'洗衣液','http://localhost:8087/images/sort/recommend/life/5a057ef3N4b20576c.jpg',4,'2022-05-22 22:03:34'),
(35,'储物家具','http://localhost:8087/images/sort/recommend/life/5a28de91N27d073ed.jpg',4,'2022-05-22 22:03:34'),
(36,'纯净水 ','http://localhost:8087/images/sort/food-and-drink/sell-well/5afeb92fNddd2c121.jpg',5,'2022-05-22 23:06:37'),
(37,'纯牛奶','http://localhost:8087/images/sort/food-and-drink/sell-well/5a056b11N78c98876.jpg',5,'2022-05-22 23:06:37'),
(38,'方便面','http://localhost:8087/images/sort/food-and-drink/sell-well/5a0564d3N315cbc9d.jpg',5,'2022-05-22 23:06:37'),
(39,'白酒','http://localhost:8087/images/sort/food-and-drink/sell-well/5a093518N3e8cfba7.jpg',5,'2022-05-22 23:06:37'),
(40,'坚果炒货','http://localhost:8087/images/sort/food-and-drink/sell-well/59ffd6d0Ncb29412d.png',5,'2022-05-22 23:06:37'),
(41,'休闲食品','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6e2N287c043d.jpg',6,'2022-05-22 23:13:03'),
(42,'坚果炒货','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6d0Ncb29412d.png',6,'2022-05-22 23:13:03'),
(43,'糖巧','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6b9Nc88344b5.png',6,'2022-05-22 23:13:03'),
(44,'饼干蛋糕','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6ccNb9875d1d.jpg',6,'2022-05-22 23:13:03'),
(45,'肉干肉脯','http://localhost:8087/images/sort/food-and-drink/snack-foods/59fc31b6N4feb7d84.jpg',6,'2022-05-22 23:13:03'),
(46,'蜜饯果干','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6fbN047718c7.jpg',6,'2022-05-22 23:13:03'),
(47,'无糖食品','http://localhost:8087/images/sort/food-and-drink/snack-foods/59ffd6ffN95ab2f9b.jpg',6,'2022-05-22 23:13:03'),
(48,'白酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093518N3e8cfba7.jpg',7,'2022-05-22 23:24:13'),
(49,'洋酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093556N24025bbe.jpg',7,'2022-05-22 23:24:13'),
(50,'葡萄酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093524N09e5cea5.jpg',7,'2022-05-22 23:24:13'),
(51,'啤酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093560Na0f06c0b.jpg',7,'2022-05-22 23:24:13'),
(52,'黄酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093573Nd9687c5c.jpg',7,'2022-05-22 23:24:13'),
(53,'陈年老酒','http://localhost:8087/images/sort/food-and-drink/famous-wine/5a093569N9d505ba6.jpg',7,'2022-05-22 23:24:13'),
(54,'纯净水','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb92fNddd2c121.jpg',8,'2022-05-22 23:36:43'),
(55,'苏打水','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb934N993638b6.jpg',8,'2022-05-22 23:36:43'),
(56,'矿泉水','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb939N8f997fb7.jpg',8,'2022-05-22 23:36:43'),
(57,'母婴水','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb93eNc223d4a0.jpg',8,'2022-05-22 23:36:43'),
(58,'气泡水','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb943N9dc11bd5.jpg',8,'2022-05-22 23:36:43'),
(59,'碳酸饮料','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb956Na0fe3b4c.jpg',8,'2022-05-22 23:36:43'),
(60,'蛋白质饮料','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb95bN01221d80.jpg',8,'2022-05-22 23:36:43'),
(61,'功能饮料','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb960Nc2e5778d.jpg',8,'2022-05-22 23:36:43'),
(62,'果味饮料','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb966Nb3406e49.jpg',8,'2022-05-22 23:36:43'),
(63,'即饮咖啡','http://localhost:8087/images/sort/food-and-drink/water-drink-tea/5afeb971N3ab5b08a.jpg',8,'2022-05-22 23:36:43'),
(64,'红茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba7dN00170c31.jpg',9,'2022-05-22 23:42:53'),
(65,'绿茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba58N755b0ce6.jpg',9,'2022-05-22 23:42:53'),
(66,'普洱','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba6aNf9599fae.jpg',9,'2022-05-22 23:42:53'),
(67,'乌龙茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba64Neb1d0526.jpg',9,'2022-05-22 23:42:53'),
(68,'黑茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba75N69e9414b.jpg',9,'2022-05-22 23:42:53'),
(69,'白茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba8eNf0b6649d.jpg',9,'2022-05-22 23:42:53'),
(70,'龙井','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba25Nefbad54f.jpg',9,'2022-05-22 23:42:53'),
(71,'铁观音','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba5eN993b204f.jpg',9,'2022-05-22 23:42:53'),
(72,'茶礼盒','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba70Nf5ccb545.jpg',9,'2022-05-22 23:42:53'),
(73,'花草茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeba2aN87be838f.jpg',9,'2022-05-22 23:42:53'),
(74,'养生茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb980Nc6a096ff.jpg',9,'2022-05-22 23:42:53'),
(75,'花果茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb988Ne7458830.jpg',9,'2022-05-22 23:42:53'),
(76,'速溶咖啡','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb990N9ab1471a.jpg',9,'2022-05-22 23:42:53'),
(77,'咖啡豆/粉','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb995N419f991d.jpg',9,'2022-05-22 23:42:53'),
(78,'冲泡奶茶','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb99bN8849e96b.jpg',9,'2022-05-22 23:42:53'),
(79,'成人奶粉','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb9aaN0f7bad22.jpg',9,'2022-05-22 23:42:53'),
(80,'麦片谷物冲饮','http://localhost:8087/images/sort/food-and-drink/tea-brewing/5afeb9b1Nfd977d35.jpg',9,'2022-05-22 23:42:53'),
(81,'当季热卖','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/f77877220c415ca0c.jpg',31,'2022-05-25 08:42:53'),
(82,'连衣裙','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/5a9fb67aN37c4848f.jpg',31,'2022-05-25 08:42:53'),
(83,'T恤','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/5a9fb684Ne1ec9fe8.jpg',31,'2022-05-25 08:42:53'),
(84,'衬衫','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/5a9fb67fN3834e3c9.jpg',31,'2022-05-25 08:42:53'),
(85,'牛仔裤','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/5a9fb694N13609fcd.jpg',31,'2022-05-25 08:42:53'),
(86,'自营女装','http://localhost:8087/images/product/women-clothing/sell-like-hot-cakes/1e54e5d5936ec59cc.jpg',31,'2022-05-25 08:42:53'),
(87,'字母T恤','http://localhost:8087/images/product/women-clothing/jacket/5a9fbfd2Ncc01c1b5.jpg',32,'2022-05-25 08:42:53'),
(88,'白衬衫','http://localhost:8087/images/product/women-clothing/jacket/5a9fbfc7N33c2ad32.jpg',32,'2022-05-25 08:42:53'),
(89,'百搭衬衫','http://localhost:8087/images/product/women-clothing/jacket/5a9fbfa0N591929da.jpg',32,'2022-05-25 08:42:53'),
(90,'雪衬衫','http://localhost:8087/images/product/women-clothing/jacket/5a9fc00dN205f4cc7.jpg',32,'2022-05-25 08:42:53'),
(91,'打底衫','http://localhost:8087/images/product/women-clothing/jacket/5a127ee9Nbc443a5f.jpg',32,'2022-05-25 08:42:53'),
(92,'长袖T恤','http://localhost:8087/images/product/women-clothing/jacket/5a9fbfccN574cba12.jpg',32,'2022-05-25 08:42:53'),
(93,'小脚裤','http://localhost:8087/images/product/women-clothing/pants/5a9fc131N24687ff1.jpg',34,'2022-05-25 08:42:53'),
(94,'休闲裤','http://localhost:8087/images/product/women-clothing/pants/5a126be2N3b5eb185.jpg',34,'2022-05-25 08:42:53'),
(95,'宽腿裤','http://localhost:8087/images/product/women-clothing/pants/5a126bd7N20bbe151.jpg',34,'2022-05-25 08:42:53'),
(96,'牛仔裤','http://localhost:8087/images/product/women-clothing/pants/5a126be8N4b73e73d.jpg',34,'2022-05-25 08:42:53'),
(97,'哈伦裤','http://localhost:8087/images/product/women-clothing/pants/5a126bddN3b541f68.jpg',34,'2022-05-25 08:42:53'),
(98,'破洞牛仔裤','http://localhost:8087/images/product/women-clothing/pants/5a126bc2N924c1ec9.jpg',34,'2022-05-25 08:42:53'),
(99,'背带裤','http://localhost:8087/images/product/women-clothing/pants/5a126bc7Nae619031.jpg',34,'2022-05-25 08:42:53'),
(100,'喇叭裤','http://localhost:8087/images/product/women-clothing/pants/5a126bd2Ndc808348.jpg',34,'2022-05-25 08:42:53'),
(101,'半身裙','http://localhost:8087/images/product/women-clothing/skirt/5a12846cNf3df9f87.jpg',35,'2022-05-25 08:42:53'),
(102,'套装裙','http://localhost:8087/images/product/women-clothing/skirt/5a1284a4N7b739204.jpg',35,'2022-05-25 08:42:53'),
(103,'长袖连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a1284dfNb5bd1460.jpg',35,'2022-05-25 08:42:53'),
(104,'性感连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a128463Nce1ae193.jpg',35,'2022-05-25 08:42:53'),
(105,'蕾丝连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a1284d0Nbdba3775.jpg',35,'2022-05-25 08:42:53'),
(106,'连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a1284e4N5f6ac63d.jpg',35,'2022-05-25 08:42:53'),
(107,'原创连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a128473N0e516a0c.jpg',35,'2022-05-25 08:42:53'),
(108,'针织连衣裙','http://localhost:8087/images/product/women-clothing/skirt/5a1284d7N48bf3e99.jpg',35,'2022-05-25 08:42:53'),
(109,'背带裙','http://localhost:8087/images/product/women-clothing/skirt/5a12848bNca4b1172.jpg',35,'2022-05-25 08:42:53'),
(110,'旗袍/唐装','http://localhost:8087/images/product/women-clothing/feature/5a126a3eNf6c91bfd.jpg',36,'2022-05-25 08:42:53'),
(111,'大码女装','http://localhost:8087/images/product/women-clothing/feature/5a126a63N26bf8fe2.jpg',36,'2022-05-25 08:42:53'),
(112,'妈妈装','http://localhost:8087/images/product/women-clothing/feature/5a126a48Nca076d94.jpg',36,'2022-05-25 08:42:53'),
(113,'礼服','http://localhost:8087/images/product/women-clothing/feature/5a126a39N4a228006.jpg',36,'2022-05-25 08:42:53'),
(114,'设计师','http://localhost:8087/images/product/women-clothing/feature/5a126a4fN4ada7f64.jpg',36,'2022-05-25 08:42:53'),
(115,'婚纱','http://localhost:8087/images/product/women-clothing/feature/5a126a5aN99085a6b.jpg',36,'2022-05-25 08:42:53');

/*Table structure for table `sort_nav` */

DROP TABLE IF EXISTS `sort_nav`;

CREATE TABLE `sort_nav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `sort_nav` */

insert  into `sort_nav`(`id`,`name`) values 
(1,'热搜推荐'),
(2,'食品酒水'),
(3,'美妆护肤'),
(4,'个护清洁'),
(5,'精品男装'),
(6,'精品女装'),
(7,'内衣配饰'),
(8,'鞋靴箱包'),
(9,'手机数码'),
(10,'电脑办公'),
(11,'运动户外'),
(12,'母婴童装'),
(13,'图书音像'),
(14,'钟表珠宝'),
(15,'礼品鲜花');

/*Table structure for table `sort_title` */

DROP TABLE IF EXISTS `sort_title`;

CREATE TABLE `sort_title` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `nid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`),
  CONSTRAINT `nid` FOREIGN KEY (`nid`) REFERENCES `sort_nav` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `sort_title` */

insert  into `sort_title`(`id`,`name`,`nid`) values 
(1,'热门搜索',1),
(2,'男士热搜',1),
(3,'女士热搜',1),
(4,'生活热搜',1),
(5,'热销推荐',2),
(6,'休闲食品',2),
(7,'中外名酒',2),
(8,'水饮茗茶',2),
(9,'茶叶冲调',2),
(10,'当季主推',3),
(11,'面部护肤',3),
(12,'彩妆',3),
(13,'香水',3),
(14,'美妆工具',3),
(15,'畅销推荐',4),
(16,'明星品牌',4),
(17,'纸品湿巾',4),
(18,'女性护理',4),
(19,'衣物清洁',4),
(20,'家庭清洁',4),
(21,'洗发护发',4),
(22,'身体护理',4),
(23,'口腔护理',4),
(24,'清洁工具',4),
(25,'当季热卖',5),
(26,'新品上装',5),
(27,'裤装',5),
(28,'衬衫',5),
(29,'特色男装',5),
(30,'男士配饰',5),
(31,'热销品类',6),
(32,'女士上衣',6),
(34,'裤子',6),
(35,'裙子',6),
(36,'特色女装',6),
(37,'女士配饰',6),
(38,'睡衣家居服',7),
(39,'保暖内衣',7),
(40,'大牌文胸',7),
(41,'内裤',7),
(42,'袜子',7),
(43,'服饰配件',7),
(44,'眼镜配件',7),
(45,'男鞋品类',8),
(46,'女鞋品类',8),
(47,'潮流女包',8),
(48,'精品男包',8),
(49,'功能箱包',8),
(50,'热卖品牌',9),
(51,'功能手机',9),
(52,'手机配件',9),
(53,'摄影摄像',9),
(54,'数码配件',9),
(55,'智能设备',9),
(56,'影音娱乐',9),
(57,'电子教育',9),
(58,'热门商品',10),
(59,'电脑整机',10),
(60,'电脑配件',10),
(61,'外设产品',10),
(62,'网络产品',10),
(63,'游戏设备',10),
(64,'办公设备',10),
(65,'文具消耗',10),
(66,'运动鞋服',11),
(67,'户外鞋服',11),
(68,'健身器械',11),
(69,'户外装备',11),
(70,'垂钓用品',11),
(71,'游泳用品',11),
(72,'体育用品',11),
(73,'骑行运动',11);

/*Table structure for table `spike` */

DROP TABLE IF EXISTS `spike`;

CREATE TABLE `spike` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spike_src` varchar(100) DEFAULT NULL,
  `spike_url` varchar(100) DEFAULT NULL,
  `spike_price` varchar(30) DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `spike` */

insert  into `spike`(`id`,`spike_src`,`spike_url`,`spike_price`,`createDate`) values 
(1,'http://localhost:8087/images/spike/f2430691840ca4ac.jpg',NULL,'2398',NULL),
(2,'http://localhost:8087/images/spike/6737e06ee6288a45.jpg',NULL,'379',NULL),
(3,'http://localhost:8087/images/spike/59c4bb84a76859eb.jpg',NULL,'6298',NULL),
(4,'http://localhost:8087/images/spike/53367cb03af66227.jpg',NULL,'19.9',NULL),
(5,'http://localhost:8087/images/spike/432c0050560ae7dd.jpg',NULL,'285',NULL),
(6,'http://localhost:8087/images/spike/c89411c51e8f6b90.jpg',NULL,'77.9',NULL);

/*Table structure for table `swiper` */

DROP TABLE IF EXISTS `swiper`;

CREATE TABLE `swiper` (
  `id` varchar(30) NOT NULL,
  `image_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image_alt` varchar(100) DEFAULT NULL,
  `createDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `swiper` */

insert  into `swiper`(`id`,`image_url`,`image_link`,`image_alt`,`createDate`) values 
('16787941','http://localhost:8087/images/4.jpg','4','4','2022-05-20 00:57:48'),
('1964a742','http://localhost:8087/images/2.jpg','2','2','2022-05-20 00:57:01'),
('a068b899','http://localhost:8087/images/1.jpg','111111','111111','2022-05-20 00:51:34'),
('a125244c','http://localhost:8087/images/5.jpg','5','5','2022-05-20 00:58:10'),
('b583f1bc','http://localhost:8087/images/3.jpg','3','3','2022-05-20 00:57:26');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `userRole` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`userRole`,`createDate`) values 
('1','admin','111111','1','2022-05-19T02:51:10.290Z'),
('adf094b1','xiaoming','123456','管理员','2022-05-19 03:52:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
