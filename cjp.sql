CREATE DATABASE 

USE `cjp`;

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `s_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `msg` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
);

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
);


insert  into `course`(`cid`,`cname`) values 
(101,'MCA'),
(102,'MBA');

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `hobbies` varchar(50) DEFAULT NULL
);
DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
);


insert  into `login`(`user`,`pass`) values 
('1','1'),
('aa','aaa');


DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
  `S.NO` int(11) NOT NULL AUTO_INCREMENT,
  `E_NO` varchar(15) DEFAULT NULL,
  `FName` varchar(30) DEFAULT NULL,
  `DOB` varchar(15) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Course` varchar(10) DEFAULT NULL,
  `Year` varchar(5) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Photo` longblob,
  PRIMARY KEY (`S.NO`)
) ;

