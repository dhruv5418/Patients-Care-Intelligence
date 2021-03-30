/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - pci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pci` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pci`;

/*Table structure for table `complaint_master` */

DROP TABLE IF EXISTS `complaint_master`;

CREATE TABLE `complaint_master` (
  `complaintId` int(11) NOT NULL auto_increment,
  `message` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `lvo_loginId` int(11) default NULL,
  `date` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `time` varchar(255) default NULL,
  `reply` varchar(255) default NULL,
  PRIMARY KEY  (`complaintId`),
  KEY `FK_wqup3svodgt2gtgukxdyi722` (`lvo_loginId`),
  CONSTRAINT `FK_wqup3svodgt2gtgukxdyi722` FOREIGN KEY (`lvo_loginId`) REFERENCES `login_master` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint_master` */

insert  into `complaint_master`(`complaintId`,`message`,`subject`,`lvo_loginId`,`date`,`status`,`time`,`reply`) values (1,'abcdxyz','ABCD',15,'12/04/2018','Answered','09:41:23','ok'),(2,'problem','mjp',14,'12/04/2018','Pending','09:43:15',NULL),(3,'user','user',11,'12/04/2018','Pending','09:43:34',NULL);

/*Table structure for table `dataset_master` */

DROP TABLE IF EXISTS `dataset_master`;

CREATE TABLE `dataset_master` (
  `datasetId` int(11) NOT NULL auto_increment,
  `datasetfilename` varchar(255) default NULL,
  `datasetfilepath` varchar(255) default NULL,
  `datasetname` varchar(255) default NULL,
  PRIMARY KEY  (`datasetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset_master` */

insert  into `dataset_master`(`datasetId`,`datasetfilename`,`datasetfilepath`,`datasetname`) values (9,'mypicfinal0002.jpg','D:\\work_01_01_2017\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\PCI\\\\doc','user'),(10,'pic.jpg','D:\\work_01_01_2017\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\PCI\\\\doc','Raviraj');

/*Table structure for table `feedback_master` */

DROP TABLE IF EXISTS `feedback_master`;

CREATE TABLE `feedback_master` (
  `feedbackId` int(11) NOT NULL auto_increment,
  `date` varchar(255) default NULL,
  `message` varchar(255) default NULL,
  `star` varchar(255) default NULL,
  `time` varchar(255) default NULL,
  `lvo_loginId` int(11) default NULL,
  PRIMARY KEY  (`feedbackId`),
  KEY `FK_2byhlvt15pkkxairahkrmhr4i` (`lvo_loginId`),
  CONSTRAINT `FK_2byhlvt15pkkxairahkrmhr4i` FOREIGN KEY (`lvo_loginId`) REFERENCES `login_master` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback_master` */

insert  into `feedback_master`(`feedbackId`,`date`,`message`,`star`,`time`,`lvo_loginId`) values (1,'20/03/2018','gdsdksdksdsgd','4','23:27:25',11),(2,'20/03/2018','loved it!!!','5','23:47:40',9),(3,'21/03/2018','good','3','11:16:30',11),(4,'23/03/2018','dhruv','1','01:27:46',11);

/*Table structure for table `login_master` */

DROP TABLE IF EXISTS `login_master`;

CREATE TABLE `login_master` (
  `loginId` int(11) NOT NULL auto_increment,
  `email` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `enable` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_master` */

insert  into `login_master`(`loginId`,`email`,`password`,`role`,`enable`) values (9,'abc@abc.com','abc',NULL,NULL),(11,'user@user.com','user','ROLE_USER','1'),(12,'dhruvj5418@gmail.com','dhruv','ROLE_ADMIN','1'),(13,'xyz@xyz.com','xyz',NULL,NULL),(14,'mjp5418@gmail.com','montu',NULL,NULL),(15,'pooja@pooja.com','pooja','ROLE_USER','1'),(16,'bhoomi@bhoomi.com','bhoomi','ROLE_USER','1'),(17,'brp76980@gmail.com','brijesh','ROLE_USER','1');

/*Table structure for table `nurse_master` */

DROP TABLE IF EXISTS `nurse_master`;

CREATE TABLE `nurse_master` (
  `nurseId` int(11) NOT NULL auto_increment,
  `birthdate` varchar(255) default NULL,
  `firstname` varchar(255) default NULL,
  `lastname` varchar(255) default NULL,
  `mobilenumber` varchar(255) default NULL,
  `photoname` varchar(255) default NULL,
  `photopath` varchar(255) default NULL,
  `lvo_loginId` int(11) default NULL,
  PRIMARY KEY  (`nurseId`),
  KEY `FK_73lheooeblsqu487th2vjhur0` (`lvo_loginId`),
  CONSTRAINT `FK_73lheooeblsqu487th2vjhur0` FOREIGN KEY (`lvo_loginId`) REFERENCES `login_master` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nurse_master` */

insert  into `nurse_master`(`nurseId`,`birthdate`,`firstname`,`lastname`,`mobilenumber`,`photoname`,`photopath`,`lvo_loginId`) values (4,'2011-08-19','abc','abc','hjggjkgjk',NULL,NULL,9),(5,'2011-08-19','user','user','9876543210',NULL,NULL,11),(7,'2011-08-19','xyz','xyz','9876543210',NULL,NULL,13),(8,'1997-03-04','Dhruv','Patel','9824369062',NULL,NULL,14),(9,'2011-08-19','Patel','Pooja','5544446466',NULL,NULL,15),(10,'1997-05-17','Patel','Bhoomi','9876543210',NULL,NULL,16),(11,'1996-06-13','Brijesh','Patel','7698072323',NULL,NULL,17);

/*Table structure for table `nursedetails` */

DROP TABLE IF EXISTS `nursedetails`;

CREATE TABLE `nursedetails` (
  `Id` int(10) NOT NULL auto_increment,
  `Name` varchar(20) default NULL,
  `Minute` varchar(10) default NULL,
  `Hour` varchar(10) default NULL,
  `Day` varchar(10) default NULL,
  `Month` varchar(10) default NULL,
  `Year` varchar(10) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nursedetails` */

insert  into `nursedetails`(`Id`,`Name`,`Minute`,`Hour`,`Day`,`Month`,`Year`) values (1,'Pooja','25','11','7','4','2018'),(2,'Bhoomi','58','13','7','4','2018'),(3,'abc','36','15','7','4','2018'),(4,'Dhruv','40','11','13','4','2018'),(5,'Dhruv','42','11','13','4','2018'),(6,'Dhruv','44','11','13','4','2018'),(7,'Dhruv','57','11','13','4','2018'),(8,'Dhruv','33','12','13','4','2018');

/*Table structure for table `patientdetails` */

DROP TABLE IF EXISTS `patientdetails`;

CREATE TABLE `patientdetails` (
  `patientId` int(11) NOT NULL auto_increment,
  `patientAddress` varchar(255) default NULL,
  `patientBedNo` varchar(255) default NULL,
  `patientContact` varchar(255) default NULL,
  `patientDOB` varchar(255) default NULL,
  `patientGender` varchar(255) default NULL,
  `patientName` varchar(255) default NULL,
  `patientRoomNo` varchar(255) default NULL,
  `wardVO_wardId` int(11) default NULL,
  PRIMARY KEY  (`patientId`),
  KEY `FK_k8syq4s57p9smu0ah4rgnn8gg` (`wardVO_wardId`),
  CONSTRAINT `FK_k8syq4s57p9smu0ah4rgnn8gg` FOREIGN KEY (`wardVO_wardId`) REFERENCES `ward_master` (`wardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patientdetails` */

insert  into `patientdetails`(`patientId`,`patientAddress`,`patientBedNo`,`patientContact`,`patientDOB`,`patientGender`,`patientName`,`patientRoomNo`,`wardVO_wardId`) values (2,'abcdef','2','4553435434','2012-02-22','Male','abc','1',8),(5,'abcdef','2','4553435434','2012-02-22','Male','sw','1',8),(6,'Kadi','3','7698072323','1996-06-13','Male','Brijesh','1',8),(7,'06/Vishweshwar Bunglows','2','9824369062','0197-03-04','Male','Dhruv Patel','1',8);

/*Table structure for table `patientscheduledetails` */

DROP TABLE IF EXISTS `patientscheduledetails`;

CREATE TABLE `patientscheduledetails` (
  `pscheduleId` int(11) NOT NULL auto_increment,
  `medicineDescription` varchar(255) default NULL,
  `medicineTime` varchar(255) default NULL,
  `patientMedicine` varchar(255) default NULL,
  `patientVO_patientId` int(11) default NULL,
  `nurseVO_nurseId` int(11) default NULL,
  PRIMARY KEY  (`pscheduleId`),
  KEY `FK_7jum84jmmmlpvep19egidbcxk` (`patientVO_patientId`),
  KEY `FK_6nn9d3p7cxktkglp1sydgsd3x` (`nurseVO_nurseId`),
  CONSTRAINT `FK_6nn9d3p7cxktkglp1sydgsd3x` FOREIGN KEY (`nurseVO_nurseId`) REFERENCES `nurse_master` (`nurseId`),
  CONSTRAINT `FK_7jum84jmmmlpvep19egidbcxk` FOREIGN KEY (`patientVO_patientId`) REFERENCES `patientdetails` (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patientscheduledetails` */

insert  into `patientscheduledetails`(`pscheduleId`,`medicineDescription`,`medicineTime`,`patientMedicine`,`patientVO_patientId`,`nurseVO_nurseId`) values (3,'after dinner','21:45','IP',6,9),(4,'abcd','13:45:00','xyz',7,9);

/*Table structure for table `schedular_master` */

DROP TABLE IF EXISTS `schedular_master`;

CREATE TABLE `schedular_master` (
  `schedularId` int(11) NOT NULL auto_increment,
  `currentdate` varchar(255) default NULL,
  `enddate` varchar(255) default NULL,
  `endtime` varchar(255) default NULL,
  `startdate` varchar(255) default NULL,
  `starttime` varchar(255) default NULL,
  `nurseVO_nurseId` int(11) default NULL,
  `wardVO_wardId` int(11) default NULL,
  PRIMARY KEY  (`schedularId`),
  KEY `FK_fqicqx9qyvuev7tlef53rgpmt` (`nurseVO_nurseId`),
  KEY `FK_nlyw2jucg040tqlff403q6xck` (`wardVO_wardId`),
  CONSTRAINT `FK_fqicqx9qyvuev7tlef53rgpmt` FOREIGN KEY (`nurseVO_nurseId`) REFERENCES `nurse_master` (`nurseId`),
  CONSTRAINT `FK_nlyw2jucg040tqlff403q6xck` FOREIGN KEY (`wardVO_wardId`) REFERENCES `ward_master` (`wardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schedular_master` */

insert  into `schedular_master`(`schedularId`,`currentdate`,`enddate`,`endtime`,`startdate`,`starttime`,`nurseVO_nurseId`,`wardVO_wardId`) values (9,'2018-02-20','2018-02-12','13:45:00','2018-02-13','13:45:00',5,8),(10,'2018-03-16','2018-03-19','13:45:00','2018-03-16','13:45:00',7,10),(11,'2018-04-09','2018-04-24','13:45:00','2018-04-09','13:45:00',9,8),(12,'2018-04-12','2018-04-16','13:45:00','2018-04-12','13:45:00',9,17);

/*Table structure for table `ward_master` */

DROP TABLE IF EXISTS `ward_master`;

CREATE TABLE `ward_master` (
  `wardId` int(11) NOT NULL auto_increment,
  `wardname` varchar(255) default NULL,
  `wardtype` varchar(255) default NULL,
  PRIMARY KEY  (`wardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ward_master` */

insert  into `ward_master`(`wardId`,`wardname`,`wardtype`) values (8,'1','ICU'),(10,'2','OPD'),(15,'1','OT'),(16,'2','GENERAL'),(17,'1','GENERAL');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
