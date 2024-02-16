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
-- Table structure for table `drivenby`
--

DROP TABLE IF EXISTS `drivenby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivenby` (
  `driver_license_number` varchar(16) NOT NULL,
  `license_plate_number` varchar(50) NOT NULL,
  PRIMARY KEY (`driver_license_number`,`license_plate_number`),
  KEY `drive_by_f2` (`license_plate_number`),
  CONSTRAINT `drive_by_f1` FOREIGN KEY (`driver_license_number`) REFERENCES `driver` (`driver_license_number`),
  CONSTRAINT `drive_by_f2` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivenby`
--

LOCK TABLES `drivenby` WRITE;
/*!40000 ALTER TABLE `drivenby` DISABLE KEYS */;
INSERT INTO `drivenby` VALUES ('1234567890123456','GJ01AB1234'),('2345678901234567','GJ02CD4567'),('3456789012345678','GJ03EF7890'),('4567890123456789','GJ04GH0123'),('5678901234567890','GJ05IJ4567'),('6789012345678901','GJ06KL7890'),('9012345678901234','GJ09QR6789'),('0123456789012345','GJ10ST0123'),('7890123456789012','RJ07MN0123'),('8901234567890123','RJ08OP3456');
/*!40000 ALTER TABLE `drivenby` ENABLE KEYS */;
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
