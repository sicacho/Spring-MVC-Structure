CREATE DATABASE  IF NOT EXISTS `officei2se` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `officei2se`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: officei2se
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbldocument`
--

DROP TABLE IF EXISTS `tbldocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldocument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `security` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentpj_idx` (`project`),
  CONSTRAINT `documentpj` FOREIGN KEY (`project`) REFERENCES `tblproject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldocument`
--

LOCK TABLES `tbldocument` WRITE;
/*!40000 ALTER TABLE `tbldocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproject`
--

DROP TABLE IF EXISTS `tblproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproject`
--

LOCK TABLES `tblproject` WRITE;
/*!40000 ALTER TABLE `tblproject` DISABLE KEYS */;
INSERT INTO `tblproject` VALUES (1,'Project I2SE','This is Project I2SE ',1,'2015-04-20','2015-07-07');
/*!40000 ALTER TABLE `tblproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'Manager'),(2,'Leader'),(3,'Staff');
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblroleuser`
--

DROP TABLE IF EXISTS `tblroleuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblroleuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbluser` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userrole_idx` (`tbluser`),
  KEY `rolerole_idx` (`role`),
  CONSTRAINT `rolerole` FOREIGN KEY (`role`) REFERENCES `tblrole` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userrole` FOREIGN KEY (`tbluser`) REFERENCES `tbluser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroleuser`
--

LOCK TABLES `tblroleuser` WRITE;
/*!40000 ALTER TABLE `tblroleuser` DISABLE KEYS */;
INSERT INTO `tblroleuser` VALUES (1,2,1),(2,1,3),(3,3,2),(4,4,1);
/*!40000 ALTER TABLE `tblroleuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltask`
--

DROP TABLE IF EXISTS `tbltask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `approval` int(11) DEFAULT NULL,
  `userTask` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `reviewer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_idx` (`creator`),
  KEY `reviewer_idx` (`reviewer`),
  KEY `userTask_idx` (`userTask`),
  CONSTRAINT `creator` FOREIGN KEY (`creator`) REFERENCES `tbluser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviewer` FOREIGN KEY (`reviewer`) REFERENCES `tbluser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userTask` FOREIGN KEY (`userTask`) REFERENCES `tbluser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltask`
--

LOCK TABLES `tbltask` WRITE;
/*!40000 ALTER TABLE `tbltask` DISABLE KEYS */;
INSERT INTO `tbltask` VALUES (1,'Fix Bug','This is detail',4,'2015-04-20',NULL,0,1,2,4),(2,'Quiz1','This is detail',3,'2015-04-20',NULL,0,1,2,3),(3,'Quiz2','Detail Quiz 2',2,'2015-04-24',NULL,0,3,2,1),(4,'Quiz4','Detail Quiz 4',5,'2015-04-24','2015-04-28',0,1,2,3),(5,'Quiz 5','This is Detail of Quiz 5',6,NULL,NULL,NULL,1,4,3);
/*!40000 ALTER TABLE `tbltask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userProject_idx` (`project`),
  CONSTRAINT `userProject` FOREIGN KEY (`project`) REFERENCES `tblproject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,'sicacho','123456','khang@gmail.com','01653318358',1),(2,'admin','123456','khang@gmail','01653318358',1),(3,'teen','123456','khang@gmail.com','15466133548',1),(4,'test','123456','test@gamil.com','09519581085',1);
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-15 18:41:30
