CREATE DATABASE  IF NOT EXISTS `edonation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `edonation`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: edonation
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blooddonation`
--

DROP TABLE IF EXISTS `blooddonation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blooddonation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroup` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `lastBloodDonateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blooddonation`
--

LOCK TABLES `blooddonation` WRITE;
/*!40000 ALTER TABLE `blooddonation` DISABLE KEYS */;
INSERT INTO `blooddonation` VALUES (1,'B possitive','01765515354','NotAvableable','ashif@gmail.com','mm jitu','2019-10-02 00:00:00'),(7,'B possitive','dfytuty','All Raddy Booked','mmjitu2019@gmail.com','md nuruzzaman','2019-10-03 00:00:00'),(8,'AB possitive','01765515354','Avableable','saiquatsurjo@gmail.com','mm jitu','2019-10-02 00:00:00'),(10,'A Nagative','01765515354','All Raddy Booked','mmjitu2019@gmail.com','mm jitu','2019-10-02 00:00:00'),(11,'A Positive','01765515354','All Raddy Booked','mmjitu2019@gmail.com','mm jitu','2019-10-01 00:00:00'),(12,'O Positive','01765515354','NotAvableable','adoralim121@gmail.com','alim','2019-10-04 00:00:00'),(13,'A Negative','01765515354','All Raddy Booked','as3339if@gmail.com','mm jitu','2019-09-30 00:00:00'),(14,'A Negative','01765515354','All Raddy Booked','as3339if@gmail.com','abdulla al ashif','2019-10-03 00:00:00'),(15,'AB Positive','01765515354','Avableable','mmjitu2019@gmail.com','md nuruzzaman','2019-10-10 00:00:00');
/*!40000 ALTER TABLE `blooddonation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'mmjitu2019@gmail.com','thanks','mm jitu','freadback');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diposit`
--

DROP TABLE IF EXISTS `diposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depositBalance` int(11) NOT NULL,
  `totalBalance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diposit`
--

LOCK TABLES `diposit` WRITE;
/*!40000 ALTER TABLE `diposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `diposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bKashAcc` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `needammount` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (83,'20-30-18-09','munsigonj','01736083759','IFIC BANK','01738083759','2019-11-07 00:00:00','I Am A Help Less. My Current Sesuation Is Very dangaras                               \r\n                        ','mmjitu2019@gmail.com','md salauddin',5000,'salauddin.jpg','salauddin.jpg',1),(84,'20-30-18-09','Gazipur','01711158574','UCB BANK','01556284578','2019-11-01 00:00:00','I Need   Same Donation For My Helth Problem                           \r\n                        ','ashif@gmail.com','Md abdulla al ashif',49998,'ashifvi.jpg','ashifvi.jpg',1),(85,'20-30-18-09','Kustia','01711158574','IFIC BANK','01839047852','2019-11-07 00:00:00','I Have Need Same Money                               \r\n                        ','ruba@gmail.com','Md Rubait',75000,'tanvir.jpg','tanvir.jpg',1),(86,'20-30-18-09','Kumilla','01711158574','IFIC BANK','01754525458','2019-11-06 00:00:00','I Am A Help less Person                              \r\n                        ','rabbi@gmail.com','Fajla Rabbi',45000,'rabbi.jpg','rabbi.jpg',1),(87,'12-14-45-20','Rajbari','01736083759','UCB BANK','01754568547','2019-10-31 00:00:00','I Need Some Money                               \r\n                        ','alim@gmail.com','Abdul Alim',10000,'alim.jpg','alim.jpg',1),(88,'20-30-18-09','Damrai','01711158574','IFIC BANK','01706458552','2019-11-01 00:00:00','I Am Help Less                              \r\n                        ','munna@gmail.com','Ashraf Munna',47000,'munna.jpg','munna.jpg',1),(89,'12-14-45-20','faridpur','01765515354','IFIC BANK','01765515354','2019-11-02 00:00:00','i am chick                               \r\n                        ','mmjitu2019@gmail.com','md nuruzzaman',50000,'robiulIslam.jpg','dis.png',1);
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donationrege`
--

DROP TABLE IF EXISTS `donationrege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donationrege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donationrege`
--

LOCK TABLES `donationrege` WRITE;
/*!40000 ALTER TABLE `donationrege` DISABLE KEYS */;
INSERT INTO `donationrege` VALUES (6,'2020-01-08','alim@gmail.com','andul2','Male','alim','123456'),(10,'2020-01-29','mduruzzaman@gmail.com','md','Male','nuruzzaman','qwerty'),(12,'2020-01-29','mmjitu2019@gmail.com','mm','Male','jitu','gfdhfhgh'),(13,'2020-01-29','munna@gmail.com','munna','Male','khan','gfdhfhgh');
/*!40000 ALTER TABLE `donationrege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teammember`
--

DROP TABLE IF EXISTS `teammember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teammember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `qus` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teammember`
--

LOCK TABLES `teammember` WRITE;
/*!40000 ALTER TABLE `teammember` DISABLE KEYS */;
INSERT INTO `teammember` VALUES (21,'Damrai , Saver					\r\n						','2019-11-01','Bangladesh','as3339if@gmail.com','Ashraf Munna','male','student','munna.jpg','I love help						\r\n						','Team Member'),(23,'Munsigong					\r\n						','2019-11-06','Bangladesh','salauddin@gmail.com','Salauddin','male','student','salauddin.jpg','i am interested						\r\n						','Team Member'),(24,'kustia					\r\n						','2019-11-14','Bangladesh','ruba@gmail.com','Shoikot','male','student','DSC_0055.JPG','i am interested					\r\n						','Team Member');
/*!40000 ALTER TABLE `teammember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,NULL,'jitu@gmail.com',_binary '\0','mm','jitu','$2a$10$PEzi9ggbNKe/OjAaDGXQdue4sgSQoW7EzJh/mKVkRyCUlSNldnCbe','admin',NULL,'mmjitu');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mob` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `volunteerAddress` varchar(255) DEFAULT NULL,
  `volunteerDob` datetime DEFAULT NULL,
  `volunteerMobile` bigint(20) DEFAULT NULL,
  `volunteerName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (5,'						\r\n						','Bangladesh','2019-10-01 00:00:00','ashif@gmail.com','abdulla al ashif','Female','01765515354','',NULL,NULL,NULL,NULL,NULL),(6,'faridpur					\r\n						','Bangladesh','2019-10-01 00:00:00','saiquatsurjo@gmail.com','md nuruzzaman','Male','01765515354','student',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'edonation'
--

--
-- Dumping routines for database 'edonation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-05 17:15:55
