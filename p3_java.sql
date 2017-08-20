/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.21-MariaDB : Database - p3_java
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`p3_java` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `p3_java`;

/*Table structure for table `t_cuaca` */

DROP TABLE IF EXISTS `t_cuaca`;

CREATE TABLE `t_cuaca` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_kota` varchar(50) DEFAULT NULL,
  `suhu` double DEFAULT NULL,
  `suhu_maks` double DEFAULT NULL,
  `suhu_min` double DEFAULT NULL,
  `kecepatan_angin` double DEFAULT NULL,
  `kelembapan` double DEFAULT NULL,
  `tekanan_udara` double DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  UNIQUE KEY `ID_2` (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `t_cuaca` */

insert  into `t_cuaca`(`ID`,`date`,`nama_kota`,`suhu`,`suhu_maks`,`suhu_min`,`kecepatan_angin`,`kelembapan`,`tekanan_udara`,`gambar`,`status`) values (9,'2017-08-05 00:00:00','Surabaya',308.1,308.01,308.01,308.01,308.01,308.01,'panas.PNG','Terik'),(10,'2017-08-15 00:00:00','Bandung',109,109,109,109,109,109,'hujan.png','Hujan'),(12,'2017-08-16 00:00:00','Aceh',2.2,2.2,2.2,2.2,2.2,2.1,'berawan.PNG','Berawan'),(13,'2017-08-16 00:00:00','Jakarta',23,32,12,323,32,32,'hujan.PNG','Hujan'),(14,'2017-08-16 00:00:00','Timika',1,2,3,5,4,6,'panas.PNG','Cerah');

/*Table structure for table `t_log` */

DROP TABLE IF EXISTS `t_log`;

CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` char(20) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `level` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `t_log` */

insert  into `t_log`(`id`,`id_user`,`pass`,`level`) values (1,'admin','admin','admin'),(2,'user','user','user'),(5,'lukman','lukman','admin');

/*Table structure for table `t_login` */

DROP TABLE IF EXISTS `t_login`;

CREATE TABLE `t_login` (
  `username` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_login` */

insert  into `t_login`(`username`,`pass`) values ('lukman','lukman');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
