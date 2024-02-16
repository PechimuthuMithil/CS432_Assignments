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
-- Table structure for table `goodstransported`
--

DROP TABLE IF EXISTS `goodstransported`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goodstransported` (
  `license_plate_number` varchar(16) NOT NULL,
  `to_` varchar(20) DEFAULT NULL,
  `from_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`license_plate_number`),
  CONSTRAINT `GTrans_f1` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstransported`
--

LOCK TABLES `goodstransported` WRITE;
/*!40000 ALTER TABLE `goodstransported` DISABLE KEYS */;
INSERT INTO `goodstransported` VALUES ('GJ01AB1234','ITTGN Campus','Ahmedabad'),('GJ02CD4567','IITGN Campus','Palaj'),('GJ03EF7890','IITGN Campus','Vadodara'),('GJ04GH0123','IITGN Campus','Ahmedabad'),('GJ05IJ4567','IITGN Campus','Ahmedabad'),('GJ06KL7890','IITGN Campus','Ankleshwar'),('GJ09QR6789','IITGN Campus','Nadiad'),('GJ10ST0123','IITGN Campus','Ankleshwar'),('RJ07MN0123','IITGN Campus','Vadodara'),('RJ08OP3456','Palaj','IITGN Campus');
/*!40000 ALTER TABLE `goodstransported` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:27:04
