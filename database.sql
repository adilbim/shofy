-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'Ef5xUk2oSTd9uKzTMoYKKlbMVMcxtOWs',1,'2025-07-28 03:48:14','2025-07-28 03:48:14','2025-07-28 03:48:14');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2030-07-28 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(2,'Ads 2','2030-07-28 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(3,'Ads 3','2030-07-28 00:00:00','not_set','BN3ZCHLIE95I','main/gadgets/gadget-banner-1.jpg','/products',0,3,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(4,'Ads 4','2030-07-28 00:00:00','not_set','QGPRRJ2MPZYA','main/gadgets/gadget-banner-2.jpg','/products',0,4,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(5,'Ads 5','2030-07-28 00:00:00','not_set','B5ZA76ZWMWAE','main/banners/slider-1.png','http://shofy.test',0,5,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(6,'Ads 6','2030-07-28 00:00:00','not_set','F1LTQS976YPY','main/banners/slider-2.png','http://shofy.test',0,6,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL),(7,'Ads 7','2030-07-28 00:00:00','not_set','IHPZ2WBSYJUK','main/banners/slider-3.png','http://shofy.test/products/sony-a90j-4k-oled-smart-tv',0,7,'published','2025-07-28 03:48:48','2025-07-28 03:48:48',1,NULL,NULL,'custom_ad',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2025-07-28 10:48:33',NULL,1,'2025-07-28 03:48:33','2025-07-28 03:48:33'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2025-07-28 10:48:33',NULL,1,'2025-07-28 03:48:33','2025-07-28 03:48:33'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2025-07-28 10:48:33',NULL,1,'2025-07-28 03:48:33','2025-07-28 03:48:33');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Autem quia rem aut fugit. Molestiae optio facere voluptatem alias dolores sunt magni. Velit eum dignissimos soluta quos suscipit eaque alias. Ut natus sit quaerat voluptatem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(2,'Fashion',0,'Quas numquam iure quos veniam. Blanditiis quidem quia aut et dolores id officia. Itaque deserunt eveniet maxime temporibus. Occaecati dolorem officiis reprehenderit corrupti magnam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(3,'Electronic',0,'Porro nihil veritatis deserunt sit. Aperiam doloremque ut sunt dicta reprehenderit. Cupiditate perspiciatis nisi ut illo. Vero quod occaecati velit alias hic quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(4,'Commercial',0,'Quisquam est maiores qui veniam. Labore iste velit officiis incidunt provident cupiditate. Et voluptas id est veniam aut aliquid sint. Ullam ipsam unde delectus aut blanditiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(5,'Organic Fruits',0,'Consequuntur qui qui labore rerum non blanditiis optio. Cumque repudiandae corrupti quo sit ipsum rerum sit. Eum occaecati quia qui debitis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(6,'Ecological',0,'Laudantium earum modi quas tempora et. Ab doloremque omnis eum perspiciatis quidem ex sit. Sint error optio exercitationem incidunt aliquid. Amet ad pariatur et dolor voluptatibus sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-07-28 03:48:25','2025-07-28 03:48:25');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Toby Lindgren','verna.bode@example.org','434-306-2738','5439 Waelchi Branch Suite 265\nNorth Melyna, FL 99432','Et enim et excepturi omnis.','Minus fugiat et omnis voluptatum non fugiat ipsam. Adipisci et nesciunt dolor occaecati magnam consequuntur sunt. Modi voluptatem recusandae aperiam deleniti. Eos expedita et neque. Enim earum expedita iusto. Odio est dolore rerum aut nobis dolor quaerat. Quia atque magni earum in. Non quod similique ut quos ut. Ut voluptatibus accusantium aliquam. Corporis sit id maiores iste recusandae. Velit aut alias velit aliquam laboriosam. Quo dolores rerum ipsam dolor cum.',NULL,'read','2025-07-28 03:48:22','2025-07-28 03:48:22'),(2,'Alayna Nikolaus','virgil78@example.org','818-837-7648','73974 Parisian Passage Suite 251\nSouth Melynatown, NE 23565-8665','Voluptas libero sed soluta pariatur.','Error doloribus veniam accusantium culpa cum error. Veniam voluptatem earum enim aspernatur cum. Ut ipsum qui ut aut atque deleniti provident occaecati. Ut iure qui repellat eveniet. Rerum sed autem culpa aut. Ex voluptas non rerum rerum. Facilis ducimus doloribus animi similique. Exercitationem suscipit cupiditate veritatis et molestiae totam veniam. Cumque dicta debitis qui aut sed molestiae vero. Ipsa labore rem culpa qui.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(3,'Kavon Pfannerstill','buckridge.jarrell@example.net','1-805-676-2330','99306 Joseph Well\nEast Anastasiastad, NH 13494','Labore vel sapiente deleniti debitis labore.','Et atque ipsum quidem et vel aut pariatur. Dolorem sunt sit exercitationem sed illum ex autem. Odio qui aperiam fuga quia et. Dolorem asperiores consequatur quasi odit nam error. Quo id quod quam. Corporis sed recusandae quibusdam ullam. Aperiam nostrum aut temporibus in velit. Aut in sapiente voluptatem tempora dolores ducimus. Voluptatem ducimus eveniet voluptate assumenda. Neque mollitia sed id accusantium.',NULL,'read','2025-07-28 03:48:22','2025-07-28 03:48:22'),(4,'Cicero Jakubowski','homenick.savanah@example.com','269-415-3638','4254 Mueller Springs\nWest Wernerbury, ME 45658-8884','Sed nemo sint blanditiis.','Facere et nam accusantium harum similique. Assumenda recusandae illum similique corporis nam corrupti itaque et. Assumenda earum omnis aut aut. Magnam aliquam sunt temporibus ad est fugiat voluptas. Sit adipisci rerum eveniet molestiae odit a dolore ut. Labore quis aut possimus totam dolor distinctio eos. Ab cupiditate magni sed ipsam similique consequuntur eum.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(5,'Lilian Emard III','madalyn77@example.org','+1-517-999-3502','29952 Luettgen Plains Suite 866\nLenoreton, NJ 78511','Minus aut temporibus ipsam eos ullam.','Possimus commodi qui minus non aut aut aut. Adipisci quia aspernatur rem rerum necessitatibus. Sed nam omnis blanditiis suscipit nesciunt repellendus. Recusandae autem explicabo voluptatum necessitatibus nihil et ex perspiciatis. Alias tempore enim dolor rerum incidunt laudantium laudantium accusamus. Saepe voluptatibus facilis id ad. Fuga repellat aliquam aut ipsam dolores harum quod. Ut velit aut et. Accusantium qui voluptatem sapiente dolorem nulla omnis quia. Qui porro eum eos rerum.',NULL,'read','2025-07-28 03:48:22','2025-07-28 03:48:22'),(6,'Cullen Bergstrom','hamill.emil@example.net','1-585-468-2043','253 Klocko Port Apt. 718\nWhitneyport, MA 76534','Ex molestiae ducimus non eius.','Reiciendis eaque rerum qui eum esse. Molestiae impedit iusto architecto qui sit et. Expedita ipsa animi et in quos. Iure qui animi et sint consequatur fuga. Natus perferendis eveniet inventore voluptate quia laborum consectetur. Sapiente esse quia eum corporis voluptate reprehenderit. At eos voluptatem officia quia. Animi illo explicabo ipsam esse. Magni voluptatibus saepe cumque vitae. Velit vero praesentium animi velit et consectetur. Optio enim est sunt.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(7,'Bettie Mayer II','braden40@example.org','1-334-432-2501','94775 Hudson Avenue Suite 722\nEast Phyllis, MA 51965-2108','Eius ipsam repudiandae quia harum sint amet.','At quo fuga tenetur fuga sit repudiandae. Sit ex aut nemo animi ut ducimus expedita. Impedit eveniet corporis quis et. Doloremque magnam ut quisquam deleniti similique. Facilis ut explicabo doloribus perspiciatis est et consequatur. Quam eum illum quis corporis excepturi. Qui cupiditate ipsum deleniti aspernatur at. Ut dolores tempore aspernatur quo nihil rerum. Earum commodi illum unde necessitatibus et.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(8,'Lea Hackett PhD','verda52@example.org','+1-815-342-3167','84233 Marisa Villages\nLake Orphachester, WV 87067-3426','Quia ut qui eos.','Necessitatibus hic eveniet est at. Voluptatem libero sint nostrum ea amet. Quia sunt illo ut voluptates. Repudiandae cumque aut blanditiis voluptas error. Maiores qui placeat adipisci voluptas esse ea suscipit. Debitis nostrum officia reprehenderit itaque distinctio omnis cupiditate. Earum alias ut eligendi at. Facere eligendi minus a quo quod. Qui qui voluptatem minus. Consectetur ea est qui quasi pariatur eum.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(9,'Jennifer Ernser','tremblay.valentin@example.org','737-353-7613','8856 Annette Hill Apt. 382\nNew Melyssa, UT 96646','Aut repellendus quidem optio eligendi laboriosam.','At deleniti et consectetur fugit ipsam temporibus ducimus ea. Nihil nisi tenetur tenetur labore ut vel. Nemo quibusdam ad qui quisquam. Sint et quibusdam quia sunt sit. Possimus doloribus soluta hic aperiam qui. Consequatur omnis perspiciatis maiores rerum. Cumque explicabo illo eveniet ex. Est minima voluptatibus iure. Et libero provident ut ut vitae nostrum mollitia. Optio aut suscipit officiis porro. Sit quia repellendus magnam ullam.',NULL,'unread','2025-07-28 03:48:22','2025-07-28 03:48:22'),(10,'Luella Barton','francis.wilderman@example.net','+1.929.575.6270','577 Lockman Curve\nNorth Tyshawn, NE 91724','Iste dicta at aut quia at assumenda commodi.','Harum vel non omnis excepturi aut quam. Et aut velit doloribus sed aperiam pariatur tempora. Delectus velit numquam debitis perspiciatis mollitia dignissimos. Vel modi odio blanditiis officiis explicabo. Eos nobis facilis similique non amet molestias. Quidem hic velit illum non. Vitae omnis est culpa blanditiis neque ut est. Non et pariatur iste a placeat dolorem. Similique at quis dignissimos fugiat asperiores porro aut.',NULL,'read','2025-07-28 03:48:22','2025-07-28 03:48:22');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2025-07-28 03:48:15','2025-07-28 03:48:15');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(2,'EUR','€',0,2,1,0,0.84,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(3,'VND','₫',0,0,2,0,23203,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(4,'NGN','₦',1,2,2,0,895.52,'2025-07-28 03:48:15','2025-07-28 03:48:15');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Leanna Wisozk PhD','customer@botble.com','+14845721070','PF','Oregon','North Jackeline','10747 Greenfelder Village',1,1,'2025-07-28 03:48:17','2025-07-28 03:48:17','58313'),(2,'Leanna Wisozk PhD','customer@botble.com','+12793032122','TZ','Mississippi','Jazlynborough','480 Clovis Ridges',1,0,'2025-07-28 03:48:17','2025-07-28 03:48:17','69686'),(3,'Jeff Walker Jr.','vendor@botble.com','+16519912133','MM','New Mexico','South Arnoldstad','6944 West Well Apt. 844',2,1,'2025-07-28 03:48:17','2025-07-28 03:48:17','60459-5120'),(4,'Jeff Walker Jr.','vendor@botble.com','+15103107152','LC','Oklahoma','Lake Shyannstad','8650 Miller Vista',2,0,'2025-07-28 03:48:17','2025-07-28 03:48:17','38363'),(5,'Diamond Mueller','mosciski.cale@example.net','+16317149790','JO','North Carolina','Kohlertown','6327 Marks Burg',3,1,'2025-07-28 03:48:18','2025-07-28 03:48:18','50175-2974'),(6,'Mr. Green Schaefer DDS','bode.maddison@example.net','+12168768240','GD','Delaware','Dejuanton','242 Liliana Shoals',4,1,'2025-07-28 03:48:18','2025-07-28 03:48:18','21184'),(7,'Horacio Roberts III','mavis17@example.org','+12819778298','ID','Texas','Haneside','8914 Brown Inlet',5,1,'2025-07-28 03:48:19','2025-07-28 03:48:19','07153-2018'),(8,'Birdie Rath Jr.','ryan.gerhold@example.net','+19083232258','LR','North Dakota','East Uriah','660 Murazik Via Suite 668',6,1,'2025-07-28 03:48:19','2025-07-28 03:48:19','93939'),(9,'Ruben Schoen','mario67@example.org','+15033970299','EG','Kansas','Yostberg','5002 Fausto Mills',7,1,'2025-07-28 03:48:20','2025-07-28 03:48:20','36747-2562'),(10,'Gillian D\'Amore','nannie72@example.com','+13613584065','MS','Alabama','Kozeyfurt','14304 Cronin Stravenue',8,1,'2025-07-28 03:48:20','2025-07-28 03:48:20','84900'),(11,'Prof. Maud Wolf III','gulgowski.jordane@example.org','+12346642250','SK','Delaware','Ginoview','99025 Langosh Pike',9,1,'2025-07-28 03:48:21','2025-07-28 03:48:21','83830'),(12,'Prof. Kennedy Bins DDS','zechariah.zboncak@example.org','+13179961692','MV','South Dakota','Gerardshire','284 Janae Via Suite 061',10,1,'2025-07-28 03:48:21','2025-07-28 03:48:21','80466-9231');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Leanna Wisozk PhD','customer@botble.com','$2y$12$l2oeP8lq1uOBrhDGEjqQReZQB6i49aHD4ydCcEEQ52EjVKEjQBwu6','main/customers/10.jpg','1985-07-17','+14433374624',NULL,'2025-07-28 03:48:17','2025-07-28 03:48:17','1985-07-17 10:48:16',NULL,'activated',NULL,NULL,NULL,0,0,NULL),(2,'Jeff Walker Jr.','vendor@botble.com','$2y$12$hY1ILA/ZyYImYGUzVgHZZuOL7ezeOSaB1pT/N2J5mqtZRR1t9MTYe','main/customers/2.jpg','1962-07-15','+17068157090',NULL,'2025-07-28 03:48:17','2025-07-28 03:48:29','1962-07-15 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(3,'Diamond Mueller','mosciski.cale@example.net','$2y$12$4asj2c8nlmh1cW5wScl5gesyowliS8Zx8fIERurbijhjqD.jgjeN6','main/customers/1.jpg','1940-07-02','+12408226822',NULL,'2025-07-28 03:48:18','2025-07-28 03:48:30','1940-07-02 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(4,'Mr. Green Schaefer DDS','bode.maddison@example.net','$2y$12$DMtbxMxiwuRHWEQ7khS.oOU0niSNqS55xVylYxCuz.hWfIjmbzc0.','main/customers/2.jpg','1899-07-01','+13193941971',NULL,'2025-07-28 03:48:18','2025-07-28 03:48:30','1899-07-01 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(5,'Horacio Roberts III','mavis17@example.org','$2y$12$6urfSqtVBsE7I15HOHpmQOBizV1FJlkvU6s1DoSOBdWA2yQX6/qcK','main/customers/3.jpg','1852-06-05','+19546836421',NULL,'2025-07-28 03:48:19','2025-07-28 03:48:31','1852-06-05 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(6,'Birdie Rath Jr.','ryan.gerhold@example.net','$2y$12$FMwZivtjDxNuW0eqZ9NatekemqJtEUWA1GlK7AoOjhUglUL0ZdtLK','main/customers/4.jpg','1811-05-21','+14406030069',NULL,'2025-07-28 03:48:19','2025-07-28 03:48:31','1811-05-21 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(7,'Ruben Schoen','mario67@example.org','$2y$12$MyNO5UDCwjPP9e6meGuIReKLrwNe.mtYTFYui2qF0GVgtjWpDp5Se','main/customers/5.jpg','1781-05-17','+16602714526',NULL,'2025-07-28 03:48:20','2025-07-28 03:48:32','1781-05-17 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(8,'Gillian D\'Amore','nannie72@example.com','$2y$12$Kn1SS5pEZ8lUraigBNUzpebv5zuGS6FmKljsMNqBQVLjiafCehFq6','main/customers/6.jpg','1752-05-07','+18637104780',NULL,'2025-07-28 03:48:20','2025-07-28 03:48:32','1752-05-07 10:48:16',NULL,'activated',NULL,NULL,NULL,0,1,'2025-07-28 10:48:29'),(9,'Prof. Maud Wolf III','gulgowski.jordane@example.org','$2y$12$oNBpZ.jE/S.LVarCvN8U8e9t66WOsUeqS.GACwFCJKkXdFH90hidK','main/customers/7.jpg','1713-04-18','+19343793833',NULL,'2025-07-28 03:48:21','2025-07-28 03:48:33','1713-04-18 10:48:16',NULL,'activated',NULL,NULL,NULL,0,0,NULL),(10,'Prof. Kennedy Bins DDS','zechariah.zboncak@example.org','$2y$12$HrHvDudLhHqxFtRod.HrKek7Pouss5eB4WPZsW6svxaUtO7NOXFEu','main/customers/8.jpg','1690-04-15','+17024404459',NULL,'2025-07-28 03:48:21','2025-07-28 03:48:33','1690-04-15 10:48:16',NULL,'activated',NULL,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','BF0IEJ8VHZMJ','2025-07-27 10:48:25','2025-08-22 10:48:25',NULL,0,86,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(2,'Discount 2','YI1SCBPEWC7E','2025-07-27 10:48:25','2025-08-20 10:48:25',NULL,0,287,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(3,'Discount 3','DAZ6BO8VMTWN','2025-07-27 10:48:25','2025-07-30 10:48:25',NULL,0,77,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(4,'Discount 4','6IDRQ4THTNOT','2025-07-27 10:48:25','2025-07-31 10:48:25',NULL,0,792,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(5,'Discount 5','KGPUXK3CTEJU','2025-07-27 10:48:25',NULL,NULL,0,90,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(6,'Discount 6','JYCAJYCQMNYJ','2025-07-27 10:48:25',NULL,NULL,0,964,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(7,'Discount 7','QACLDVBXOHMK','2025-07-27 10:48:25','2025-08-23 10:48:25',NULL,0,16,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(8,'Discount 8','XVMZKAV6V9DF','2025-07-27 10:48:25','2025-08-08 10:48:25',NULL,0,75,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(9,'Discount 9','69G8F60LCEQT','2025-07-27 10:48:25',NULL,NULL,0,357,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL),(10,'Discount 10','5EK9YCYIG8SN','2025-07-27 10:48:25','2025-08-02 10:48:25',NULL,0,10,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,707.52,17,3),(1,2,613.36,8,2),(1,3,802.56,8,4),(1,4,106.0124,17,5),(1,5,1255.32,6,3),(1,6,610.5,12,3),(1,7,408.24,12,3),(1,8,273.4236,12,1),(1,9,1193.5,19,3),(1,10,1287.06,19,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-11-13 00:00:00','published','2025-07-28 03:48:48','2025-07-28 03:48:48');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(2,1,'2 Year',10,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(3,1,'3 Year',20,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(4,2,'4GB',0,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(5,2,'8GB',10,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(6,2,'16GB',20,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(7,3,'Core i5',0,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(8,3,'Core i7',10,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(9,3,'Core i9',20,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(10,4,'128GB',0,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(11,4,'256GB',10,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(12,4,'512GB',20,9999,0,'2025-07-28 03:48:26','2025-07-28 03:48:26');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-07-28 03:48:26','2025-07-28 03:48:26'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-07-28 03:48:26','2025-07-28 03:48:26');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-07-28 03:48:15','2025-07-28 03:48:15',0),(2,'Size','size','text',1,1,1,'published',1,'2025-07-28 03:48:15','2025-07-28 03:48:15',0),(3,'Weight','weight','text',1,1,1,'published',0,'2025-07-28 03:48:15','2025-07-28 03:48:15',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2025-07-28 03:48:15','2025-07-28 03:48:15',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(6,2,'S','s',NULL,NULL,1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(7,2,'M','m',NULL,NULL,0,2,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(8,2,'L','l',NULL,NULL,0,3,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-07-28 03:48:15','2025-07-28 03:48:15'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-07-28 03:48:15','2025-07-28 03:48:15');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'New Arrivals',0,NULL,'published',0,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-home',NULL),(2,'Electronics',0,NULL,'published',1,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-tv',NULL),(3,'Featured',2,NULL,'published',0,'main/product-categories/menu-1.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(4,'New Arrivals',3,NULL,'published',0,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(5,'Best Sellers',3,NULL,'published',1,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(6,'Mobile Phone',3,NULL,'published',2,'main/product-categories/2.png',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(7,'Computers & Laptops',2,NULL,'published',1,'main/product-categories/menu-2.jpg',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(8,'Top Brands',7,NULL,'published',0,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(9,'Weekly Best Selling',7,NULL,'published',1,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(10,'CPU Heat Pipes',7,NULL,'published',2,'main/product-categories/3.png',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(11,'CPU Coolers',7,NULL,'published',3,'main/product-categories/category-thumb-9.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(12,'Accessories',2,NULL,'published',2,'main/product-categories/menu-3.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(13,'Headphones',12,NULL,'published',0,'main/product-categories/1.png',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(14,'Wireless Headphones',12,NULL,'published',1,'main/product-categories/category-thumb-1.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(15,'TWS Earphones',12,NULL,'published',2,'main/product-categories/category-thumb-6.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(16,'Smart Watch',12,NULL,'published',3,'main/product-categories/4.png',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(17,'Gaming Console',2,NULL,'published',3,'main/product-categories/category-thumb-8.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(18,'Playstation',2,NULL,'published',4,'main/product-categories/category-thumb-12.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(19,'Gifts',0,NULL,'published',2,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-gift',NULL),(20,'Computers',0,NULL,'published',3,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-laptop',NULL),(21,'Desktop',20,NULL,'published',0,'main/product-categories/category-thumb-5.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-desktop',NULL),(22,'Laptop',20,NULL,'published',1,'main/product-categories/category-thumb-3.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-laptop',NULL),(23,'Tablet',20,NULL,'published',2,'main/product-categories/category-thumb-4.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-tablet',NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-keyboard',NULL),(25,'Smartphones & Tablets',0,NULL,'published',4,'main/product-categories/category-thumb-10.jpg',0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-mobile',NULL),(26,'TV,\n                Video & Music',0,NULL,'published',5,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-device-tv',NULL),(27,'Cameras',0,NULL,'published',6,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-camera',NULL),(28,'Cooking',0,NULL,'published',7,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-grill-spatula',NULL),(29,'Accessories',0,NULL,'published',8,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-building-store',NULL),(30,'With Bluetooth',29,NULL,'published',0,'main/product-categories/5.png',1,'2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,NULL),(31,'Sports',0,NULL,'published',9,NULL,0,'2025-07-28 03:48:36','2025-07-28 03:48:36','ti ti-ball-football',NULL),(32,'Electronics Gadgets',0,NULL,'published',10,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37','ti ti-cpu-2',NULL),(33,'Micrscope',32,NULL,'published',0,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL),(34,'Remote Control',32,NULL,'published',1,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL),(35,'Monitor',32,NULL,'published',2,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL),(36,'Thermometer',32,NULL,'published',3,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL),(37,'Backpack',32,NULL,'published',4,NULL,0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL),(38,'Headphones',32,NULL,'published',5,'main/product-categories/category-thumb-1.jpg',0,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,21),(1,31),(1,36),(1,41),(1,51),(2,5),(2,12),(2,14),(2,25),(2,39),(2,50),(2,51),(2,54),(3,12),(3,13),(3,23),(3,42),(3,46),(3,49),(4,34),(4,47),(4,53),(5,3),(5,20),(5,25),(5,27),(5,29),(5,42),(5,51),(5,54),(5,55),(5,56),(6,5),(6,6),(6,7),(6,13),(6,23),(6,24),(6,38),(6,39),(6,40),(6,44),(6,52),(7,4),(7,5),(7,7),(7,15),(7,17),(7,30),(8,7),(8,11),(8,12),(8,24),(8,27),(8,29),(8,31),(8,43),(9,4),(9,9),(9,38),(10,1),(10,16),(10,24),(10,36),(10,45),(11,18),(11,26),(11,27),(11,35),(11,37),(11,38),(11,46),(12,14),(12,15),(12,40),(12,47),(12,54),(12,55),(13,30),(13,33),(13,44),(13,56),(14,1),(14,12),(14,14),(14,18),(14,28),(14,32),(15,2),(15,5),(15,19),(15,37),(15,52),(16,8),(16,9),(16,16),(16,17),(16,29),(16,38),(16,47),(16,48),(16,50),(16,53),(17,9),(17,31),(17,43),(17,44),(17,53),(17,57),(18,10),(18,19),(18,37),(18,39),(18,41),(19,1),(19,11),(19,22),(20,4),(20,18),(20,45),(20,48),(20,53),(21,17),(21,22),(21,46),(21,50),(22,1),(22,8),(22,30),(22,45),(23,11),(23,21),(23,23),(23,31),(23,32),(23,35),(23,41),(23,44),(23,48),(24,3),(24,8),(24,15),(24,25),(24,29),(24,52),(25,7),(25,15),(25,17),(25,34),(25,49),(25,54),(26,3),(26,11),(26,20),(26,21),(26,23),(26,35),(26,57),(27,2),(27,6),(27,10),(27,21),(27,39),(27,45),(27,48),(27,55),(27,57),(28,18),(28,19),(28,25),(29,4),(29,26),(29,27),(29,28),(29,30),(29,32),(29,35),(29,42),(30,8),(30,13),(30,14),(30,22),(30,24),(30,32),(30,33),(30,41),(30,43),(30,49),(30,52),(31,3),(31,6),(31,13),(31,33),(31,34),(32,50),(33,10),(33,28),(33,36),(33,37),(33,56),(34,9),(34,26),(34,28),(34,36),(34,56),(35,2),(35,26),(35,42),(36,6),(36,20),(36,33),(36,40),(36,55),(37,2),(37,10),(37,16),(37,20),(37,22),(37,40),(37,46),(37,47),(37,49),(37,51),(38,16),(38,19),(38,34),(38,43),(38,57);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,7),(1,11),(1,12),(1,13),(1,17),(1,21),(1,27),(1,30),(1,39),(1,41),(1,43),(1,49),(2,4),(2,8),(2,14),(2,16),(2,22),(2,23),(2,24),(2,32),(2,33),(2,38),(2,40),(2,48),(2,50),(2,53),(2,54),(2,56),(2,57),(3,2),(3,5),(3,10),(3,15),(3,20),(3,25),(3,28),(3,31),(3,35),(3,36),(3,44),(3,46),(3,47),(3,52),(3,55),(4,3),(4,6),(4,9),(4,18),(4,19),(4,26),(4,29),(4,34),(4,37),(4,42),(4,45),(4,51);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2025-07-28 03:48:37','2025-07-28 03:48:37',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2025-07-28 03:48:37','2025-07-28 03:48:37',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2025-07-28 03:48:37','2025-07-28 03:48:37',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2025-07-28 03:48:37','2025-07-28 03:48:37',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,12,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,43,0,0.00,'fixed',1),(1,49,0,0.00,'fixed',1),(1,56,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(2,40,0,0.00,'fixed',1),(2,49,0,0.00,'fixed',1),(2,54,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,33,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,37,0,0.00,'fixed',1),(3,43,0,0.00,'fixed',1),(3,54,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(4,21,0,0.00,'fixed',1),(4,33,0,0.00,'fixed',1),(4,37,0,0.00,'fixed',1),(4,39,0,0.00,'fixed',1),(4,44,0,0.00,'fixed',1),(4,51,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,36,0,0.00,'fixed',1),(5,47,0,0.00,'fixed',1),(5,48,0,0.00,'fixed',1),(6,25,0,0.00,'fixed',1),(6,32,0,0.00,'fixed',1),(6,36,0,0.00,'fixed',1),(6,38,0,0.00,'fixed',1),(6,57,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(7,26,0,0.00,'fixed',1),(7,32,0,0.00,'fixed',1),(7,39,0,0.00,'fixed',1),(7,40,0,0.00,'fixed',1),(7,41,0,0.00,'fixed',1),(7,51,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,15,0,0.00,'fixed',1),(8,22,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(8,48,0,0.00,'fixed',1),(8,52,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,25,0,0.00,'fixed',1),(9,30,0,0.00,'fixed',1),(9,48,0,0.00,'fixed',1),(9,49,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,32,0,0.00,'fixed',1),(10,33,0,0.00,'fixed',1),(10,36,0,0.00,'fixed',1),(10,52,0,0.00,'fixed',1),(10,56,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,31,0,0.00,'fixed',1),(11,33,0,0.00,'fixed',1),(11,42,0,0.00,'fixed',1),(11,48,0,0.00,'fixed',1),(11,53,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(12,33,0,0.00,'fixed',1),(12,35,0,0.00,'fixed',1),(13,8,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,23,0,0.00,'fixed',1),(13,34,0,0.00,'fixed',1),(13,51,0,0.00,'fixed',1),(13,53,0,0.00,'fixed',1),(13,54,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,34,0,0.00,'fixed',1),(14,36,0,0.00,'fixed',1),(14,41,0,0.00,'fixed',1),(14,44,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,23,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,34,0,0.00,'fixed',1),(15,53,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,28,0,0.00,'fixed',1),(16,32,0,0.00,'fixed',1),(16,43,0,0.00,'fixed',1),(16,53,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,25,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,44,0,0.00,'fixed',1),(17,53,0,0.00,'fixed',1),(17,57,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,14,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(18,26,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(18,43,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,36,0,0.00,'fixed',1),(19,39,0,0.00,'fixed',1),(19,47,0,0.00,'fixed',1),(19,54,0,0.00,'fixed',1),(19,55,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(20,55,0,0.00,'fixed',1),(20,57,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,13,0,0.00,'fixed',1),(21,36,0,0.00,'fixed',1),(21,41,0,0.00,'fixed',1),(21,53,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,24,0,0.00,'fixed',1),(22,26,0,0.00,'fixed',1),(22,37,0,0.00,'fixed',1),(22,39,0,0.00,'fixed',1),(22,56,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,22,0,0.00,'fixed',1),(23,27,0,0.00,'fixed',1),(23,34,0,0.00,'fixed',1),(23,42,0,0.00,'fixed',1),(24,15,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(24,41,0,0.00,'fixed',1),(24,44,0,0.00,'fixed',1),(24,45,0,0.00,'fixed',1),(24,49,0,0.00,'fixed',1),(24,57,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,4,0,0.00,'fixed',1),(25,9,0,0.00,'fixed',1),(25,35,0,0.00,'fixed',1),(25,40,0,0.00,'fixed',1),(25,46,0,0.00,'fixed',1),(25,52,0,0.00,'fixed',1),(26,2,0,0.00,'fixed',1),(26,8,0,0.00,'fixed',1),(26,30,0,0.00,'fixed',1),(26,31,0,0.00,'fixed',1),(26,42,0,0.00,'fixed',1),(26,44,0,0.00,'fixed',1),(26,48,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,13,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(27,42,0,0.00,'fixed',1),(27,43,0,0.00,'fixed',1),(27,48,0,0.00,'fixed',1),(28,2,0,0.00,'fixed',1),(28,3,0,0.00,'fixed',1),(28,8,0,0.00,'fixed',1),(28,27,0,0.00,'fixed',1),(28,36,0,0.00,'fixed',1),(28,37,0,0.00,'fixed',1),(28,47,0,0.00,'fixed',1),(29,3,0,0.00,'fixed',1),(29,6,0,0.00,'fixed',1),(29,8,0,0.00,'fixed',1),(29,36,0,0.00,'fixed',1),(29,39,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(29,48,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,21,0,0.00,'fixed',1),(30,45,0,0.00,'fixed',1),(30,46,0,0.00,'fixed',1),(30,56,0,0.00,'fixed',1),(30,57,0,0.00,'fixed',1),(31,9,0,0.00,'fixed',1),(31,11,0,0.00,'fixed',1),(31,15,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1),(31,40,0,0.00,'fixed',1),(31,49,0,0.00,'fixed',1),(31,51,0,0.00,'fixed',1),(32,7,0,0.00,'fixed',1),(32,8,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(32,16,0,0.00,'fixed',1),(32,18,0,0.00,'fixed',1),(32,29,0,0.00,'fixed',1),(32,49,0,0.00,'fixed',1),(33,1,0,0.00,'fixed',1),(33,8,0,0.00,'fixed',1),(33,35,0,0.00,'fixed',1),(33,36,0,0.00,'fixed',1),(33,46,0,0.00,'fixed',1),(33,50,0,0.00,'fixed',1),(33,55,0,0.00,'fixed',1),(34,3,0,0.00,'fixed',1),(34,17,0,0.00,'fixed',1),(34,29,0,0.00,'fixed',1),(34,32,0,0.00,'fixed',1),(34,36,0,0.00,'fixed',1),(34,50,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,7,0,0.00,'fixed',1),(35,10,0,0.00,'fixed',1),(35,11,0,0.00,'fixed',1),(35,25,0,0.00,'fixed',1),(35,39,0,0.00,'fixed',1),(35,52,0,0.00,'fixed',1),(36,1,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,6,0,0.00,'fixed',1),(36,7,0,0.00,'fixed',1),(36,11,0,0.00,'fixed',1),(36,43,0,0.00,'fixed',1),(36,48,0,0.00,'fixed',1),(37,4,0,0.00,'fixed',1),(37,10,0,0.00,'fixed',1),(37,17,0,0.00,'fixed',1),(37,34,0,0.00,'fixed',1),(37,40,0,0.00,'fixed',1),(37,49,0,0.00,'fixed',1),(37,57,0,0.00,'fixed',1),(38,7,0,0.00,'fixed',1),(38,10,0,0.00,'fixed',1),(38,19,0,0.00,'fixed',1),(38,21,0,0.00,'fixed',1),(38,34,0,0.00,'fixed',1),(38,53,0,0.00,'fixed',1),(38,56,0,0.00,'fixed',1),(39,3,0,0.00,'fixed',1),(39,9,0,0.00,'fixed',1),(39,15,0,0.00,'fixed',1),(39,25,0,0.00,'fixed',1),(39,31,0,0.00,'fixed',1),(39,45,0,0.00,'fixed',1),(39,54,0,0.00,'fixed',1),(40,8,0,0.00,'fixed',1),(40,10,0,0.00,'fixed',1),(40,22,0,0.00,'fixed',1),(40,23,0,0.00,'fixed',1),(40,34,0,0.00,'fixed',1),(40,53,0,0.00,'fixed',1),(40,55,0,0.00,'fixed',1),(41,8,0,0.00,'fixed',1),(41,14,0,0.00,'fixed',1),(41,17,0,0.00,'fixed',1),(41,18,0,0.00,'fixed',1),(41,24,0,0.00,'fixed',1),(41,34,0,0.00,'fixed',1),(42,1,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,34,0,0.00,'fixed',1),(42,38,0,0.00,'fixed',1),(42,47,0,0.00,'fixed',1),(42,50,0,0.00,'fixed',1),(42,53,0,0.00,'fixed',1),(43,2,0,0.00,'fixed',1),(43,26,0,0.00,'fixed',1),(43,33,0,0.00,'fixed',1),(43,35,0,0.00,'fixed',1),(43,40,0,0.00,'fixed',1),(43,48,0,0.00,'fixed',1),(43,54,0,0.00,'fixed',1),(44,5,0,0.00,'fixed',1),(44,22,0,0.00,'fixed',1),(44,23,0,0.00,'fixed',1),(44,25,0,0.00,'fixed',1),(44,42,0,0.00,'fixed',1),(44,51,0,0.00,'fixed',1),(44,52,0,0.00,'fixed',1),(45,2,0,0.00,'fixed',1),(45,6,0,0.00,'fixed',1),(45,7,0,0.00,'fixed',1),(45,18,0,0.00,'fixed',1),(45,36,0,0.00,'fixed',1),(45,42,0,0.00,'fixed',1),(45,54,0,0.00,'fixed',1),(46,18,0,0.00,'fixed',1),(46,22,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,29,0,0.00,'fixed',1),(46,43,0,0.00,'fixed',1),(46,51,0,0.00,'fixed',1),(47,1,0,0.00,'fixed',1),(47,11,0,0.00,'fixed',1),(47,29,0,0.00,'fixed',1),(47,30,0,0.00,'fixed',1),(47,32,0,0.00,'fixed',1),(47,40,0,0.00,'fixed',1),(48,1,0,0.00,'fixed',1),(48,17,0,0.00,'fixed',1),(48,20,0,0.00,'fixed',1),(48,23,0,0.00,'fixed',1),(48,36,0,0.00,'fixed',1),(48,44,0,0.00,'fixed',1),(48,57,0,0.00,'fixed',1),(49,4,0,0.00,'fixed',1),(49,21,0,0.00,'fixed',1),(49,23,0,0.00,'fixed',1),(49,29,0,0.00,'fixed',1),(49,46,0,0.00,'fixed',1),(49,52,0,0.00,'fixed',1),(50,1,0,0.00,'fixed',1),(50,8,0,0.00,'fixed',1),(50,20,0,0.00,'fixed',1),(50,24,0,0.00,'fixed',1),(50,26,0,0.00,'fixed',1),(50,35,0,0.00,'fixed',1),(50,45,0,0.00,'fixed',1),(51,22,0,0.00,'fixed',1),(51,27,0,0.00,'fixed',1),(51,34,0,0.00,'fixed',1),(51,36,0,0.00,'fixed',1),(51,37,0,0.00,'fixed',1),(51,44,0,0.00,'fixed',1),(52,3,0,0.00,'fixed',1),(52,5,0,0.00,'fixed',1),(52,18,0,0.00,'fixed',1),(52,23,0,0.00,'fixed',1),(52,29,0,0.00,'fixed',1),(52,44,0,0.00,'fixed',1),(52,50,0,0.00,'fixed',1),(53,1,0,0.00,'fixed',1),(53,2,0,0.00,'fixed',1),(53,26,0,0.00,'fixed',1),(53,30,0,0.00,'fixed',1),(53,44,0,0.00,'fixed',1),(53,57,0,0.00,'fixed',1),(54,15,0,0.00,'fixed',1),(54,16,0,0.00,'fixed',1),(54,19,0,0.00,'fixed',1),(54,34,0,0.00,'fixed',1),(54,46,0,0.00,'fixed',1),(54,55,0,0.00,'fixed',1),(54,57,0,0.00,'fixed',1),(55,12,0,0.00,'fixed',1),(55,15,0,0.00,'fixed',1),(55,19,0,0.00,'fixed',1),(55,20,0,0.00,'fixed',1),(55,38,0,0.00,'fixed',1),(55,46,0,0.00,'fixed',1),(55,50,0,0.00,'fixed',1),(56,5,0,0.00,'fixed',1),(56,13,0,0.00,'fixed',1),(56,15,0,0.00,'fixed',1),(56,24,0,0.00,'fixed',1),(56,38,0,0.00,'fixed',1),(56,44,0,0.00,'fixed',1),(56,50,0,0.00,'fixed',1),(57,3,0,0.00,'fixed',1),(57,17,0,0.00,'fixed',1),(57,20,0,0.00,'fixed',1),(57,23,0,0.00,'fixed',1),(57,28,0,0.00,'fixed',1),(57,45,0,0.00,'fixed',1),(57,48,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(2,4,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(3,8,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(4,8,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(5,12,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(6,12,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(7,16,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(8,16,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(9,20,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(10,20,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(11,24,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(12,24,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(13,28,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(14,28,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(15,32,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(16,32,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(17,36,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(18,36,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(19,40,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(20,40,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(21,44,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(22,44,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(23,48,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(24,48,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(25,52,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(26,52,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(27,56,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(28,56,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(29,65,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(30,71,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(31,72,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(32,73,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(33,74,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(34,75,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(35,82,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(36,83,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(37,84,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(38,88,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(39,89,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(40,94,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(41,95,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(42,100,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(43,101,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(44,107,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(45,108,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(46,115,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(47,116,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(48,119,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(49,120,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(50,126,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(51,127,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(52,128,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(53,132,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(54,133,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46'),(55,134,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-07-28 10:48:46\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-07-28 03:48:46','2025-07-28 03:48:46');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,9),(1,18),(1,27),(1,36),(1,39),(1,48),(1,57),(2,15),(2,24),(2,45),(2,51),(3,6),(3,12),(3,21),(3,30),(3,33),(3,42),(3,54);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL),(2,'New','#006554','published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL),(3,'Sale','#9A3B00','published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'38.81 cm',0,0),(1,2,'75 cm',0,0),(1,3,'92.33 cm',0,0),(1,4,'5.61 cm',0,0),(1,5,'23.7 cm',0,0),(2,1,'57.93 cm',0,0),(2,2,'85.51 cm',0,0),(2,3,'43.75 cm',0,0),(2,4,'41.05 cm',0,0),(2,5,'98.53 cm',0,0),(3,1,'89.06 cm',0,0),(3,2,'38.64 cm',0,0),(3,3,'95.24 cm',0,0),(3,4,'70.3 cm',0,0),(3,5,'75.33 cm',0,0),(4,1,'90.56 cm',0,0),(4,2,'64.91 cm',0,0),(4,3,'76.81 cm',0,0),(4,4,'68.87 cm',0,0),(4,5,'23.31 cm',0,0),(5,1,'43.37 cm',0,0),(5,2,'91.7 cm',0,0),(5,3,'21.41 cm',0,0),(5,4,'87.98 cm',0,0),(5,5,'35.64 cm',0,0),(6,6,'11.01 cm',0,0),(6,7,'28.79 cm',0,0),(6,8,'2560x1440',0,0),(7,1,'25.07 cm',0,0),(7,2,'92.4 cm',0,0),(7,3,'22.03 cm',0,0),(7,4,'48.43 cm',0,0),(7,5,'90.94 cm',0,0),(8,1,'59.94 cm',0,0),(8,2,'29.9 cm',0,0),(8,3,'99.09 cm',0,0),(8,4,'99.95 cm',0,0),(8,5,'69.31 cm',0,0),(9,6,'58.17 cm',0,0),(9,7,'50.85 cm',0,0),(9,8,'3840x2160',0,0),(10,1,'2.69 cm',0,0),(10,2,'29.47 cm',0,0),(10,3,'25.01 cm',0,0),(10,4,'21.89 cm',0,0),(10,5,'6.75 cm',0,0),(11,6,'32.76 cm',0,0),(11,7,'6.28 cm',0,0),(11,8,'2560x1440',0,0),(12,1,'70.17 cm',0,0),(12,2,'46.34 cm',0,0),(12,3,'22.59 cm',0,0),(12,4,'10.39 cm',0,0),(12,5,'13.21 cm',0,0),(13,1,'12.98 cm',0,0),(13,2,'18.27 cm',0,0),(13,3,'87.94 cm',0,0),(13,4,'18.17 cm',0,0),(13,5,'53.76 cm',0,0),(14,6,'53.5 cm',0,0),(14,7,'99.74 cm',0,0),(14,8,'3840x2160',0,0),(15,6,'61.11 cm',0,0),(15,7,'82.48 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'69.75 cm',0,0),(16,7,'75.69 cm',0,0),(16,8,'1920x1080',0,0),(17,6,'88.56 cm',0,0),(17,7,'81.13 cm',0,0),(17,8,'1920x1080',0,0),(18,6,'9.51 cm',0,0),(18,7,'1.44 cm',0,0),(18,8,'3840x2160',0,0),(19,6,'97.46 cm',0,0),(19,7,'60.35 cm',0,0),(19,8,'3840x2160',0,0),(20,6,'5.74 cm',0,0),(20,7,'85.23 cm',0,0),(20,8,'2560x1440',0,0),(21,1,'72.03 cm',0,0),(21,2,'60.87 cm',0,0),(21,3,'99.08 cm',0,0),(21,4,'30.42 cm',0,0),(21,5,'17.35 cm',0,0),(22,1,'11.46 cm',0,0),(22,2,'57.07 cm',0,0),(22,3,'98.58 cm',0,0),(22,4,'24.92 cm',0,0),(22,5,'32.52 cm',0,0),(23,6,'16.54 cm',0,0),(23,7,'57.94 cm',0,0),(23,8,'1920x1080',0,0),(24,6,'75.03 cm',0,0),(24,7,'60.36 cm',0,0),(24,8,'1920x1080',0,0),(25,6,'13.11 cm',0,0),(25,7,'75.53 cm',0,0),(25,8,'3840x2160',0,0),(26,1,'28.37 cm',0,0),(26,2,'41.14 cm',0,0),(26,3,'49.85 cm',0,0),(26,4,'62.3 cm',0,0),(26,5,'39.49 cm',0,0),(27,6,'68.2 cm',0,0),(27,7,'37.42 cm',0,0),(27,8,'2560x1440',0,0),(28,1,'90.83 cm',0,0),(28,2,'15 cm',0,0),(28,3,'56.18 cm',0,0),(28,4,'74.93 cm',0,0),(28,5,'43.99 cm',0,0),(29,6,'36.18 cm',0,0),(29,7,'72.01 cm',0,0),(29,8,'2560x1440',0,0),(30,6,'98.2 cm',0,0),(30,7,'71.1 cm',0,0),(30,8,'1920x1080',0,0),(31,6,'32.59 cm',0,0),(31,7,'37.22 cm',0,0),(31,8,'2560x1440',0,0),(32,1,'71.09 cm',0,0),(32,2,'53.99 cm',0,0),(32,3,'56.6 cm',0,0),(32,4,'44.57 cm',0,0),(32,5,'46.19 cm',0,0),(33,1,'22.65 cm',0,0),(33,2,'25.79 cm',0,0),(33,3,'37.02 cm',0,0),(33,4,'51.58 cm',0,0),(33,5,'61.42 cm',0,0),(34,6,'95.31 cm',0,0),(34,7,'88 cm',0,0),(34,8,'3840x2160',0,0),(35,1,'25.26 cm',0,0),(35,2,'89.07 cm',0,0),(35,3,'67.01 cm',0,0),(35,4,'37.53 cm',0,0),(35,5,'15.51 cm',0,0),(36,1,'46.98 cm',0,0),(36,2,'72.8 cm',0,0),(36,3,'51.36 cm',0,0),(36,4,'40.13 cm',0,0),(36,5,'30.82 cm',0,0),(37,1,'15.23 cm',0,0),(37,2,'63.92 cm',0,0),(37,3,'66.79 cm',0,0),(37,4,'39.53 cm',0,0),(37,5,'90.04 cm',0,0),(38,1,'1.89 cm',0,0),(38,2,'6.41 cm',0,0),(38,3,'33.26 cm',0,0),(38,4,'29.06 cm',0,0),(38,5,'65.16 cm',0,0),(39,1,'49.13 cm',0,0),(39,2,'73.93 cm',0,0),(39,3,'25.66 cm',0,0),(39,4,'74.84 cm',0,0),(39,5,'72.09 cm',0,0),(40,1,'19.28 cm',0,0),(40,2,'25.64 cm',0,0),(40,3,'6.68 cm',0,0),(40,4,'56.73 cm',0,0),(40,5,'41.65 cm',0,0),(41,6,'68.14 cm',0,0),(41,7,'62.95 cm',0,0),(41,8,'3840x2160',0,0),(42,1,'97.63 cm',0,0),(42,2,'44.95 cm',0,0),(42,3,'89.39 cm',0,0),(42,4,'59.87 cm',0,0),(42,5,'37.94 cm',0,0),(43,6,'77.5 cm',0,0),(43,7,'98.81 cm',0,0),(43,8,'1920x1080',0,0),(44,6,'34.37 cm',0,0),(44,7,'56.01 cm',0,0),(44,8,'3840x2160',0,0),(45,1,'46.88 cm',0,0),(45,2,'21.37 cm',0,0),(45,3,'77.73 cm',0,0),(45,4,'56.87 cm',0,0),(45,5,'44.98 cm',0,0),(46,1,'96.6 cm',0,0),(46,2,'17.34 cm',0,0),(46,3,'40 cm',0,0),(46,4,'35.33 cm',0,0),(46,5,'81.33 cm',0,0),(47,1,'54.45 cm',0,0),(47,2,'81.13 cm',0,0),(47,3,'6.03 cm',0,0),(47,4,'19.31 cm',0,0),(47,5,'80.43 cm',0,0),(48,1,'16.29 cm',0,0),(48,2,'88.27 cm',0,0),(48,3,'70.3 cm',0,0),(48,4,'10.77 cm',0,0),(48,5,'51.57 cm',0,0),(49,1,'23.51 cm',0,0),(49,2,'48.38 cm',0,0),(49,3,'93.84 cm',0,0),(49,4,'34.77 cm',0,0),(49,5,'8.51 cm',0,0),(50,6,'97.8 cm',0,0),(50,7,'30.71 cm',0,0),(50,8,'1920x1080',0,0),(51,1,'36.41 cm',0,0),(51,2,'72.45 cm',0,0),(51,3,'14.18 cm',0,0),(51,4,'53.3 cm',0,0),(51,5,'94.18 cm',0,0),(52,1,'72.44 cm',0,0),(52,2,'62.56 cm',0,0),(52,3,'91.65 cm',0,0),(52,4,'71.91 cm',0,0),(52,5,'75.39 cm',0,0),(53,6,'61.77 cm',0,0),(53,7,'88.29 cm',0,0),(53,8,'1920x1080',0,0),(54,6,'3.81 cm',0,0),(54,7,'31.64 cm',0,0),(54,8,'1920x1080',0,0),(55,6,'64.54 cm',0,0),(55,7,'1.41 cm',0,0),(55,8,'1920x1080',0,0),(56,6,'7.71 cm',0,0),(56,7,'45.84 cm',0,0),(56,8,'1920x1080',0,0),(57,6,'69.24 cm',0,0),(57,7,'62.51 cm',0,0),(57,8,'1920x1080',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(1,5),(2,1),(2,2),(2,6),(3,1),(3,2),(3,4),(4,1),(4,4),(4,6),(5,1),(5,2),(5,4),(6,1),(6,3),(6,4),(7,1),(7,2),(7,5),(8,2),(8,4),(8,6),(9,1),(9,2),(9,4),(10,1),(10,2),(10,4),(11,1),(11,5),(11,6),(12,2),(12,3),(12,4),(13,1),(13,3),(13,6),(14,2),(14,4),(14,6),(15,1),(15,2),(15,5),(16,1),(16,2),(16,4),(17,1),(17,2),(17,6),(18,3),(18,5),(18,6),(19,4),(19,5),(19,6),(20,1),(20,2),(20,3),(21,1),(21,2),(21,3),(22,2),(22,4),(22,5),(23,3),(23,4),(23,5),(24,4),(24,5),(24,6),(25,1),(25,5),(25,6),(26,1),(26,3),(26,4),(27,1),(27,3),(27,6),(28,3),(28,4),(28,6),(29,3),(29,4),(29,6),(30,1),(30,4),(30,6),(31,1),(31,4),(31,6),(32,2),(32,3),(32,5),(33,1),(33,4),(33,6),(34,2),(34,4),(34,6),(35,2),(35,5),(35,6),(36,2),(36,3),(36,4),(37,2),(37,3),(37,5),(38,2),(38,3),(38,5),(39,2),(39,3),(39,5),(40,2),(40,3),(40,6),(41,1),(41,4),(41,5),(42,1),(42,2),(42,6),(43,1),(43,2),(43,5),(44,2),(44,5),(44,6),(45,2),(45,4),(45,6),(46,3),(46,4),(46,5),(47,2),(47,3),(47,6),(48,3),(48,4),(48,5),(49,1),(49,2),(49,6),(50,2),(50,5),(50,6),(51,1),(51,2),(51,5),(52,4),(52,5),(52,6),(53,1),(53,3),(53,5),(54,4),(54,5),(54,6),(55,1),(55,2),(55,3),(56,1),(56,2),(56,6),(57,2),(57,3),(57,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(2,'Mobile',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(3,'Iphone',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(4,'Printer',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(5,'Office',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(6,'IT',NULL,'published','2025-07-28 03:48:21','2025-07-28 03:48:21');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(23,1,12),(5,2,3),(13,2,7),(15,2,8),(35,2,18),(49,2,25),(71,2,36),(3,3,2),(7,3,4),(43,3,22),(47,3,24),(57,3,29),(63,3,32),(1,4,1),(17,4,9),(25,4,13),(31,4,16),(33,4,17),(39,4,20),(41,4,21),(53,4,27),(59,4,30),(61,4,31),(69,4,35),(11,5,6),(19,5,10),(21,5,11),(27,5,14),(29,5,15),(37,5,19),(45,5,23),(51,5,26),(55,5,28),(65,5,33),(67,5,34),(22,6,11),(24,6,12),(30,6,15),(60,6,30),(64,6,32),(68,6,34),(70,6,35),(10,7,5),(16,7,8),(28,7,14),(38,7,19),(48,7,24),(2,8,1),(4,8,2),(26,8,13),(34,8,17),(40,8,20),(62,8,31),(8,9,4),(20,9,10),(32,9,16),(36,9,18),(42,9,21),(52,9,26),(58,9,29),(72,9,36),(6,10,3),(12,10,6),(14,10,7),(18,10,9),(44,10,22),(46,10,23),(50,10,25),(54,10,27),(56,10,28),(66,10,33),(79,11,40),(85,11,43),(91,11,46),(99,11,50),(101,11,51),(107,11,54),(123,11,62),(125,11,63),(127,11,64),(131,11,66),(141,11,71),(143,11,72),(147,11,74),(151,11,76),(153,11,77),(87,12,44),(95,12,48),(109,12,55),(117,12,59),(135,12,68),(89,13,45),(93,13,47),(97,13,49),(113,13,57),(129,13,65),(133,13,67),(137,13,69),(139,13,70),(73,14,37),(77,14,39),(103,14,52),(115,14,58),(119,14,60),(121,14,61),(145,14,73),(75,15,38),(81,15,41),(83,15,42),(105,15,53),(111,15,56),(149,15,75),(84,16,42),(90,16,45),(92,16,46),(94,16,47),(98,16,49),(112,16,56),(120,16,60),(124,16,62),(138,16,69),(152,16,76),(96,17,48),(102,17,51),(110,17,55),(118,17,59),(122,17,61),(128,17,64),(76,18,38),(100,18,50),(114,18,57),(130,18,65),(136,18,68),(144,18,72),(80,19,40),(126,19,63),(140,19,70),(146,19,73),(148,19,74),(74,20,37),(78,20,39),(82,20,41),(86,20,43),(88,20,44),(104,20,52),(106,20,53),(108,20,54),(116,20,58),(132,20,66),(134,20,67),(142,20,71),(150,20,75),(154,20,77);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,58,2,1),(2,59,2,0),(3,60,2,0),(4,61,3,1),(5,62,3,0),(6,63,3,0),(7,64,3,0),(8,65,4,1),(9,66,5,1),(10,67,5,0),(11,68,6,1),(12,69,6,0),(13,70,6,0),(14,71,8,1),(15,72,8,0),(16,73,8,0),(17,74,8,0),(18,75,8,0),(19,76,9,1),(20,77,9,0),(21,78,10,1),(22,79,10,0),(23,80,10,0),(24,81,17,1),(25,82,20,1),(26,83,20,0),(27,84,20,0),(28,85,22,1),(29,86,22,0),(30,87,22,0),(31,88,24,1),(32,89,24,0),(33,90,26,1),(34,91,27,1),(35,92,27,0),(36,93,27,0),(37,94,28,1),(38,95,28,0),(39,96,31,1),(40,97,31,0),(41,98,34,1),(42,99,35,1),(43,100,36,1),(44,101,36,0),(45,102,37,1),(46,103,37,0),(47,104,37,0),(48,105,37,0),(49,106,37,0),(50,107,40,1),(51,108,40,0),(52,109,42,1),(53,110,42,0),(54,111,42,0),(55,112,43,1),(56,113,43,0),(57,114,43,0),(58,115,44,1),(59,116,44,0),(60,117,46,1),(61,118,46,0),(62,119,48,1),(63,120,48,0),(64,121,49,1),(65,122,49,0),(66,123,49,0),(67,124,49,0),(68,125,51,1),(69,126,52,1),(70,127,52,0),(71,128,52,0),(72,129,54,1),(73,130,54,0),(74,131,54,0),(75,132,56,1),(76,133,56,0),(77,134,56,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-07-28',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,17,0),(2,17,0),(1,20,0),(2,20,0),(1,22,0),(2,22,0),(1,24,0),(2,24,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(3,28,0),(4,28,0),(3,31,0),(4,31,0),(3,34,0),(4,34,0),(3,35,0),(4,35,0),(3,36,0),(4,36,0),(3,37,0),(4,37,0),(3,40,0),(4,40,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0),(3,44,0),(4,44,0),(3,46,0),(4,46,0),(3,48,0),(4,48,0),(3,49,0),(4,49,0),(3,51,0),(4,51,0),(3,52,0),(4,52,0),(3,54,0),(4,54,0),(3,56,0),(4,56,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','WP-161',0,17,0,1,'in_stock',0,5,0,0,2141,1056,NULL,NULL,11,17,19,798,NULL,186939,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8269358013724',NULL,0,'auto_generate',0,0,0,1,8,0),(2,'Philips Hue White and Color Ambiance A19 LED Smart Bulb','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','SC-133-A1',0,10,0,1,'in_stock',0,2,0,0,1804,NULL,NULL,NULL,11,12,14,698,NULL,38202,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6743982337880',NULL,0,'auto_generate',0,0,0,1,1,0),(3,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','RK-192-A1',0,11,0,1,'in_stock',0,3,0,0,1408,NULL,NULL,NULL,17,15,15,759,NULL,94636,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8871621589760',NULL,0,'auto_generate',0,0,0,1,8,0),(4,'Apple MacBook Pro 16-Inch Laptop (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NI-152-A1',0,19,0,1,'in_stock',1,5,0,0,377,286.52,NULL,NULL,17,20,17,518,NULL,40046,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','8440360271399',NULL,0,'auto_generate',0,0,0,1,5,0),(5,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[]','KY-175-A1',0,11,0,1,'in_stock',0,5,0,0,1902,NULL,NULL,NULL,13,16,14,754,NULL,122149,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5051538991907',NULL,0,'auto_generate',0,0,0,1,2,0),(6,'DJI Mavic Air 2 Drone','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','4V-175-A1',0,11,0,1,'in_stock',1,1,0,0,814,NULL,NULL,NULL,19,18,15,651,NULL,53282,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8949713659971',NULL,0,'auto_generate',0,0,0,2,3,0),(7,'GoPro HERO9 Black Action Camera','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','JA-142',0,10,0,1,'in_stock',1,2,0,0,548,486,NULL,NULL,14,12,15,889,NULL,54417,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7099226283895',NULL,0,'auto_generate',0,0,0,1,5,0),(8,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','T1-154-A1',0,11,0,1,'in_stock',0,3,0,0,388,337.56,NULL,NULL,17,17,19,811,NULL,21726,'2025-07-28 03:48:40','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','3188415254489',NULL,0,'auto_generate',0,0,0,1,2,0),(9,'Nest Learning Thermostat (3rd Generation)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','A0-156-A1',0,12,0,1,'in_stock',1,1,0,0,1705,NULL,NULL,NULL,14,11,19,610,NULL,82079,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1552153985462',NULL,0,'auto_generate',0,0,0,2,5,0),(10,'Ring Video Doorbell Pro','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','OX-126-A1',0,18,0,1,'in_stock',0,1,0,0,2258,NULL,NULL,NULL,15,16,10,814,NULL,124190,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8645407744328',NULL,0,'auto_generate',0,0,0,1,5,0),(11,'Amazon Echo Show 10 (3rd Gen)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','AQ-195',0,19,0,1,'in_stock',0,4,0,0,1434,289,NULL,NULL,12,20,18,734,NULL,178736,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7414600902429',NULL,0,'auto_generate',0,0,0,2,5,0),(12,'Samsung QN90A Neo QLED 4K Smart TV (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','CL-122',0,17,0,1,'in_stock',1,1,0,0,2072,682,NULL,NULL,15,14,16,501,NULL,171234,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6215120395132',NULL,0,'auto_generate',0,0,0,1,1,0),(13,'LG OLED C1 Series 4K Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]','[]','Q8-114',0,10,0,1,'in_stock',1,4,0,0,2355,389,NULL,NULL,14,16,18,635,NULL,147374,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2943714707330',NULL,0,'auto_generate',0,0,0,1,1,0),(14,'Sony X950H 4K Ultra HD Smart LED TV','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','4S-181',0,14,0,1,'in_stock',0,1,0,0,611,429,NULL,NULL,10,12,11,563,NULL,66979,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7614405451539',NULL,0,'auto_generate',0,0,0,2,1,0),(15,'Apple Watch Series 7','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','QE-184',0,19,0,1,'in_stock',0,3,0,0,1078,895,NULL,NULL,17,19,14,613,NULL,158489,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2494533478036',NULL,0,'auto_generate',0,0,0,2,2,0),(16,'Fitbit Charge 5 Fitness Tracker (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','MX-192',0,10,0,1,'in_stock',0,3,0,0,2287,571,NULL,NULL,10,15,17,845,NULL,159391,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','0230182533373',NULL,0,'auto_generate',0,0,0,2,3,0),(17,'Garmin Fenix 7X Sapphire Solar GPS Watch','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','LA-147-A1',0,13,0,1,'in_stock',1,1,0,0,639,NULL,NULL,NULL,20,18,13,515,NULL,196282,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4531087440237',NULL,0,'auto_generate',0,0,0,2,6,0),(18,'Microsoft Surface Pro 8','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]','[]','RG-152',0,18,0,1,'in_stock',1,3,0,0,2052,264,NULL,NULL,19,12,14,616,NULL,44060,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0738622476216',NULL,0,'auto_generate',0,0,0,2,7,0),(19,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-16.jpg\"]','[]','GN-167',0,14,0,1,'in_stock',1,1,0,0,310,216,NULL,NULL,19,18,10,543,NULL,24766,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0246808582274',NULL,0,'auto_generate',0,0,0,2,7,0),(20,'HP Spectre x360 14-Inch Convertible Laptop (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','CM-122-A1',0,13,0,1,'in_stock',0,2,0,0,1345,1197.05,NULL,NULL,13,10,11,735,NULL,165392,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','7748926557439',NULL,0,'auto_generate',0,0,0,2,4,0),(21,'Razer Blade 15 Advanced Gaming Laptop','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','V3-179',0,14,0,1,'in_stock',1,4,0,0,2468,625,NULL,NULL,10,16,18,674,NULL,173387,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4183390082392',NULL,0,'auto_generate',0,0,0,1,3,0),(22,'Alienware m15 R6 Gaming Laptop','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','08-125-A1',0,18,0,1,'in_stock',1,4,0,0,897,NULL,NULL,NULL,10,16,15,589,NULL,127016,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1540882354109',NULL,0,'auto_generate',0,0,0,1,2,0),(23,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','RN-188',0,19,0,1,'in_stock',0,4,0,0,1515,398,NULL,NULL,18,18,14,603,NULL,177178,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','3349811983063',NULL,0,'auto_generate',0,0,0,2,2,0),(24,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-6.jpg\"]','[]','YR-110-A1',0,16,0,1,'in_stock',0,3,0,0,680,612,NULL,NULL,14,18,15,704,NULL,146623,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','1790857686951',NULL,0,'auto_generate',0,0,0,2,4,0),(25,'SteelSeries Arctis Pro Wireless Gaming Headset','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','CP-133',0,19,0,1,'in_stock',1,5,0,0,853,385,NULL,NULL,14,11,13,691,NULL,100001,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2746220961766',NULL,0,'auto_generate',0,0,0,2,4,0),(26,'Elgato Stream Deck XL','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MB-151-A1',0,17,0,1,'in_stock',0,3,0,0,656,NULL,NULL,NULL,13,11,16,807,NULL,151131,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6077233935861',NULL,0,'auto_generate',0,0,0,1,4,0),(27,'Nintendo Switch OLED Model','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','OL-169-A1',0,12,0,1,'in_stock',0,5,0,0,1203,NULL,NULL,NULL,12,14,11,683,NULL,3318,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','3155642330217',NULL,0,'auto_generate',0,0,0,2,3,0),(28,'PlayStation 5 Console (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','J8-135-A1',0,11,0,1,'in_stock',1,3,0,0,491,436.99,NULL,NULL,11,12,11,659,NULL,199804,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','0174407553565',NULL,0,'auto_generate',0,0,0,1,2,0),(29,'Xbox Series X Console','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','F4-123',0,13,0,1,'in_stock',1,1,0,0,372,189,NULL,NULL,15,20,10,603,NULL,34509,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5097710285365',NULL,0,'auto_generate',0,0,0,2,4,0),(30,'Oculus Quest 2 VR Headset','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','FG-112',0,12,0,1,'in_stock',1,2,0,0,2439,1083,NULL,NULL,16,10,18,885,NULL,35007,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6541117505995',NULL,0,'auto_generate',0,0,0,2,1,0),(31,'HTC Vive Cosmos Elite VR Headset','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]','[]','JE-189-A1',0,19,0,1,'in_stock',1,2,0,0,1014,NULL,NULL,NULL,14,16,14,620,NULL,37936,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','9037102093662',NULL,0,'auto_generate',0,0,0,2,5,0),(32,'Samsung Odyssey G9 49-Inch Curved Gaming Monitor (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','XS-162',0,19,0,1,'in_stock',0,4,0,0,818,559,NULL,NULL,11,13,16,604,NULL,120405,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','1749603589091',NULL,0,'auto_generate',0,0,0,1,6,0),(33,'LG UltraGear 27GN950-B 4K Gaming Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','W3-143',0,10,0,1,'in_stock',0,2,0,0,894,344,NULL,NULL,13,19,10,709,NULL,109579,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6542507928738',NULL,0,'auto_generate',0,0,0,1,3,0),(34,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NJ-174-A1',0,11,0,1,'in_stock',0,3,0,0,2443,NULL,NULL,NULL,16,17,12,821,NULL,61635,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5637491395046',NULL,0,'auto_generate',0,0,0,2,4,0),(35,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','UW-102-A1',0,12,0,1,'in_stock',1,3,0,0,2369,NULL,NULL,NULL,13,17,10,892,NULL,124858,'2025-07-28 03:48:41','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8256357392400',NULL,0,'auto_generate',0,0,0,1,5,0),(36,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','BJ-117-A1',0,19,0,1,'in_stock',0,5,0,0,544,424.32,NULL,NULL,10,19,14,753,NULL,32153,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6447688894264',NULL,0,'auto_generate',0,0,0,1,3,0),(37,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','H2-163-A1',0,19,0,1,'in_stock',1,5,0,0,959,NULL,NULL,NULL,11,18,16,552,NULL,179199,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4018035182710',NULL,0,'auto_generate',0,0,0,1,3,0),(38,'HP Z27k G3 4K USB-C Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','QR-167',0,13,0,1,'in_stock',0,5,0,0,1998,1660,NULL,NULL,14,12,16,839,NULL,77123,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5705971466941',NULL,0,'auto_generate',0,0,0,1,1,0),(39,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NK-179',0,13,0,1,'in_stock',0,1,0,0,1968,314,NULL,NULL,12,17,11,554,NULL,87446,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0326656352721',NULL,0,'auto_generate',0,0,0,1,4,0),(40,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','K6-127-A1',0,10,0,1,'in_stock',0,4,0,0,2033,1463.76,NULL,NULL,18,17,10,888,NULL,13888,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','3035658394857',NULL,0,'auto_generate',0,0,0,1,2,0),(41,'Sony X900H 4K Ultra HD Smart LED TV','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','EJ-193',0,19,0,1,'in_stock',1,2,0,0,1685,1561,NULL,NULL,11,11,18,521,NULL,55093,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0175304421018',NULL,0,'auto_generate',0,0,0,2,5,0),(42,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MP-135-A1',0,11,0,1,'in_stock',0,4,0,0,2286,NULL,NULL,NULL,18,11,16,830,NULL,148238,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0154772221047',NULL,0,'auto_generate',0,0,0,1,4,0),(43,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','L8-137-A1',0,16,0,1,'in_stock',1,1,0,0,1700,NULL,NULL,NULL,18,18,18,893,NULL,124984,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1612716435077',NULL,0,'auto_generate',0,0,0,2,3,0),(44,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','GN-150-A1',0,12,0,1,'in_stock',0,4,0,0,793,610.61,NULL,NULL,13,10,12,777,NULL,66875,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6819249101690',NULL,0,'auto_generate',0,0,0,2,6,0),(45,'LG C1 Series 4K OLED Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[]','J9-137',0,11,0,1,'in_stock',1,3,0,0,2059,499,NULL,NULL,19,13,10,573,NULL,110971,'2025-07-28 03:48:42','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5190536092756',NULL,0,'auto_generate',0,0,0,1,3,0),(46,'Samsung QN85A Neo QLED 4K Smart TV','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','9I-185-A1',0,20,0,1,'in_stock',0,5,0,0,2345,NULL,NULL,NULL,11,15,14,740,NULL,175124,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','6712628261599',NULL,0,'auto_generate',0,0,0,1,7,0),(47,'Sony A90J 4K OLED Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-6.jpg\"]','[]','SI-199',0,13,0,1,'in_stock',0,5,0,0,1253,414,NULL,NULL,14,12,11,555,NULL,106872,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','7827465416961',NULL,0,'auto_generate',0,0,0,1,5,0),(48,'Apple TV 4K (2nd Generation) (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','UA-132-A1',0,19,0,1,'in_stock',1,2,0,0,258,229.62,NULL,NULL,13,12,19,542,NULL,14155,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','0949219830322',NULL,0,'auto_generate',0,0,0,1,5,0),(49,'Roku Ultra 2020 Streaming Media Player','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','EK-182-A1',0,14,0,1,'in_stock',1,2,0,0,896,NULL,NULL,NULL,10,16,14,629,NULL,54646,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','1431060322563',NULL,0,'auto_generate',0,0,0,1,3,0),(50,'Amazon Fire TV Stick 4K Max','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\"]','[]','8R-108',0,16,0,1,'in_stock',1,4,0,0,2299,2063,NULL,NULL,10,16,12,641,NULL,107875,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','7795631662903',NULL,0,'auto_generate',0,0,0,2,6,0),(51,'Google Chromecast with Google TV','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','PK-107-A1',0,17,0,1,'in_stock',1,1,0,0,817,NULL,NULL,NULL,13,20,11,705,NULL,116890,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','4473832290134',NULL,0,'auto_generate',0,0,0,1,3,0),(52,'NVIDIA SHIELD TV Pro (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','Y1-187-A1',0,11,0,1,'in_stock',0,4,0,0,1951,1541.29,NULL,NULL,13,10,13,722,NULL,132369,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','1103266843936',NULL,0,'auto_generate',0,0,0,1,2,0),(53,'Sonos Beam Gen 2 Soundbar','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','SG-156',0,18,0,1,'in_stock',0,2,0,0,1502,432,NULL,NULL,15,16,13,634,NULL,146545,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','8438477701793',NULL,0,'auto_generate',0,0,0,2,1,0),(54,'Bose Smart Soundbar 900','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','S3-100-A1',0,12,0,1,'in_stock',1,2,0,0,1389,NULL,NULL,NULL,14,16,10,820,NULL,47736,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','3725398069114',NULL,0,'auto_generate',0,0,0,2,3,0),(55,'JBL Bar 9.1 Soundbar with Dolby Atmos','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-10.jpg\"]','[]','EI-105',0,15,0,1,'in_stock',0,4,0,0,1691,736,NULL,NULL,15,18,19,819,NULL,14933,'2025-07-28 03:48:42','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','5765103262278',NULL,0,'auto_generate',0,0,0,2,6,0),(56,'Sennheiser Ambeo Soundbar (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\"]','[]','DZ-172-A1',0,13,0,1,'in_stock',1,4,0,0,1117,994.13,NULL,NULL,10,13,19,823,NULL,24365,'2025-07-28 03:48:43','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','1629905836522',NULL,0,'auto_generate',0,0,0,2,8,0),(57,'Sony HT-A9 Home Theater System','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','NO-153',0,19,0,1,'in_stock',1,3,0,0,1580,537,NULL,NULL,18,12,10,768,NULL,188596,'2025-07-28 03:48:43','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','1840636161732',NULL,0,'auto_generate',0,0,0,2,7,0),(58,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'SC-133-A1',0,10,0,1,'in_stock',0,2,1,0,1804,NULL,NULL,NULL,11,12,14,698,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0093438524194',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(59,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'SC-133-A1-A2',0,10,0,1,'in_stock',0,2,1,0,1804,NULL,NULL,NULL,11,12,14,698,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4854661216050',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(60,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'SC-133-A1-A3',0,10,0,1,'in_stock',0,2,1,0,1804,NULL,NULL,NULL,11,12,14,698,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8194095775256',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(61,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'RK-192-A1',0,11,0,1,'in_stock',0,3,1,0,1408,NULL,NULL,NULL,17,15,15,759,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7296766164206',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(62,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'RK-192-A1-A2',0,11,0,1,'in_stock',0,3,1,0,1408,NULL,NULL,NULL,17,15,15,759,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1501455069356',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(63,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'RK-192-A1-A3',0,11,0,1,'in_stock',0,3,1,0,1408,NULL,NULL,NULL,17,15,15,759,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8816917833677',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(64,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'RK-192-A1-A4',0,11,0,1,'in_stock',0,3,1,0,1408,NULL,NULL,NULL,17,15,15,759,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1965602225826',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(65,'Apple MacBook Pro 16-Inch Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'NI-152-A1',0,19,0,1,'in_stock',0,5,1,0,377,286.52,NULL,NULL,17,20,17,518,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','9887043985690',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(66,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'KY-175-A1',0,11,0,1,'in_stock',0,5,1,0,1902,NULL,NULL,NULL,13,16,14,754,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7686876111731',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(67,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'KY-175-A1-A2',0,11,0,1,'in_stock',0,5,1,0,1902,NULL,NULL,NULL,13,16,14,754,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5747483941738',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(68,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'4V-175-A1',0,11,0,1,'in_stock',0,1,1,0,814,NULL,NULL,NULL,19,18,15,651,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0398305008976',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(69,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'4V-175-A1-A2',0,11,0,1,'in_stock',0,1,1,0,814,NULL,NULL,NULL,19,18,15,651,NULL,0,'2025-07-28 03:48:43','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8609850620271',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(70,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'4V-175-A1-A3',0,11,0,1,'in_stock',0,1,1,0,814,NULL,NULL,NULL,19,18,15,651,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7399123409214',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(71,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'T1-154-A1',0,11,0,1,'in_stock',0,3,1,0,388,337.56,NULL,NULL,17,17,19,811,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','4537843436124',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(72,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'T1-154-A1-A2',0,11,0,1,'in_stock',0,3,1,0,388,322.04,NULL,NULL,17,17,19,811,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','8830825710691',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(73,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'T1-154-A1-A3',0,11,0,1,'in_stock',0,3,1,0,388,322.04,NULL,NULL,17,17,19,811,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','4856931048194',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(74,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'T1-154-A1-A4',0,11,0,1,'in_stock',0,3,1,0,388,291,NULL,NULL,17,17,19,811,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','9659645698601',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(75,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'T1-154-A1-A5',0,11,0,1,'in_stock',0,3,1,0,388,294.88,NULL,NULL,17,17,19,811,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','2226000068453',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(76,'Nest Learning Thermostat (3rd Generation)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'A0-156-A1',0,12,0,1,'in_stock',0,1,1,0,1705,NULL,NULL,NULL,14,11,19,610,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1023693292575',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(77,'Nest Learning Thermostat (3rd Generation)',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'A0-156-A1-A2',0,12,0,1,'in_stock',0,1,1,0,1705,NULL,NULL,NULL,14,11,19,610,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8720253600803',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(78,'Ring Video Doorbell Pro',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'OX-126-A1',0,18,0,1,'in_stock',0,1,1,0,2258,NULL,NULL,NULL,15,16,10,814,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4732212863420',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(79,'Ring Video Doorbell Pro',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'OX-126-A1-A2',0,18,0,1,'in_stock',0,1,1,0,2258,NULL,NULL,NULL,15,16,10,814,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4676540505372',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(80,'Ring Video Doorbell Pro',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'OX-126-A1-A3',0,18,0,1,'in_stock',0,1,1,0,2258,NULL,NULL,NULL,15,16,10,814,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8481352411072',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(81,'Garmin Fenix 7X Sapphire Solar GPS Watch',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'LA-147-A1',0,13,0,1,'in_stock',0,1,1,0,639,NULL,NULL,NULL,20,18,13,515,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','1910931646743',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(82,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'CM-122-A1',0,13,0,1,'in_stock',0,2,1,0,1345,1197.05,NULL,NULL,13,10,11,735,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6785396628116',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(83,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'CM-122-A1-A2',0,13,0,1,'in_stock',0,2,1,0,1345,1062.55,NULL,NULL,13,10,11,735,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6085347399561',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(84,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'CM-122-A1-A3',0,13,0,1,'in_stock',0,2,1,0,1345,1143.25,NULL,NULL,13,10,11,735,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','1598340863991',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(85,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'08-125-A1',0,18,0,1,'in_stock',0,4,1,0,897,NULL,NULL,NULL,10,16,15,589,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0331327532746',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(86,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'08-125-A1-A2',0,18,0,1,'in_stock',0,4,1,0,897,NULL,NULL,NULL,10,16,15,589,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6931624330751',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(87,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'08-125-A1-A3',0,18,0,1,'in_stock',0,4,1,0,897,NULL,NULL,NULL,10,16,15,589,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','9849198482684',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(88,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'YR-110-A1',0,16,0,1,'in_stock',0,3,1,0,680,612,NULL,NULL,14,18,15,704,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','1857319883409',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(89,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'YR-110-A1-A2',0,16,0,1,'in_stock',0,3,1,0,680,530.4,NULL,NULL,14,18,15,704,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','3238622235211',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(90,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'MB-151-A1',0,17,0,1,'in_stock',0,3,1,0,656,NULL,NULL,NULL,13,11,16,807,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4685460768507',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(91,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'OL-169-A1',0,12,0,1,'in_stock',0,5,1,0,1203,NULL,NULL,NULL,12,14,11,683,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','6512956121479',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(92,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'OL-169-A1-A2',0,12,0,1,'in_stock',0,5,1,0,1203,NULL,NULL,NULL,12,14,11,683,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2606429673405',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(93,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'OL-169-A1-A3',0,12,0,1,'in_stock',0,5,1,0,1203,NULL,NULL,NULL,12,14,11,683,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','5647511398049',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(94,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'J8-135-A1',0,11,0,1,'in_stock',0,3,1,0,491,436.99,NULL,NULL,11,12,11,659,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','6119561423358',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(95,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'J8-135-A1-A2',0,11,0,1,'in_stock',0,3,1,0,491,382.98,NULL,NULL,11,12,11,659,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','8932008366111',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(96,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]',NULL,'JE-189-A1',0,19,0,1,'in_stock',0,2,1,0,1014,NULL,NULL,NULL,14,16,14,620,NULL,0,'2025-07-28 03:48:44','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2147151544767',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(97,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'JE-189-A1-A2',0,19,0,1,'in_stock',0,2,1,0,1014,NULL,NULL,NULL,14,16,14,620,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7808978355572',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(98,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'NJ-174-A1',0,11,0,1,'in_stock',0,3,1,0,2443,NULL,NULL,NULL,16,17,12,821,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4039193956197',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(99,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'UW-102-A1',0,12,0,1,'in_stock',0,3,1,0,2369,NULL,NULL,NULL,13,17,10,892,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0197494366665',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(100,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'BJ-117-A1',0,19,0,1,'in_stock',0,5,1,0,544,424.32,NULL,NULL,10,19,14,753,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','7217852751889',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(101,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'BJ-117-A1-A2',0,19,0,1,'in_stock',0,5,1,0,544,435.2,NULL,NULL,10,19,14,753,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','7193769997018',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(102,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'H2-163-A1',0,19,0,1,'in_stock',0,5,1,0,959,NULL,NULL,NULL,11,18,16,552,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','8228911114025',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(103,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'H2-163-A1-A2',0,19,0,1,'in_stock',0,5,1,0,959,NULL,NULL,NULL,11,18,16,552,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4254420840982',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(104,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'H2-163-A1-A3',0,19,0,1,'in_stock',0,5,1,0,959,NULL,NULL,NULL,11,18,16,552,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','4985652138454',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(105,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'H2-163-A1-A4',0,19,0,1,'in_stock',0,5,1,0,959,NULL,NULL,NULL,11,18,16,552,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0169580301591',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(106,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'H2-163-A1-A5',0,19,0,1,'in_stock',0,5,1,0,959,NULL,NULL,NULL,11,18,16,552,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0860655944636',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(107,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'K6-127-A1',0,10,0,1,'in_stock',0,4,1,0,2033,1463.76,NULL,NULL,18,17,10,888,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','4806819522674',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(108,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'K6-127-A1-A2',0,10,0,1,'in_stock',0,4,1,0,2033,1545.08,NULL,NULL,18,17,10,888,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','5490673589592',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(109,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'MP-135-A1',0,11,0,1,'in_stock',0,4,1,0,2286,NULL,NULL,NULL,18,11,16,830,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','3585208863598',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(110,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'MP-135-A1-A2',0,11,0,1,'in_stock',0,4,1,0,2286,NULL,NULL,NULL,18,11,16,830,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','9815487560678',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(111,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'MP-135-A1-A3',0,11,0,1,'in_stock',0,4,1,0,2286,NULL,NULL,NULL,18,11,16,830,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0595172526699',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(112,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'L8-137-A1',0,16,0,1,'in_stock',0,1,1,0,1700,NULL,NULL,NULL,18,18,18,893,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','0767920441138',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(113,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'L8-137-A1-A2',0,16,0,1,'in_stock',0,1,1,0,1700,NULL,NULL,NULL,18,18,18,893,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','7740659361741',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(114,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'L8-137-A1-A3',0,16,0,1,'in_stock',0,1,1,0,1700,NULL,NULL,NULL,18,18,18,893,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'physical','2154535407112',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(115,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'GN-150-A1',0,12,0,1,'in_stock',0,4,1,0,793,610.61,NULL,NULL,13,10,12,777,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','8100840102154',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(116,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'GN-150-A1-A2',0,12,0,1,'in_stock',0,4,1,0,793,705.77,NULL,NULL,13,10,12,777,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:46',0,'Botble\\ACL\\Models\\User',NULL,'digital','9965125510333',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(117,'Samsung QN85A Neo QLED 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'9I-185-A1',0,20,0,1,'in_stock',0,5,1,0,2345,NULL,NULL,NULL,11,15,14,740,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','8627728139533',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(118,'Samsung QN85A Neo QLED 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'9I-185-A1-A2',0,20,0,1,'in_stock',0,5,1,0,2345,NULL,NULL,NULL,11,15,14,740,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','5858577047509',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(119,'Apple TV 4K (2nd Generation) (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'UA-132-A1',0,19,0,1,'in_stock',0,2,1,0,258,229.62,NULL,NULL,13,12,19,542,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','1330046621181',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(120,'Apple TV 4K (2nd Generation) (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'UA-132-A1-A2',0,19,0,1,'in_stock',0,2,1,0,258,180.6,NULL,NULL,13,12,19,542,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','9372669518365',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(121,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'EK-182-A1',0,14,0,1,'in_stock',0,2,1,0,896,NULL,NULL,NULL,10,16,14,629,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','2563257524944',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(122,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'EK-182-A1-A2',0,14,0,1,'in_stock',0,2,1,0,896,NULL,NULL,NULL,10,16,14,629,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','0218788714884',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(123,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'EK-182-A1-A3',0,14,0,1,'in_stock',0,2,1,0,896,NULL,NULL,NULL,10,16,14,629,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','3847273555892',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(124,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'EK-182-A1-A4',0,14,0,1,'in_stock',0,2,1,0,896,NULL,NULL,NULL,10,16,14,629,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','5579913381841',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(125,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'PK-107-A1',0,17,0,1,'in_stock',0,1,1,0,817,NULL,NULL,NULL,13,20,11,705,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','4206411805814',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(126,'NVIDIA SHIELD TV Pro (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'Y1-187-A1',0,11,0,1,'in_stock',0,4,1,0,1951,1541.29,NULL,NULL,13,10,13,722,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','0350150489942',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(127,'NVIDIA SHIELD TV Pro (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'Y1-187-A1-A2',0,11,0,1,'in_stock',0,4,1,0,1951,1404.72,NULL,NULL,13,10,13,722,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','9584213113425',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(128,'NVIDIA SHIELD TV Pro (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'Y1-187-A1-A3',0,11,0,1,'in_stock',0,4,1,0,1951,1658.35,NULL,NULL,13,10,13,722,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','0503874054082',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(129,'Bose Smart Soundbar 900',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'S3-100-A1',0,12,0,1,'in_stock',0,2,1,0,1389,NULL,NULL,NULL,14,16,10,820,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','2282548765766',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(130,'Bose Smart Soundbar 900',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'S3-100-A1-A2',0,12,0,1,'in_stock',0,2,1,0,1389,NULL,NULL,NULL,14,16,10,820,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','2488892535820',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(131,'Bose Smart Soundbar 900',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'S3-100-A1-A3',0,12,0,1,'in_stock',0,2,1,0,1389,NULL,NULL,NULL,14,16,10,820,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'physical','7355891800820',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(132,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'DZ-172-A1',0,13,0,1,'in_stock',0,4,1,0,1117,994.13,NULL,NULL,10,13,19,823,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','6168029501992',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(133,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'DZ-172-A1-A2',0,13,0,1,'in_stock',0,4,1,0,1117,938.28,NULL,NULL,10,13,19,823,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','0563201837641',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(134,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'DZ-172-A1-A3',0,13,0,1,'in_stock',0,4,1,0,1117,804.24,NULL,NULL,10,13,19,823,NULL,0,'2025-07-28 03:48:45','2025-07-28 03:48:47',0,'Botble\\ACL\\Models\\User',NULL,'digital','4885931976336',NULL,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,6,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(2,6,NULL,NULL,32,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(3,2,NULL,NULL,6,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(4,3,NULL,NULL,55,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(5,10,NULL,NULL,53,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(6,1,NULL,NULL,21,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\"]'),(7,1,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(8,8,NULL,NULL,45,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(9,10,NULL,NULL,33,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(10,4,NULL,NULL,54,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\"]'),(11,4,NULL,NULL,48,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(12,8,NULL,NULL,7,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(13,7,NULL,NULL,13,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(14,2,NULL,NULL,51,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(15,2,NULL,NULL,43,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(16,6,NULL,NULL,16,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(17,1,NULL,NULL,51,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(18,5,NULL,NULL,31,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(19,5,NULL,NULL,47,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\"]'),(20,7,NULL,NULL,24,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(21,7,NULL,NULL,27,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(22,9,NULL,NULL,34,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(23,7,NULL,NULL,15,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(24,8,NULL,NULL,39,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(25,5,NULL,NULL,9,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\"]'),(26,3,NULL,NULL,53,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(27,3,NULL,NULL,3,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]'),(28,10,NULL,NULL,38,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(29,2,NULL,NULL,52,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(30,3,NULL,NULL,13,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(31,9,NULL,NULL,25,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\"]'),(32,9,NULL,NULL,55,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(33,7,NULL,NULL,3,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(34,5,NULL,NULL,10,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(35,5,NULL,NULL,46,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(36,8,NULL,NULL,2,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(37,7,NULL,NULL,56,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(38,3,NULL,NULL,54,5,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(40,6,NULL,NULL,12,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(41,9,NULL,NULL,30,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(42,8,NULL,NULL,14,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(43,3,NULL,NULL,46,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(44,1,NULL,NULL,30,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(45,5,NULL,NULL,20,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(46,8,NULL,NULL,41,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(47,10,NULL,NULL,29,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\"]'),(48,6,NULL,NULL,17,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(49,8,NULL,NULL,36,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(50,6,NULL,NULL,21,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(51,4,NULL,NULL,10,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(52,2,NULL,NULL,9,4,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(53,6,NULL,NULL,49,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(54,3,NULL,NULL,1,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(55,2,NULL,NULL,22,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(56,1,NULL,NULL,24,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(57,7,NULL,NULL,45,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(58,8,NULL,NULL,33,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(59,10,NULL,NULL,30,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(60,5,NULL,NULL,42,2,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(61,7,NULL,NULL,22,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(62,2,NULL,NULL,48,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(63,1,NULL,NULL,20,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(64,7,NULL,NULL,49,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(65,6,NULL,NULL,40,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(66,9,NULL,NULL,57,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\"]'),(68,3,NULL,NULL,11,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(69,7,NULL,NULL,28,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]'),(71,6,NULL,NULL,38,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(72,7,NULL,NULL,35,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(73,3,NULL,NULL,7,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(74,6,NULL,NULL,53,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\"]'),(75,8,NULL,NULL,4,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(76,2,NULL,NULL,47,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]'),(77,5,NULL,NULL,30,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(78,9,NULL,NULL,14,3,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(79,5,NULL,NULL,49,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(80,8,NULL,NULL,34,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\"]'),(81,3,NULL,NULL,19,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(83,10,NULL,NULL,44,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(85,10,NULL,NULL,1,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(86,10,NULL,NULL,12,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(87,9,NULL,NULL,51,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\"]'),(88,1,NULL,NULL,35,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(89,5,NULL,NULL,34,4,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(91,3,NULL,NULL,57,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\"]'),(93,9,NULL,NULL,26,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(94,2,NULL,NULL,4,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\"]'),(96,6,NULL,NULL,20,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(97,10,NULL,NULL,46,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\"]'),(98,1,NULL,NULL,16,3,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-19.jpg\"]'),(99,10,NULL,NULL,25,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(100,6,NULL,NULL,23,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(101,5,NULL,NULL,22,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(102,5,NULL,NULL,5,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]'),(103,10,NULL,NULL,32,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(104,3,NULL,NULL,9,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(106,9,NULL,NULL,46,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(107,1,NULL,NULL,26,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(108,4,NULL,NULL,13,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(110,9,NULL,NULL,42,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(113,10,NULL,NULL,35,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(114,2,NULL,NULL,25,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(115,4,NULL,NULL,8,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(116,8,NULL,NULL,18,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(117,8,NULL,NULL,25,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(118,1,NULL,NULL,25,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(120,9,NULL,NULL,13,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(123,10,NULL,NULL,34,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(125,7,NULL,NULL,33,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\"]'),(127,8,NULL,NULL,28,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\"]'),(128,6,NULL,NULL,28,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(129,2,NULL,NULL,44,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(130,9,NULL,NULL,23,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(131,5,NULL,NULL,45,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(133,2,NULL,NULL,50,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(134,5,NULL,NULL,52,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(135,3,NULL,NULL,12,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\"]'),(136,10,NULL,NULL,9,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(137,9,NULL,NULL,39,3,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\"]'),(139,2,NULL,NULL,46,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(140,5,NULL,NULL,57,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(141,8,NULL,NULL,35,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\"]'),(144,7,NULL,NULL,50,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(148,1,NULL,NULL,42,5,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(150,5,NULL,NULL,38,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\"]'),(151,4,NULL,NULL,39,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(152,2,NULL,NULL,29,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(153,2,NULL,NULL,17,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\"]'),(154,3,NULL,NULL,28,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(155,9,NULL,NULL,40,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(156,6,NULL,NULL,14,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(157,3,NULL,NULL,27,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(159,1,NULL,NULL,47,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(160,10,NULL,NULL,40,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(161,1,NULL,NULL,29,2,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(162,10,NULL,NULL,48,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(163,2,NULL,NULL,8,3,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(164,8,NULL,NULL,48,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\"]'),(166,4,NULL,NULL,22,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\"]'),(167,10,NULL,NULL,16,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(168,6,NULL,NULL,33,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(169,1,NULL,NULL,3,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(170,1,NULL,NULL,17,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(171,3,NULL,NULL,2,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\"]'),(172,7,NULL,NULL,51,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(174,6,NULL,NULL,50,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(175,8,NULL,NULL,1,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\"]'),(176,9,NULL,NULL,47,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(177,4,NULL,NULL,23,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(180,10,NULL,NULL,7,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(181,2,NULL,NULL,33,4,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(182,8,NULL,NULL,26,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(183,8,NULL,NULL,21,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(185,8,NULL,NULL,37,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(186,3,NULL,NULL,22,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(187,1,NULL,NULL,34,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\"]'),(189,7,NULL,NULL,42,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(190,4,NULL,NULL,36,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(191,4,NULL,NULL,9,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(192,4,NULL,NULL,21,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(194,3,NULL,NULL,36,1,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(195,4,NULL,NULL,57,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(196,8,NULL,NULL,3,3,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\"]'),(197,3,NULL,NULL,49,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(199,5,NULL,NULL,23,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\"]'),(200,8,NULL,NULL,27,2,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(201,7,NULL,NULL,39,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(202,3,NULL,NULL,39,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(203,2,NULL,NULL,49,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(204,9,NULL,NULL,52,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(208,7,NULL,NULL,54,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(209,6,NULL,NULL,41,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\"]'),(210,7,NULL,NULL,32,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(212,5,NULL,NULL,24,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(213,10,NULL,NULL,5,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(214,7,NULL,NULL,29,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(215,8,NULL,NULL,24,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(216,1,NULL,NULL,5,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(217,5,NULL,NULL,53,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(218,5,NULL,NULL,54,5,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\"]'),(220,10,NULL,NULL,47,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(221,10,NULL,NULL,14,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(223,3,NULL,NULL,41,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(224,2,NULL,NULL,19,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\"]'),(225,7,NULL,NULL,30,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(226,7,NULL,NULL,8,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(227,2,NULL,NULL,45,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(228,8,NULL,NULL,38,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\"]'),(229,6,NULL,NULL,27,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(230,4,NULL,NULL,30,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(231,9,NULL,NULL,1,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\"]'),(234,1,NULL,NULL,6,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(235,4,NULL,NULL,3,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(236,7,NULL,NULL,43,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(238,10,NULL,NULL,24,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(240,6,NULL,NULL,2,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(241,4,NULL,NULL,32,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(244,3,NULL,NULL,4,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(246,1,NULL,NULL,18,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(247,3,NULL,NULL,8,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(249,5,NULL,NULL,1,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(250,8,NULL,NULL,23,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(251,1,NULL,NULL,38,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(253,5,NULL,NULL,21,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(256,3,NULL,NULL,56,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(257,1,NULL,NULL,49,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(258,3,NULL,NULL,44,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\"]'),(259,3,NULL,NULL,18,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(260,6,NULL,NULL,15,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\"]'),(261,1,NULL,NULL,41,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\"]'),(262,1,NULL,NULL,19,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(263,10,NULL,NULL,18,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(264,3,NULL,NULL,33,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(265,9,NULL,NULL,45,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(266,5,NULL,NULL,15,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(269,5,NULL,NULL,18,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(271,9,NULL,NULL,3,1,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(272,7,NULL,NULL,31,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\"]'),(273,7,NULL,NULL,47,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(275,3,NULL,NULL,31,2,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(277,9,NULL,NULL,31,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(278,9,NULL,NULL,53,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\"]'),(279,1,NULL,NULL,22,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(280,10,NULL,NULL,26,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(281,6,NULL,NULL,6,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(282,2,NULL,NULL,5,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\"]'),(283,2,NULL,NULL,13,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(285,9,NULL,NULL,35,1,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(287,4,NULL,NULL,41,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(288,7,NULL,NULL,26,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(289,2,NULL,NULL,21,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(290,8,NULL,NULL,46,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(293,6,NULL,NULL,43,1,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(294,1,NULL,NULL,14,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(295,6,NULL,NULL,47,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(297,5,NULL,NULL,33,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(298,6,NULL,NULL,8,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(299,4,NULL,NULL,35,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(300,1,NULL,NULL,48,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(301,10,NULL,NULL,19,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(302,2,NULL,NULL,23,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(303,7,NULL,NULL,4,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\"]'),(305,5,NULL,NULL,17,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(307,9,NULL,NULL,19,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(308,10,NULL,NULL,17,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(309,2,NULL,NULL,12,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(310,3,NULL,NULL,17,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(311,4,NULL,NULL,51,4,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(313,10,NULL,NULL,31,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\"]'),(314,6,NULL,NULL,10,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(315,9,NULL,NULL,4,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(317,9,NULL,NULL,44,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(319,4,NULL,NULL,4,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(320,10,NULL,NULL,2,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\"]'),(321,9,NULL,NULL,7,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(322,7,NULL,NULL,9,4,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(323,10,NULL,NULL,28,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(324,1,NULL,NULL,43,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(325,5,NULL,NULL,11,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(332,5,NULL,NULL,29,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(333,9,NULL,NULL,16,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(336,10,NULL,NULL,10,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(338,4,NULL,NULL,7,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(343,10,NULL,NULL,37,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(344,8,NULL,NULL,55,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(345,3,NULL,NULL,51,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(346,8,NULL,NULL,47,2,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\"]'),(347,7,NULL,NULL,36,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(351,8,NULL,NULL,40,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(356,8,NULL,NULL,57,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(357,2,NULL,NULL,40,5,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(358,7,NULL,NULL,20,1,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(359,9,NULL,NULL,24,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(360,5,NULL,NULL,25,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(362,6,NULL,NULL,54,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(363,6,NULL,NULL,29,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(364,2,NULL,NULL,2,3,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(365,5,NULL,NULL,35,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]'),(368,3,NULL,NULL,23,2,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(369,6,NULL,NULL,44,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(371,10,NULL,NULL,45,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(372,5,NULL,NULL,12,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(374,4,NULL,NULL,43,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(378,7,NULL,NULL,53,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(379,2,NULL,NULL,1,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(384,2,NULL,NULL,39,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(386,6,NULL,NULL,22,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(390,6,NULL,NULL,24,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\"]'),(391,2,NULL,NULL,26,5,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(392,1,NULL,NULL,2,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(398,9,NULL,NULL,17,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\"]'),(401,6,NULL,NULL,4,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(403,4,NULL,NULL,27,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(404,8,NULL,NULL,29,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(405,10,NULL,NULL,55,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\"]'),(413,1,NULL,NULL,45,4,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(416,2,NULL,NULL,11,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(418,6,NULL,NULL,3,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(420,8,NULL,NULL,5,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(422,8,NULL,NULL,11,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(423,4,NULL,NULL,5,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\"]'),(425,1,NULL,NULL,32,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(427,3,NULL,NULL,29,3,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\"]'),(432,9,NULL,NULL,21,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(433,10,NULL,NULL,52,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(434,8,NULL,NULL,31,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(435,7,NULL,NULL,5,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(440,7,NULL,NULL,11,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(441,4,NULL,NULL,42,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(442,4,NULL,NULL,33,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(444,3,NULL,NULL,14,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(449,2,NULL,NULL,37,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(450,4,NULL,NULL,12,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(454,10,NULL,NULL,8,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]'),(455,3,NULL,NULL,5,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(456,8,NULL,NULL,15,1,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(458,9,NULL,NULL,27,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(459,4,NULL,NULL,1,4,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(460,5,NULL,NULL,37,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(462,1,NULL,NULL,15,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(468,3,NULL,NULL,10,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(469,2,NULL,NULL,10,5,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(473,5,NULL,NULL,13,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\"]'),(474,9,NULL,NULL,38,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(478,8,NULL,NULL,13,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(479,1,NULL,NULL,11,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(481,3,NULL,NULL,38,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(482,3,NULL,NULL,48,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(484,1,NULL,NULL,33,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]'),(486,9,NULL,NULL,2,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(487,4,NULL,NULL,31,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]'),(491,2,NULL,NULL,57,2,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(494,3,NULL,NULL,47,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(495,8,NULL,NULL,16,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(496,4,NULL,NULL,55,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(497,2,NULL,NULL,24,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(498,2,NULL,NULL,3,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\"]'),(501,9,NULL,NULL,50,5,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(508,6,NULL,NULL,35,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(515,4,NULL,NULL,56,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(516,9,NULL,NULL,29,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(518,3,NULL,NULL,32,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(519,1,NULL,NULL,54,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\"]'),(520,3,NULL,NULL,40,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(521,4,NULL,NULL,37,4,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(523,7,NULL,NULL,38,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(527,1,NULL,NULL,50,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(529,10,NULL,NULL,4,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(531,2,NULL,NULL,20,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]'),(532,1,NULL,NULL,31,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(535,8,NULL,NULL,20,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(539,4,NULL,NULL,46,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(542,3,NULL,NULL,52,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(554,5,NULL,NULL,19,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(558,5,NULL,NULL,56,2,'Clean & perfect source code','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(564,6,NULL,NULL,25,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(565,3,NULL,NULL,34,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(567,9,NULL,NULL,10,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]'),(570,6,NULL,NULL,26,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\"]'),(579,9,NULL,NULL,11,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(582,3,NULL,NULL,50,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\"]'),(588,1,NULL,NULL,44,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(591,10,NULL,NULL,42,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(592,1,NULL,NULL,55,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(595,6,NULL,NULL,18,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(596,4,NULL,NULL,14,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(598,9,NULL,NULL,8,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(602,9,NULL,NULL,54,5,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(603,8,NULL,NULL,49,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(604,10,NULL,NULL,54,5,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(608,1,NULL,NULL,36,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(609,7,NULL,NULL,19,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(616,7,NULL,NULL,40,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(617,10,NULL,NULL,22,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\"]'),(618,6,NULL,NULL,45,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(619,1,NULL,NULL,37,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(623,3,NULL,NULL,45,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(626,10,NULL,NULL,13,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(637,5,NULL,NULL,48,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-18.jpg\"]'),(639,5,NULL,NULL,51,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\"]'),(640,7,NULL,NULL,34,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(647,5,NULL,NULL,55,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(652,9,NULL,NULL,49,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(655,6,NULL,NULL,56,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(659,4,NULL,NULL,24,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(662,2,NULL,NULL,53,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(670,8,NULL,NULL,54,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(672,2,NULL,NULL,27,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(679,1,NULL,NULL,27,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(680,7,NULL,NULL,25,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\"]'),(681,4,NULL,NULL,50,4,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(682,6,NULL,NULL,30,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(685,6,NULL,NULL,34,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(691,3,NULL,NULL,21,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(694,7,NULL,NULL,14,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\"]'),(697,8,NULL,NULL,52,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(704,2,NULL,NULL,41,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(705,4,NULL,NULL,40,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(709,4,NULL,NULL,19,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(712,2,NULL,NULL,18,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(714,8,NULL,NULL,19,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\"]'),(721,4,NULL,NULL,11,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(723,10,NULL,NULL,41,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(728,4,NULL,NULL,44,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(729,6,NULL,NULL,55,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(730,10,NULL,NULL,15,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(732,8,NULL,NULL,50,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(733,1,NULL,NULL,13,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-19.jpg\"]'),(736,1,NULL,NULL,52,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(743,6,NULL,NULL,13,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(747,7,NULL,NULL,41,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-20.jpg\"]'),(749,10,NULL,NULL,23,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\"]'),(753,6,NULL,NULL,48,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(757,5,NULL,NULL,16,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(758,4,NULL,NULL,20,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(761,2,NULL,NULL,30,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(767,2,NULL,NULL,42,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(772,9,NULL,NULL,43,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(773,3,NULL,NULL,30,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(775,10,NULL,NULL,57,4,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(777,7,NULL,NULL,46,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\"]'),(780,6,NULL,NULL,46,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\"]'),(781,2,NULL,NULL,55,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(787,3,NULL,NULL,43,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(798,5,NULL,NULL,4,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(805,9,NULL,NULL,33,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\"]'),(808,5,NULL,NULL,41,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(809,6,NULL,NULL,11,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]'),(810,3,NULL,NULL,25,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(813,1,NULL,NULL,10,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(816,9,NULL,NULL,56,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(817,4,NULL,NULL,38,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(824,7,NULL,NULL,1,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(825,5,NULL,NULL,39,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(829,10,NULL,NULL,21,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(830,3,NULL,NULL,42,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\"]'),(833,8,NULL,NULL,10,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(839,9,NULL,NULL,20,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(840,8,NULL,NULL,8,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(844,2,NULL,NULL,7,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\"]'),(854,3,NULL,NULL,35,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\"]'),(858,1,NULL,NULL,23,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\"]'),(861,7,NULL,NULL,7,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(864,7,NULL,NULL,55,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(866,5,NULL,NULL,14,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(867,4,NULL,NULL,26,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(870,10,NULL,NULL,49,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(872,5,NULL,NULL,43,5,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(873,4,NULL,NULL,29,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(874,9,NULL,NULL,22,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(875,4,NULL,NULL,28,2,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-8.jpg\"]'),(879,7,NULL,NULL,18,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\"]'),(881,5,NULL,NULL,28,4,'Good app, good backup service and support. Good documentation.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(885,10,NULL,NULL,43,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-14.jpg\"]'),(886,10,NULL,NULL,36,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(887,1,NULL,NULL,39,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(896,7,NULL,NULL,37,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]'),(911,5,NULL,NULL,26,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(919,6,NULL,NULL,37,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(928,6,NULL,NULL,52,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(929,1,NULL,NULL,46,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(931,9,NULL,NULL,18,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(937,5,NULL,NULL,3,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(945,9,NULL,NULL,36,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(950,8,NULL,NULL,6,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(951,2,NULL,NULL,56,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(955,7,NULL,NULL,2,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(961,6,NULL,NULL,57,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-2.jpg\"]'),(962,2,NULL,NULL,32,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-4.jpg\"]'),(966,7,NULL,NULL,17,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(970,2,NULL,NULL,35,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(973,5,NULL,NULL,2,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(976,10,NULL,NULL,6,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]'),(985,1,NULL,NULL,56,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(987,7,NULL,NULL,52,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-9.jpg\"]'),(989,6,NULL,NULL,51,4,'Best ecommerce CMS online store!','published','2025-07-28 03:48:50','2025-07-28 03:48:50','[\"main\\/products\\/product-10.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-07-28 03:48:22','2025-07-28 03:48:22');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-07-28 03:48:22','2025-07-28 03:48:22'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-07-28 03:48:22','2025-07-28 03:48:22'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-07-28 03:48:22','2025-07-28 03:48:22');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(2,'Performance',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(3,'Battery',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(4,'Display',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL),(2,'Technical Specification',NULL,'2025-07-28 03:48:46','2025-07-28 03:48:46',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-07-28 03:48:25','2025-07-28 03:48:25',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,3),(1,10),(1,11),(1,17),(1,18),(1,19),(1,20),(1,26),(1,30),(1,34),(1,39),(1,42),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,54),(1,55),(1,56),(2,1),(2,2),(2,5),(2,12),(2,13),(2,16),(2,22),(2,27),(2,28),(2,35),(2,36),(2,40),(2,41),(2,51),(2,57),(3,4),(3,6),(3,7),(3,8),(3,9),(3,14),(3,15),(3,21),(3,23),(3,24),(3,25),(3,29),(3,31),(3,32),(3,33),(3,37),(3,38),(3,43),(3,50),(3,52),(3,53);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(2,'None',0,2,'published','2025-07-28 03:48:21','2025-07-28 03:48:21'),(3,'Import Tax',15,3,'published','2025-07-28 03:48:21','2025-07-28 03:48:21');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL),(2,'Payment',1,'published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL),(3,'Order &amp; Returns',2,'published','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-07-28 03:48:15','2025-07-28 03:48:15'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-07-28 03:48:15','2025-07-28 03:48:15');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Wonderland, though she felt sure she would keep, through all her fancy, that: he hasn\'t got no business there, at any rate, there\'s no room to open it; but, as the White Rabbit: it was growing, and.',1,0,'main/galleries/1.jpg',1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48'),(2,'New Day','VERY turn-up nose, much more like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the royal children, and make one repeat lessons!\' thought Alice; \'I might as well.',1,0,'main/galleries/2.jpg',1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48'),(3,'Happy Day','Footman\'s head: it just grazed his nose, and broke off a little way forwards each time and a Canary called out in a trembling voice, \'Let us get to the Knave was standing before them, in chains.',1,0,'main/galleries/3.jpg',1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48'),(4,'Nature','King said, for about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that in some book, but I grow up, I\'ll write one--but I\'m grown up now,\' she.',1,0,'main/galleries/4.jpg',1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48'),(5,'Morning','Alice, as she could. The next thing is, to get in?\' \'There might be hungry, in which case it would be quite absurd for her neck from being run over; and the little crocodile Improve his shining.',1,0,'main/galleries/5.jpg',1,'published','2025-07-28 03:48:48','2025-07-28 03:48:48');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'Then it ought to have no.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the dish as its share of the March Hare will be When they take us up and walking away. \'You insult me by talking such.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"King replied. Here the Queen never left off quarrelling with the birds and beasts, as well as she went down on the bank, and of having nothing to what I say--that\'s the same tone, exactly as if she.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Alice, \'how am I to get very tired of this. I vote the young Crab, a little girl,\' said Alice, who had followed him into the open air. \'IF I don\'t know,\' he went on in a shrill, loud voice, and see.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-07-28 03:48:48','2025-07-28 03:48:48'),(2,'[{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'Then it ought to have no.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the dish as its share of the March Hare will be When they take us up and walking away. \'You insult me by talking such.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"King replied. Here the Queen never left off quarrelling with the birds and beasts, as well as she went down on the bank, and of having nothing to what I say--that\'s the same tone, exactly as if she.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Alice, \'how am I to get very tired of this. I vote the young Crab, a little girl,\' said Alice, who had followed him into the open air. \'IF I don\'t know,\' he went on in a shrill, loud voice, and see.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-07-28 03:48:48','2025-07-28 03:48:48'),(3,'[{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'Then it ought to have no.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the dish as its share of the March Hare will be When they take us up and walking away. \'You insult me by talking such.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"King replied. Here the Queen never left off quarrelling with the birds and beasts, as well as she went down on the bank, and of having nothing to what I say--that\'s the same tone, exactly as if she.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Alice, \'how am I to get very tired of this. I vote the young Crab, a little girl,\' said Alice, who had followed him into the open air. \'IF I don\'t know,\' he went on in a shrill, loud voice, and see.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-07-28 03:48:48','2025-07-28 03:48:48'),(4,'[{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'Then it ought to have no.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the dish as its share of the March Hare will be When they take us up and walking away. \'You insult me by talking such.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"King replied. Here the Queen never left off quarrelling with the birds and beasts, as well as she went down on the bank, and of having nothing to what I say--that\'s the same tone, exactly as if she.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Alice, \'how am I to get very tired of this. I vote the young Crab, a little girl,\' said Alice, who had followed him into the open air. \'IF I don\'t know,\' he went on in a shrill, loud voice, and see.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-07-28 03:48:48','2025-07-28 03:48:48'),(5,'[{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'Then it ought to have no.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the dish as its share of the March Hare will be When they take us up and walking away. \'You insult me by talking such.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"King replied. Here the Queen never left off quarrelling with the birds and beasts, as well as she went down on the bank, and of having nothing to what I say--that\'s the same tone, exactly as if she.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Alice, \'how am I to get very tired of this. I vote the young Crab, a little girl,\' said Alice, who had followed him into the open air. \'IF I don\'t know,\' he went on in a shrill, loud voice, and see.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-07-28 03:48:48','2025-07-28 03:48:48');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c741cf7ba20adf463b8b2721710224d5',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','b9484c7193b79ae5abcab736a1f921f9',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','f6e92926986eaeed327297541f33703e',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','9a12b55d2cb08ea9f403e7abc4fd42db',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','074b88efeea6abca503d8f4e57a5be5e',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2025-07-28 03:48:08','2025-07-28 03:48:08',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2025-07-28 03:48:08','2025-07-28 03:48:08',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2025-07-28 03:48:08','2025-07-28 03:48:08',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',20314,'main/general/cta-shape-1.png','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',14564,'main/general/cta-shape-2.png','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2025-07-28 03:48:09','2025-07-28 03:48:09',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1778,'main/general/favicon.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',17446,'main/general/logo-white.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(13,0,'logo','logo',2,'image/png',18022,'main/general/logo.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/jpeg',7434,'main/general/newsletter-popup.jpg','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2334,'main/general/placeholder.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',3923,'main/general/preloader-icon.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(17,0,'signature','signature',2,'image/png',2122,'main/general/signature.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(19,0,'cod','cod',3,'image/png',12121,'payments/cod.png','[]','2025-07-28 03:48:10','2025-07-28 03:48:10',NULL,'public'),(20,0,'bank-transfer','bank-transfer',3,'image/png',29089,'payments/bank-transfer.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(21,0,'stripe','stripe',3,'image/webp',7516,'payments/stripe.webp','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(22,0,'paypal','paypal',3,'image/png',3001,'payments/paypal.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(23,0,'mollie','mollie',3,'image/png',8968,'payments/mollie.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(24,0,'paystack','paystack',3,'image/png',31015,'payments/paystack.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(25,0,'razorpay','razorpay',3,'image/png',8489,'payments/razorpay.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(26,0,'sslcommerz','sslcommerz',3,'image/png',3482,'payments/sslcommerz.png','[]','2025-07-28 03:48:11','2025-07-28 03:48:11',NULL,'public'),(37,0,'1','1',5,'image/png',948,'main/brands/1.png','[]','2025-07-28 03:48:14','2025-07-28 03:48:14',NULL,'public'),(38,0,'2','2',5,'image/png',948,'main/brands/2.png','[]','2025-07-28 03:48:14','2025-07-28 03:48:14',NULL,'public'),(39,0,'3','3',5,'image/png',948,'main/brands/3.png','[]','2025-07-28 03:48:14','2025-07-28 03:48:14',NULL,'public'),(40,0,'4','4',5,'image/png',948,'main/brands/4.png','[]','2025-07-28 03:48:14','2025-07-28 03:48:14',NULL,'public'),(41,0,'5','5',5,'image/png',948,'main/brands/5.png','[]','2025-07-28 03:48:14','2025-07-28 03:48:14',NULL,'public'),(42,0,'1','1',6,'image/jpeg',4294,'main/customers/1.jpg','[]','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL,'public'),(43,0,'10','10',6,'image/jpeg',4294,'main/customers/10.jpg','[]','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL,'public'),(44,0,'2','2',6,'image/jpeg',4294,'main/customers/2.jpg','[]','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL,'public'),(45,0,'3','3',6,'image/jpeg',4294,'main/customers/3.jpg','[]','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL,'public'),(46,0,'4','4',6,'image/jpeg',4294,'main/customers/4.jpg','[]','2025-07-28 03:48:15','2025-07-28 03:48:15',NULL,'public'),(47,0,'5','5',6,'image/jpeg',4294,'main/customers/5.jpg','[]','2025-07-28 03:48:16','2025-07-28 03:48:16',NULL,'public'),(48,0,'6','6',6,'image/jpeg',4294,'main/customers/6.jpg','[]','2025-07-28 03:48:16','2025-07-28 03:48:16',NULL,'public'),(49,0,'7','7',6,'image/jpeg',4294,'main/customers/7.jpg','[]','2025-07-28 03:48:16','2025-07-28 03:48:16',NULL,'public'),(50,0,'8','8',6,'image/jpeg',4294,'main/customers/8.jpg','[]','2025-07-28 03:48:16','2025-07-28 03:48:16',NULL,'public'),(51,0,'9','9',6,'image/jpeg',4294,'main/customers/9.jpg','[]','2025-07-28 03:48:16','2025-07-28 03:48:16',NULL,'public'),(52,0,'blog-big-1','blog-big-1',7,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(53,0,'blog-details-sm-1','blog-details-sm-1',7,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(54,0,'post-1','post-1',7,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(55,0,'post-10','post-10',7,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(56,0,'post-11','post-11',7,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(57,0,'post-12','post-12',7,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2025-07-28 03:48:22','2025-07-28 03:48:22',NULL,'public'),(58,0,'post-2','post-2',7,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(59,0,'post-3','post-3',7,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(60,0,'post-4','post-4',7,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(61,0,'post-5','post-5',7,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(62,0,'post-6','post-6',7,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(63,0,'post-7','post-7',7,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(64,0,'post-8','post-8',7,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(65,0,'post-9','post-9',7,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(66,0,'1','1',4,'image/jpeg',4068,'main/users/1.jpg','[]','2025-07-28 03:48:23','2025-07-28 03:48:23',NULL,'public'),(67,0,'10','10',4,'image/jpeg',7599,'main/users/10.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(68,0,'2','2',4,'image/jpeg',7599,'main/users/2.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(69,0,'3','3',4,'image/jpeg',6387,'main/users/3.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(70,0,'4','4',4,'image/jpeg',7599,'main/users/4.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(71,0,'5','5',4,'image/jpeg',6387,'main/users/5.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(72,0,'6','6',4,'image/jpeg',7599,'main/users/6.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(73,0,'7','7',4,'image/jpeg',6387,'main/users/7.jpg','[]','2025-07-28 03:48:24','2025-07-28 03:48:24',NULL,'public'),(74,0,'8','8',4,'image/jpeg',7599,'main/users/8.jpg','[]','2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,'public'),(75,0,'9','9',4,'image/jpeg',6387,'main/users/9.jpg','[]','2025-07-28 03:48:25','2025-07-28 03:48:25',NULL,'public'),(76,0,'1','1',8,'image/png',9022,'main/stores/1.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(77,0,'10','10',8,'image/png',4384,'main/stores/10.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(78,0,'11','11',8,'image/png',4706,'main/stores/11.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(79,0,'12','12',8,'image/png',5075,'main/stores/12.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(80,0,'13','13',8,'image/png',3700,'main/stores/13.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(81,0,'14','14',8,'image/png',4239,'main/stores/14.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(82,0,'15','15',8,'image/png',5304,'main/stores/15.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(83,0,'16','16',8,'image/png',4796,'main/stores/16.png','[]','2025-07-28 03:48:26','2025-07-28 03:48:26',NULL,'public'),(84,0,'17','17',8,'image/png',4919,'main/stores/17.png','[]','2025-07-28 03:48:27','2025-07-28 03:48:27',NULL,'public'),(85,0,'2','2',8,'image/png',8598,'main/stores/2.png','[]','2025-07-28 03:48:27','2025-07-28 03:48:27',NULL,'public'),(86,0,'3','3',8,'image/png',7888,'main/stores/3.png','[]','2025-07-28 03:48:27','2025-07-28 03:48:27',NULL,'public'),(87,0,'4','4',8,'image/png',8393,'main/stores/4.png','[]','2025-07-28 03:48:27','2025-07-28 03:48:27',NULL,'public'),(88,0,'5','5',8,'image/png',10159,'main/stores/5.png','[]','2025-07-28 03:48:28','2025-07-28 03:48:28',NULL,'public'),(89,0,'6','6',8,'image/png',10312,'main/stores/6.png','[]','2025-07-28 03:48:28','2025-07-28 03:48:28',NULL,'public'),(90,0,'7','7',8,'image/png',3764,'main/stores/7.png','[]','2025-07-28 03:48:28','2025-07-28 03:48:28',NULL,'public'),(91,0,'8','8',8,'image/png',4237,'main/stores/8.png','[]','2025-07-28 03:48:28','2025-07-28 03:48:28',NULL,'public'),(92,0,'9','9',8,'image/png',4096,'main/stores/9.png','[]','2025-07-28 03:48:28','2025-07-28 03:48:28',NULL,'public'),(93,0,'cover-1','cover-1',8,'image/png',4208,'main/stores/cover-1.png','[]','2025-07-28 03:48:29','2025-07-28 03:48:29',NULL,'public'),(94,0,'cover-2','cover-2',8,'image/png',8798,'main/stores/cover-2.png','[]','2025-07-28 03:48:29','2025-07-28 03:48:29',NULL,'public'),(95,0,'cover-3','cover-3',8,'image/png',3888,'main/stores/cover-3.png','[]','2025-07-28 03:48:29','2025-07-28 03:48:29',NULL,'public'),(96,0,'cover-4','cover-4',8,'image/png',11893,'main/stores/cover-4.png','[]','2025-07-28 03:48:29','2025-07-28 03:48:29',NULL,'public'),(97,0,'cover-5','cover-5',8,'image/png',8798,'main/stores/cover-5.png','[]','2025-07-28 03:48:29','2025-07-28 03:48:29',NULL,'public'),(98,0,'shape-1','shape-1',9,'image/png',19103,'main/sliders/shape-1.png','[]','2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,'public'),(99,0,'shape-2','shape-2',9,'image/png',815,'main/sliders/shape-2.png','[]','2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,'public'),(100,0,'shape-3','shape-3',9,'image/png',689,'main/sliders/shape-3.png','[]','2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,'public'),(101,0,'shape-4','shape-4',9,'image/png',458,'main/sliders/shape-4.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(102,0,'slider-1','slider-1',9,'image/png',7405,'main/sliders/slider-1.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(103,0,'slider-2','slider-2',9,'image/png',8434,'main/sliders/slider-2.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(104,0,'slider-3','slider-3',9,'image/png',7794,'main/sliders/slider-3.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(105,0,'1','1',10,'image/png',4294,'main/product-categories/1.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(106,0,'2','2',10,'image/png',4294,'main/product-categories/2.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(107,0,'3','3',10,'image/png',4294,'main/product-categories/3.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(108,0,'4','4',10,'image/png',4294,'main/product-categories/4.png','[]','2025-07-28 03:48:34','2025-07-28 03:48:34',NULL,'public'),(109,0,'5','5',10,'image/png',4294,'main/product-categories/5.png','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(110,0,'category-thumb-1','category-thumb-1',10,'image/jpeg',4294,'main/product-categories/category-thumb-1.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(111,0,'category-thumb-10','category-thumb-10',10,'image/jpeg',4294,'main/product-categories/category-thumb-10.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(112,0,'category-thumb-11','category-thumb-11',10,'image/jpeg',4294,'main/product-categories/category-thumb-11.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(113,0,'category-thumb-12','category-thumb-12',10,'image/jpeg',4294,'main/product-categories/category-thumb-12.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(114,0,'category-thumb-3','category-thumb-3',10,'image/jpeg',4294,'main/product-categories/category-thumb-3.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(115,0,'category-thumb-4','category-thumb-4',10,'image/jpeg',4294,'main/product-categories/category-thumb-4.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(116,0,'category-thumb-5','category-thumb-5',10,'image/jpeg',4294,'main/product-categories/category-thumb-5.jpg','[]','2025-07-28 03:48:35','2025-07-28 03:48:35',NULL,'public'),(117,0,'category-thumb-6','category-thumb-6',10,'image/jpeg',4294,'main/product-categories/category-thumb-6.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(118,0,'category-thumb-8','category-thumb-8',10,'image/jpeg',4294,'main/product-categories/category-thumb-8.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(119,0,'category-thumb-9','category-thumb-9',10,'image/jpeg',4294,'main/product-categories/category-thumb-9.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(120,0,'menu-1','menu-1',10,'image/jpeg',4294,'main/product-categories/menu-1.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(121,0,'menu-2','menu-2',10,'image/jpeg',4294,'main/product-categories/menu-2.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(122,0,'menu-3','menu-3',10,'image/jpeg',4294,'main/product-categories/menu-3.jpg','[]','2025-07-28 03:48:36','2025-07-28 03:48:36',NULL,'public'),(123,0,'product-1','product-1',11,'image/jpeg',9803,'main/products/product-1.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(124,0,'product-10','product-10',11,'image/jpeg',9803,'main/products/product-10.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(125,0,'product-11','product-11',11,'image/jpeg',9803,'main/products/product-11.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(126,0,'product-12','product-12',11,'image/jpeg',9803,'main/products/product-12.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(127,0,'product-13','product-13',11,'image/jpeg',9803,'main/products/product-13.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(128,0,'product-14','product-14',11,'image/jpeg',9803,'main/products/product-14.jpg','[]','2025-07-28 03:48:37','2025-07-28 03:48:37',NULL,'public'),(129,0,'product-15','product-15',11,'image/jpeg',9803,'main/products/product-15.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(130,0,'product-16','product-16',11,'image/jpeg',9803,'main/products/product-16.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(131,0,'product-17','product-17',11,'image/jpeg',9803,'main/products/product-17.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(132,0,'product-18','product-18',11,'image/jpeg',9803,'main/products/product-18.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(133,0,'product-19','product-19',11,'image/jpeg',9803,'main/products/product-19.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(134,0,'product-2','product-2',11,'image/jpeg',9803,'main/products/product-2.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(135,0,'product-20','product-20',11,'image/jpeg',9803,'main/products/product-20.jpg','[]','2025-07-28 03:48:38','2025-07-28 03:48:38',NULL,'public'),(136,0,'product-3','product-3',11,'image/jpeg',9803,'main/products/product-3.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(137,0,'product-4','product-4',11,'image/jpeg',9803,'main/products/product-4.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(138,0,'product-5','product-5',11,'image/jpeg',9803,'main/products/product-5.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(139,0,'product-6','product-6',11,'image/jpeg',9803,'main/products/product-6.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(140,0,'product-7','product-7',11,'image/jpeg',9803,'main/products/product-7.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(141,0,'product-8','product-8',11,'image/jpeg',9803,'main/products/product-8.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(142,0,'product-9','product-9',11,'image/jpeg',9803,'main/products/product-9.jpg','[]','2025-07-28 03:48:39','2025-07-28 03:48:39',NULL,'public'),(143,0,'product-details-desc-1','product-details-desc-1',11,'image/jpeg',9803,'main/products/product-details-desc-1.jpg','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(144,0,'product-details-desc-2','product-details-desc-2',11,'image/jpeg',9803,'main/products/product-details-desc-2.jpg','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(145,0,'product-details-desc-3','product-details-desc-3',11,'image/jpeg',9803,'main/products/product-details-desc-3.jpg','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(146,0,'1','1',12,'image/jpeg',14146,'main/video/1.jpg','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(147,0,'2','2',12,'image/jpeg',18262,'main/video/2.jpg','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(148,0,'video-1','video-1',12,'video/mp4',4959871,'main/video/video-1.mp4','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(149,0,'video-2','video-2',12,'video/mp4',1077550,'main/video/video-2.mp4','[]','2025-07-28 03:48:40','2025-07-28 03:48:40',NULL,'public'),(150,0,'1','1',13,'image/jpeg',6309,'main/banners/1.jpg','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(151,0,'2','2',13,'image/jpeg',6275,'main/banners/2.jpg','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(152,0,'slider-1','slider-1',13,'image/png',8207,'main/banners/slider-1.png','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(153,0,'slider-2','slider-2',13,'image/png',8497,'main/banners/slider-2.png','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(154,0,'slider-3','slider-3',13,'image/png',6239,'main/banners/slider-3.png','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(155,0,'gadget-banner-1','gadget-banner-1',14,'image/jpeg',3870,'main/gadgets/gadget-banner-1.jpg','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(156,0,'gadget-banner-2','gadget-banner-2',14,'image/jpeg',3870,'main/gadgets/gadget-banner-2.jpg','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(157,0,'gadget-girl','gadget-girl',14,'image/png',4417,'main/gadgets/gadget-girl.png','[]','2025-07-28 03:48:47','2025-07-28 03:48:47',NULL,'public'),(158,0,'1','1',15,'image/jpeg',4294,'main/galleries/1.jpg','[]','2025-07-28 03:48:48','2025-07-28 03:48:48',NULL,'public'),(159,0,'2','2',15,'image/jpeg',4294,'main/galleries/2.jpg','[]','2025-07-28 03:48:48','2025-07-28 03:48:48',NULL,'public'),(160,0,'3','3',15,'image/jpeg',4294,'main/galleries/3.jpg','[]','2025-07-28 03:48:48','2025-07-28 03:48:48',NULL,'public'),(161,0,'4','4',15,'image/jpeg',4294,'main/galleries/4.jpg','[]','2025-07-28 03:48:48','2025-07-28 03:48:48',NULL,'public'),(162,0,'5','5',15,'image/jpeg',4294,'main/galleries/5.jpg','[]','2025-07-28 03:48:48','2025-07-28 03:48:48',NULL,'public'),(166,0,'icon-1','icon-1',16,'image/png',4492,'main/contact/icon-1.png','[]','2025-07-28 03:48:49','2025-07-28 03:48:49',NULL,'public'),(167,0,'icon-2','icon-2',16,'image/png',5753,'main/contact/icon-2.png','[]','2025-07-28 03:48:49','2025-07-28 03:48:49',NULL,'public'),(168,0,'icon-3','icon-3',16,'image/png',5987,'main/contact/icon-3.png','[]','2025-07-28 03:48:49','2025-07-28 03:48:49',NULL,'public'),(169,0,'line','line',17,'image/png',6598,'main/shapes/line.png','[]','2025-07-28 03:48:49','2025-07-28 03:48:49',NULL,'public'),(170,0,'quote','quote',17,'image/png',592,'main/shapes/quote.png','[]','2025-07-28 03:48:50','2025-07-28 03:48:50',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2025-07-28 03:48:08','2025-07-28 03:48:08',NULL),(2,0,'general',NULL,'general',1,'2025-07-28 03:48:08','2025-07-28 03:48:08',NULL),(3,0,'payments',NULL,'payments',0,'2025-07-28 03:48:10','2025-07-28 03:48:10',NULL),(4,0,'users',NULL,'users',1,'2025-07-28 03:48:11','2025-07-28 03:48:11',NULL),(5,0,'brands',NULL,'brands',1,'2025-07-28 03:48:14','2025-07-28 03:48:14',NULL),(6,0,'customers',NULL,'customers',1,'2025-07-28 03:48:15','2025-07-28 03:48:15',NULL),(7,0,'blog',NULL,'blog',1,'2025-07-28 03:48:22','2025-07-28 03:48:22',NULL),(8,0,'stores',NULL,'stores',1,'2025-07-28 03:48:26','2025-07-28 03:48:26',NULL),(9,0,'sliders',NULL,'sliders',1,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL),(10,0,'product-categories',NULL,'product-categories',1,'2025-07-28 03:48:34','2025-07-28 03:48:34',NULL),(11,0,'products',NULL,'products',1,'2025-07-28 03:48:37','2025-07-28 03:48:37',NULL),(12,0,'video',NULL,'video',1,'2025-07-28 03:48:40','2025-07-28 03:48:40',NULL),(13,0,'banners',NULL,'banners',1,'2025-07-28 03:48:47','2025-07-28 03:48:47',NULL),(14,0,'gadgets',NULL,'gadgets',1,'2025-07-28 03:48:47','2025-07-28 03:48:47',NULL),(15,0,'galleries',NULL,'galleries',1,'2025-07-28 03:48:48','2025-07-28 03:48:48',NULL),(16,0,'contact',NULL,'contact',1,'2025-07-28 03:48:48','2025-07-28 03:48:48',NULL),(17,0,'shapes',NULL,'shapes',1,'2025-07-28 03:48:49','2025-07-28 03:48:49',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-07-28 03:48:49','2025-07-28 03:48:49');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,1,'Fashion',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,2,'Beauty',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,3,'Jewelry',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,4,'Grocery',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(7,1,0,NULL,NULL,NULL,NULL,1,'Shop',NULL,'_self',1,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,1,'Shop Brands',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,2,'Shop List',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,3,'Shop Grid',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(12,1,7,NULL,NULL,'/products/oculus-quest-2-vr-headset',NULL,4,'Product Detail',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,5,'Grab Coupons',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(14,1,7,NULL,NULL,'/cart',NULL,6,'Cart',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(15,1,7,NULL,NULL,'/compare',NULL,7,'Compare',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(16,1,7,NULL,NULL,'/wishlist',NULL,8,'Wishlist',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,9,'Track Your Order',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(18,1,0,NULL,NULL,'/stores',NULL,2,'Vendors',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(19,1,0,NULL,NULL,NULL,NULL,3,'Pages',NULL,'_self',1,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(21,1,19,NULL,NULL,'/login',NULL,1,'Login',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(22,1,19,NULL,NULL,'/register',NULL,2,'Register',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(23,1,19,NULL,NULL,'/password/reset',NULL,3,'Forgot Password',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(24,1,19,NULL,NULL,'/404',NULL,4,'404 Error',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(25,1,19,NULL,NULL,'/coming-soon',NULL,5,'Coming Soon',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,4,'Blog',NULL,'_self',1,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,1,'Blog List',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(29,1,26,NULL,NULL,'/blog/freelancer-days-2024-whats-new',NULL,2,'Blog Detail',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,5,'Contact',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Track Orders',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(33,2,0,NULL,NULL,'/wishlist',NULL,2,'Wishlist',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(34,2,0,NULL,NULL,'/customer/overview',NULL,3,'My Account',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(35,2,0,NULL,NULL,'/customer/orders',NULL,4,'Order History',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,5,'Returns',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,0,'Our Story',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,1,'Careers',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(40,3,0,NULL,NULL,'/blog',NULL,3,'Latest News',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,4,'Contact Us',NULL,'_self',0,'2025-07-28 03:48:49','2025-07-28 03:48:49');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(2,'My Account','my-account','published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(3,'Information','information','published','2025-07-28 03:48:49','2025-07-28 03:48:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#115061\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(2,'is_light','[0]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(3,'subtitle','[\"Starting at <b>$274.00<\\/b>\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(4,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(5,'background_color','[\"#115061\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(6,'is_light','[0]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(7,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(8,'button_label','[\"Shop Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(9,'background_color','[\"#E3EDF6\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(10,'is_light','[1]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(11,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(12,'button_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-07-28 03:48:34','2025-07-28 03:48:34'),(13,'faq_ids','[[1,3,8,9,10]]',1,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(14,'faq_ids','[[1,3,4,5,6]]',2,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(15,'faq_ids','[[2,3,7,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(16,'faq_ids','[[1,3,6,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(17,'faq_ids','[[1,3,5,6,7]]',5,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(18,'faq_ids','[[2,4,5,6,9]]',6,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(19,'faq_ids','[[1,2,4,6,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:40','2025-07-28 03:48:40'),(20,'faq_ids','[[1,3,5,8,9]]',8,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(21,'faq_ids','[[1,3,6,7,8]]',9,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(22,'faq_ids','[[1,4,5,7,8]]',10,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(23,'faq_ids','[[1,3,4,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(24,'faq_ids','[[1,2,4,6,8]]',12,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(25,'faq_ids','[[2,3,6,8,10]]',13,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(26,'faq_ids','[[2,5,6,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(27,'faq_ids','[[3,5,6,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(28,'faq_ids','[[4,6,8,9,10]]',16,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(29,'faq_ids','[[1,6,8,9,10]]',17,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(30,'faq_ids','[[1,3,5,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(31,'faq_ids','[[1,4,6,9,10]]',19,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(32,'faq_ids','[[1,7,8,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(33,'faq_ids','[[2,4,6,7,9]]',21,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(34,'faq_ids','[[2,3,7,8,9]]',22,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(35,'faq_ids','[[1,2,4,6,7]]',23,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(36,'faq_ids','[[1,2,7,8,10]]',24,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(37,'faq_ids','[[4,5,6,7,9]]',25,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(38,'faq_ids','[[2,3,4,5,10]]',26,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(39,'faq_ids','[[4,5,8,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(40,'faq_ids','[[1,2,3,4,8]]',28,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(41,'faq_ids','[[3,4,7,8,10]]',29,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(42,'faq_ids','[[1,2,4,8,9]]',30,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(43,'faq_ids','[[1,5,6,8,9]]',31,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(44,'faq_ids','[[3,6,8,9,10]]',32,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(45,'faq_ids','[[1,2,3,4,6]]',33,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(46,'faq_ids','[[1,3,6,8,10]]',34,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:41','2025-07-28 03:48:41'),(47,'faq_ids','[[1,2,3,7,10]]',35,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(48,'faq_ids','[[1,2,3,7,10]]',36,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(49,'faq_ids','[[2,7,8,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(50,'faq_ids','[[4,5,7,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(51,'faq_ids','[[1,2,3,6,10]]',39,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(52,'faq_ids','[[1,2,3,7,9]]',40,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(53,'faq_ids','[[1,2,7,9,10]]',41,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(54,'faq_ids','[[1,4,5,7,8]]',42,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(55,'faq_ids','[[3,4,7,8,9]]',43,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(56,'faq_ids','[[1,2,4,8,9]]',44,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(57,'faq_ids','[[1,3,5,7,9]]',45,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(58,'faq_ids','[[4,7,8,9,10]]',46,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(59,'faq_ids','[[2,5,6,7,9]]',47,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(60,'faq_ids','[[1,2,5,6,9]]',48,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(61,'faq_ids','[[1,3,5,6,8]]',49,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(62,'faq_ids','[[2,3,5,9,10]]',50,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(63,'faq_ids','[[2,4,5,6,8]]',51,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(64,'faq_ids','[[1,2,4,8,10]]',52,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(65,'faq_ids','[[2,3,4,7,10]]',53,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(66,'faq_ids','[[2,6,7,8,9]]',54,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:42','2025-07-28 03:48:42'),(67,'faq_ids','[[2,3,7,8,10]]',55,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:43','2025-07-28 03:48:43'),(68,'faq_ids','[[4,5,6,7,10]]',56,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:43','2025-07-28 03:48:43'),(69,'faq_ids','[[1,2,5,9,10]]',57,'Botble\\Ecommerce\\Models\\Product','2025-07-28 03:48:43','2025-07-28 03:48:43'),(70,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(71,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(72,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(73,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(74,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(75,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(76,'title','[\"Selected novelty \\n Products\"]',3,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(77,'subtitle','[\"Only $99.00\"]',3,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(78,'title','[\"Top Rated \\n Products\"]',4,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(79,'subtitle','[\"Only $55.00\"]',4,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(80,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',5,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(81,'subtitle','[\"Tablet Collection 2023\"]',5,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(82,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(83,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',6,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(84,'subtitle','[\"Tablet Collection 2023\"]',6,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(85,'button_label','[\"Shop Now\"]',6,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(86,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',7,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(87,'subtitle','[\"Tablet Collection 2023\"]',7,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(88,'button_label','[\"Shop Now\"]',7,'Botble\\Ads\\Models\\Ads','2025-07-28 03:48:48','2025-07-28 03:48:48'),(89,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2025-07-28 03:48:49','2025-07-28 03:48:49'),(90,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2025-07-28 03:48:49','2025-07-28 03:48:49');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2015_06_18_033822_create_blog_table',1),(7,'2015_06_29_025744_create_audit_history',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(44,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(45,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(46,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(47,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(48,'2021_10_19_020859_update_metadata_field',1),(49,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(50,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(51,'2021_11_23_071403_correct_languages_for_product_variations',1),(52,'2021_11_28_031808_add_product_tags_translations',1),(53,'2021_12_01_031123_add_featured_image_to_ec_products',1),(54,'2021_12_02_035301_add_ads_translations_table',1),(55,'2021_12_03_030600_create_blog_translations',1),(56,'2021_12_03_075608_create_page_translations',1),(57,'2021_12_03_082134_create_faq_translations',1),(58,'2021_12_03_082953_create_gallery_translations',1),(59,'2021_12_03_083642_create_testimonials_translations',1),(60,'2021_12_03_084118_create_location_translations',1),(61,'2021_12_03_094518_migrate_old_location_data',1),(62,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(63,'2022_01_01_033107_update_table_ec_shipments',1),(64,'2022_01_16_085908_improve_plugin_location',1),(65,'2022_02_16_042457_improve_product_attribute_sets',1),(66,'2022_03_22_075758_correct_product_name',1),(67,'2022_04_19_113334_add_index_to_ec_products',1),(68,'2022_04_19_113923_add_index_to_table_posts',1),(69,'2022_04_20_100851_add_index_to_media_table',1),(70,'2022_04_20_101046_add_index_to_menu_table',1),(71,'2022_04_28_144405_remove_unused_table',1),(72,'2022_04_30_034048_create_gallery_meta_translations_table',1),(73,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(74,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(75,'2022_06_16_095633_add_index_to_some_tables',1),(76,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(77,'2022_06_30_035148_create_order_referrals_table',1),(78,'2022_07_07_153354_update_charge_id_in_table_payments',1),(79,'2022_07_10_034813_move_lang_folder_to_root',1),(80,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(81,'2022_08_04_051940_add_missing_column_expires_at',1),(82,'2022_08_04_052122_delete_location_backup_tables',1),(83,'2022_08_14_032836_create_ec_order_returns_table',1),(84,'2022_08_14_033554_create_ec_order_return_items_table',1),(85,'2022_08_15_040324_add_billing_address',1),(86,'2022_08_30_091114_support_digital_products_table',1),(87,'2022_09_01_000001_create_admin_notifications_tables',1),(88,'2022_09_13_095744_create_options_table',1),(89,'2022_09_13_104347_create_option_value_table',1),(90,'2022_10_05_163518_alter_table_ec_order_product',1),(91,'2022_10_12_041517_create_invoices_table',1),(92,'2022_10_12_142226_update_orders_table',1),(93,'2022_10_13_024916_update_table_order_returns',1),(94,'2022_10_14_024629_drop_column_is_featured',1),(95,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(96,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(97,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(98,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(99,'2022_11_19_041643_add_ec_tax_product_table',1),(100,'2022_12_02_093615_update_slug_index_columns',1),(101,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(102,'2022_12_17_041532_fix_address_in_order_invoice',1),(103,'2022_12_26_070329_create_ec_product_views_table',1),(104,'2023_01_04_033051_fix_product_categories',1),(105,'2023_01_09_050400_add_ec_global_options_translations_table',1),(106,'2023_01_10_093754_add_missing_option_value_id',1),(107,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(108,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(109,'2023_01_30_024431_add_alt_to_media_table',1),(110,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(111,'2023_02_16_042611_drop_table_password_resets',1),(112,'2023_02_27_095752_remove_duplicate_reviews',1),(113,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(114,'2023_04_17_062645_add_open_in_new_tab',1),(115,'2023_04_21_082427_create_ec_product_categorizables_table',1),(116,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(117,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(118,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(119,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(120,'2023_05_17_025812_fix_invoice_issue',1),(121,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(122,'2023_05_27_144611_fix_exchange_rate_setting',1),(123,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(124,'2023_06_30_042512_create_ec_order_tax_information_table',1),(125,'2023_07_06_011444_create_slug_translations_table',1),(126,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(127,'2023_07_26_041451_add_more_columns_to_location_table',1),(128,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(129,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(130,'2023_08_11_060908_create_announcements_table',1),(131,'2023_08_15_064505_create_ec_tax_rules_table',1),(132,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(133,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(134,'2023_08_21_090810_make_page_content_nullable',1),(135,'2023_08_22_094114_drop_unique_for_barcode',1),(136,'2023_08_29_074620_make_column_author_id_nullable',1),(137,'2023_08_29_075308_make_column_user_id_nullable',1),(138,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(139,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(140,'2023_09_14_021936_update_index_for_slugs_table',1),(141,'2023_09_19_024955_create_discount_product_categories_table',1),(142,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(143,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(144,'2023_11_07_023805_add_tablet_mobile_image',1),(145,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(146,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(147,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(148,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(149,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(150,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(151,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(152,'2023_12_12_105220_drop_translations_table',1),(153,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(154,'2023_12_25_040604_ec_create_review_replies_table',1),(155,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(156,'2024_01_16_070706_fix_translation_tables',1),(157,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(158,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(159,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(160,'2024_03_21_100334_update_section_title_shape',1),(161,'2024_03_25_000001_update_captcha_settings_for_contact',1),(162,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(163,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(164,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(165,'2024_03_29_042242_migrate_old_captcha_settings',1),(166,'2024_03_29_093946_create_ec_order_return_histories_table',1),(167,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(168,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(169,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(170,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(171,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(172,'2024_04_19_063914_create_custom_fields_table',1),(173,'2024_04_27_100730_improve_analytics_setting',1),(174,'2024_05_07_073153_improve_table_wishlist',1),(175,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(176,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(177,'2024_05_15_021503_fix_invoice_path',1),(178,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(179,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(180,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(181,'2024_07_04_083133_create_payment_logs_table',1),(182,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(183,'2024_07_12_100000_change_random_hash_for_media',1),(184,'2024_07_14_071826_make_customer_email_nullable',1),(185,'2024_07_15_104916_add_video_media_column_to_ec_products_table',1),(186,'2024_07_26_052530_add_percentage_to_tax_rules_table',1),(187,'2024_07_30_091615_fix_order_column_in_categories_table',1),(188,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',1),(189,'2024_08_17_094600_add_image_into_countries',1),(190,'2024_08_19_132849_create_specification_tables',1),(191,'2024_09_07_060744_add_author_column_to_specification_tables',1),(192,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',1),(193,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',1),(194,'2024_09_25_073928_remove_wrong_product_slugs',1),(195,'2024_09_30_024515_create_sessions_table',1),(196,'2024_12_19_000001_create_device_tokens_table',1),(197,'2024_12_19_000002_create_push_notifications_table',1),(198,'2024_12_19_000003_create_push_notification_recipients_table',1),(199,'2024_12_30_000001_create_user_settings_table',1),(200,'2025_01_06_033807_add_default_value_for_categories_author_type',1),(201,'2025_01_08_093652_add_zip_code_to_cities',1),(202,'2025_01_12_094943_correct_blog_posts_images',1),(203,'2025_01_15_050230_migrate_old_theme_options',1),(204,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',1),(205,'2025_01_24_044641_migrate_old_country_data',1),(206,'2025_01_28_233602_add_private_notes_into_ec_orders_table',1),(207,'2025_02_11_153025_add_action_label_to_announcement_translations',1),(208,'2025_02_13_021247_add_tax_translations',1),(209,'2025_02_24_152621_add_text_color_to_product_labels_table',1),(210,'2025_04_08_040931_create_social_logins_table',1),(211,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',1),(212,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',1),(213,'2025_04_12_000003_add_payment_fee_to_payments_table',1),(214,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',1),(215,'2025_05_05_000001_add_user_type_to_audit_histories_table',1),(216,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',1),(217,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',1),(218,'2025_05_22_000001_add_payment_fee_type_to_settings_table',1),(219,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',1),(220,'2025_06_17_091813_increase_note_in_shipments_table',1),(221,'2025_06_24_000001_create_ec_product_license_codes_table',1),(222,'2025_06_24_080427_add_license_code_type_to_products_table',1),(223,'2025_07_06_030754_add_phone_to_users_table',1),(224,'2025_07_06_062402_create_ec_customer_deletion_requests_table',1),(225,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',1),(226,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',1),(227,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',1),(228,'2025_07_15_090809_create_ec_abandoned_carts_table',1),(229,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',1),(230,'2025_07_28_151808_fix_tax_amount_multiply_qty_in_order_and_invoice_items',1),(231,'2016_10_03_032336_create_languages_table',2),(232,'2023_09_14_022423_add_index_for_language_table',2),(233,'2021_07_06_030002_create_marketplace_table',3),(234,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',3),(235,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',3),(236,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',3),(237,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',3),(238,'2021_12_06_031304_update_table_mp_customer_revenues',3),(239,'2022_10_19_152916_add_columns_to_mp_stores_table',3),(240,'2022_10_20_062849_create_mp_category_sale_commissions_table',3),(241,'2022_11_02_071413_add_more_info_for_store',3),(242,'2022_11_02_080444_add_tax_info',3),(243,'2023_02_01_062030_add_store_translations',3),(244,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',3),(245,'2023_02_17_023648_fix_store_prefix',3),(246,'2024_04_03_062451_add_cover_image_to_table_mp_stores',3),(247,'2024_05_07_082630_create_mp_messages_table',3),(248,'2024_07_19_131849_add_documents_to_mp_stores_table',3),(249,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',3),(250,'2024_08_27_141244_add_block_reason_to_ec_customers_table',3),(251,'2024_09_17_125408_add_square_logo_to_stores_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','gerhold.reynold@example.net','+18633240093','197 Garrett Crossroad','VN','Maine','West Florineville',2,'main/stores/1.png',NULL,'main/stores/cover-5.png','Et velit et neque eos omnis sunt voluptatem. Et et soluta et nesciunt quisquam et. Nisi tempora pariatur officiis praesentium cupiditate quo quis. Dolorum dolores eius veritatis explicabo aut illum natus. Quod quo aliquam aut ipsam aut. Error laudantium expedita saepe laudantium impedit. Occaecati nesciunt id nemo assumenda.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','stiedemann.justina@example.com','+12404169147','818 Gaylord Port Apt. 187','PM','Iowa','Lake Alene',8,'main/stores/2.png',NULL,'main/stores/cover-1.png','Sint quos in aut voluptatum voluptates nulla culpa. Voluptatem repudiandae occaecati voluptatem recusandae accusantium eveniet perferendis. Dolorem quidem repudiandae animi placeat. Doloribus provident ut ullam eius ipsam. Vel rem voluptatem laborum id non aut ipsam voluptas.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','rsauer@example.org','+13473727179','34117 Stamm Haven Apt. 641','LB','Virginia','West Elwyn',3,'main/stores/3.png',NULL,'main/stores/cover-1.png','Harum possimus ea occaecati culpa. Quia mollitia itaque mollitia corporis rerum qui dolor voluptas. Aut aspernatur eum ab laborum occaecati non laborum. Maxime aut et voluptatibus provident aut labore quam. Atque debitis asperiores quisquam in. In in voluptas rerum dolor voluptas soluta. Non culpa consequatur aut excepturi et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','jacinto.dooley@example.net','+17256445983','968 Green Port Suite 879','SN','Nebraska','Winonabury',8,'main/stores/4.png',NULL,'main/stores/cover-1.png','Dolore aspernatur omnis nesciunt quod esse expedita expedita. Accusamus est commodi sit corrupti. Rerum quis autem et fugit illum architecto officiis rerum. Molestias animi totam veritatis facilis repudiandae ullam illum quia. Sequi sint cumque recusandae nulla optio qui voluptates. Ab rerum tenetur molestias nihil. Culpa ea rerum dolor laboriosam repudiandae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','vritchie@example.net','+18489051896','51973 Hilpert Mountains Suite 818','AO','Massachusetts','Eduardofurt',6,'main/stores/5.png',NULL,'main/stores/cover-4.png','Magnam repellendus voluptatem sunt non adipisci similique. Aut et nostrum sunt inventore porro ea distinctio hic. Consequatur ad est dolores nesciunt et tenetur amet. Et ipsum quibusdam cupiditate sed unde expedita aut. Sequi ipsam et ducimus voluptatem quidem sint quia. Amet at alias sint incidunt repudiandae laborum sed. Aut qui minima excepturi dicta.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','carmen.willms@example.org','+18202307199','568 Fleta Pine','MM','Maryland','Williamsonmouth',3,'main/stores/6.png',NULL,'main/stores/cover-5.png','A qui quidem nihil vero. Sit consequatur facere beatae in molestias est. Occaecati et perferendis culpa omnis rem amet aspernatur. Maxime ut et voluptatem voluptates. Eveniet voluptatibus aliquam vero enim tempora eveniet. Voluptas quia nihil doloribus consequuntur sequi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','elenor.mraz@example.org','+19348960639','6884 Fahey Brooks Suite 619','KN','Arkansas','New Jaida',7,'main/stores/7.png',NULL,'main/stores/cover-4.png','Mollitia sunt est dicta reprehenderit. Assumenda ullam omnis numquam porro. Id iure architecto dicta quia minus omnis. Sed repellendus blanditiis in cum id odit at. Omnis quis non cupiditate voluptas sint aperiam et. Sunt aliquid nihil deserunt aut autem incidunt. Saepe dolorem vero ut ut non voluptas rerum. Sed animi voluptatem et quis. Et repellat nihil dolor aliquam aut doloremque.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','flavie.littel@example.org','+14809591232','2467 Rempel Dam Apt. 789','KZ','Louisiana','Lake Justinaberg',4,'main/stores/8.png',NULL,'main/stores/cover-3.png','Quibusdam libero excepturi quos cumque qui labore aut. Est iure non iusto sequi. Iste voluptatum ut est consequatur. Eaque iste totam odio nisi facilis. Ut odit ut et blanditiis odit optio voluptate. Esse laboriosam sint quis sit vel expedita. Ratione expedita nemo tempore nihil. Cumque nisi sed labore eaque omnis omnis eos.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-07-28 03:48:33','2025-07-28 03:48:33',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$IdgBR8hiy7nO543bqamBDud5DS8uaSiEtdWLqFtCUPgO7mr73K5Ua','{\"name\":\"Ms. Lessie Walker PhD\",\"number\":\"+13858249261\",\"full_name\":\"Tyrell Dooley\",\"description\":\"Mr. Kennedi Cummings\"}','2025-07-28 03:48:30','2025-07-28 03:48:30','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$5arKtFCdmeui1jpXUz5JAezjGF/YgA8tehyMlSpjDoFjecR8U2lcy','{\"name\":\"Sydney Kuhlman Jr.\",\"number\":\"+13513458154\",\"full_name\":\"Prof. Shyann Pouros\",\"description\":\"Terence Lindgren\"}','2025-07-28 03:48:30','2025-07-28 03:48:30','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$9NoKOfCkNvD3LiYOUVzU2e4WYY1aG7kh5ghWZT0fQeoOlYRP81W8q','{\"name\":\"Geovany Abernathy\",\"number\":\"+18384482543\",\"full_name\":\"Dr. Thomas Trantow\",\"description\":\"Ms. Reta Friesen Sr.\"}','2025-07-28 03:48:31','2025-07-28 03:48:31','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$GDk.Myqv2B4XBHxKC68TbO38bJXHdhopTN2aMI0VUAR.MeN3wHHAa','{\"name\":\"Elsa Mayer\",\"number\":\"+12343552098\",\"full_name\":\"Kenya Reilly\",\"description\":\"Brooklyn Lockman\"}','2025-07-28 03:48:31','2025-07-28 03:48:31','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$JkHeakY1a9GBlzIF5M8EvupWZTu676S9Y1TRllcMK4/jCRLJY.e7K','{\"name\":\"Mark Ebert DVM\",\"number\":\"+13107539931\",\"full_name\":\"Lenny Dickinson\",\"description\":\"Marisol Shanahan\"}','2025-07-28 03:48:32','2025-07-28 03:48:32','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$L2uinqpZOYC6AL8nH16eq.SHDYyptxJG.KaXtKa9A/nuTgdHzS00m','{\"name\":\"Dewayne Terry II\",\"number\":\"+16092755319\",\"full_name\":\"Jonathon Wintheiser\",\"description\":\"Alda Leffler\"}','2025-07-28 03:48:32','2025-07-28 03:48:32','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$IMQEevFBqqKd61CTyZ2C6utathh0VC3kHYxTUj66N9xvOtuWWLIHa','{\"name\":\"Prof. Susie Gorczany Sr.\",\"number\":\"+15593935871\",\"full_name\":\"Mr. Armani O\'Keefe\",\"description\":\"Madie Zboncak IV\"}','2025-07-28 03:48:33','2025-07-28 03:48:33','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"1\" key=\"home-slider\" customize_font_family_of_description=\"1\" font_family_of_description=\"Oregano\" shape_1=\"main/sliders/shape-1.png\" shape_2=\"main/sliders/shape-2.png\" shape_3=\"main/sliders/shape-3.png\" shape_4=\"main/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"6,10,13,16,30\" enable_lazy_loading=\"no\"][/ecommerce-categories][site-features style=\"1\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"no\"][/site-features][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-flash-sale style=\"1\" title=\"Deal of The Day\" flash_sale_id=\"1\" limit=\"4\" button_label=\"View All Deals\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale][ecommerce-products style=\"grid\" category_ids=\"20\" limit=\"12\" with_sidebar=\"1\" image=\"main/gadgets/gadget-girl.png\" action_label=\"More Products\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][ads style=\"4\" key_1=\"B5ZA76ZWMWAE\" key_2=\"F1LTQS976YPY\" key_3=\"IHPZ2WBSYJUK\" enable_lazy_loading=\"yes\"][/ads][ecommerce-products style=\"slider\" title=\"New Arrivals\" by=\"collection\" collection_ids=\"1\" limit=\"12\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups style=\"columns\" limit=\"3\" tabs=\"on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][blog-posts title=\"Latest news & articles\" type=\"latest\" limit=\"3\" button_label=\"View All\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][gallery style=\"1\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(2,'Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2026-02-13\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49'),(13,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2025-07-28 03:48:49','2025-07-28 03:48:49');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(5,1),(1,2),(4,2),(2,3),(5,3),(1,4),(5,4),(4,5),(3,5),(3,6),(3,7),(5,8),(1,8),(6,9),(2,9),(6,10),(2,11),(1,11),(1,12),(6,12),(5,13),(1,13),(4,14),(5,14),(2,15),(3,15),(3,16),(6,16),(3,17),(6,17),(6,18),(3,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(3,1),(6,1),(4,2),(1,2),(2,2),(6,3),(3,4),(2,4),(4,4),(2,5),(4,5),(8,5),(8,6),(6,6),(3,6),(7,7),(3,7),(8,8),(4,8),(3,8),(4,9),(6,9),(2,9),(1,10),(7,10),(8,10),(4,11),(7,11),(5,11),(5,12),(8,12),(7,12),(1,13),(6,13),(7,13),(1,14),(3,14),(8,14),(8,15),(1,15),(1,16),(5,16),(2,16),(8,17),(3,17),(5,17),(6,18),(8,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he sneezes: He only does it to the conclusion that it led into the garden door. Poor Alice! It was all.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',703,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' the Footman went on growing, and very angrily. \'A knot!\' said Alice, as she could. The.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2011,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(3,'The Top 2020 Handbag Trends to Know','Queen. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the other players, and shouting \'Off with their heads off?\' shouted the Queen. \'Well, I can\'t tell you my.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',1544,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(4,'How to Match the Color of Your Handbag With an Outfit','I can guess that,\' she added aloud. \'Do you take me for his housemaid,\' she said to herself; \'the March Hare said to a lobster--\' (Alice began to repeat it, but her head through the glass, and she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1468,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(5,'How to Care for Leather Bags','By the use of this was the first witness,\' said the Caterpillar. \'Is that the poor child, \'for I never knew so much into the sky all the right thing to nurse--and she\'s such a very deep well. Either.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1463,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Queen in a shrill, passionate voice. \'Would YOU like cats if you were INSIDE, you might catch a bad cold if she could remember them, all these strange Adventures of hers that you never tasted an.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',2163,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(7,'Essential Qualities of Highly Successful Music','Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a candle. I wonder what they\'ll do next! As for pulling me out of its mouth open, gazing up into hers--she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1745,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(8,'9 Things I Love About Shaving My Head','The Fish-Footman began by producing from under his arm a great many teeth, so she began looking at them with large eyes full of smoke from one end to the door. \'Call the next verse,\' the Gryphon.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',560,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(9,'Why Teamwork Really Makes The Dream Work','March Hare, who had followed him into the loveliest garden you ever saw. How she longed to change the subject. \'Ten hours the first question, you know.\' It was, no doubt: only Alice did not quite.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',651,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(10,'The World Caters to Average People','Alice. \'You are,\' said the Queen had never been in a shrill, loud voice, and the great concert given by the prisoner to--to somebody.\' \'It must have been changed for any lesson-books!\' And so she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1193,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(11,'The litigants on the screen are not actors','CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2247,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(12,'Hiring the Right Sales Team at the Right Time','Alice, and she was saying, and the poor animal\'s feelings. \'I quite agree with you,\' said Alice, surprised at her hands, and began:-- \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened at.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',2437,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(13,'Fully Embrace the Return of 90s fashion','Miss, we\'re doing our best, afore she comes, to--\' At this the whole party swam to the King, \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King, \'unless it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1684,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(14,'Exploring the English Countryside','Let this be a grin, and she tried hard to whistle to it; but she saw in another moment, when she heard one of the officers of the thing yourself, some winter day, I will just explain to you to offer.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',1311,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(15,'Here’s the First Valentino’s New Makeup Collection','ME,\' said the Caterpillar. Alice thought over all the same, shedding gallons of tears, \'I do wish I could shut up like telescopes: this time it all came different!\' Alice replied very solemnly.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1654,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(16,'Follow Your own Design process, whatever gets','Mouse\'s tail; \'but why do you know the meaning of it altogether; but after a pause: \'the reason is, that I\'m doubtful about the right height to be.\' \'It is wrong from beginning to end,\' said the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',463,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(17,'Freelancer Days 2024, What’s new?','Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a shrill, passionate voice. \'Would YOU like cats if you hold it too long; and that he had never been in a very grave voice, \'until all the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',1119,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25'),(18,'Quality Foods Requirments For Every Human Body’s','The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to live. \'I\'ve seen hatters before,\' she said these words her foot slipped, and in his confusion he bit a large pool all round her.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1715,NULL,'2025-07-28 03:48:25','2025-07-28 03:48:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-07-28 03:48:14','2025-07-28 03:48:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','e99163bba7abb5fdd3c8f30e5a108a4d',NULL,'2025-07-28 03:48:50'),(2,'api_enabled','0',NULL,'2025-07-28 03:48:50'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2025-07-28 03:48:50'),(6,'theme','shofy',NULL,'2025-07-28 03:48:50'),(7,'show_admin_bar','1',NULL,'2025-07-28 03:48:50'),(8,'admin_favicon','main/general/favicon.png',NULL,'2025-07-28 03:48:50'),(9,'admin_logo','main/general/logo-white.png',NULL,'2025-07-28 03:48:50'),(10,'announcement_lazy_loading','1',NULL,'2025-07-28 03:48:50'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2025-07-28 03:48:50'),(12,'payment_cod_status','1',NULL,'2025-07-28 03:48:50'),(13,'payment_bank_transfer_status','1',NULL,'2025-07-28 03:48:50'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-07-28 03:48:50'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-07-28 03:48:50'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-07-28 03:48:50'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-07-28 03:48:50'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-07-28 03:48:50'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-07-28 03:48:50'),(20,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-07-28 03:48:50'),(21,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2025-07-28 03:48:50'),(22,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-07-28 03:48:50'),(23,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-07-28 03:48:50'),(24,'ecommerce_store_order_prefix','SF',NULL,'2025-07-28 03:48:50'),(25,'ecommerce_enable_product_specification','1',NULL,'2025-07-28 03:48:50'),(26,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-07-28 03:48:50'),(27,'payment_cod_logo','payments/cod.png',NULL,'2025-07-28 03:48:50'),(28,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-07-28 03:48:50'),(29,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-07-28 03:48:50'),(30,'payment_paypal_logo','payments/paypal.png',NULL,'2025-07-28 03:48:50'),(31,'payment_mollie_logo','payments/mollie.png',NULL,'2025-07-28 03:48:50'),(32,'payment_paystack_logo','payments/paystack.png',NULL,'2025-07-28 03:48:50'),(33,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-07-28 03:48:50'),(34,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-07-28 03:48:50'),(35,'permalink-botble-blog-models-post','blog',NULL,'2025-07-28 03:48:50'),(36,'permalink-botble-blog-models-category','blog',NULL,'2025-07-28 03:48:50'),(37,'language_hide_default','1',NULL,'2025-07-28 03:48:50'),(38,'language_switcher_display','dropdown',NULL,'2025-07-28 03:48:50'),(39,'language_display','all',NULL,'2025-07-28 03:48:50'),(40,'language_hide_languages','[]',NULL,'2025-07-28 03:48:50'),(41,'ecommerce_store_name','Shofy',NULL,'2025-07-28 03:48:50'),(42,'ecommerce_store_phone','1800979769',NULL,'2025-07-28 03:48:50'),(43,'ecommerce_store_address','502 New Street',NULL,'2025-07-28 03:48:50'),(44,'ecommerce_store_state','Brighton VIC',NULL,'2025-07-28 03:48:50'),(45,'ecommerce_store_city','Brighton VIC',NULL,'2025-07-28 03:48:50'),(46,'ecommerce_store_country','AU',NULL,'2025-07-28 03:48:50'),(47,'announcement_max_width','1390',NULL,'2025-07-28 03:48:50'),(48,'announcement_text_color','#fff',NULL,'2025-07-28 03:48:50'),(49,'announcement_background_color','transparent',NULL,'2025-07-28 03:48:50'),(50,'announcement_placement','theme',NULL,'2025-07-28 03:48:50'),(51,'announcement_text_alignment','start',NULL,'2025-07-28 03:48:50'),(52,'announcement_dismissible','0',NULL,'2025-07-28 03:48:50'),(53,'simple_slider_using_assets','0',NULL,'2025-07-28 03:48:50'),(54,'theme-shofy-site_name','Shofy',NULL,NULL),(55,'theme-shofy-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(56,'theme-shofy-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(57,'theme-shofy-copyright','© %Y All Rights Reserved.',NULL,NULL),(58,'theme-shofy-tp_primary_font','Roboto',NULL,NULL),(59,'theme-shofy-primary_color','#0C55AA',NULL,NULL),(60,'theme-shofy-favicon','main/general/favicon.png',NULL,NULL),(61,'theme-shofy-logo','main/general/logo.png',NULL,NULL),(62,'theme-shofy-logo_light','main/general/logo-white.png',NULL,NULL),(63,'theme-shofy-header_style','1',NULL,NULL),(64,'theme-shofy-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(65,'theme-shofy-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(66,'theme-shofy-hotline','8 800 332 65-66',NULL,NULL),(67,'theme-shofy-email','contact@fartmart.co',NULL,NULL),(68,'theme-shofy-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(69,'theme-shofy-homepage_id','1',NULL,NULL),(70,'theme-shofy-blog_page_id','5',NULL,NULL),(71,'theme-shofy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(72,'theme-shofy-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(73,'theme-shofy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(74,'theme-shofy-number_of_products_per_page','24',NULL,NULL),(75,'theme-shofy-number_of_cross_sale_product','6',NULL,NULL),(76,'theme-shofy-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(77,'theme-shofy-ecommerce_product_item_style','1',NULL,NULL),(78,'theme-shofy-404_page_image','main/general/404.png',NULL,NULL),(79,'theme-shofy-newsletter_popup_enable','1',NULL,NULL),(80,'theme-shofy-newsletter_popup_image','main/general/newsletter-popup.jpg',NULL,NULL),(81,'theme-shofy-newsletter_popup_title','Subscribe Now',NULL,NULL),(82,'theme-shofy-newsletter_popup_subtitle','Newsletter',NULL,NULL),(83,'theme-shofy-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(84,'theme-shofy-lazy_load_images','1',NULL,NULL),(85,'theme-shofy-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(86,'theme-shofy-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(87,'theme-shofy-section_title_shape_decorated','style-3',NULL,NULL),(88,'theme-shofy-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(89,'theme-shofy-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(90,'theme-shofy-login_background','main/general/auth-banner.png',NULL,NULL),(91,'theme-shofy-register_background','main/general/auth-banner.png',NULL,NULL),(92,'theme-shofy-merchant_return_policy_url','return-policy',NULL,NULL),(93,'theme-shofy-merchant_return_applicable_country','US',NULL,NULL),(94,'theme-shofy-term_and_privacy_policy_url','privacy-policy',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The best tablet Collection 2023','main/sliders/slider-1.png','/products','Exclusive offer <span>-35%</span> off this week',0,'2025-07-28 03:48:34','2025-07-28 03:48:34'),(2,1,'The best note book collection 2023','main/sliders/slider-3.png','/products','Exclusive offer <span>-10%</span> off this week',1,'2025-07-28 03:48:34','2025-07-28 03:48:34'),(3,1,'The best phone collection 2023','main/sliders/slider-2.png','/products','Exclusive offer <span>-10%</span> off this week',2,'2025-07-28 03:48:34','2025-07-28 03:48:34');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-07-28 03:48:34','2025-07-28 03:48:34');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-07-28 03:48:15','2025-07-28 03:48:15'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-07-28 03:48:15','2025-07-28 03:48:15'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-07-28 03:48:15','2025-07-28 03:48:15'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-07-28 03:48:15','2025-07-28 03:48:15'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-07-28 03:48:15','2025-07-28 03:48:15'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-07-28 03:48:21','2025-07-28 03:48:21'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2025-07-28 03:48:25','2025-07-28 03:48:25'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2025-07-28 03:48:25','2025-07-28 03:48:25'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-07-28 03:48:33','2025-07-28 03:48:33'),(52,'new-arrivals',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(53,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(54,'featured',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(55,'new-arrivals',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(56,'best-sellers',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(57,'mobile-phone',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(58,'computers-laptops',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(59,'top-brands',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(60,'weekly-best-selling',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(61,'cpu-heat-pipes',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(62,'cpu-coolers',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(64,'headphones',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(65,'wireless-headphones',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(66,'tws-earphones',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(67,'smart-watch',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(68,'gaming-console',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(69,'playstation',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(70,'gifts',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(71,'computers',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(72,'desktop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(73,'laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(74,'tablet',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(75,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(76,'smartphones-tablets',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(77,'tv-video-music',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(78,'cameras',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(79,'cooking',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(80,'accessories',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(81,'with-bluetooth',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:36','2025-07-28 03:48:36'),(82,'sports',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(83,'electronics-gadgets',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(84,'micrscope',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(85,'remote-control',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(86,'monitor',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(87,'thermometer',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(88,'backpack',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(89,'headphones',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-07-28 03:48:37','2025-07-28 03:48:37'),(90,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',1,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(91,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',2,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(92,'samsung-galaxy-tab-s7-124-inch-android-tablet',3,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(93,'apple-macbook-pro-16-inch-laptop-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:51'),(94,'sony-wh-1000xm4-wireless-noise-canceling-headphones',5,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(95,'dji-mavic-air-2-drone',6,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(96,'gopro-hero9-black-action-camera',7,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:40'),(97,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:40','2025-07-28 03:48:51'),(98,'nest-learning-thermostat-3rd-generation',9,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(99,'ring-video-doorbell-pro',10,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(100,'amazon-echo-show-10-3rd-gen',11,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(101,'samsung-qn90a-neo-qled-4k-smart-tv-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(102,'lg-oled-c1-series-4k-smart-tv',13,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(103,'sony-x950h-4k-ultra-hd-smart-led-tv',14,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(104,'apple-watch-series-7',15,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(105,'fitbit-charge-5-fitness-tracker-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(106,'garmin-fenix-7x-sapphire-solar-gps-watch',17,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(107,'microsoft-surface-pro-8',18,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(108,'lenovo-thinkpad-x1-carbon-gen-9-laptop',19,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(109,'hp-spectre-x360-14-inch-convertible-laptop-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(110,'razer-blade-15-advanced-gaming-laptop',21,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(111,'alienware-m15-r6-gaming-laptop',22,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(112,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',23,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(113,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(114,'steelseries-arctis-pro-wireless-gaming-headset',25,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(115,'elgato-stream-deck-xl',26,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(116,'nintendo-switch-oled-model',27,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(117,'playstation-5-console-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(118,'xbox-series-x-console',29,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(119,'oculus-quest-2-vr-headset',30,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(120,'htc-vive-cosmos-elite-vr-headset',31,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(121,'samsung-odyssey-g9-49-inch-curved-gaming-monitor-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:51'),(122,'lg-ultragear-27gn950-b-4k-gaming-monitor',33,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(123,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',34,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(124,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',35,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:41','2025-07-28 03:48:41'),(125,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:51'),(126,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',37,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(127,'hp-z27k-g3-4k-usb-c-monitor',38,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(128,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',39,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(129,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:51'),(130,'sony-x900h-4k-ultra-hd-smart-led-tv',41,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(131,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',42,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(132,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',43,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(133,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:51'),(134,'lg-c1-series-4k-oled-smart-tv',45,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(135,'samsung-qn85a-neo-qled-4k-smart-tv',46,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(136,'sony-a90j-4k-oled-smart-tv',47,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(137,'apple-tv-4k-2nd-generation-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:51'),(138,'roku-ultra-2020-streaming-media-player',49,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(139,'amazon-fire-tv-stick-4k-max',50,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(140,'google-chromecast-with-google-tv',51,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(141,'nvidia-shield-tv-pro-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:51'),(142,'sonos-beam-gen-2-soundbar',53,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(143,'bose-smart-soundbar-900',54,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(144,'jbl-bar-91-soundbar-with-dolby-atmos',55,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:42','2025-07-28 03:48:42'),(145,'sennheiser-ambeo-soundbar-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:43','2025-07-28 03:48:51'),(146,'sony-ht-a9-home-theater-system',57,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:43','2025-07-28 03:48:43'),(147,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-07-28 03:48:48','2025-07-28 03:48:48'),(148,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-07-28 03:48:48','2025-07-28 03:48:48'),(149,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-07-28 03:48:48','2025-07-28 03:48:48'),(150,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-07-28 03:48:48','2025-07-28 03:48:48'),(151,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-07-28 03:48:48','2025-07-28 03:48:48'),(152,'home',1,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(153,'categories',2,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(154,'brands',3,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(155,'coupons',4,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(156,'blog',5,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(157,'contact',6,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(158,'faqs',7,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(159,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(160,'our-story',9,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(161,'careers',10,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(162,'shipping',11,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(163,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(164,'return-policy',13,'Botble\\Page\\Models\\Page','','2025-07-28 03:48:49','2025-07-28 03:48:49'),(165,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',58,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(166,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',59,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(167,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',60,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(168,'samsung-galaxy-tab-s7-124-inch-android-tablet',61,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(169,'samsung-galaxy-tab-s7-124-inch-android-tablet',62,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(170,'samsung-galaxy-tab-s7-124-inch-android-tablet',63,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(171,'samsung-galaxy-tab-s7-124-inch-android-tablet',64,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(172,'apple-macbook-pro-16-inch-laptop-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(173,'sony-wh-1000xm4-wireless-noise-canceling-headphones',66,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(174,'sony-wh-1000xm4-wireless-noise-canceling-headphones',67,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(175,'dji-mavic-air-2-drone',68,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(176,'dji-mavic-air-2-drone',69,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(177,'dji-mavic-air-2-drone',70,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(178,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(179,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(180,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(181,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(182,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(183,'nest-learning-thermostat-3rd-generation',76,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(184,'nest-learning-thermostat-3rd-generation',77,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(185,'ring-video-doorbell-pro',78,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(186,'ring-video-doorbell-pro',79,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(187,'ring-video-doorbell-pro',80,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(188,'garmin-fenix-7x-sapphire-solar-gps-watch',81,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(189,'hp-spectre-x360-14-inch-convertible-laptop-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(190,'hp-spectre-x360-14-inch-convertible-laptop-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(191,'hp-spectre-x360-14-inch-convertible-laptop-digital',84,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(192,'alienware-m15-r6-gaming-laptop',85,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(193,'alienware-m15-r6-gaming-laptop',86,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(194,'alienware-m15-r6-gaming-laptop',87,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(195,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(196,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',89,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(197,'elgato-stream-deck-xl',90,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(198,'nintendo-switch-oled-model',91,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(199,'nintendo-switch-oled-model',92,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(200,'nintendo-switch-oled-model',93,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(201,'playstation-5-console-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(202,'playstation-5-console-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(203,'htc-vive-cosmos-elite-vr-headset',96,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(204,'htc-vive-cosmos-elite-vr-headset',97,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(205,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',98,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(206,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',99,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(207,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',100,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(208,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',101,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(209,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',102,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(210,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',103,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(211,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',104,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(212,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',105,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(213,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',106,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(214,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(215,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',108,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(216,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',109,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(217,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',110,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(218,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',111,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(219,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',112,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(220,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',113,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(221,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',114,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(222,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',115,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(223,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',116,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(224,'samsung-qn85a-neo-qled-4k-smart-tv',117,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(225,'samsung-qn85a-neo-qled-4k-smart-tv',118,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(226,'apple-tv-4k-2nd-generation-digital',119,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(227,'apple-tv-4k-2nd-generation-digital',120,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(228,'roku-ultra-2020-streaming-media-player',121,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(229,'roku-ultra-2020-streaming-media-player',122,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(230,'roku-ultra-2020-streaming-media-player',123,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(231,'roku-ultra-2020-streaming-media-player',124,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(232,'google-chromecast-with-google-tv',125,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(233,'nvidia-shield-tv-pro-digital',126,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(234,'nvidia-shield-tv-pro-digital',127,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(235,'nvidia-shield-tv-pro-digital',128,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(236,'bose-smart-soundbar-900',129,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(237,'bose-smart-soundbar-900',130,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(238,'bose-smart-soundbar-900',131,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(239,'sennheiser-ambeo-soundbar-digital',132,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(240,'sennheiser-ambeo-soundbar-digital',133,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51'),(241,'sennheiser-ambeo-soundbar-digital',134,'Botble\\Ecommerce\\Models\\Product','products','2025-07-28 03:48:51','2025-07-28 03:48:51');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(6,'Nature',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(7,'Vintage',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25'),(8,'Sunglasses',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-07-28 03:48:25','2025-07-28 03:48:25');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/1.jpg','Developer','published','2025-07-28 03:48:33','2025-07-28 03:48:33'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/2.jpg','CO Founder','published','2025-07-28 03:48:33','2025-07-28 03:48:33'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/10.jpg','UI/UX Designer','published','2025-07-28 03:48:33','2025-07-28 03:48:33'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/6.jpg','Bank of America','published','2025-07-28 03:48:33','2025-07-28 03:48:33');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'emily70@jakubowski.net',NULL,NULL,'$2y$12$FrVVBVQCDuIPpr58RiwqlOe.wj/rFrJL1.x.jt/ZL1wfxLOw4d9sW',NULL,'2025-07-28 03:48:14','2025-07-28 03:48:14','Anabelle','Bode','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(4,'SiteContactWidget','footer_primary_sidebar','shofy',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(9,'NewsletterWidget','footer_top_sidebar','shofy',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(12,'BlogSearchWidget','blog_sidebar','shofy',1,'{\"id\":\"BlogSearchWidget\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(13,'BlogAboutMeWidget','blog_sidebar','shofy',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/1.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(14,'BlogPostsWidget','blog_sidebar','shofy',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(15,'BlogCategoriesWidget','blog_sidebar','shofy',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(16,'BlogTagsWidget','blog_sidebar','shofy',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2025-07-28 03:48:50','2025-07-28 03:48:50'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[6,7,10,13,16,30],\"style\":\"slider\",\"display_children\":false}','2025-07-28 03:48:50','2025-07-28 03:48:50');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28 15:48:55
