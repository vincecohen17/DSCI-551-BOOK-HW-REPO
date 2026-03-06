CREATE DATABASE  IF NOT EXISTS `dsci551` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dsci551`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: dsci551
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `child_parent`
--

DROP TABLE IF EXISTS `child_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_parent` (
  `child_table` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL,
  `child_col` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL,
  `parent_table` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL,
  `parent_col` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_parent`
--

LOCK TABLES `child_parent` WRITE;
/*!40000 ALTER TABLE `child_parent` DISABLE KEYS */;
INSERT INTO `child_parent` VALUES ('address','city_id','city','city_id'),('city','country_id','country','country_id'),('customer','address_id','address','address_id'),('customer','store_id','store','store_id'),('film','language_id','language','language_id'),('film','original_language_id','language','language_id'),('film_actor','actor_id','actor','actor_id'),('film_actor','film_id','film','film_id'),('film_category','category_id','category','category_id'),('film_category','film_id','film','film_id'),('inventory','film_id','film','film_id'),('inventory','store_id','store','store_id'),('payment','customer_id','customer','customer_id'),('payment','rental_id','rental','rental_id'),('payment','staff_id','staff','staff_id'),('rental','customer_id','customer','customer_id'),('rental','inventory_id','inventory','inventory_id'),('rental','staff_id','staff','staff_id'),('staff','address_id','address','address_id'),('staff','store_id','store','store_id'),('store','address_id','address','address_id'),('store','manager_staff_id','staff','staff_id');
/*!40000 ALTER TABLE `child_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_columns`
--

DROP TABLE IF EXISTS `tbl_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_columns` (
  `TABLE_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_tolower_ci DEFAULT NULL,
  `DATA_TYPE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_columns`
--

LOCK TABLES `tbl_columns` WRITE;
/*!40000 ALTER TABLE `tbl_columns` DISABLE KEYS */;
INSERT INTO `tbl_columns` VALUES ('actor','actor_id','smallint'),('actor','first_name','varchar'),('actor','last_name','varchar'),('actor','last_update','timestamp'),('address','address_id','smallint'),('address','address','varchar'),('address','address2','varchar'),('address','district','varchar'),('address','city_id','smallint'),('address','postal_code','varchar'),('address','phone','varchar'),('address','location','geometry'),('address','last_update','timestamp'),('category','category_id','tinyint'),('category','name','varchar'),('category','last_update','timestamp'),('city','city_id','smallint'),('city','city','varchar'),('city','country_id','smallint'),('city','last_update','timestamp'),('country','country_id','smallint'),('country','country','varchar'),('country','last_update','timestamp'),('customer','customer_id','smallint'),('customer','store_id','tinyint'),('customer','first_name','varchar'),('customer','last_name','varchar'),('customer','email','varchar'),('customer','address_id','smallint'),('customer','active','tinyint'),('customer','create_date','datetime'),('customer','last_update','timestamp'),('film','film_id','smallint'),('film','title','varchar'),('film','description','text'),('film','release_year','year'),('film','language_id','tinyint'),('film','original_language_id','tinyint'),('film','rental_duration','tinyint'),('film','rental_rate','decimal'),('film','length','smallint'),('film','replacement_cost','decimal'),('film','rating','enum'),('film','special_features','set'),('film','last_update','timestamp'),('film_actor','actor_id','smallint'),('film_actor','film_id','smallint'),('film_actor','last_update','timestamp'),('film_category','film_id','smallint'),('film_category','category_id','tinyint'),('film_category','last_update','timestamp'),('film_text','film_id','smallint'),('film_text','title','varchar'),('film_text','description','text'),('inventory','inventory_id','mediumint'),('inventory','film_id','smallint'),('inventory','store_id','tinyint'),('inventory','last_update','timestamp'),('language','language_id','tinyint'),('language','name','char'),('language','last_update','timestamp'),('payment','payment_id','smallint'),('payment','customer_id','smallint'),('payment','staff_id','tinyint'),('payment','rental_id','int'),('payment','amount','decimal'),('payment','payment_date','datetime'),('payment','last_update','timestamp'),('rental','rental_id','int'),('rental','rental_date','datetime'),('rental','inventory_id','mediumint'),('rental','customer_id','smallint'),('rental','return_date','datetime'),('rental','staff_id','tinyint'),('rental','last_update','timestamp'),('staff','staff_id','tinyint'),('staff','first_name','varchar'),('staff','last_name','varchar'),('staff','address_id','smallint'),('staff','picture','blob'),('staff','email','varchar'),('staff','store_id','tinyint'),('staff','active','tinyint'),('staff','username','varchar'),('staff','password','varchar'),('staff','last_update','timestamp'),('store','store_id','tinyint'),('store','manager_staff_id','tinyint'),('store','address_id','smallint'),('store','last_update','timestamp');
/*!40000 ALTER TABLE `tbl_columns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-17 22:57:02
