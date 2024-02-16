CREATE DATABASE  IF NOT EXISTS `transportmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `transportmanagement`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: transportmanagement
-- ------------------------------------------------------
-- Server version	8.0.36

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

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `license_plate_number` varchar(16) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`license_plate_number`,`email_id`),
  KEY `Booking_f1` (`email_id`),
  CONSTRAINT `Booking_f1` FOREIGN KEY (`email_id`) REFERENCES `students` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('RJ07MN0245','studentA@iitgn.ac.in'),('RJ07MN0245','studentB@iitgn.ac.in'),('RJ07MN0245','studentC@iitgn.ac.in'),('RJ07MN0245','studentD@iitgn.ac.in'),('RJ07MN0245','studentE@iitgn.ac.in'),('RJ07MN0245','studentF@iitgn.ac.in'),('RJ07MN0245','studentG@iitgn.ac.in'),('GJ09QT6969','studentH@iitgn.ac.in'),('GJ09QT6969','studentI@iitgn.ac.in'),('GJ09QT6969','studentJ@iitgn.ac.in');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `email_id` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('faculty_A@iitgn.ac.in','First_A','Last_A','9876543211'),('faculty_B@iitgn.ac.in','First_B','Last_B','8765432110'),('faculty_C@iitgn.ac.in','First_C','Last_C','7654321109'),('faculty_D@iitgn.ac.in','First_D','Last_D','6543211098'),('faculty_E@iitgn.ac.in','First_E','Last_E','5432109875'),('faculty_F@iitgn.ac.in','First_F','Last_F','4321098764'),('faculty_G@iitgn.ac.in','First_G','Last_G','3210987653'),('faculty_H@iitgn.ac.in','First_H','Last_H','2109876542'),('faculty_I@iitgn.ac.in','First_I','Last_I','1098765432'),('faculty_J@iitgn.ac.in','First_J','Last_J','2345678901');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `name_of_shop` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date_and_time_of_transport` date NOT NULL,
  `from_` varchar(20) DEFAULT NULL,
  `to_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`name_of_shop`,`location`),
  KEY `Goods_f2` (`location`),
  CONSTRAINT `Goods_f1` FOREIGN KEY (`name_of_shop`) REFERENCES `shops` (`name_of_shop`),
  CONSTRAINT `Goods_f2` FOREIGN KEY (`location`) REFERENCES `shops` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('2 Degree','AB 1','2024-02-10','Ankleshwar','IITGN Campus'),('Amul','Duven Hostel','2023-11-02','Ahmedabad','ITTGN Campus'),('Fruit Shop','Central Arcade','2024-02-09','Ahmedabad','IITGN Campus'),('JK Grocery','Firpeal Hostel','2024-01-02','Vadodara','IITGN Campus'),('Juice Shop','Sports Complex','2024-02-12','Nadiad','IITGN Campus'),('Krupa Generals','Duven Hostel','2023-12-01','Palaj','IITGN Campus'),('Stationary Shop','Central Arcade','2024-02-11','IITGN Campus','Palaj'),('VS FastFood','Hiqom Hostel','2024-01-03','Ahmedabad','IITGN Campus');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `parking_space`
--

DROP TABLE IF EXISTS `parking_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_space` (
  `location` varchar(100) NOT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_space`
--

LOCK TABLES `parking_space` WRITE;
/*!40000 ALTER TABLE `parking_space` DISABLE KEYS */;
INSERT INTO `parking_space` VALUES ('Academic Block Parking lot',50),('Behind Academic Block',4),('Hostel Parking Area',50),('Housing Block Parking Area',50);
/*!40000 ALTER TABLE `parking_space` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `starting_station` varchar(20) NOT NULL,
  `ending_station` varchar(50) NOT NULL,
  `start_time` time DEFAULT NULL,
  `estimated_travel_time` varchar(6) DEFAULT NULL,
  `route_distance` int DEFAULT NULL,
  PRIMARY KEY (`starting_station`,`ending_station`),
  KEY `ending_stat_index` (`ending_station`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('IITGN Campus','Ahmedabad Airport','18:00:00','1h',9),('IITGN Campus','Ahmedabad Railway Station','17:00:00','1h30m',10),('IITGN Campus','Gandhinagar Bus Stand','16:30:00','45m',8),('IITGN Campus','Kudasan','20:00:00','30m',5),('IITGN Campus','Sargasan','19:00:00','40m',6),('IITGN Campus','Visat Circle','19:45:00','45m',7),('Kudasan','IITGN Campus','21:00:00','30m',5),('Sargasan','IITGN Campus','22:00:00','40m',6),('Visat Circle','IITGN Campus','20:00:00','45m',7);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `name_of_shop` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  PRIMARY KEY (`name_of_shop`,`location`),
  KEY `location_index` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES ('2 Degree','AB 1','Owner6'),('Amul','Duven Hostel','Owner1'),('Fruit Shop','Central Arcade','Owner5'),('JK Grocery','Firpeal Hostel','Owner3'),('Juice Shop','Sports Complex','Owner8'),('Krupa Generals','Duven Hostel','Owner2'),('Stationary Shop','Central Arcade','Owner7'),('VS FastFood','Hiqom Hostel','Owner4');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `email_id` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('staffA@iitgn.ac.in','Staff_First_A','Staff_Last_A','9876543201'),('staffB@iitgn.ac.in','Staff_First_B','Staff_Last_B','8765432102'),('staffC@iitgn.ac.in','Staff_First_C','Staff_Last_C','7654321093'),('staffD@iitgn.ac.in','Staff_First_D','Staff_Last_D','6543210984'),('staffE@iitgn.ac.in','Staff_First_E','Staff_Last_E','5432109875'),('staffF@iitgn.ac.in','Staff_First_F','Staff_Last_F','4321098766'),('staffG@iitgn.ac.in','Staff_First_G','Staff_Last_G','3210987657'),('staffH@iitgn.ac.in','Staff_First_H','Staff_Last_H','2109876548'),('staffI@iitgn.ac.in','Staff_First_I','Staff_Last_I','1098765439'),('staffJ@iitgn.ac.in','Staff_First_J','Staff_Last_J','2345678901');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `email_id` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  `guardian_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('studentA@iitgn.ac.in','Stu_First_A','Stu_Last_A','9876543220','Gua_Last_A'),('studentB@iitgn.ac.in','Stu_First_B','Stu_Last_B','8765432119','Gua_Last_B'),('studentC@iitgn.ac.in','Stu_First_C','Stu_Last_C','7654321108','Gua_Last_C'),('studentD@iitgn.ac.in','Stu_First_D','Stu_Last_D','6543210997','Gua_Last_D'),('studentE@iitgn.ac.in','Stu_First_E','Stu_Last_E','5432109886','Gua_Last_E'),('studentF@iitgn.ac.in','Stu_First_F','Stu_Last_F','4321098775','Gua_Last_F'),('studentG@iitgn.ac.in','Stu_First_G','Stu_Last_G','3210987664','Gua_Last_G'),('studentH@iitgn.ac.in','Stu_First_H','Stu_Last_H','2109876553','Gua_Last_H'),('studentI@iitgn.ac.in','Stu_First_I','Stu_Last_I','1098765442','Gua_Last_I'),('studentJ@iitgn.ac.in','Stu_First_J','Stu_Last_J','2345678910','Gua_Last_J');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `data_` json DEFAULT NULL,
  `user_img` blob,
  `Caption` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password` (`password`),
  KEY `user_index` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Alice','f5f75389bdbeddbbd70ac31c0245e42e','{\"last_name\": \"Verstappen\", \"first_name\": \"Max\", \"driver_license_number\": \"3456789012345678\"}',NULL,'User Image'),('Amit','f039eb446cc0bd7c5ad12b7a0e2a1dae','{\"last_name\": \"Kumar\", \"first_name\": \"Amit\", \"driver_license_number\": \"1234567890123456\"}',NULL,'User Image'),('Daniel','e7f84ff145ced31368756c41af7fef9c','{\"last_name\": \"Wilson\", \"first_name\": \"Daniel\", \"driver_license_number\": \"8901234567890123\"}',NULL,'User Image'),('David','889211b122daa7f9f917d3d3b3475514','{\"last_name\": \"Greene\", \"first_name\": \"Bryson\", \"driver_license_number\": \"6789012345678901\"}',NULL,'User Image'),('Emily','f6244d2fc24ec05bedfbf7a84a42ddd4','{\"last_name\": \"Brown\", \"first_name\": \"Emily\", \"driver_license_number\": \"5678901234567890\"}',NULL,'User Image'),('First_A','367ec700665670e8b07b6d10292ae521','{\"email_id\": \"faculty_A@iitgn.ac.in\", \"last_name\": \"Last_A\", \"first_name\": \"First_A\"}',NULL,'User Image'),('First_B','01e54c813479b1ee86c20875258307f8','{\"email_id\": \"faculty_B@iitgn.ac.in\", \"last_name\": \"Last_B\", \"first_name\": \"First_B\"}',NULL,'User Image'),('First_C','c8091c1f0ba01ee8f40bff623e97cf23','{\"email_id\": \"faculty_C@iitgn.ac.in\", \"last_name\": \"Last_C\", \"first_name\": \"First_C\"}',NULL,'User Image'),('First_D','3af97df0f613f6cf48e680e21a301710','{\"email_id\": \"faculty_D@iitgn.ac.in\", \"last_name\": \"Last_D\", \"first_name\": \"First_D\"}',NULL,'User Image'),('First_E','545269de19e5b868282731db913b3983','{\"email_id\": \"faculty_E@iitgn.ac.in\", \"last_name\": \"Last_E\", \"first_name\": \"First_E\"}',NULL,'User Image'),('First_F','25eb68f5bcc2a69681938078e949fe67','{\"email_id\": \"faculty_F@iitgn.ac.in\", \"last_name\": \"Last_F\", \"first_name\": \"First_F\"}',NULL,'User Image'),('First_G','0b97c298a0294bb79f699d214c6ac60f','{\"email_id\": \"faculty_G@iitgn.ac.in\", \"last_name\": \"Last_G\", \"first_name\": \"First_G\"}',NULL,'User Image'),('First_H','6a7872e18226d4e68ecada00e8016504','{\"email_id\": \"faculty_H@iitgn.ac.in\", \"last_name\": \"Last_H\", \"first_name\": \"First_H\"}',NULL,'User Image'),('First_I','12f55726019b4032d8f30333d3d2905b','{\"email_id\": \"faculty_I@iitgn.ac.in\", \"last_name\": \"Last_I\", \"first_name\": \"First_I\"}',NULL,'User Image'),('First_J','8cf527de4f1df1d846c21306c4940505','{\"email_id\": \"faculty_J@iitgn.ac.in\", \"last_name\": \"Last_J\", \"first_name\": \"First_J\"}',NULL,'User Image'),('Jessica','3bbd1873056226d83e6371a24d340340','{\"last_name\": \"Kirk\", \"first_name\": \"Briana\", \"driver_license_number\": \"7890123456789012\"}',NULL,'User Image'),('John','6d40e095b7f43848dc76ec017592da29','{\"last_name\": \"Doe\", \"first_name\": \"John\", \"driver_license_number\": \"2345678901234567\"}',NULL,'User Image'),('Michael','fdec10f5e0fc93e0dadc8c53b9802623','{\"last_name\": \"Massey\", \"first_name\": \"Kora\", \"driver_license_number\": \"4567890123456789\"}',NULL,'User Image'),('Olivia','6fe76ed19c9386c1389512a53aaaa6c6','{\"last_name\": \"Anderson\", \"first_name\": \"Olivia\", \"driver_license_number\": \"9012345678901234\"}',NULL,'User Image'),('Sophia','4d4cc5ce3071ce7dbb117a1e5503a3be','{\"last_name\": \"Taylor\", \"first_name\": \"Sophia\", \"driver_license_number\": \"0123456789012345\"}',NULL,'User Image'),('Staff_First_A','64365f17a60f009dace98a55177331ba','{\"email_id\": \"staffA@iitgn.ac.in\", \"last_name\": \"Staff_Last_A\", \"first_name\": \"Staff_First_A\"}',NULL,'User Image'),('Staff_First_B','c2e0aebc715af5ce90b185082d889bb0','{\"email_id\": \"staffB@iitgn.ac.in\", \"last_name\": \"Staff_Last_B\", \"first_name\": \"Staff_First_B\"}',NULL,'User Image'),('Staff_First_C','ab7f1d4ce9960a536ec233eee7be3582','{\"email_id\": \"staffC@iitgn.ac.in\", \"last_name\": \"Staff_Last_C\", \"first_name\": \"Staff_First_C\"}',NULL,'User Image'),('Staff_First_D','440c0936f5ce7799b5a32e2641b05c9e','{\"email_id\": \"staffD@iitgn.ac.in\", \"last_name\": \"Staff_Last_D\", \"first_name\": \"Staff_First_D\"}',NULL,'User Image'),('Staff_First_E','98eb08ac1f206f59523e0f0a02efb1d7','{\"email_id\": \"staffE@iitgn.ac.in\", \"last_name\": \"Staff_Last_E\", \"first_name\": \"Staff_First_E\"}',NULL,'User Image'),('Staff_First_F','21dff12bd6309650b5d18d93568e0cb4','{\"email_id\": \"staffF@iitgn.ac.in\", \"last_name\": \"Staff_Last_F\", \"first_name\": \"Staff_First_F\"}',NULL,'User Image'),('Staff_First_G','35ebf7c30ba8da21673d9ee3e2bcbf14','{\"email_id\": \"staffG@iitgn.ac.in\", \"last_name\": \"Staff_Last_G\", \"first_name\": \"Staff_First_G\"}',NULL,'User Image'),('Staff_First_H','d5c701967461252c7d8bb7eb46c282e6','{\"email_id\": \"staffH@iitgn.ac.in\", \"last_name\": \"Staff_Last_H\", \"first_name\": \"Staff_First_H\"}',NULL,'User Image'),('Staff_First_I','a0b2f51cd7a0d42913a5561c54d6a054','{\"email_id\": \"staffI@iitgn.ac.in\", \"last_name\": \"Staff_Last_I\", \"first_name\": \"Staff_First_I\"}',NULL,'User Image'),('Staff_First_J','5b81ad3b25619c80c146ca3004ee7768','{\"email_id\": \"staffJ@iitgn.ac.in\", \"last_name\": \"Staff_Last_J\", \"first_name\": \"Staff_First_J\"}',NULL,'User Image'),('Stu_First_A','5bdec017e346a5bd66afd86ac5660a2f','{\"email_id\": \"studentA@iitgn.ac.in\", \"last_name\": \"Stu_Last_A\", \"first_name\": \"Stu_First_A\"}',NULL,'User Image'),('Stu_First_B','24821e985bef7c1cc3b2d56015ce3a04','{\"email_id\": \"studentB@iitgn.ac.in\", \"last_name\": \"Stu_Last_B\", \"first_name\": \"Stu_First_B\"}',NULL,'User Image'),('Stu_First_C','465b8c625857dcf1b0d48522d4c61c8e','{\"email_id\": \"studentC@iitgn.ac.in\", \"last_name\": \"Stu_Last_C\", \"first_name\": \"Stu_First_C\"}',NULL,'User Image'),('Stu_First_D','f55d8eaba2eb7e006217e529d088f69b','{\"email_id\": \"studentD@iitgn.ac.in\", \"last_name\": \"Stu_Last_D\", \"first_name\": \"Stu_First_D\"}',NULL,'User Image'),('Stu_First_E','f2311c94bf51464419074d87d89b094c','{\"email_id\": \"studentE@iitgn.ac.in\", \"last_name\": \"Stu_Last_E\", \"first_name\": \"Stu_First_E\"}',NULL,'User Image'),('Stu_First_F','17aad745de99a367103c3bcd84c30527','{\"email_id\": \"studentF@iitgn.ac.in\", \"last_name\": \"Stu_Last_F\", \"first_name\": \"Stu_First_F\"}',NULL,'User Image'),('Stu_First_G','837833171fdb562e0811471c91950359','{\"email_id\": \"studentG@iitgn.ac.in\", \"last_name\": \"Stu_Last_G\", \"first_name\": \"Stu_First_G\"}',NULL,'User Image'),('Stu_First_H','f75cd39aa25d44ef38b693270baadbcd','{\"email_id\": \"studentH@iitgn.ac.in\", \"last_name\": \"Stu_Last_H\", \"first_name\": \"Stu_First_H\"}',NULL,'User Image'),('Stu_First_I','90f22438ba81255d0ae3fd0e025a6e9a','{\"email_id\": \"studentI@iitgn.ac.in\", \"last_name\": \"Stu_Last_I\", \"first_name\": \"Stu_First_I\"}',NULL,'User Image'),('Stu_First_J','8aec9969ca3e8503372144375b493d59','{\"email_id\": \"studentJ@iitgn.ac.in\", \"last_name\": \"Stu_Last_J\", \"first_name\": \"Stu_First_J\"}',NULL,'User Image');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `license_plate_number` varchar(50) NOT NULL,
  `capacity` int DEFAULT NULL,
  `owner_first_name` varchar(20) NOT NULL,
  `owner_last_name` varchar(20) NOT NULL,
  `vehicle_type` enum('Bus','Car','Two-wheeler','Auto','Van') NOT NULL,
  PRIMARY KEY (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('GJ01AB1234',4,'Kora','Massey','Car'),('GJ02CD4567',7,'Donald','Davila','Two-wheeler'),('GJ03EF7890',5,'Rayne','Romero','Car'),('GJ04GH0123',6,'Bryson','Greene','Van'),('GJ05IJ4567',4,'Selena','Wood','Car'),('GJ06KL7890',8,'Carson','Conner','Van'),('GJ09QR6789',4,'Briana','Kirk','Bus'),('GJ09QT6969',35,'Lewis','Hamilton','Bus'),('GJ10ST0123',6,'Alessandro','Carso','Van'),('RJ07MN0123',5,'Alondra','Bell','Car'),('RJ07MN0245',35,'Max','Verstappen','Bus'),('RJ08OP3456',7,'Emmett','Hood','Two-wheeler');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'transportmanagement'
--

--
-- Dumping routines for database 'transportmanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:48:48
