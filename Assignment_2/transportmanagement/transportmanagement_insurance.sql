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
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insurance_id` varchar(18) NOT NULL,
  `license_plate_number` varchar(16) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  PRIMARY KEY (`insurance_id`,`license_plate_number`),
  KEY `Insurance_f1` (`license_plate_number`),
  CONSTRAINT `Insurance_f1` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('INS012345678','GJ10ST0123','Alessandro','Carso','2024-10-01','2027-10-01'),('INS123456789','GJ01AB1234','John','Doe','2024-01-01','2029-01-01'),('INS123456789','RJ07MN0245','Max','Verstappen','2024-11-01','2029-11-01'),('INS234567890','GJ02CD4567','Alice','Smith','2024-02-01','2027-02-01'),('INS234567890','GJ09QT6969','Lewis','Hamilton','2024-12-01','2027-12-01'),('INS345678901','GJ03EF7890','Michael','Johnson','2024-03-01','2029-03-01'),('INS456789012','GJ04GH0123','Emily','Brown','2024-04-01','2027-04-01'),('INS567890123','GJ05IJ4567','David','Martinez','2024-05-01','2027-05-01'),('INS678901234','GJ06KL7890','Jessica','Garcia','2024-06-01','2029-06-01'),('INS789012345','RJ07MN0123','Daniel','Wilson','2024-07-01','2029-07-01'),('INS890123456','RJ08OP3456','Olivia','Anderson','2024-08-01','2027-08-01'),('INS901234567','GJ09QR6789','Sophia','Taylor','2024-09-01','2029-09-01');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
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
