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
-- Table structure for table `allocatedparking`
--

DROP TABLE IF EXISTS `allocatedparking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allocatedparking` (
  `license_plate_number` varchar(16) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`license_plate_number`),
  KEY `AllotPark_f2` (`location`),
  CONSTRAINT `AllotPark_f1` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`),
  CONSTRAINT `AllotPark_f2` FOREIGN KEY (`location`) REFERENCES `parking_space` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocatedparking`
--

LOCK TABLES `allocatedparking` WRITE;
/*!40000 ALTER TABLE `allocatedparking` DISABLE KEYS */;
INSERT INTO `allocatedparking` VALUES ('GJ04GH0123','Academic Block Parking lot'),('RJ08OP3456','Academic Block Parking lot'),('GJ03EF7890','Behind Academic Block'),('RJ07MN0123','Behind Academic Block'),('GJ02CD4567','Hostel Parking Area'),('GJ06KL7890','Hostel Parking Area'),('GJ10ST0123','Hostel Parking Area'),('GJ01AB1234','Housing Block Parking Area'),('GJ05IJ4567','Housing Block Parking Area'),('GJ09QR6789','Housing Block Parking Area');
/*!40000 ALTER TABLE `allocatedparking` ENABLE KEYS */;
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
