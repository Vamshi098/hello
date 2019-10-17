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
-- Table structure for table `leaves_table`
--

DROP TABLE IF EXISTS `leaves_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `leaves_table` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `leave_type` varchar(45) DEFAULT NULL,
  `from_date` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `leave_description` varchar(45) DEFAULT NULL,
  `srarus` varchar(45) DEFAULT NULL,
  UNIQUE KEY `leave_id_UNIQUE` (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves_table`
--

LOCK TABLES `leaves_table` WRITE;
/*!40000 ALTER TABLE `leaves_table` DISABLE KEYS */;
INSERT INTO `leaves_table` VALUES (1,8065679,'sick','10-02-2020','20-02-2020','test','test','Hold'),(2,8065679,'sick','10-09-2019','12-09-2019','Associate','Fallen Sick','Hold'),(3,8065679,'Earned Leave','2019-10-03','2019-10-03',NULL,NULL,'Hold'),(4,8065679,'Earned Leave','2019-10-03','2019-10-03',NULL,'tets','Hold'),(5,8065679,'Earned Leave','2019-10-04','2019-10-05',NULL,'tets','Hold'),(6,8065679,'Earned Leave','2019-10-05','2019-10-06',NULL,'tets','Hold'),(7,8065679,'Sick Leave','2019-10-10','2019-10-12',NULL,'tets','Hold'),(8,8065679,'Earned Leave','2019-10-17','2019-10-19',NULL,'tets','Hold');
/*!40000 ALTER TABLE `leaves_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-13 22:19:47
