/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.32 : Database - photo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`photo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `photo`;

/*Table structure for table `t_feedback` */

DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `submit_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_feedback` */

insert  into `t_feedback`(`id`,`submit_name`,`email`,`subject`,`message`) values (3,'AAAAAA','AAAAA@qq.com','AAAAAA','AAAAAAA');

/*Table structure for table `t_image_info` */

DROP TABLE IF EXISTS `t_image_info`;

CREATE TABLE `t_image_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '''默认''',
  `image_type` int(1) NOT NULL DEFAULT '0',
  `url` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `t_image_info` */

insert  into `t_image_info`(`id`,`title`,`description`,`category`,`image_type`,`url`) values (1,'Nature','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/1.jpg'),(2,'Events','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/2.jpg'),(3,'Music','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/3.jpg'),(4,'Vintage','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/4.jpg'),(5,'Typers','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/5.jpg'),(6,'Hotel','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/6.jpg'),(7,'Chinese','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/7.jpg'),(8,'Dicrap','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/8.jpg'),(9,'Coffee','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/9.jpg'),(10,'Cameras','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/10.jpg'),(11,'Design','Lily likes to play with crayons and pencils','\'默认\'',0,'images/portfolio/11.jpg'),(12,'Studio','Lily likes to play with crayons and pencils','默认',0,'images/portfolio/12.jpg');

/*Table structure for table `t_user_info` */

DROP TABLE IF EXISTS `t_user_info`;

CREATE TABLE `t_user_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL DEFAULT '',
  `account_type` int(1) NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(30) DEFAULT '',
  `relname` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_info` */

insert  into `t_user_info`(`id`,`username`,`passwd`,`account_type`,`description`,`email`,`phone`,`relname`,`image`) values (1,'admin','admin',1,'管理员','123456@qq.com','123456','超级管理员','images/team/8.jpg'),(2,'user1','user1',0,'user1','user1@qq.com','user1','user1','images/team/10.jpg'),(3,'user2','user2',0,'user2','user2@qq.com','user2','user2','images/team/12.jpg'),(4,'user3','user3',0,'user3','user3@qq.com','user3','user3','images/team/17.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
