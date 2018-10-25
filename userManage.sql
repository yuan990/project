/*
SQLyog Ultimate v8.32 
MySQL - 5.7.23 : Database - our_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`our_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `our_db`;

/*Table structure for table `t_authority` */

DROP TABLE IF EXISTS `t_authority`;

CREATE TABLE `t_authority` (
  `AUT_ID` varchar(50) NOT NULL,
  `AUT_NAME` varchar(100) DEFAULT NULL,
  `AUT_LINKLIST` varchar(4000) DEFAULT NULL,
  `BZ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AUT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_authority` */

insert  into `t_authority`(`AUT_ID`,`AUT_NAME`,`AUT_LINKLIST`,`BZ`) values ('aut_001','管理权限','l_001',NULL),('aut_002','主页权限','l-002',NULL);

/*Table structure for table `t_authority_group` */

DROP TABLE IF EXISTS `t_authority_group`;

CREATE TABLE `t_authority_group` (
  `PK_ID` varchar(50) NOT NULL,
  `AUT_GROUP_ID` varchar(50) DEFAULT NULL,
  `AUT_GROUP_NAME` varchar(50) DEFAULT NULL,
  `AURHORITY_ID` varchar(1000) DEFAULT NULL,
  `BZ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_authority_group` */

insert  into `t_authority_group`(`PK_ID`,`AUT_GROUP_ID`,`AUT_GROUP_NAME`,`AURHORITY_ID`,`BZ`) values ('ag_001','group01','权限组1','@@aut_001@@aut_002',NULL),('ag_002','group02','权限组2','@@aut_001@@aut_002',NULL);

/*Table structure for table `t_link_address` */

DROP TABLE IF EXISTS `t_link_address`;

CREATE TABLE `t_link_address` (
  `PK_ID` varchar(50) DEFAULT NULL,
  `LINK_NAME` varchar(50) DEFAULT NULL,
  `LINK_ADDRESS` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_link_address` */

insert  into `t_link_address`(`PK_ID`,`LINK_NAME`,`LINK_ADDRESS`) values ('l_001','主页','http://main'),('l_002','查询','http://search');

/*Table structure for table `t_organization` */

DROP TABLE IF EXISTS `t_organization`;

CREATE TABLE `t_organization` (
  `PK_ID` varchar(50) DEFAULT NULL,
  `ORG_ID` varchar(50) DEFAULT NULL,
  `ORG_NAME` varchar(100) DEFAULT NULL,
  `ORG_SHORT_NAME` varchar(50) DEFAULT NULL,
  `PARENT_ID` varchar(50) DEFAULT NULL,
  `BZ` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_organization` */

insert  into `t_organization`(`PK_ID`,`ORG_ID`,`ORG_NAME`,`ORG_SHORT_NAME`,`PARENT_ID`,`BZ`) values ('org_001','org_001','梦工厂','梦工厂','A',NULL);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `ROLE_ID` varchar(50) NOT NULL,
  `ROLE_NAME` varchar(50) DEFAULT NULL,
  `AUTHORITY_ID` varchar(200) DEFAULT NULL,
  `BZ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`ROLE_ID`,`ROLE_NAME`,`AUTHORITY_ID`,`BZ`) values ('r_001','管理','@@au_001@@au_002@@',NULL),('r_002','查询','@@au_002@@au_003@@',NULL),('r_003','编辑','@@au_003@@au_002@@au_001@@',NULL);

/*Table structure for table `t_user_infor` */

DROP TABLE IF EXISTS `t_user_infor`;

CREATE TABLE `t_user_infor` (
  `PK_ID` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(50) DEFAULT NULL,
  `USER_NAME` varchar(10) DEFAULT NULL,
  `USER_AGE` int(11) DEFAULT NULL,
  `USER_SEX` varchar(5) DEFAULT NULL,
  `USER_PHONENUM` varchar(20) DEFAULT NULL,
  `USER_EMAIL` varchar(100) DEFAULT NULL,
  `USER_WEIXIN` varchar(50) DEFAULT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ORGANIZATION_ID` varchar(50) DEFAULT NULL,
  `BZ` varchar(100) DEFAULT NULL,
  `USER_ACCOUNT` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(50) DEFAULT NULL,
  `ROLE_ID` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_infor` */

insert  into `t_user_infor`(`PK_ID`,`USER_ID`,`USER_NAME`,`USER_AGE`,`USER_SEX`,`USER_PHONENUM`,`USER_EMAIL`,`USER_WEIXIN`,`CREATE_TIME`,`UPDATE_TIME`,`ORGANIZATION_ID`,`BZ`,`USER_ACCOUNT`,`USER_PASSWORD`,`ROLE_ID`) values ('1','001','陈珺',34,'女','18519090160','13661169874@163.com','158231050','2018-10-23 16:48:14','2018-10-22 11:35:38','org_001','123','chenjun123','chenjun456','@@r_001@@r_002@@r_003@@'),('2','002','丁丁花',35,'男','18519090161','13661169874@163.com',NULL,'2018-10-23 17:09:32','2018-10-22 11:35:38','org_001','345','chenjun123','chenjun456','@@r_002@@r_003@@');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
