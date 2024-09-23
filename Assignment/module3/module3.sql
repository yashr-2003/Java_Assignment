/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.44-community : Database - module3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`module3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `module3`;

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `Deptno` int(2) NOT NULL DEFAULT '0',
  `Dname` varchar(14) DEFAULT NULL,
  `Loc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`Deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

insert  into `dept`(`Deptno`,`Dname`,`Loc`) values (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(40,'OPERATIONS','BOSTON');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `Empno` int(4) NOT NULL DEFAULT '0',
  `Ename` varchar(10) DEFAULT NULL,
  `Job` varchar(9) DEFAULT NULL,
  `Mgr` int(4) DEFAULT NULL,
  `Hiredate` date DEFAULT NULL,
  `Sal` decimal(7,2) DEFAULT NULL,
  `Comm` decimal(7,2) DEFAULT NULL,
  `Deptno` int(2) DEFAULT NULL,
  PRIMARY KEY (`Empno`),
  KEY `Deptno` (`Deptno`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`Deptno`) REFERENCES `dept` (`Deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp` */

insert  into `emp`(`Empno`,`Ename`,`Job`,`Mgr`,`Hiredate`,`Sal`,`Comm`,`Deptno`) values (7369,'SMITH','CLERK',7902,'1980-12-17',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1981-02-22',1250.00,500.00,30),(7566,'JONES','MANAGER',7839,'1981-04-02',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250.00,1400.00,30),(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09',2450.00,NULL,10),(7788,'SCOTT','ANALYST',7566,'1987-06-11',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000.00,NULL,10),(7844,'TURNER','SALESMAN',7698,'1981-08-09',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'1987-07-13',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'1981-03-12',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'1981-03-12',3000.00,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23',1300.00,NULL,10);

/*Table structure for table `emplog` */

DROP TABLE IF EXISTS `emplog`;

CREATE TABLE `emplog` (
  `Emp_id` int(5) NOT NULL,
  `Log_date` date DEFAULT NULL,
  `New_salary` int(10) DEFAULT NULL,
  `Action` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emplog` */

/*Table structure for table `registratonform` */

DROP TABLE IF EXISTS `registratonform`;

CREATE TABLE `registratonform` (
  `ID` int(50) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contect` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registratonform` */

insert  into `registratonform`(`ID`,`Name`,`Gender`,`Address`,`Contect`) values (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(4,'hardik','male','charadava','9925433119'),(5,'yashash','male','yashas','555622'),(6,'yashas','female','as','23456');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Rno` int(2) NOT NULL DEFAULT '0',
  `Sname` varchar(14) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Rno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
