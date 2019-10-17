-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `job_location` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (103,'deepu','deepak','ranjith@gmail.com','919553547891','3919-07-23','engineer',0,'3897-05-04','jntu'),(105,'deepa','chinthireddy','reddy@gmail.com','919491858431','3918-07-23','associate',29000,'3897-10-30','banglore'),(109,'rahul','chowdary','rahul@gmail.com','919494728415','3919-10-23','Accountant',32000,'3893-04-23','hyderabad'),(110,'gaya','paka','gaya@gmail.com','911234567890','3919-04-21','manager',28000,'3897-08-03','hyd'),(111,'chinnu','paka','paka@gmail.com','911234567890','3918-05-21','manager',24000,'3894-05-21','chennai'),(112,'bhagya','paka','paka@gmail.com','911234567890','3919-10-21','associate',21000,'3893-08-23','gurgon'),(113,'jeeva','dhoni','jeeav@gmail.com','912134567890','3919-09-21','manager',0,'3892-07-03','hyd'),(114,'sakshi','dhoni','doni@gmail.com','911234567890','3918-04-21','programmer',0,'3893-04-23','hyd');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(45) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Programmer'),(2,'HumanResources'),(3,'Accountant'),(4,'SalesManager'),(5,'Manager'),(6,'SalesRepresentative'),(7,'AssociateEngineer'),(8,'DataAnalyst'),(9,'Webdeveloper'),(10,'Networkengineer');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-13 22:36:25
