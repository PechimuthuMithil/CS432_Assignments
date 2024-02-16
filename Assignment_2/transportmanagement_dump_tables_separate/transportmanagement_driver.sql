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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_license_number` varchar(16) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  `date_of_joining` date DEFAULT NULL,
  `bank_details` json DEFAULT NULL,
  PRIMARY KEY (`driver_license_number`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('0123456789012345','Sophia','Taylor','2345678901','2021-05-20','{\"ifsc_code\": \"0123456785487890\", \"branch_name\": \"Houston\", \"account_number\": \"0123456780534647\"}'),('1234567890123456','Amit','Kumar','9876543210','2017-01-05','{\"ifsc_code\": \"1456239875487890\", \"branch_name\": \"Bangalore\", \"account_number\": \"1234567890534647\"}'),('2345678901234567','John','Doe','8765432109','2018-02-15','{\"ifsc_code\": \"2345678905487890\", \"branch_name\": \"New York\", \"account_number\": \"2345678900534647\"}'),('3456789012345678','Max','Verstappen','7654321098','2019-03-25','{\"ifsc_code\": \"3456789015487890\", \"branch_name\": \"Los Angeles\", \"account_number\": \"3456789010534647\"}'),('4567890123456789','Kora','Massey','6543210987','2020-04-10','{\"ifsc_code\": \"4567890125487890\", \"branch_name\": \"Chicago\", \"account_number\": \"4567890120534647\"}'),('5678901234567890','Emily','Brown','5432109876','2021-05-20','{\"ifsc_code\": \"5678901235487890\", \"branch_name\": \"Houston\", \"account_number\": \"5678901230534647\"}'),('6789012345678901','Bryson','Greene','4321098765','2022-06-30','{\"ifsc_code\": \"6789012345487890\", \"branch_name\": \"San Francisco\", \"account_number\": \"6789012340534647\"}'),('7890123456789012','Briana','Kirk','3210987654','2018-02-15','{\"ifsc_code\": \"7890123455487890\", \"branch_name\": \"New York\", \"account_number\": \"7890123450534647\"}'),('8901234567890123','Daniel','Wilson','2109876543','2019-03-25','{\"ifsc_code\": \"8901234565487890\", \"branch_name\": \"Los Angeles\", \"account_number\": \"8901234560534647\"}'),('9012345678901234','Olivia','Anderson','1234567890','2020-04-10','{\"ifsc_code\": \"9012345675487890\", \"branch_name\": \"Chicago\", \"account_number\": \"9012345670534647\"}');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
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
