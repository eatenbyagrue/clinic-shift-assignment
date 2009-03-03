/*
SQLyog Community Edition- MySQL GUI v8.01 
MySQL - 5.0.51b-community-nt : Database - clinic-shift-assignment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`clinic-shift-assignment` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `clinic-shift-assignment`;

/*Table structure for table `config_values` */

DROP TABLE IF EXISTS `config_values`;

CREATE TABLE `config_values` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(255) default NULL,
  `value` varchar(2048) default NULL,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `NewIndex1` (`key`),
  KEY `NewIndex2` (`value`(767))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `config_values` */

insert  into `config_values`(`id`,`key`,`value`,`updated_at`,`created_at`) values (2,'admin_email','anne.c.siler@gmail.com','2009-02-28 15:19:27','2009-02-28 15:19:27'),(5,'req_open','0','2009-03-03 02:46:03',NULL);

/*Table structure for table `enrollments` */

DROP TABLE IF EXISTS `enrollments`;

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL auto_increment,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `enrollments` */

insert  into `enrollments`(`id`,`start_date`,`end_date`,`updated_at`,`created_at`) values (1,'2009-03-01','2009-06-15',NULL,NULL),(3,'2009-06-16','2009-09-12','2009-03-01 22:11:25','2009-03-01 22:11:25'),(4,'2009-03-01','2009-04-01','2009-03-03 01:34:23','2009-03-03 01:34:23'),(5,'2009-03-01','2009-04-01','2009-03-03 01:35:24','2009-03-03 01:35:24'),(6,'2009-03-01','2009-04-01','2009-03-03 02:24:59','2009-03-03 02:24:59');

/*Table structure for table `requestedshifts` */

DROP TABLE IF EXISTS `requestedshifts`;

CREATE TABLE `requestedshifts` (
  `id` int(11) NOT NULL auto_increment,
  `request_id` int(11) default NULL,
  `target_date` date default NULL,
  `assigned_flag` int(11) default '0',
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `NewIndex1` (`request_id`),
  KEY `NewIndex2` (`target_date`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*Data for the table `requestedshifts` */

insert  into `requestedshifts`(`id`,`request_id`,`target_date`,`assigned_flag`,`updated_at`,`created_at`) values (1,1,'2009-03-01',1,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(2,1,'2009-03-03',0,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(3,1,'2009-03-18',1,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(4,1,'2009-03-23',1,'2009-03-01 22:13:48','2009-03-01 21:23:53'),(5,1,'2009-03-24',0,'2009-03-01 22:13:48','2009-03-01 21:23:53'),(6,1,'2009-04-07',0,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(7,1,'2009-04-20',1,'2009-03-01 22:13:48','2009-03-01 21:23:53'),(8,1,'2009-04-22',1,'2009-03-01 22:13:48','2009-03-01 21:23:53'),(9,1,'2009-04-27',1,'2009-03-01 22:13:49','2009-03-01 21:23:53'),(10,1,'2009-05-13',0,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(11,1,'2009-05-18',0,'2009-03-01 21:23:53','2009-03-01 21:23:53'),(12,1,'2009-05-19',1,'2009-03-01 22:13:48','2009-03-01 21:23:53'),(13,1,'2009-05-26',1,'2009-03-01 22:13:49','2009-03-01 21:23:53'),(14,1,'2009-06-14',0,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(15,1,'2009-06-15',0,'2009-03-01 22:10:45','2009-03-01 21:23:53'),(16,2,'2009-03-01',1,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(17,2,'2009-03-03',0,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(18,2,'2009-03-11',1,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(19,2,'2009-03-14',1,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(20,2,'2009-03-17',0,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(21,2,'2009-03-18',1,'2009-03-01 22:13:48','2009-03-01 21:26:23'),(22,2,'2009-03-20',1,'2009-03-01 22:13:48','2009-03-01 21:26:23'),(23,2,'2009-03-23',1,'2009-03-01 22:13:48','2009-03-01 21:26:23'),(24,2,'2009-03-24',0,'2009-03-01 22:13:48','2009-03-01 21:26:23'),(25,2,'2009-04-07',0,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(26,2,'2009-04-20',0,'2009-03-01 21:26:23','2009-03-01 21:26:23'),(27,2,'2009-04-22',1,'2009-03-01 22:13:48','2009-03-01 21:26:23'),(28,2,'2009-04-27',1,'2009-03-01 22:13:49','2009-03-01 21:26:23'),(29,2,'2009-05-02',0,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(30,2,'2009-05-07',0,'2009-03-01 21:26:23','2009-03-01 21:26:23'),(31,2,'2009-05-13',0,'2009-03-01 22:10:45','2009-03-01 21:26:23'),(32,2,'2009-05-16',1,'2009-03-01 22:13:48','2009-03-01 21:26:24'),(33,2,'2009-05-18',0,'2009-03-01 21:26:24','2009-03-01 21:26:24'),(34,2,'2009-05-19',1,'2009-03-01 22:13:48','2009-03-01 21:26:24'),(35,2,'2009-05-26',1,'2009-03-01 22:13:49','2009-03-01 21:26:24'),(36,2,'2009-06-14',0,'2009-03-01 21:26:24','2009-03-01 21:26:24'),(37,2,'2009-06-15',0,'2009-03-01 22:10:45','2009-03-01 21:26:24'),(38,3,'2009-03-07',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(39,3,'2009-03-14',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(40,3,'2009-03-21',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(41,3,'2009-03-28',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(42,3,'2009-04-04',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(43,3,'2009-04-18',1,'2009-03-01 22:14:37','2009-03-01 22:05:47'),(44,3,'2009-04-25',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(45,3,'2009-05-02',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(46,3,'2009-05-09',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(47,3,'2009-05-23',1,'2009-03-01 22:14:37','2009-03-01 22:05:47'),(48,3,'2009-05-30',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(49,3,'2009-06-06',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(50,3,'2009-06-13',1,'2009-03-01 22:10:45','2009-03-01 22:05:47'),(52,5,'2009-06-16',1,'2009-03-03 01:34:05','2009-03-01 22:14:35'),(53,6,'2009-03-03',0,'2009-03-03 01:34:58','2009-03-03 01:34:41'),(54,6,'2009-03-10',0,'2009-03-03 01:34:58','2009-03-03 01:34:41'),(55,7,'2009-03-03',0,'2009-03-03 01:34:58','2009-03-03 01:34:49'),(56,7,'2009-03-10',0,'2009-03-03 01:34:58','2009-03-03 01:34:49'),(57,8,'2009-03-03',0,'2009-03-03 01:34:58','2009-03-03 01:34:54'),(58,8,'2009-03-10',0,'2009-03-03 01:34:58','2009-03-03 01:34:54'),(61,9,'2009-03-03',0,'2009-03-03 02:24:16','2009-03-03 01:35:40'),(62,9,'2009-03-10',0,'2009-03-03 02:24:16','2009-03-03 01:35:40'),(63,10,'2009-03-03',0,'2009-03-03 02:24:16','2009-03-03 02:16:11'),(64,10,'2009-03-10',0,'2009-03-03 02:24:16','2009-03-03 02:16:11'),(65,10,'2009-03-17',0,'2009-03-03 02:24:16','2009-03-03 02:16:11'),(66,10,'2009-03-24',0,'2009-03-03 02:24:16','2009-03-03 02:16:11'),(67,10,'2009-03-31',0,'2009-03-03 02:24:16','2009-03-03 02:16:11'),(68,11,'2009-03-03',0,'2009-03-03 02:24:15','2009-03-03 02:16:16'),(69,11,'2009-03-10',0,'2009-03-03 02:16:16','2009-03-03 02:16:16'),(70,11,'2009-03-17',0,'2009-03-03 02:16:16','2009-03-03 02:16:16'),(71,11,'2009-03-24',0,'2009-03-03 02:16:16','2009-03-03 02:16:16'),(72,11,'2009-03-31',0,'2009-03-03 02:16:16','2009-03-03 02:16:16'),(73,12,'2009-03-03',0,'2009-03-03 02:24:15','2009-03-03 02:16:24'),(74,12,'2009-03-10',0,'2009-03-03 02:24:15','2009-03-03 02:16:24'),(75,12,'2009-03-17',0,'2009-03-03 02:16:24','2009-03-03 02:16:24'),(76,12,'2009-03-24',0,'2009-03-03 02:16:24','2009-03-03 02:16:24'),(77,12,'2009-03-31',0,'2009-03-03 02:16:24','2009-03-03 02:16:24'),(78,13,'2009-03-03',1,'2009-03-03 02:46:03','2009-03-03 02:25:39'),(79,13,'2009-03-10',0,'2009-03-03 02:25:39','2009-03-03 02:25:39'),(80,13,'2009-03-17',0,'2009-03-03 02:25:39','2009-03-03 02:25:39'),(81,13,'2009-03-24',0,'2009-03-03 02:25:39','2009-03-03 02:25:39'),(82,13,'2009-03-31',0,'2009-03-03 02:25:39','2009-03-03 02:25:39'),(83,14,'2009-03-03',1,'2009-03-03 02:46:03','2009-03-03 02:25:53'),(84,14,'2009-03-05',1,'2009-03-03 02:46:03','2009-03-03 02:25:53'),(85,14,'2009-03-10',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(86,14,'2009-03-12',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(87,14,'2009-03-17',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(88,14,'2009-03-19',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(89,14,'2009-03-24',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(90,14,'2009-03-26',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(91,14,'2009-03-31',0,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(92,15,'2009-03-03',2,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(93,15,'2009-03-05',2,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(94,15,'2009-03-10',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(95,15,'2009-03-12',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(96,15,'2009-03-17',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(97,15,'2009-03-19',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(98,15,'2009-03-24',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(99,15,'2009-03-26',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(100,15,'2009-03-31',1,'2009-03-03 02:46:03','2009-03-03 02:26:11'),(101,16,'2009-03-03',2,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(102,16,'2009-03-05',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(103,16,'2009-03-10',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(104,16,'2009-03-12',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(105,16,'2009-03-17',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(106,16,'2009-03-19',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(107,16,'2009-03-24',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(108,16,'2009-03-26',1,'2009-03-03 02:46:03','2009-03-03 02:27:20'),(109,16,'2009-03-31',1,'2009-03-03 02:46:03','2009-03-03 02:27:20');

/*Table structure for table `requests` */

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(300) default NULL,
  `name` varchar(100) default NULL,
  `req_type` varchar(255) default NULL,
  `shifts_desired` int(11) default NULL,
  `enrollment_id` int(11) default NULL,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `NewIndex1` (`email`),
  KEY `NewIndex2` (`name`),
  KEY `NewIndex3` (`shifts_desired`),
  KEY `NewIndex4` (`enrollment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `requests` */

insert  into `requests`(`id`,`email`,`name`,`req_type`,`shifts_desired`,`enrollment_id`,`updated_at`,`created_at`) values (1,'test','test','MD',10,1,'2009-03-01 21:23:53','2009-03-01 21:23:53'),(2,'test2','test2','MD',10,1,'2009-03-01 21:26:23','2009-03-01 21:26:23'),(3,'lbelhrj','bleher bleh','MD',234,1,'2009-03-01 22:05:47','2009-03-01 22:05:47'),(4,'asdfasdf','adf','MD/PHD',234,3,'2009-03-01 22:13:25','2009-03-01 22:13:25'),(5,'asdf','adsf','MD',3,3,'2009-03-01 22:14:35','2009-03-01 22:14:35'),(6,'asdf','asdf','MD',23,4,'2009-03-03 01:34:41','2009-03-03 01:34:41'),(7,'asdfasdf','asdfasdf','MD',23,4,'2009-03-03 01:34:49','2009-03-03 01:34:49'),(8,'asdfasdfasdf','asdfasdfasdf','MD',23,4,'2009-03-03 01:34:53','2009-03-03 01:34:53'),(9,'asdfasdfasdf','asdfasdfasdf23','MD',23,5,'2009-03-03 01:35:40','2009-03-03 01:35:36'),(10,'234','234','MD',10000,5,'2009-03-03 02:16:11','2009-03-03 02:16:11'),(11,'23434','23434','MD',1,5,'2009-03-03 02:16:16','2009-03-03 02:16:16'),(12,'23434aa','234344a','MD',4,5,'2009-03-03 02:16:24','2009-03-03 02:16:24'),(13,'limit1tuesdays','limit1tuesdays','MD',1,6,'2009-03-03 02:25:39','2009-03-03 02:25:39'),(14,'limit2all','limit2all','MD',2,6,'2009-03-03 02:25:53','2009-03-03 02:25:53'),(15,'limitnonetuesdays','limitnonetuesdays','MD/PHD',10000,6,'2009-03-03 02:26:11','2009-03-03 02:26:11'),(16,'limitnoneall','limitnoneall','MD/PHD',10000,6,'2009-03-03 02:27:20','2009-03-03 02:27:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
