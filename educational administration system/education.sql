/*
SQLyog v10.2 
MySQL - 5.6.25-log : Database - education
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`education` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `education`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(15) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values ('admin','admin','1234');

/*Table structure for table `cour_tea` */

DROP TABLE IF EXISTS `cour_tea`;

CREATE TABLE `cour_tea` (
  `tea_tno` varchar(15) NOT NULL,
  `cour_cno` varchar(15) NOT NULL,
  PRIMARY KEY (`tea_tno`,`cour_cno`),
  KEY `cno` (`cour_cno`),
  CONSTRAINT `cour_tea_ibfk_1` FOREIGN KEY (`tea_tno`) REFERENCES `teacher` (`tno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cour_tea_ibfk_2` FOREIGN KEY (`cour_cno`) REFERENCES `course` (`cno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cour_tea` */

insert  into `cour_tea`(`tea_tno`,`cour_cno`) values ('159600012','10001'),('159600006','10002'),('159600012','10002'),('159600028','10003'),('159600045','10003'),('159600098','10003'),('159600067','10004'),('159600098','10004'),('159600045','10005'),('159600067','10005'),('159600098','10005'),('159600028','10006'),('159600012','10008'),('159600045','10009');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cno` varchar(15) NOT NULL,
  `cname` varchar(15) NOT NULL,
  `cgrade` int(3) NOT NULL,
  `chour` int(3) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`cno`,`cname`,`cgrade`,`chour`,`ctime`) values ('10001','数字摄影',2,24,'周三 1-9 (10-16)'),('10002','数字图形分析与艺术化处理',3,48,'周一 1-2 (1-16)'),('10003','java',4,48,'周四 3-5 (1-16)'),('10004','PS',3,48,'周六 1-9 (1-16)'),('10005','计算机组成原理',4,48,'周五 1-3 (1-16)'),('10006','数据库',4,48,'周四 6-9 (1-16)'),('10007','艺术欣赏',2,24,'周六 1-9 (12-16)'),('10008','英语',2,48,'周三 1-2 （1-16）'),('10009','操作系统',2,48,'周三 1-3 (12-16)');

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `stu_sno` varchar(15) NOT NULL,
  `cour_cno` varchar(15) NOT NULL,
  `score` int(3) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`stu_sno`,`cour_cno`),
  KEY `FK_sco_scour_cno` (`cour_cno`),
  CONSTRAINT `FK_sco_scour_cno` FOREIGN KEY (`cour_cno`) REFERENCES `course` (`cno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sco_stu_sno` FOREIGN KEY (`stu_sno`) REFERENCES `student` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `score` */

insert  into `score`(`stu_sno`,`cour_cno`,`score`) values ('2014329700001','10002',100),('2014329700001','10003',99),('2014329700001','10006',100),('2014329700001','10009',99),('2222','10001',-1),('2222','10004',90),('2222','10007',-1),('2222','10008',-1),('329700032','10001',-1),('329700032','10003',-1),('329700032','10004',80),('329700032','10006',67),('329700032','10009',-1);

/*Table structure for table `stu_cour` */

DROP TABLE IF EXISTS `stu_cour`;

CREATE TABLE `stu_cour` (
  `cour_cno` varchar(15) NOT NULL,
  `stu_sno` varchar(15) NOT NULL,
  `tea_tno` varchar(15) NOT NULL,
  PRIMARY KEY (`cour_cno`,`stu_sno`,`tea_tno`),
  KEY `FK_tea_tno` (`tea_tno`),
  KEY `FK_stu_sno` (`stu_sno`),
  CONSTRAINT `FK_cour_cno` FOREIGN KEY (`cour_cno`) REFERENCES `course` (`cno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stu_sno` FOREIGN KEY (`stu_sno`) REFERENCES `student` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tea_tno` FOREIGN KEY (`tea_tno`) REFERENCES `teacher` (`tno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_cour` */

insert  into `stu_cour`(`cour_cno`,`stu_sno`,`tea_tno`) values ('10002','2014329700001','159600006'),('10001','2222','159600012'),('10001','329700032','159600012'),('10008','2222','159600012'),('10006','2014329700001','159600028'),('10006','329700032','159600028'),('10003','329700032','159600045'),('10009','2014329700001','159600045'),('10009','329700032','159600045'),('10003','2014329700001','159600098'),('10004','2222','159600098'),('10004','329700032','159600098'),('10007','2222','159600098');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sno` varchar(15) NOT NULL,
  `sname` varchar(15) NOT NULL,
  `ssex` int(3) NOT NULL,
  `sdept` varchar(15) NOT NULL,
  `sclass` varchar(15) NOT NULL,
  `sage` int(3) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`sno`,`sname`,`ssex`,`sdept`,`sclass`,`sage`,`username`,`password`) values ('1111','龙猫',1,'信息学院','数媒',21,'1111','11'),('123','发散点',1,'信息','',0,NULL,NULL),('2014329700001','陈霞',1,'信息','14数字媒体技术',22,'chenxia','123456'),('2222','昊昊',0,'信息学院','电子',20,'2222','22'),('329700032','张三',0,'信息学院','数字媒体技术一班',20,'3333','33'),('95001','哈哈',0,'信息学院','会计',20,'95001','1234');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tno` varchar(15) NOT NULL,
  `tname` varchar(15) NOT NULL,
  `tdept` varchar(15) NOT NULL,
  `tage` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`tno`,`tname`,`tdept`,`tage`,`username`,`password`) values ('159600006','庄红','服装学院',32,'5555','55'),('159600012','张海翔','信息学院',34,'6666','66'),('159600028','舒挺','信息学院',23,'7777','77'),('159600034','吴彩强','马克思学院',39,'9999','99'),('159600045','尹小虎','马克思主义学院',38,'8888','88'),('159600067','桂宁','信息学院',28,'4444','44'),('159600098','宋瑾钰','信息学院',25,'3333','33');

/*Table structure for table `teacher1` */

DROP TABLE IF EXISTS `teacher1`;

CREATE TABLE `teacher1` (
  `tcno` varchar(15) NOT NULL,
  `tname` varchar(15) NOT NULL,
  `tage` int(3) NOT NULL,
  `tdept` varchar(15) NOT NULL,
  `tno` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`tcno`,`username`),
  CONSTRAINT `FK_t_cour_cno` FOREIGN KEY (`tcno`) REFERENCES `course` (`cno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher1` */

insert  into `teacher1`(`tcno`,`tname`,`tage`,`tdept`,`tno`,`username`,`password`) values ('10001','王梅',45,'艺术设计学院','159600034','7777','77'),('10002','沈梅英',32,'外语学院','159600019','9999','99'),('10003','李刚',45,'信息学院','159600078','6666','66'),('10004','张海',23,'信息学院','159600032','8888','88'),('10006','李欣',38,'信息学院','159600045','5555','55'),('10007','王梅',45,'艺术设计学院','159600034','7777','77'),('10008','蒋云',39,'艺术设计学院','159600023','4444','44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
