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
-- Table structure for table `transportationlog`
--

DROP TABLE IF EXISTS `transportationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportationlog` (
  `license_plate_number` varchar(16) NOT NULL,
  `starting_station` varchar(50) NOT NULL,
  `ending_station` varchar(50) NOT NULL,
  `time_` time DEFAULT NULL,
  `driver_first_name` varchar(20) NOT NULL,
  `driver_last_name` varchar(20) NOT NULL,
  `num_of_passengers` int DEFAULT NULL,
  `entry_exit` enum('entry','exit') NOT NULL,
  PRIMARY KEY (`license_plate_number`,`starting_station`,`ending_station`),
  KEY `TransLog_f2` (`starting_station`),
  KEY `TransLog_f3` (`ending_station`),
  CONSTRAINT `TransLog_f1` FOREIGN KEY (`license_plate_number`) REFERENCES `vehicle` (`license_plate_number`),
  CONSTRAINT `TransLog_f2` FOREIGN KEY (`starting_station`) REFERENCES `route` (`starting_station`),
  CONSTRAINT `TransLog_f3` FOREIGN KEY (`ending_station`) REFERENCES `route` (`ending_station`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportationlog`
--

LOCK TABLES `transportationlog` WRITE;
/*!40000 ALTER TABLE `transportationlog` DISABLE KEYS */;
INSERT INTO `transportationlog` VALUES ('GJ01AB1234','IITGN Campus','Ahmedabad Railway Station','08:00:00','Amit','Kumar',25,'exit'),('GJ02CD4567','Kudasan','IITGN Campus','12:00:00','John','Doe',20,'entry'),('GJ03EF7890','IITGN Campus','Gandhinagar Bus Stand','15:00:00','Emily','Brown',10,'exit'),('GJ04GH0123','Visat Circle','IITGN Campus','07:00:00','Amit','Kumar',15,'entry'),('GJ05IJ4567','IITGN Campus','Ahmedabad Airport','10:30:00','David','Martinez',5,'exit'),('GJ06KL7890','IITGN Campus','Gandhinagar Bus Stand','13:00:00','John','Doe',30,'exit'),('GJ09QR6789','IITGN Campus','Ahmedabad Airport','14:00:00','Sophia','Taylor',18,'exit'),('RJ07MN0123','IITGN Campus','Ahmedabad Airport','09:45:00','Jessica','Garcia',12,'exit'),('RJ07MN0123','Visat Circle','IITGN Campus','08:45:00','Daniel','Wilson',12,'entry'),('RJ08OP3456','IITGN Campus','Ahmedabad Airport','11:30:00','Michael','Johnson',8,'exit');
/*!40000 ALTER TABLE `transportationlog` ENABLE KEYS */;
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
