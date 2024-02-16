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
-- Table structure for table `shopvehicles`
--

DROP TABLE IF EXISTS `shopvehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopvehicles` (
  `name_of_shop` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `license_plate_number` varchar(16) NOT NULL,
  PRIMARY KEY (`name_of_shop`,`location`,`license_plate_number`),
  KEY `SV_f2` (`location`),
  KEY `SV_f3` (`license_plate_number`),
  CONSTRAINT `SV_f1` FOREIGN KEY (`name_of_shop`) REFERENCES `shops` (`name_of_shop`),
  CONSTRAINT `SV_f2` FOREIGN KEY (`location`) REFERENCES `shops` (`location`),
  CONSTRAINT `SV_f3` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopvehicles`
--

LOCK TABLES `shopvehicles` WRITE;
/*!40000 ALTER TABLE `shopvehicles` DISABLE KEYS */;
INSERT INTO `shopvehicles` VALUES ('Amul','Duven Hostel','GJ01AB1234'),('Krupa Generals','Duven Hostel','GJ02CD4567'),('JK Grocery','Firpeal Hostel','GJ03EF7890'),('VS FastFood','Hiqom Hostel','GJ04GH0123'),('Fruit Shop','Central Arcade','GJ05IJ4567'),('2 Degree','AB 1','GJ06KL7890'),('JK Grocery','Firpeal Hostel','GJ09QR6789'),('2 Degree','AB 1','GJ09QT6969'),('VS FastFood','Hiqom Hostel','GJ10ST0123'),('JK Grocery','Firpeal Hostel','RJ07MN0123'),('Fruit Shop','Central Arcade','RJ07MN0245'),('VS FastFood','Hiqom Hostel','RJ08OP3456');
/*!40000 ALTER TABLE `shopvehicles` ENABLE KEYS */;
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
