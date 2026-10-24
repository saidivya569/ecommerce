-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomm
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_details` (
  `admin_username` varchar(30) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varbinary(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` text,
  PRIMARY KEY (`admin_email`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` VALUES ('charan','divyarayaprolu956@gmail.com',_binary '$2b$12$HwCJ01LxCkEql4yAGPE5/ueiVP4ApmKGXQ57FWzfRA07CZHZxK7Sa','2026-06-23 14:41:42','guntur'),('charan','saidivyasharma956@gmail.com',_binary '$2b$12$n0zBrRvFfHzfolm0duCcYeJBBrWM/7u6syiL7mcLvp7SwKpjHUCLG','2025-06-17 15:53:07','guntur');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `issue` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES (1,'divya','saidivyasharma956@gmail.com','no issues ','2026-06-10 16:29:13');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `item_name` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `item_cost` decimal(20,4) NOT NULL,
  `item_quantity` mediumint unsigned DEFAULT NULL,
  `item_category` enum('Home appliances','Electronics','Sports','Fashion','Grocery') DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `imgname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `items_addedby` (`added_by`),
  CONSTRAINT `items_addedby` FOREIGN KEY (`added_by`) REFERENCES `admin_details` (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary 'Dü\àúV}\ð‰1¨±;Ä½','fridge','Eligible for Free Open Box Inspection Details \r\nProduct Dimensions	66.9D x 58.5W x 147.5H Centimeters\r\nBrand	LG\r\nCapacity	242 litres\r\nConfiguration	Full-Sized Freezer-on-Top\r\nBEE Star Rating	3 Star',30000.0000,2,'Home appliances','saidivyasharma956@gmail.com','2025-07-01 18:44:07','Zi2Ln9.jpg'),(_binary 'aÛª¡L!\ðŠs¨±;Ä½','kurta palazzo','Product details\r\nMaterial compositionCotton\r\nLengthCalf Length\r\nSleeve type3/4 Sleeve\r\nNeck styleBand Neck\r\nStyleCasual\r\nMaterial typeCotton\r\nCountry of OriginIndia',1500.0000,1,'Home appliances','saidivyasharma956@gmail.com','2025-06-18 14:21:10','Oc3Rc7.jpg'),(_binary 'dÀ1V}\ð‰1¨±;Ä½','ear pods','\r\nBrand	OnePlus\r\nColour	Deep Grey\r\nEar Placement	In Ear\r\nForm Factor	True Wireless\r\nHeadphones Jack	usb',5000.0000,1,'Electronics','saidivyasharma956@gmail.com','2025-07-01 18:45:00','Jn3Xm0.jpg'),(_binary 'w®¾\Êú\ñ G¨±;Ä½','earpods','its work well',3500.0000,1,'Home appliances','saidivyasharma956@gmail.com','2026-10-18 19:17:32','Ms4Oh8.jpg'),(_binary 'œ€\ãªV}\ð‰1¨±;Ä½','kurta and palazzo','Material typeChanderi Cotton\r\nFit typeRegular\r\nStyleAnarkali\r\nClosure typePull On\r\nCare instructionsDry Clean Only\r\nAge range descriptionAdult\r\nCountry of OriginIndia\r\n',1500.0000,1,'Fashion','saidivyasharma956@gmail.com','2025-07-01 18:46:34','Ng1Vb4.jpg');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `item_id` binary(16) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `payment_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `payment_by` (`payment_by`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_by`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`itemid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-07-02 14:04:10',_binary 'aÛª¡L!\ðŠs¨±;Ä½','kurta palazzo',150000.00,'saidivyasharma956@gmail.com'),(2,'2026-06-10 21:48:09',_binary 'aÛª¡L!\ðŠs¨±;Ä½','kurta palazzo',150000.00,'saidivyasharma956@gmail.com');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `useremail` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('saidivyasharma956@gmail.com','Divya',_binary '$2b$12$tItgSoAN5PudZWtmy/xdNOsP70.EiJhImyDjY1EZTteqlDTLV.Ry.','guntur','2025-06-25 13:46:48','Female');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-24 22:28:38
