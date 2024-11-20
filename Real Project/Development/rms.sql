/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.44-community : Database - rms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rms`;

/*Table structure for table `addmenu` */

DROP TABLE IF EXISTS `addmenu`;

CREATE TABLE `addmenu` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `restaurantname` varchar(50) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `restaurantid` (`restaurantid`),
  CONSTRAINT `addmenu_ibfk_1` FOREIGN KEY (`restaurantid`) REFERENCES `addrestaurant` (`restaurantid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addmenu` */

/*Table structure for table `addrestaurant` */

DROP TABLE IF EXISTS `addrestaurant`;

CREATE TABLE `addrestaurant` (
  `restaurantid` int(10) NOT NULL AUTO_INCREMENT,
  `restaurantname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `mobileno` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`restaurantid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Data for the table `addrestaurant` */

insert  into `addrestaurant`(`restaurantid`,`restaurantname`,`address`,`city`,`pincode`,`mobileno`,`image`) values (53,'','','','','','robert-bye-4UGlx_OXqgs-unsplash.jpg'),(54,'','','','','','robert-bye-4UGlx_OXqgs-unsplash.jpg'),(55,'','','','','','fabrizio-magoni-boaDpmC-_Xo-unsplash.jpg');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('yash chavda','yash123');

/*Table structure for table `booktable` */

DROP TABLE IF EXISTS `booktable`;

CREATE TABLE `booktable` (
  `tableid` int(10) NOT NULL AUTO_INCREMENT,
  `customername` varchar(15) DEFAULT NULL,
  `mobileno` varchar(11) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `people` int(10) DEFAULT NULL,
  `special` varchar(50) DEFAULT NULL,
  `restaurantname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `booktable` */

insert  into `booktable`(`tableid`,`customername`,`mobileno`,`date`,`people`,`special`,`restaurantname`) values (1,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(2,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(3,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(4,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(5,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(6,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(7,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'dkjas\r\n',NULL),(8,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'asjjdjhasd',NULL),(9,'yash chavda','9925433119','02/01/2024 12:00 AM',3,'dkjas\r\n',NULL),(10,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(11,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(12,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(13,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(14,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(15,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(16,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'ashjs','restaurantname'),(17,'yash chavda','9925433119','11/06/2024 8:59 AM',2,'asdsd','PragatiHotel'),(18,'yash chavda','9925433119','10/28/2024 11:28 AM',3,'no','new '),(19,'yash chavda','','11/26/2024 10:57 AM',2,'','new '),(20,'yash chavda','9925433','11/24/2024 1:40 PM',23,'no\r\n','PragatiHotel'),(21,'yash chavda','9925433','11/24/2024 1:40 PM',23,'no\r\n','PragatiHotel'),(22,'','','',2,'','PragatiHotel'),(23,'','','',1,'','PragatiHotel'),(24,'','','',1,'','PragatiHotel'),(25,'','','',2,'','yash'),(26,'','','',3,'','yash'),(27,'','','',1,'','charad'),(28,'','','',2,'','PragatiHotel');

/*Table structure for table `choice` */

DROP TABLE IF EXISTS `choice`;

CREATE TABLE `choice` (
  `choiceid` int(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  PRIMARY KEY (`choiceid`),
  KEY `restaurantid` (`restaurantid`),
  CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`restaurantid`) REFERENCES `addrestaurant` (`restaurantid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `choice` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerid` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`firstname`,`lastname`,`address`,`state`,`city`,`pincode`,`mobile`,`email`,`password`) values (4,'Yash','Chavda','Susvav Road','Gujarat',NULL,363330,'09925433119','yashrchavda@gmail.com','chavda'),(5,'Yash','Chavda','Susvav Road','Gujarat',NULL,363330,'09925433119','yashrchavda@gmail.com','kkk'),(6,'Chavda','jayse','susvav road,charadva','GUJARAT',NULL,363330,'0995433119','yy@gmail.com','yy'),(7,'sonagra','hardik','susvav road,charadva','GUJARAT',NULL,363330,'09925433119','h@gmail.com','h'),(8,'mevada','harsh','gota','guj',NULL,363336,'9954533119','mevad@gmail.com','mevad'),(9,'Chavda','Ram','susvav road,charadva','GUJARAT',NULL,363330,'09925433119','chavda@gmail.com','chavda'),(10,'Chavda','Manish','charadva,morbi,susvav road','gujrat',NULL,363330,'9925433116','manishchavda@gmail.com','manishmanish'),(11,'Makasna','Hitesh','Halvad','Gujarat',NULL,363330,'99254331119','hitesh123@gmail.com','hitesh123'),(12,'bharat','chavda','charadva','gujrat',NULL,363330,'7016162596','bharat@gamil.com','bbchavda'),(13,'Makasna','hitesh','halvad','Gujarat',NULL,363330,'099254','hitesh@gmail.com','hitesh@1234'),(14,'yash','chavda','charadva','gujrat',NULL,363330,'9512','yashrchavda@gmail.com','yash123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
