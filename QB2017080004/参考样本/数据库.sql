/*
SQLyog Ultimate v8.32 
MySQL - 5.0.16 : Database - tf39
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tf39` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `tf39`;

/*Table structure for table `manager_info` */

DROP TABLE IF EXISTS `manager_info`;

CREATE TABLE `manager_info` (
  `manager_ID` char(200) default NULL,
  `password` char(200) default NULL,
  `manager_name` char(200) default NULL,
  `sex` char(200) default NULL,
  `phone_number` char(200) default NULL,
  `pass` char(200) default NULL,
  `role` char(200) default NULL,
  `authority` char(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `manager_info` */

insert  into `manager_info`(`manager_ID`,`password`,`manager_name`,`sex`,`phone_number`,`pass`,`role`,`authority`) values ('songshuo','123456','宋硕','女','15543003191','155430','经理','M'),('1111','11111','李明','男','156456','1003','影片管理员','film');

/*Table structure for table `movie_info` */

DROP TABLE IF EXISTS `movie_info`;

CREATE TABLE `movie_info` (
  `id` int(200) default NULL,
  `movie_name` char(200) default NULL,
  `country` char(200) default NULL,
  `director` char(200) default NULL,
  `movie_long` char(200) default NULL,
  `language` char(200) default NULL,
  `content_produce` char(200) default NULL,
  `online_date` datetime default NULL,
  `downline_date` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `movie_info` */

insert  into `movie_info`(`id`,`movie_name`,`country`,`director`,`movie_long`,`language`,`content_produce`,`online_date`,`downline_date`) values (1,'加勒比海盗5 死无对证','美国','乔阿吉姆?罗恩尼','129','英语','迪士尼电影公司出品的一部奇幻历险电影。','2017-05-26 00:00:00','2017-06-20 00:00:00'),(2,'摔跤吧爸爸','印度','捏提?蒂瓦里','169','北印度语','励志喜剧片','2015-05-05 00:00:00','2017-05-29 00:00:00');

/*Table structure for table `restor_show_plan` */

DROP TABLE IF EXISTS `restor_show_plan`;

CREATE TABLE `restor_show_plan` (
  `show_id` int(200) default NULL,
  `hall_names` char(200) default NULL,
  `show_date` datetime default NULL,
  `film_id` int(200) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `ticket_price` int(200) default NULL,
  `ticket_count` int(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `restor_show_plan` */

insert  into `restor_show_plan`(`show_id`,`hall_names`,`show_date`,`film_id`,`start_time`,`end_time`,`ticket_price`,`ticket_count`) values (1,'1号厅','2017-05-26 00:00:00',1,'2017-05-26 10:00:00','2017-05-26 12:09:00',120,100),(2,'2号厅','2017-05-05 00:00:00',2,'2017-05-05 10:00:00','2017-05-05 12:49:00',100,64),(3,'3号厅','2017-03-17 00:00:00',3,'2017-03-17 10:00:00','2017-03-17 12:10:00',NULL,NULL),(3,'3号厅','2017-03-17 00:00:00',3,'2017-03-17 10:00:00','2017-03-17 12:10:00',120,100),(3,'3号厅','2017-05-26 00:00:00',1,'2017-05-26 10:00:00','2017-05-26 12:09:00',120,100);

/*Table structure for table `seat_position` */

DROP TABLE IF EXISTS `seat_position`;

CREATE TABLE `seat_position` (
  `hall_name` char(200) default NULL,
  `row_num` int(200) default NULL,
  `column_num` int(200) default NULL,
  `flag` int(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `seat_position` */

insert  into `seat_position`(`hall_name`,`row_num`,`column_num`,`flag`) values ('1号厅',30,20,NULL),('2号厅',20,30,NULL),('3号厅',10,10,1),('3号厅',10,10,1),('3号厅',1,1,1),('3号厅',1,2,1),('3号厅',1,3,1),('3号厅',1,4,1),('3号厅',1,5,1),('3号厅',1,6,1),('3号厅',1,7,1),('3号厅',1,8,1),('3号厅',1,9,1),('3号厅',2,1,1),('3号厅',2,2,1),('3号厅',2,3,1),('3号厅',2,4,1),('3号厅',2,5,1),('3号厅',2,6,1),('3号厅',2,7,1),('3号厅',2,8,1),('3号厅',2,9,1),('3号厅',3,1,1),('3号厅',3,2,1),('3号厅',3,3,1),('3号厅',3,4,1),('3号厅',3,5,1),('3号厅',3,6,1),('3号厅',3,7,1),('3号厅',3,8,1),('3号厅',3,9,1),('3号厅',4,1,1),('3号厅',4,2,1),('3号厅',4,3,1),('3号厅',4,4,1),('3号厅',4,5,1),('3号厅',4,6,1),('3号厅',4,7,1),('3号厅',4,8,1),('3号厅',4,9,1),('3号厅',5,1,1),('3号厅',5,2,1),('3号厅',5,3,1),('3号厅',5,4,1),('3号厅',5,5,1),('3号厅',5,6,1),('3号厅',5,7,1),('3号厅',5,8,1),('3号厅',5,9,1),('3号厅',6,1,1),('3号厅',6,2,1),('3号厅',6,3,1),('3号厅',6,4,1),('3号厅',6,5,1),('3号厅',6,6,1),('3号厅',6,7,1),('3号厅',6,8,1),('3号厅',6,9,1),('3号厅',7,1,1),('3号厅',7,2,1),('3号厅',7,3,1),('3号厅',7,4,1),('3号厅',7,5,1),('3号厅',7,6,1),('3号厅',7,7,1),('3号厅',7,8,1),('3号厅',7,9,1),('3号厅',8,1,1),('3号厅',8,2,1),('3号厅',8,3,1),('3号厅',8,4,1),('3号厅',8,5,1),('3号厅',8,6,1),('3号厅',8,7,1),('3号厅',8,8,1),('3号厅',8,9,1);

/*Table structure for table `show_hall` */

DROP TABLE IF EXISTS `show_hall`;

CREATE TABLE `show_hall` (
  `hall_name` char(200) default NULL,
  `hall_type` char(200) default NULL,
  `seat_count` int(200) default NULL,
  `row_count` int(200) default NULL,
  `column_count` int(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `show_hall` */

insert  into `show_hall`(`hall_name`,`hall_type`,`seat_count`,`row_count`,`column_count`) values ('1号厅','Max',100,10,10),('2号厅','普通',64,8,8),('3号厅','3D',100,10,10);

/*Table structure for table `show_plan` */

DROP TABLE IF EXISTS `show_plan`;

CREATE TABLE `show_plan` (
  `show_id` int(100) default NULL,
  `hall_name` char(100) default NULL,
  `show_date` datetime default NULL,
  `film_id` int(100) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `ticket_price` int(100) default NULL,
  `ticket_count` int(100) default NULL,
  `s_date` varchar(30) default NULL,
  `e_date` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `show_plan` */

insert  into `show_plan`(`show_id`,`hall_name`,`show_date`,`film_id`,`start_time`,`end_time`,`ticket_price`,`ticket_count`,`s_date`,`e_date`) values (1,'1号厅','2017-05-26 00:00:00',1,'2017-05-26 10:00:00','2017-05-26 12:09:00',120,100,'2017-05-26 00:00:00','2017-06-20 00:00:00'),(2,'2号厅','2017-05-05 00:00:00',2,'2017-05-05 10:00:00','2017-05-05 12:49:00',100,64,'2017-05-05 00:00:00','2017-05-30 00:00:00');

/*Table structure for table `ticket_info` */

DROP TABLE IF EXISTS `ticket_info`;

CREATE TABLE `ticket_info` (
  `date` datetime default NULL,
  `start_time` datetime default NULL,
  `bar_code_num` char(100) default NULL,
  `hall_name` char(100) default NULL,
  `price` int(200) default NULL,
  `code` char(200) default NULL,
  `seat_position` char(200) default NULL,
  `movie_id` int(200) default NULL,
  `movie_name` int(200) default NULL,
  `show_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `ticket_info` */

insert  into `ticket_info`(`date`,`start_time`,`bar_code_num`,`hall_name`,`price`,`code`,`seat_position`,`movie_id`,`movie_name`,`show_id`) values ('2017-05-05 00:00:00','2017-05-05 10:00:00','TH7986405247762','2号厅',100,NULL,'2-6',2,NULL,2),('2017-05-05 00:00:00','2017-05-05 10:00:00','TH3931076387827','2号厅',100,NULL,'3-6',2,NULL,2),('2017-05-05 00:00:00','2017-05-05 10:00:00','TH7367955334399','2号厅',100,NULL,'5-3',2,NULL,2),('2017-05-05 00:00:00','2017-05-05 10:00:00','TH8412932475503','2号厅',100,NULL,'5-4',2,NULL,2),('2017-05-05 00:00:00','2017-05-05 10:00:00','TH5582471643935','2号厅',100,NULL,'5-5',2,NULL,2),('2017-05-05 00:00:00','2017-05-05 10:00:00','TH6012970714271','2号厅',100,NULL,'5-6',2,NULL,2);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_name` char(200) default NULL,
  `pass_word` char(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `user_info` */

insert  into `user_info`(`user_name`,`pass_word`) values ('ss','155460');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
