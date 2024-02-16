-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: transportmanagement
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `privateownership`
--

DROP TABLE IF EXISTS `privateownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privateownership` (
  `license_plate_number` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`license_plate_number`),
  KEY `POwner_f1` (`email_id`),
  CONSTRAINT `POwner_f1` FOREIGN KEY (`email_id`) REFERENCES `staff` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privateownership`
--

LOCK TABLES `privateownership` WRITE;
/*!40000 ALTER TABLE `privateownership` DISABLE KEYS */;
INSERT INTO `privateownership` VALUES ('GJ01AB1234','staffA@iitgn.ac.in'),('GJ02CD4567','staffB@iitgn.ac.in'),('GJ03EF7890','staffC@iitgn.ac.in'),('GJ04GH0123','staffD@iitgn.ac.in'),('GJ05IJ4567','staffE@iitgn.ac.in'),('GJ06KL7890','staffF@iitgn.ac.in'),('RJ07MN0123','staffG@iitgn.ac.in'),('RJ08OP3456','staffH@iitgn.ac.in'),('GJ09QR6789','staffI@iitgn.ac.in'),('GJ10ST0123','staffJ@iitgn.ac.in');
/*!40000 ALTER TABLE `privateownership` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:27:03
