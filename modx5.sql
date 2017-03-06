-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modx_active_user_locks`
--

DROP TABLE IF EXISTS `modx_active_user_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_user_locks`
--

LOCK TABLES `modx_active_user_locks` WRITE;
/*!40000 ALTER TABLE `modx_active_user_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_active_user_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_user_sessions`
--

DROP TABLE IF EXISTS `modx_active_user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_user_sessions`
--

LOCK TABLES `modx_active_user_sessions` WRITE;
/*!40000 ALTER TABLE `modx_active_user_sessions` DISABLE KEYS */;
INSERT INTO `modx_active_user_sessions` VALUES ('0thhbks32ohgin60df7f1unqd7',1,1488666126,'127.0.0.1');
/*!40000 ALTER TABLE `modx_active_user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_users`
--

LOCK TABLES `modx_active_users` WRITE;
/*!40000 ALTER TABLE `modx_active_users` DISABLE KEYS */;
INSERT INTO `modx_active_users` VALUES ('0thhbks32ohgin60df7f1unqd7',1,'adminko',1488665105,'67',30);
/*!40000 ALTER TABLE `modx_active_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories`
--

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;
INSERT INTO `modx_categories` VALUES (1,'Demo Content'),(2,'Js'),(3,'Manager and Admin'),(4,'Search'),(5,'Navigation'),(6,'Login'),(7,'Forms'),(8,'Content'),(9,'Основной дизайн сайта'),(10,'Main page'),(11,'About page'),(12,'Contacts'),(13,'News one');
/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_document_groups`
--

LOCK TABLES `modx_document_groups` WRITE;
/*!40000 ALTER TABLE `modx_document_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_document_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_documentgroup_names`
--

LOCK TABLES `modx_documentgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_documentgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_documentgroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_event_log`
--

DROP TABLE IF EXISTS `modx_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_event_log`
--

LOCK TABLES `modx_event_log` WRITE;
/*!40000 ALTER TABLE `modx_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_keyword_xref`
--

DROP TABLE IF EXISTS `modx_keyword_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_keyword_xref`
--

LOCK TABLES `modx_keyword_xref` WRITE;
/*!40000 ALTER TABLE `modx_keyword_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_keyword_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_log`
--

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;
INSERT INTO `modx_manager_log` VALUES (1,1488640807,1,'adminko',58,'-','MODX','Logged in'),(2,1488640809,1,'adminko',17,'-','-','Editing settings'),(3,1488640961,1,'adminko',30,'-','-','Saving settings'),(4,1488640963,1,'adminko',17,'-','-','Editing settings'),(5,1488640985,1,'adminko',17,'-','-','Editing settings'),(6,1488640995,1,'adminko',76,'-','-','Element management'),(7,1488641001,1,'adminko',16,'4','MODX startup - Bootstrap','Editing template'),(8,1488641012,1,'adminko',21,'4','MODX startup - Bootstrap','Deleting template'),(9,1488641012,1,'adminko',76,'-','-','Element management'),(10,1488641014,1,'adminko',16,'3','Minimal Template','Editing template'),(11,1488641597,1,'adminko',20,'3','Главная страница','Saving template'),(12,1488641597,1,'adminko',76,'-','-','Element management'),(13,1488642031,1,'adminko',27,'1','MODX CMS Install Success','Editing resource'),(14,1488642071,1,'adminko',5,'1','Главная страница','Saving resource'),(15,1488642072,1,'adminko',3,'1','Главная страница','Viewing data for resource'),(16,1488642075,1,'adminko',27,'1','Главная страница','Editing resource'),(17,1488642104,1,'adminko',76,'-','-','Element management'),(18,1488642107,1,'adminko',16,'3','Главная страница','Editing template'),(19,1488642124,1,'adminko',20,'3','Главная страница','Saving template'),(20,1488642124,1,'adminko',76,'-','-','Element management'),(21,1488642126,1,'adminko',16,'3','Главная страница','Editing template'),(22,1488642298,1,'adminko',76,'-','-','Element management'),(23,1488642323,1,'adminko',20,'3','Главная страница','Saving template'),(24,1488642323,1,'adminko',16,'3','Главная страница','Editing template'),(25,1488642326,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(26,1488642358,1,'adminko',79,'-','HEAD','Saving Chunk (HTML Snippet)'),(27,1488642359,1,'adminko',76,'-','-','Element management'),(28,1488642366,1,'adminko',27,'1','Главная страница','Editing resource'),(29,1488642379,1,'adminko',76,'-','-','Element management'),(30,1488642382,1,'adminko',16,'3','Главная страница','Editing template'),(31,1488642461,1,'adminko',20,'3','Главная страница','Saving template'),(32,1488642461,1,'adminko',76,'-','-','Element management'),(33,1488642464,1,'adminko',16,'3','Главная страница','Editing template'),(34,1488642469,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(35,1488642488,1,'adminko',79,'-','WARNING','Saving Chunk (HTML Snippet)'),(36,1488642489,1,'adminko',76,'-','-','Element management'),(37,1488642526,1,'adminko',20,'3','Главная страница','Saving template'),(38,1488642526,1,'adminko',16,'3','Главная страница','Editing template'),(39,1488642556,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(40,1488642577,1,'adminko',79,'-','HEADER','Saving Chunk (HTML Snippet)'),(41,1488642577,1,'adminko',76,'-','-','Element management'),(42,1488642684,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(43,1488642712,1,'adminko',79,'-','slider','Saving Chunk (HTML Snippet)'),(44,1488642712,1,'adminko',76,'-','-','Element management'),(45,1488642747,1,'adminko',20,'3','Главная страница','Saving template'),(46,1488642747,1,'adminko',16,'3','Главная страница','Editing template'),(47,1488642850,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(48,1488642887,1,'adminko',79,'-','services','Saving Chunk (HTML Snippet)'),(49,1488642887,1,'adminko',76,'-','-','Element management'),(50,1488642905,1,'adminko',20,'3','Главная страница','Saving template'),(51,1488642905,1,'adminko',16,'3','Главная страница','Editing template'),(52,1488642963,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(53,1488643005,1,'adminko',79,'-','about_main','Saving Chunk (HTML Snippet)'),(54,1488643005,1,'adminko',76,'-','-','Element management'),(55,1488643030,1,'adminko',20,'3','Главная страница','Saving template'),(56,1488643030,1,'adminko',16,'3','Главная страница','Editing template'),(57,1488643052,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(58,1488643079,1,'adminko',79,'-','benefits','Saving Chunk (HTML Snippet)'),(59,1488643080,1,'adminko',76,'-','-','Element management'),(60,1488643110,1,'adminko',20,'3','Главная страница','Saving template'),(61,1488643110,1,'adminko',16,'3','Главная страница','Editing template'),(62,1488643132,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(63,1488643150,1,'adminko',79,'-','FOOTER','Saving Chunk (HTML Snippet)'),(64,1488643151,1,'adminko',76,'-','-','Element management'),(65,1488643201,1,'adminko',20,'3','Главная страница','Saving template'),(66,1488643201,1,'adminko',16,'3','Главная страница','Editing template'),(67,1488643206,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(68,1488643322,1,'adminko',79,'-','MODAL','Saving Chunk (HTML Snippet)'),(69,1488643322,1,'adminko',76,'-','-','Element management'),(70,1488643340,1,'adminko',20,'3','Главная страница','Saving template'),(71,1488643340,1,'adminko',16,'3','Главная страница','Editing template'),(72,1488643345,1,'adminko',27,'1','Главная страница','Editing resource'),(73,1488643365,1,'adminko',78,'12','slider','Editing Chunk (HTML Snippet)'),(74,1488643394,1,'adminko',79,'12','slider','Saving Chunk (HTML Snippet)'),(75,1488643394,1,'adminko',76,'-','-','Element management'),(76,1488643433,1,'adminko',76,'-','-','Element management'),(77,1488643437,1,'adminko',19,'-','Новый шаблон','Creating a new template'),(78,1488643546,1,'adminko',20,'-','О нас','Saving template'),(79,1488643546,1,'adminko',16,'5','О нас','Editing template'),(80,1488643561,1,'adminko',20,'5','О нас','Saving template'),(81,1488643561,1,'adminko',16,'5','О нас','Editing template'),(82,1488643585,1,'adminko',20,'5','О нас','Saving template'),(83,1488643585,1,'adminko',16,'5','О нас','Editing template'),(84,1488643633,1,'adminko',20,'5','О нас','Saving template'),(85,1488643634,1,'adminko',16,'5','О нас','Editing template'),(86,1488643636,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(87,1488643704,1,'adminko',79,'-','about_pagetitle','Saving Chunk (HTML Snippet)'),(88,1488643704,1,'adminko',76,'-','-','Element management'),(89,1488643715,1,'adminko',78,'18','about_pagetitle','Editing Chunk (HTML Snippet)'),(90,1488643722,1,'adminko',79,'18','about_pagetitle','Saving Chunk (HTML Snippet)'),(91,1488643722,1,'adminko',76,'-','-','Element management'),(92,1488643732,1,'adminko',20,'5','О нас','Saving template'),(93,1488643732,1,'adminko',16,'5','О нас','Editing template'),(94,1488652794,1,'adminko',20,'5','О нас','Saving template'),(95,1488652797,1,'adminko',16,'5','О нас','Editing template'),(96,1488652833,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(97,1488652877,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(98,1488652923,1,'adminko',79,'-','main_page_about','Saving Chunk (HTML Snippet)'),(99,1488652923,1,'adminko',76,'-','-','Element management'),(100,1488652942,1,'adminko',20,'5','О нас','Saving template'),(101,1488652943,1,'adminko',16,'5','О нас','Editing template'),(102,1488652980,1,'adminko',20,'5','О нас','Saving template'),(103,1488652980,1,'adminko',16,'5','О нас','Editing template'),(104,1488652990,1,'adminko',20,'5','О нас','Saving template'),(105,1488652990,1,'adminko',16,'5','О нас','Editing template'),(106,1488653027,1,'adminko',94,'1','Копия Главная страница','Duplicate resource'),(107,1488653028,1,'adminko',3,'2','Копия Главная страница','Viewing data for resource'),(108,1488653031,1,'adminko',27,'2','Копия Главная страница','Editing resource'),(109,1488653070,1,'adminko',27,'2','Копия Главная страница','Editing resource'),(110,1488653109,1,'adminko',5,'2','About','Saving resource'),(111,1488653111,1,'adminko',3,'2','About','Viewing data for resource'),(112,1488653114,1,'adminko',27,'2','About','Editing resource'),(113,1488653159,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(114,1488653227,1,'adminko',79,'19','main_page_about','Saving Chunk (HTML Snippet)'),(115,1488653227,1,'adminko',76,'-','-','Element management'),(116,1488653386,1,'adminko',5,'2','О нас','Saving resource'),(117,1488653387,1,'adminko',3,'2','О нас','Viewing data for resource'),(118,1488653393,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(119,1488653401,1,'adminko',76,'-','-','Element management'),(120,1488653459,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(121,1488653486,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(122,1488653526,1,'adminko',79,'19','main_page_about','Saving Chunk (HTML Snippet)'),(123,1488653526,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(124,1488653605,1,'adminko',79,'-','about_company','Saving Chunk (HTML Snippet)'),(125,1488653605,1,'adminko',76,'-','-','Element management'),(126,1488653639,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(127,1488653715,1,'adminko',79,'-','about_mission','Saving Chunk (HTML Snippet)'),(128,1488653715,1,'adminko',76,'-','-','Element management'),(129,1488653745,1,'adminko',78,'15','benefits','Editing Chunk (HTML Snippet)'),(130,1488653787,1,'adminko',79,'19','main_page_about','Saving Chunk (HTML Snippet)'),(131,1488653787,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(132,1488653805,1,'adminko',79,'15','BENEFITS','Saving Chunk (HTML Snippet)'),(133,1488653805,1,'adminko',76,'-','-','Element management'),(134,1488653809,1,'adminko',16,'3','Главная страница','Editing template'),(135,1488653826,1,'adminko',20,'3','Главная страница','Saving template'),(136,1488653826,1,'adminko',76,'-','-','Element management'),(137,1488653830,1,'adminko',27,'2','О нас','Editing resource'),(138,1488653848,1,'adminko',27,'1','Главная страница','Editing resource'),(139,1488653857,1,'adminko',5,'1','Главная страница','Saving resource'),(140,1488653857,1,'adminko',27,'1','Главная страница','Editing resource'),(141,1488654450,1,'adminko',79,'19','main_page_about','Saving Chunk (HTML Snippet)'),(142,1488654450,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(143,1488654460,1,'adminko',5,'1','Главная страница','Saving resource'),(144,1488654461,1,'adminko',27,'1','Главная страница','Editing resource'),(145,1488654465,1,'adminko',76,'-','-','Element management'),(146,1488654480,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(147,1488654550,1,'adminko',79,'-','main_page_news','Saving Chunk (HTML Snippet)'),(148,1488654550,1,'adminko',76,'-','-','Element management'),(149,1488654558,1,'adminko',79,'19','main_page_about','Saving Chunk (HTML Snippet)'),(150,1488654558,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(151,1488654567,1,'adminko',27,'1','Главная страница','Editing resource'),(152,1488654592,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(153,1488654629,1,'adminko',27,'1','Главная страница','Editing resource'),(154,1488654635,1,'adminko',76,'-','-','Element management'),(155,1488654640,1,'adminko',16,'3','Главная страница','Editing template'),(156,1488654648,1,'adminko',76,'-','-','Element management'),(157,1488654651,1,'adminko',16,'3','Главная страница','Editing template'),(158,1488654660,1,'adminko',76,'-','-','Element management'),(159,1488654661,1,'adminko',16,'5','О нас','Editing template'),(160,1488654684,1,'adminko',76,'-','-','Element management'),(161,1488654690,1,'adminko',78,'19','main_page_about','Editing Chunk (HTML Snippet)'),(162,1488654730,1,'adminko',79,'19','main_at_page_about','Saving Chunk (HTML Snippet)'),(163,1488654730,1,'adminko',76,'-','-','Element management'),(164,1488654738,1,'adminko',27,'2','О нас','Editing resource'),(165,1488654753,1,'adminko',76,'-','-','Element management'),(166,1488654756,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(167,1488654762,1,'adminko',76,'-','-','Element management'),(168,1488654764,1,'adminko',16,'5','О нас','Editing template'),(169,1488654771,1,'adminko',20,'5','О нас','Saving template'),(170,1488654771,1,'adminko',76,'-','-','Element management'),(171,1488654784,1,'adminko',27,'2','О нас','Editing resource'),(172,1488654819,1,'adminko',76,'-','-','Element management'),(173,1488654826,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(174,1488654832,1,'adminko',76,'-','-','Element management'),(175,1488654835,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(176,1488654844,1,'adminko',76,'-','-','Element management'),(177,1488654850,1,'adminko',78,'22','main_page_news','Editing Chunk (HTML Snippet)'),(178,1488654877,1,'adminko',79,'22','main_page_news','Saving Chunk (HTML Snippet)'),(179,1488654877,1,'adminko',76,'-','-','Element management'),(180,1488654887,1,'adminko',16,'5','О нас','Editing template'),(181,1488655087,1,'adminko',78,'22','main_page_news','Editing Chunk (HTML Snippet)'),(182,1488655096,1,'adminko',76,'-','-','Element management'),(183,1488655099,1,'adminko',16,'3','Главная страница','Editing template'),(184,1488655113,1,'adminko',76,'-','-','Element management'),(185,1488655123,1,'adminko',78,'14','about_main','Editing Chunk (HTML Snippet)'),(186,1488655152,1,'adminko',27,'1','Главная страница','Editing resource'),(187,1488655238,1,'adminko',27,'2','О нас','Editing resource'),(188,1488655323,1,'adminko',76,'-','-','Element management'),(189,1488655330,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(190,1488655404,1,'adminko',79,'-','benefits_about','Saving Chunk (HTML Snippet)'),(191,1488655404,1,'adminko',76,'-','-','Element management'),(192,1488655407,1,'adminko',16,'5','О нас','Editing template'),(193,1488655436,1,'adminko',76,'-','-','Element management'),(194,1488655440,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(195,1488655447,1,'adminko',79,'19','main_at_page_about','Saving Chunk (HTML Snippet)'),(196,1488655447,1,'adminko',76,'-','-','Element management'),(197,1488655464,1,'adminko',27,'2','О нас','Editing resource'),(198,1488655479,1,'adminko',5,'2','О нас','Saving resource'),(199,1488655481,1,'adminko',3,'2','О нас','Viewing data for resource'),(200,1488655510,1,'adminko',27,'1','Главная страница','Editing resource'),(201,1488655517,1,'adminko',76,'-','-','Element management'),(202,1488655544,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(203,1488655569,1,'adminko',79,'19','main_at_page_about','Saving Chunk (HTML Snippet)'),(204,1488655570,1,'adminko',76,'-','-','Element management'),(205,1488655579,1,'adminko',78,'22','main_page_news','Editing Chunk (HTML Snippet)'),(206,1488655586,1,'adminko',27,'2','О нас','Editing resource'),(207,1488655699,1,'adminko',79,'22','news_at_about_page','Saving Chunk (HTML Snippet)'),(208,1488655699,1,'adminko',76,'-','-','Element management'),(209,1488655703,1,'adminko',78,'19','main_at_page_about','Editing Chunk (HTML Snippet)'),(210,1488655711,1,'adminko',79,'19','main_at_page_about','Saving Chunk (HTML Snippet)'),(211,1488655711,1,'adminko',76,'-','-','Element management'),(212,1488655713,1,'adminko',27,'2','О нас','Editing resource'),(213,1488655752,1,'adminko',5,'2','О нас','Saving resource'),(214,1488655753,1,'adminko',3,'2','О нас','Viewing data for resource'),(215,1488655762,1,'adminko',27,'2','О нас','Editing resource'),(216,1488655807,1,'adminko',17,'-','-','Editing settings'),(217,1488655815,1,'adminko',30,'-','-','Saving settings'),(218,1488655818,1,'adminko',27,'2','О нас','Editing resource'),(219,1488655824,1,'adminko',27,'1','Главная страница','Editing resource'),(220,1488655833,1,'adminko',76,'-','-','Element management'),(221,1488655838,1,'adminko',19,'-','Новый шаблон','Creating a new template'),(222,1488655997,1,'adminko',20,'-','Контакты','Saving template'),(223,1488655997,1,'adminko',16,'6','Контакты','Editing template'),(224,1488656018,1,'adminko',20,'6','Контакты','Saving template'),(225,1488656018,1,'adminko',16,'6','Контакты','Editing template'),(226,1488656036,1,'adminko',20,'6','Контакты','Saving template'),(227,1488656036,1,'adminko',16,'6','Контакты','Editing template'),(228,1488657480,1,'adminko',76,'-','-','Element management'),(229,1488657493,1,'adminko',78,'18','about_pagetitle','Editing Chunk (HTML Snippet)'),(230,1488657529,1,'adminko',76,'-','-','Element management'),(231,1488657545,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(232,1488657593,1,'adminko',20,'6','Контакты','Saving template'),(233,1488657593,1,'adminko',16,'6','Контакты','Editing template'),(234,1488657621,1,'adminko',79,'-','contacts_title','Saving Chunk (HTML Snippet)'),(235,1488657621,1,'adminko',76,'-','-','Element management'),(236,1488657665,1,'adminko',20,'6','Контакты','Saving template'),(237,1488657665,1,'adminko',16,'6','Контакты','Editing template'),(238,1488657688,1,'adminko',20,'6','Контакты','Saving template'),(239,1488657688,1,'adminko',16,'6','Контакты','Editing template'),(240,1488657690,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(241,1488657737,1,'adminko',79,'-','map_contacts','Saving Chunk (HTML Snippet)'),(242,1488657737,1,'adminko',76,'-','-','Element management'),(243,1488657778,1,'adminko',20,'6','Контакты','Saving template'),(244,1488657778,1,'adminko',16,'6','Контакты','Editing template'),(245,1488657781,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(246,1488657855,1,'adminko',79,'-','contacts_main','Saving Chunk (HTML Snippet)'),(247,1488657855,1,'adminko',76,'-','-','Element management'),(248,1488657865,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(249,1488657904,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(250,1488657914,1,'adminko',5,'-','Контакты','Saving resource'),(251,1488657915,1,'adminko',3,'3','Контакты','Viewing data for resource'),(252,1488657917,1,'adminko',27,'3','Контакты','Editing resource'),(253,1488657924,1,'adminko',5,'3','Контакты','Saving resource'),(254,1488657925,1,'adminko',3,'3','Контакты','Viewing data for resource'),(255,1488657969,1,'adminko',76,'-','-','Element management'),(256,1488657972,1,'adminko',78,'25','map_contacts','Editing Chunk (HTML Snippet)'),(257,1488658025,1,'adminko',79,'25','map_contacts','Saving Chunk (HTML Snippet)'),(258,1488658025,1,'adminko',76,'-','-','Element management'),(259,1488658033,1,'adminko',27,'3','Контакты','Editing resource'),(260,1488658108,1,'adminko',27,'3','Контакты','Editing resource'),(261,1488658114,1,'adminko',76,'-','-','Element management'),(262,1488658122,1,'adminko',16,'5','О нас','Editing template'),(263,1488658130,1,'adminko',76,'-','-','Element management'),(264,1488658467,1,'adminko',78,'26','contacts_main','Editing Chunk (HTML Snippet)'),(265,1488658580,1,'adminko',79,'26','contacts_main','Saving Chunk (HTML Snippet)'),(266,1488658580,1,'adminko',76,'-','-','Element management'),(267,1488658583,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(268,1488658652,1,'adminko',79,'-','feeadback_block','Saving Chunk (HTML Snippet)'),(269,1488658652,1,'adminko',76,'-','-','Element management'),(270,1488658681,1,'adminko',78,'26','contacts_main','Editing Chunk (HTML Snippet)'),(271,1488658696,1,'adminko',76,'-','-','Element management'),(272,1488658700,1,'adminko',78,'27','feeadback_block','Editing Chunk (HTML Snippet)'),(273,1488658713,1,'adminko',79,'27','feedback_blockk','Saving Chunk (HTML Snippet)'),(274,1488658713,1,'adminko',76,'-','-','Element management'),(275,1488658739,1,'adminko',78,'27','feedback_blockk','Editing Chunk (HTML Snippet)'),(276,1488658742,1,'adminko',79,'27','feedback_block','Saving Chunk (HTML Snippet)'),(277,1488658742,1,'adminko',76,'-','-','Element management'),(278,1488658790,1,'adminko',27,'3','Контакты','Editing resource'),(279,1488660183,1,'adminko',26,'-','-','Refreshing site'),(280,1488660195,1,'adminko',76,'-','-','Element management'),(281,1488660199,1,'adminko',78,'26','contacts_main','Editing Chunk (HTML Snippet)'),(282,1488660212,1,'adminko',76,'-','-','Element management'),(283,1488660214,1,'adminko',78,'24','contacts_title','Editing Chunk (HTML Snippet)'),(284,1488660221,1,'adminko',76,'-','-','Element management'),(285,1488660247,1,'adminko',78,'27','feedback_block','Editing Chunk (HTML Snippet)'),(286,1488660260,1,'adminko',76,'-','-','Element management'),(287,1488660262,1,'adminko',78,'25','map_contacts','Editing Chunk (HTML Snippet)'),(288,1488660284,1,'adminko',76,'-','-','Element management'),(289,1488660290,1,'adminko',78,'9','HEAD','Editing Chunk (HTML Snippet)'),(290,1488660602,1,'adminko',79,'9','HEAD','Saving Chunk (HTML Snippet)'),(291,1488660603,1,'adminko',76,'-','-','Element management'),(292,1488660607,1,'adminko',27,'3','Контакты','Editing resource'),(293,1488662195,1,'adminko',106,'-','-','Viewing Modules'),(294,1488662221,1,'adminko',112,'2','Doc Manager','Execute module'),(295,1488662257,1,'adminko',17,'-','-','Editing settings'),(296,1488662317,1,'adminko',30,'-','-','Saving settings'),(297,1488662418,1,'adminko',76,'-','-','Element management'),(298,1488662422,1,'adminko',19,'-','Новый шаблон','Creating a new template'),(299,1488662509,1,'adminko',20,'-','Новость','Saving template'),(300,1488662510,1,'adminko',16,'7','Новость','Editing template'),(301,1488662541,1,'adminko',20,'7','Новость','Saving template'),(302,1488662541,1,'adminko',16,'7','Новость','Editing template'),(303,1488662560,1,'adminko',20,'7','Новость','Saving template'),(304,1488662560,1,'adminko',16,'7','Новость','Editing template'),(305,1488662605,1,'adminko',20,'7','Новость','Saving template'),(306,1488662605,1,'adminko',16,'7','Новость','Editing template'),(307,1488662609,1,'adminko',76,'-','-','Element management'),(308,1488662612,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(309,1488662720,1,'adminko',79,'-','newsone_pagetitle','Saving Chunk (HTML Snippet)'),(310,1488662720,1,'adminko',76,'-','-','Element management'),(311,1488662725,1,'adminko',20,'7','Новость','Saving template'),(312,1488662725,1,'adminko',16,'7','Новость','Editing template'),(313,1488662972,1,'adminko',20,'7','Новость','Saving template'),(314,1488662972,1,'adminko',16,'7','Новость','Editing template'),(315,1488662983,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(316,1488663000,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(317,1488663122,1,'adminko',76,'-','-','Element management'),(318,1488663127,1,'adminko',16,'7','Новость','Editing template'),(319,1488663205,1,'adminko',20,'7','Новость','Saving template'),(320,1488663205,1,'adminko',76,'-','-','Element management'),(321,1488663217,1,'adminko',16,'7','Новость','Editing template'),(322,1488663232,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(323,1488663403,1,'adminko',79,'-','newsone_main','Saving Chunk (HTML Snippet)'),(324,1488663403,1,'adminko',76,'-','-','Element management'),(325,1488663425,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(326,1488663434,1,'adminko',4,'-','Новый ресурс','Creating a resource'),(327,1488663926,1,'adminko',5,'-','новость 1 ','Saving resource'),(328,1488663928,1,'adminko',3,'4','новость 1 ','Viewing data for resource'),(329,1488663930,1,'adminko',27,'4','новость 1 ','Editing resource'),(330,1488663946,1,'adminko',5,'4','новость 1 ','Saving resource'),(331,1488663947,1,'adminko',3,'4','новость 1 ','Viewing data for resource'),(332,1488664417,1,'adminko',76,'-','-','Element management'),(333,1488664420,1,'adminko',16,'7','Новость','Editing template'),(334,1488664430,1,'adminko',76,'-','-','Element management'),(335,1488664465,1,'adminko',78,'29','newsone_main','Editing Chunk (HTML Snippet)'),(336,1488664477,1,'adminko',76,'-','-','Element management'),(337,1488664483,1,'adminko',16,'7','Новость','Editing template'),(338,1488664493,1,'adminko',76,'-','-','Element management'),(339,1488664503,1,'adminko',78,'28','newsone_pagetitle','Editing Chunk (HTML Snippet)'),(340,1488664578,1,'adminko',76,'-','-','Element management'),(341,1488664581,1,'adminko',78,'28','newsone_pagetitle','Editing Chunk (HTML Snippet)'),(342,1488664585,1,'adminko',76,'-','-','Element management'),(343,1488664587,1,'adminko',78,'29','newsone_main','Editing Chunk (HTML Snippet)'),(344,1488664775,1,'adminko',79,'29','newsone_main','Saving Chunk (HTML Snippet)'),(345,1488664775,1,'adminko',76,'-','-','Element management'),(346,1488664781,1,'adminko',77,'-','Новый чанк','Creating a new Chunk (HTML Snippet)'),(347,1488664812,1,'adminko',79,'-','pagination','Saving Chunk (HTML Snippet)'),(348,1488664812,1,'adminko',76,'-','-','Element management'),(349,1488664838,1,'adminko',78,'30','pagination','Editing Chunk (HTML Snippet)'),(350,1488665104,1,'adminko',79,'30','pagination','Saving Chunk (HTML Snippet)'),(351,1488665104,1,'adminko',76,'-','-','Element management');
/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_users`
--

DROP TABLE IF EXISTS `modx_manager_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_users`
--

LOCK TABLES `modx_manager_users` WRITE;
/*!40000 ALTER TABLE `modx_manager_users` DISABLE KEYS */;
INSERT INTO `modx_manager_users` VALUES (1,'adminko','$P$Bz0IMCFx.rKfgsrGziYTwOphTUvqfT.');
/*!40000 ALTER TABLE `modx_manager_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_member_groups`
--

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_access`
--

DROP TABLE IF EXISTS `modx_membergroup_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_access`
--

LOCK TABLES `modx_membergroup_access` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_membergroup_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_names`
--

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content`
--

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;
INSERT INTO `modx_site_content` VALUES (1,'document','text/html','Главная страница','Главная страница сайта','Главная страница сайта','main','',1,0,0,0,0,'','',1,3,0,1,1,1,1130304721,1,1488654460,0,0,0,1130304721,1,'',0,0,0,0,0,0,0,1),(3,'document','text/html','Контакты','Наши Контакты','Наши контакты','contacts','',1,1488657900,0,0,0,'','',1,6,2,1,1,1,1488657914,1,1488657924,0,0,0,1488657924,1,'',0,0,0,0,0,0,0,1),(4,'document','text/html','новость 1 ','первая новость','','news1','',1,1488663900,0,0,0,'','',1,7,3,1,1,1,1488663926,1,1488663946,0,0,0,1488663946,1,'',0,0,0,0,0,0,0,1),(2,'document','text/html','О нас','Страница о нас','Страница о нас','about','',1,1488653040,0,0,0,'','',1,5,0,1,1,1,1488653027,1,1488655752,0,0,0,1488653040,1,'О нас',0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content_metatags`
--

DROP TABLE IF EXISTS `modx_site_content_metatags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content_metatags`
--

LOCK TABLES `modx_site_content_metatags` WRITE;
/*!40000 ALTER TABLE `modx_site_content_metatags` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_content_metatags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;
INSERT INTO `modx_site_htmlsnippets` VALUES (1,'AjaxSearch_tplInput','Input-Form for AjaxSearch',0,'none',1,0,'[+as.showInputForm:is=`1`:then=`\n<form id=\"[+as.formId+]\" action=\"[+as.formAction+]\" method=\"post\">\n    [+as.showAsId:is=`1`:then=`<input type=\"hidden\" name=\"[+as.asName+]\" value=\"[+as.asId+]\" />`+]\n    <input type=\"hidden\" name=\"advsearch\" value=\"[+as.advSearch+]\" />\n	<div class=\"input-group\">\n		<input id=\"[+as.inputId+]\" class=\"form-control cleardefault\" type=\"text\" name=\"search\" value=\"[+as.inputValue+]\"[+as.inputOptions+] />\n		[+as.liveSearch:is=`0`:then=`\n		<span class=\"input-group-btn\">\n			<button class=\"btn btn-primary\" type=\"submit\"><i class=\"fa fa-search\"></i></button>	\n		</span>\n		`:else=`\n		<div class=\"input-group-addon\"><i class=\"fa fa-search\"></i></div>\n		`+]		\n	</div>\n</form>\n`+]\n[+as.showIntro:is=`1`:then=`\n<p class=\"ajaxSearch_intro\" id=\"ajaxSearch_intro\">[+as.introMessage+]</p>\n`+]',0),(2,'AjaxSearch_tplAjaxGrpResult','Grp Result Tpl for AjaxSearch',0,'none',1,0,'[+as.grpResultsDef:is=`1`:then=`\n<div id=\"[+as.grpResultId+]\" class=\"AS_ajax_grpResult\">\n[+as.headerGrpResult+]\n[+as.listResults+]\n[+as.footerGrpResult+]\n</div>\n`:else=`\n<div class=\"AS_ajax_grpResultName\">[+as.grpResultNameShow:is=`1`:then=`[+as.grpResultName+]`+]\n<span class=\"ajaxSearch_grpResultsDisplayed\">[+as.grpResultsDisplayedText+]</span></div>\n`+]',0),(3,'Comments_tplForm','Comments (Jot) Form-Template',0,'none',1,0,'<a name=\"jf[+jot.link.id+]\"></a>\n<h2>[+form.edit:is=`1`:then=`Edit comment`:else=`Write a comment`+]</h2>\n<div class=\"jot-list\">\n<ul>\n	<li>Required fields are marked with <b>*</b>.</li>\n</ul>\n</div>\n[+form.error:isnt=`0`:then=`\n<div class=\"jot-err\">\n[+form.error:select=`\n&-3=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&-2=Your comment has been rejected.\n&-1=Your comment has been saved, it will first be reviewed before it is published.\n&1=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&2=The security code you entered was incorrect.\n&3=You can only post once each [+jot.postdelay+] seconds.\n&4=Your comment has been rejected.\n&5=[+form.errormsg:ifempty=`You didn\'t enter all the required fields`+]\n`+]\n</div>\n`:strip+]\n[+form.confirm:isnt=`0`:then=`\n<div class=\"jot-cfm\">\n[+form.confirm:select=`\n&1=Your comment has been published.\n&2=Your comment has been saved, it will first be reviewed before it is published.\n&3=Comment saved.\n`+]\n</div>\n`:strip+]\n<form method=\"post\" action=\"[+form.action:esc+]#jf[+jot.link.id+]\" class=\"jot-form\">\n	<fieldset>\n	<input name=\"JotForm\" type=\"hidden\" value=\"[+jot.id+]\" />\n	<input name=\"JotNow\" type=\"hidden\" value=\"[+jot.seed+]\" />\n	<input name=\"parent\" type=\"hidden\" value=\"[+form.field.parent+]\" />\n	\n	[+form.moderation:is=`1`:then=`\n		<div class=\"jot-row\">\n			<b>Created on:</b> [+form.field.createdon:date=`%a %B %d, %Y at %H:%M`+]<br />\n			<b>Created by:</b> [+form.field.createdby:userinfo=`username`:ifempty=`[+jot.guestname+]`+]<br />\n			<b>IP address:</b> [+form.field.secip+]<br />\n			<b>Published:</b> [+form.field.published:select=`0=No&1=Yes`+]<br />\n			[+form.field.publishedon:gt=`0`:then=`\n				<b>Published on:</b> [+form.field.publishedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Published by:</b> [+form.field.publishedby:userinfo=`username`:ifempty=` - `+]<br />\n			`+]\n			[+form.field.editedon:gt=`0`:then=`\n				<b>Edited on:</b> [+form.field.editedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Edited by:</b> [+form.field.editedby:userinfo=`username`:ifempty=` -`+]<br />\n			`+]\n		</div>\n	`:strip+]\n	\n	[+form.guest:is=`1`:then=`\n		<div class=\"form-group\">\n			<label for=\"name[+jot.id+]\">Name:</label>\n			<input tabindex=\"[+jot.seed:math=`?+1`+]\" name=\"name\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.name:esc+]\" id=\"name[+jot.id+]\" />\n		</div>\n		<div class=\"form-group\">\n			<label for=\"email[+jot.id+]\">Email:</label>\n			<input tabindex=\"[+jot.seed:math=`?+2`+]\" name=\"email\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.email:esc+]\" id=\"email[+jot.id+]\"/>\n		</div>\n	`:strip+]\n	<div class=\"form-group\">\n		<label for=\"title[+jot.id+]\">Subject:</label>\n		<input tabindex=\"[+jot.seed:math=`?+3`+]\" name=\"title\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.title:esc+]\" id=\"title[+jot.id+]\"/>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"content[+jot.id+]\">Comment: *</label>\n		<textarea tabindex=\"[+jot.seed:math=`?+4`+]\" name=\"content\" class=\"form-control\" rows=\"8\" id=\"content[+jot.id+]\">[+form.field.content:esc+]</textarea>\n	</div>\n	\n[+jot.captcha:is=`1`:then=`\n	<div style=\"width:150px;margin-top: 5px;margin-bottom: 5px;\">\n		<a href=\"[+jot.link.current:esc+]\">\n			<img src=\"[(modx_manager_url)]includes/veriword.php?rand=[+jot.seed+]\" width=\"148\" height=\"60\" alt=\"If you have trouble reading the code, click on the code itself to generate a new random code.\" style=\"border: 1px solid #003399\" />\n		</a>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"vericode[+jot.id+]\">Help prevent spam - enter security code above:</label>\n		<input type=\"text\" name=\"vericode\" style=\"width:150px;\" size=\"20\" id=\"vericode[+jot.id+]\" />\n	</div>\n`:strip+]\n\n	<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-primary\" type=\"submit\" value=\"[+form.edit:is=`1`:then=`Save Comment`:else=`Post Comment`+]\" />\n	[+form.edit:is=`1`:then=`\n		<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-default\" type=\"submit\" value=\"Cancel\" onclick=\"history.go(-1);return false;\" />\n	`+] \n	</fieldset>\n</form>',0),(4,'AjaxSearch_tplAjaxResults','Results Tpl for AjaxSearch',0,'none',1,0,'<div id=\"search_results\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\n  <div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n        <h3 class=\"modal-title\">Search Results</h3>\n      </div>\n      <div class=\"modal-body\">\n        [+as.noResults:is=`1`:then=`\n		  <div class=\"[+as.noResultClass+]\">\n			[+as.noResultText+]\n		  </div>\n		`:else=`\n		<p class=\"AS_ajax_resultsInfos\">[+as.resultsFoundText+]<span class=\"AS_ajax_resultsDisplayed\">[+as.resultsDisplayedText+]</span></p>\n		[+as.listGrpResults+]\n		`+]\n		[+as.moreResults:is=`1`:then=`\n		  <div class=\"[+as.moreClass+]\">\n			<a href=\"[+as.moreLink+]\" title=\"[+as.moreTitle+]\">[+as.moreText+]</a>\n		  </div>\n		`+]\n		[+as.showCmt:is=`1`:then=`\n		[+as.comment+]\n		`+]\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">Close</button>\n      </div>\n    </div><!-- /.modal-content -->\n  </div><!-- /.modal-dialog -->\n</div><!-- /.modal -->\n<script>$(\'#search_results\').modal(\'show\')</script>',0),(5,'Comments_tplComments','Comments (Jot) Form-Template',0,'none',1,0,'<a name=\"jc[+jot.link.id+][+comment.id+]\"></a>\n<div class=\"panel panel-[+chunk.rowclass:ne=``:then=`primary`:else=`info`+] [+comment.published:is=`0`:then=`jot-row-up`+]\">\n	<div class=\"panel-heading\"><span class=\"jot-subject\">[+comment.title:limit:esc+]<span class=\"pull-right\">\n		[+phx:userinfo=`lastlogin`:ifempty=`9999999999`:lt=`[+comment.createdon+]`:then=`\n		<i class=\"fa fa-fw fa-comment-o\" aria-hidden=\"true\"></i>\n		`:else=`\n		<i class=\"fa fa-fw fa-commenting-o\" aria-hidden=\"true\"></i>\n		`:strip+]\n		</span></span>\n	</div>\n	<div class=\"panel-body\">\n		<div class=\"jot-comment\">\n			<div class=\"jot-user\">\n				[+comment.createdby:isnt=`0`:then=`<b>`+][+comment.createdby:userinfo=`username`:ifempty=`[+comment.custom.name:ifempty=`[+jot.guestname+]`:esc+]`+]\n				[+comment.createdby:isnt=`0`:then=`</b>`+]\n				<br>Posts: [+comment.userpostcount+]\n			</div>\n			<div class=\"jot-content\">\n				<div class=\"pull-right btn-group\">\n					[+jot.moderation.enabled:is=`1`:then=`\n					<a class=\"btn btn-xs btn-danger\" href=\"[+jot.link.delete:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to delete this comment?\')\" title=\"Delete Comment\"><i class=\"fa fa-fw fa-trash\" aria-hidden=\"true\"></i></a> \n					[+comment.published:is=`0`:then=`\n					<a class=\"btn btn-xs btn-info\"href=\"[+jot.link.publish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to publish this comment?\')\" title=\"Publish Comment\"><i class=\"fa fa-fw fa-arrow-up\" aria-hidden=\"true\"></i></a> \n					`+]\n					[+comment.published:is=`1`:then=`\n					<a class=\"btn btn-xs btn-warning\" href=\"[+jot.link.unpublish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to unpublish this comment?\')\" title=\"Unpublish Comment\"><i class=\"fa fa-fw fa-arrow-down\" aria-hidden=\"true\"></i></a> \n					`+]\n					`:strip+]\n					[+jot.user.canedit:is=`1`:and:if=`[+comment.createdby+]`:is=`[+jot.user.id+]`:or:if=`[+jot.moderation.enabled+]`:is=`1`:then=`\n					<a class=\"btn btn-xs btn-success\" href=\"[+jot.link.edit:esc+][+jot.querykey.id+]=[+comment.id+]#jf[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to edit this comment?\')\" title=\"Edit Comment\"><i class=\"fa fa-fw fa-pencil-square-o\" aria-hidden=\"true\"></i></a>\n					`:strip+]\n				</div>\n				<span class=\"jot-poster\"><b>Reply #[+comment.postnumber+] on :</b> [+comment.createdon:date=`%a %B %d, %Y, %H:%M:%S`+]</span>\n				<hr>\n				<div class=\"jot-message\">[+comment.content:wordwrap:esc:nl2br+]</div>\n				<div class=\"jot-extra\">\n					[+comment.editedon:isnt=`0`:then=`\n					<span class=\"jot-editby\">Last Edit: [+comment.editedon:date=`%B %d, %Y, %H:%M:%S`+] by [+comment.editedby:userinfo=`username`:ifempty=` * `+]</span>\n					&nbsp;`+] [+jot.moderation.enabled:is=`1`:then=`<a target=\"_blank\" href=\"http://www.ripe.net/perl/whois?searchtext=[+comment.secip+]\">[+comment.secip+]</a>`+]\n				</div>\n			</div>\n		</div>\n	</div>\n</div>',0),(6,'WebLogin_tplForm','WebLogin Tpl',0,'none',1,0,'<!-- #declare:separator <hr> -->\n<!-- login form section-->\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\">\n	<input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\">\n	<div class=\"form-group\">\n		<label for=\"username\">User:</label>\n		<input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" value=\"[+username+]\">\n	</div>\n	<div class=\"form-group\">\n		<label for=\"password\">Password:</label>\n		<input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" value=\"\">\n	</div>\n	<div class=\"checkbox\">\n		<label>\n			<input type=\"checkbox\" id=\"checkbox_1\" name=\"checkbox_1\" tabindex=\"3\" size=\"1\" value=\"\" [+checkbox+] onclick=\"webLoginCheckRemember()\"> Remember me\n		</label>\n	</div>\n	<input type=\"submit\" value=\"[+logintext+]\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\" id=\"forgotpsswd\" class=\"btn btn-text\">Forget Your Password?</a>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<h4>You\'re already logged in</h4>\nDo you wish to <a href=\"[+action+]\" class=\"button\">[+logouttext+]</a>?\n<hr>\n<!-- Password reminder form section -->\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n	<input type=\"hidden\" name=\"txtpwdrem\" value=\"0\">\n	<h4>It happens to everyone...</h4>\n	<div class=\"form-group\">\n		<label for=\"txtwebemail\">Enter the email address of your account to reset your password:</label>\n		<input type=\"text\" name=\"txtwebemail\" id=\"txtwebemail\">\n	</div>\n	<label>To return to the login form, press the cancel button.</label>\n	<input type=\"submit\" value=\"Submit\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<input type=\"reset\" value=\"Cancel\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" class=\"btn btn-default\">\n</form>\n',0),(7,'AjaxSearch_tplAjaxResult','Result Tpl for AjaxSearch',0,'none',1,0,'<div class=\"[+as.resultClass+]\">\n  <strong><a class=\"[+as.resultLinkClass+]\" href=\"[+as.resultLink+]\" title=\"[+as.longtitle+]\">[+as.pagetitle+]</a></strong>\n[+as.descriptionShow:is=`1`:then=`\n  <small><span class=\"[+as.descriptionClass+]\">[+as.description+]</span></small>\n`+]\n[+as.extractShow:is=`1`:then=`\n  <div class=\"[+as.extractClass+]\"><p>[+as.extract+]</p></div>\n`+]\n[+as.breadcrumbsShow:is=`1`:then=`\n  <span class=\"[+as.breadcrumbsClass+]\">[+as.breadcrumbs+]</span>\n`+]\n</div>',0),(8,'mm_rules','Default ManagerManager rules.',0,'none',2,0,'// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n',0),(9,'HEAD','site\'s head',2,'none',9,0,'<head>\r\n	<base href=\"[(site_url)]\" />\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <title>Vasko personal</title>\r\n    <link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n    <link rel=\"icon\" href=\"assets/templates/vasko/favicon.ico\" type=\"image/x-icon\">\r\n    <!-- Bootstrap -->\r\n    <link href=\"assets/templates/vasko/css/bootstrap.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/animate.min.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/jquery.fancybox.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/owl.carousel.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/bootstrap-select.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/font-awesome.css\" rel=\"stylesheet\">\r\n    <link href=\"assets/templates/vasko/css/style.css\" rel=\"stylesheet\">\r\n    <noscript><link href=\"assets/templates/vasko/css/without-js.css\" rel=\"stylesheet\"></noscript>\r\n    <script src=\"assets/templates/vasko/js/jquery-2.1.1.min.js\"></script>\r\n    <script src=\"assets/templates/vasko/js/bootstrap.min.js\"></script>\r\n    <script src=\"assets/templates/vasko/js/jquery.fancybox.pack.js\"></script>\r\n    <script src=\"assets/templates/vasko/js/jquery.appear.js\"></script>\r\n    <script src=\"assets/templates/vasko/js/owl.carousel.min.js\"></script>\r\n    <script src=\"assets/templates/vasko/js/bootstrap-select.js\"></script>\r\n    <script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp\"></script>\r\n    <script src=\"assets/templates/vasko/js/main.js\"></script>\r\n    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n    <![endif]-->\r\n</head>',0),(10,'WARNING','warning about JS',2,'none',9,0,'<noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->',0),(11,'HEADER','site\'s header',2,'none',9,0,'<header id=\"header\">\r\n  <div class=\"container\">\r\n    <div class=\"col-md-3 col-sm-4 col-xs-12 animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n      <a href=\"#\" class=\"logo\"><img src=\"assets/templates/vasko/images/logo.png\" alt=\"\" /></a>\r\n    </div>\r\n    <div class=\"col-md-9 col-sm-8 col-xs-12\">\r\n      <div class=\"right_head animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\">\r\n        <div class=\"dropdown\">\r\n          <button id=\"dLabel\" class=\"btn btn_lang dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n            <span class=\"filter-option pull-left\">Русский</span>\r\n            <span class=\"caret\"></span>\r\n          </button>\r\n          <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dLabel\">\r\n            <li><a href=\"#\">Русский</a></li>\r\n            <li><a href=\"#\">Английский</a></li>\r\n          </ul>\r\n        </div>\r\n        <span class=\"phone\">+38 (044) 361 79 11</span>\r\n        <a href=\"#call_you\" data-toggle=\"modal\" class=\"btn btn_transp\">перезвонить нам</a>\r\n      </div>\r\n      <nav class=\"main_menu navbar navbar-default animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\" role=\"navigation\">\r\n        <!-- Brand and toggle get grouped for better mobile display -->\r\n        <div class=\"navbar-header\">\r\n          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n            <span class=\"sr-only\">Toggle navigation</span>\r\n            <span class=\"icon-bar\"></span>\r\n            <span class=\"icon-bar\"></span>\r\n            <span class=\"icon-bar\"></span>\r\n          </button>\r\n          <span class=\"navbar-brand\" href=\"#\">Меню</span>\r\n        </div>\r\n        <!-- Collect the nav links, forms, and other content for toggling -->\r\n        <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n          <ul class=\"nav navbar-nav navbar-right\">\r\n            <li><a href=\"#\">Рекрутинговое агентство</a></li>\r\n            <li><a href=\"#\" data-toggle=\"dropdown\">Наш подход</a>\r\n              <ul class=\"dropdown-menu\">\r\n                <li><a href=\"#\">Для клиентов</a></li>\r\n                <li><a href=\"#\">Для соискателей</a></li>\r\n                <li><a href=\"#\">Заполнить техническое задание</a></li>\r\n              </ul>\r\n            </li>\r\n            <li><a href=\"#\">Отзывы</a></li>\r\n            <li><a href=\"#\">Для клиентов</a></li>\r\n            <li><a href=\"#\">Соискатели</a></li>\r\n            <li class=\"last\"><a href=\"#\">Контакты</a></li>\r\n          </ul>\r\n        </div><!-- /.navbar-collapse -->\r\n      </nav>\r\n    </div>\r\n  </div>\r\n</header>',0),(12,'slider','slider on main page',2,'none',10,0,'<section class=\"slider\">\r\n  <div id=\"carousel-fade\" class=\"carousel slide carousel_fade\" data-ride=\"carousel\">\r\n    <div class=\"carousel-inner\" role=\"listbox\">\r\n      <div class=\"item active\">\r\n        <img src=\"assets/templates/vasko/assets/images/slider.png\" alt=\"First slide\">\r\n        <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n          <p><span>Themplate font</span> подбор<br/>\r\n          персонала</p>\r\n          <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n        </div>\r\n      </div>\r\n      <div class=\"item\">\r\n        <img src=\"assets/templates/vasko/assets/images/slider.png\" alt=\"Second slide\">\r\n        <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n          <p><span>Быстрый</span> подбор<br/>\r\n          персонала</p>\r\n          <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n        </div>\r\n      </div>\r\n      <div class=\"item\">\r\n        <img src=\"assets/templates/vasko/assets/images/slider.png\" alt=\"Third slide\">\r\n        <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n          <p><span>Быстрый</span> подбор<br/>\r\n          персонала</p>\r\n          <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div><!-- /.carousel -->\r\n</section>',0),(13,'services','main page services',2,'none',10,0,'<section class=\"services animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      <div class=\"col-sm-12\">\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n          <a href=\"#\">\r\n            <span class=\"icon_item\">\r\n              <img class=\"img\" src=\"assets/templates/vasko/assets/images/icon1.png\" alt=\"\" />\r\n              <img class=\"hover_img\" src=\"assets/templates/vasko/assets/images/icon1h.png\" alt=\"\" />\r\n            </span>\r\n            <span class=\"title\">массовый подбор</span>\r\n            <p>Кадровое агентство «Vasko-personal» оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n          </a>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n          <a href=\"#\">\r\n            <span class=\"icon_item\">\r\n              <img class=\"img\" src=\"assets/templates/vasko/assets/images/icon2.png\" alt=\"\" />\r\n              <img class=\"hover_img\" src=\"assets/templates/vasko/assets/images/icon2h.png\" alt=\"\" />\r\n            </span>\r\n            <span class=\"title\">Рекрутинг</span>\r\n            <p>Кадровое агентство «Vasko-personal» оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n          </a>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n          <a href=\"#\">\r\n            <span class=\"icon_item\">\r\n              <img class=\"img\" src=\"assets/templates/vasko/assets/images/icon3.png\" alt=\"\" />\r\n              <img class=\"hover_img\" src=\"assets/templates/vasko/assets/images/icon3h.png\" alt=\"\" />\r\n            </span>\r\n            <span class=\"title\">Поиск в регионах</span>\r\n            <p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы в бухгалтерии</p>\r\n          </a>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n          <a href=\"#\">\r\n            <span class=\"icon_item\">\r\n              <img class=\"img\" src=\"assets/templates/vasko/assets/images/icon4.png\" alt=\"\" />\r\n              <img class=\"hover_img\" src=\"assets/templates/vasko/assets/images/icon4h.png\" alt=\"\" />\r\n            </span>\r\n            <span class=\"title\">Executive search</span>\r\n            <p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы </p>\r\n          </a>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"col-sm-12\">\r\n      <a href=\"#\" class=\"btn btn_grey\">Заполнить техническое задание</a>\r\n    </div>\r\n  </div>\r\n</section>',0),(14,'about_main','main page info',2,'none',0,0,'<section class=\"about_index\">\r\n  <div class=\"container\">\r\n      <div class=\"col-md-8 col-sm-12 col-xs-12 about_item animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n        <div class=\"row\">\r\n          <div class=\"col-sm-12\">\r\n            <strong class=\"heading\">о компании</strong>\r\n          </div>\r\n          <div class=\"col-md-3 col-sm-3 col-xs-3 img_hold\">\r\n            <img src=\"assets/templates/vasko/assets/images/about_img.png\" alt=\"\" />\r\n          </div>\r\n          <div class=\"col-md-9 col-sm-9 col-xs-9\">\r\n            <div class=\"content\">\r\n              <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n              <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n              </div>\r\n            </div>\r\n            <a href=\"#\" class=\"btn btn_transp\">подробнее</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"col-md-4 col-sm-12 col-xs-12 news_item animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\">\r\n        <strong class=\"heading\">Последние новости</strong>\r\n          <!-- .carousel -->\r\n          <div class=\"owl-carousel-news owl-theme\">\r\n            <a href=\"#\" class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new1.jpg\" alt=\"First slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <span class=\"title_new\">С чего начать поиск работы1</span>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </a>\r\n            <a href=\"#\" class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new1.jpg\" alt=\"Second slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <span class=\"title_new\">С чего начать поиск работы2</span>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </a>\r\n            <a href=\"#\" class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new1.jpg\" alt=\"Third slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <span class=\"title_new\">С чего начать поиск работы3</span>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </a>\r\n          </div>\r\n          <!-- /.carousel -->\r\n        <a href=\"#\" class=\"btn btn_transp\">Все новости</a>\r\n      </div>\r\n  </div>\r\n</section>',0),(15,'BENEFITS','main page benefits',2,'none',9,0,'<section class=\"benefits animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n  <div class=\"container\">\r\n    <div class=\"col-sm-12\">\r\n      <strong class=\"title_section\">Наш подход</strong>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col-sm-12 benefits_block\">\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n          <span class=\"icon_item\"><img src=\"assets/templates/vasko/assets/images/icon5.png\" alt=\"\" /></span>\r\n          <span class=\"title\">Экономия времени</span>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n          <span class=\"icon_item\"><img src=\"assets/templates/vasko/assets/images/icon6.png\" alt=\"\" /></span>\r\n          <span class=\"title\">гарантия</span>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n          <span class=\"icon_item\"><img src=\"assets/templates/vasko/assets/images/icon7.png\" alt=\"\" /></span>\r\n          <span class=\"title\">Профессионализм</span>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n          <span class=\"icon_item\"><img src=\"assets/templates/vasko/assets/images/icon8.png\" alt=\"\" /></span>\r\n          <span class=\"title\">экономия финансов</span>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"col-sm-12 content\">\r\n      <p>Кадровое агентство в Киеве «Vasko-personal» — один из лидеров в своей отралси. Основа нашего успеха заключается<br/>в четкой концентрации на едином направлении - рекрутинге.</p>\r\n    </div>\r\n  </div>\r\n</section>',0),(16,'FOOTER','site\'s footer',2,'none',9,0,'<footer id=\"footer\">\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      <div class=\"col-sm-12\">\r\n        <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n          <div class=\"foot_block\">\r\n            <span class=\"title\">Vasko personal<em class=\"fa fa-plus js_open\"></em></span>\r\n            <ul class=\"foot_menu\">\r\n              <li><a href=\"#\">Рекрутинговое агентство</a></li>\r\n              <li><a href=\"#\">Наш подход</a></li>\r\n              <li><a href=\"#\">Отзывы</a></li>\r\n              <li><a href=\"#\">Клиентам</a></li>\r\n              <li><a href=\"#\">Соискателям</a></li>\r\n            </ul>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n          <div class=\"foot_block\">\r\n            <span class=\"title\">Наши услуги<em class=\"fa fa-plus js_open\"></em></span>\r\n            <ul class=\"foot_menu\">\r\n              <li><a href=\"#\">Заполнить анкету соискателя</a></li>\r\n              <li><a href=\"#\">Заполнить техническое задание на подбор специалистов</a></li>\r\n            </ul>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-6 col-sm-12 col-sx-12\">\r\n          <div class=\"foot_block contact_block\">\r\n            <span class=\"title\">Контакты<em class=\"fa fa-plus js_open\"></em></span>\r\n            <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n              <li>Агентство \"Vasko-personal\"</li>\r\n              <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n              <li>офисный центр \"Вектор\"</li>\r\n              <li>корп. А, офис 505</li>\r\n              <li>ПН - ПТ: 8:00 - 18:00</li>\r\n            </ul>\r\n            <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n              <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n              <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n              <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n              <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n              <li><a href=\"#\" class=\"btn btn_green\">online оплата</a></li>\r\n              <li class=\"socilas\"><a href=\"#\" class=\"fa fa-vk\"></a><a href=\"#\" class=\"fa fa-facebook\"></a><a href=\"#\" class=\"fa fa-twitter\"></a></li>\r\n            </ul>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"row copy\">\r\n      <div class=\"col-sm-12\">\r\n        <div class=\"col-md-6 col-sm-6 col-sx-12\">\r\n          <p>Vasko personal &copy; 2014</p>\r\n        </div>\r\n        <div class=\"col-md-6 col-sm-6 col-sx-12 art\">\r\n          <p>Создание и поддержка сайта — <a href=\"http://artjoker.ua\" target=\"_blank\">Artjoker</a></p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</footer>',0),(17,'MODAL','modal window',2,'none',9,0,'<div id=\"thank\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n  <div class=\"modal-dialog\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n        <span class=\"modal-title\">Спасибо!</span>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        <strong class=\"title\">Ваша заявка успешно отправлена</strong>\r\n        <p>Наши представители связутся с вами в ближайшее время</p>\r\n        <span class=\"btn btn_green\" data-dismiss=\"modal\">OK</span>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div id=\"call_you\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n  <div class=\"modal-dialog\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n        <span class=\"modal-title\">Вам перезвонить?</span>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        <p>Оставьте свой номер телефона, и мы Вам перезвоним</p>\r\n        <div class=\"form\">\r\n          <form class=\"contact js_validate\" method=\"post\" action=\"#\">\r\n            <div class=\"form-group col-xs-12\">\r\n              <label for=\"name\" class=\"label\">Имя*</label>\r\n              <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required />\r\n              <span class=\"success form-control-feedback\"></span>\r\n              <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n            </div>\r\n            <div class=\"form-group col-xs-12\">\r\n              <label for=\"phone\" class=\"label\">Телефон*</label>\r\n              <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required data-validate=\"phone\" />\r\n              <span class=\"success form-control-feedback\"></span>\r\n              <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n            </div>\r\n            <div class=\"form-group col-xs-12\">  \r\n              <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"submit\">Отправить</button>\r\n            </div>\r\n          </form>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>',0),(18,'about_pagetitle','about pagetitle',2,'none',11,0,'<section class=\"pagetitle\">\r\n  <div class=\"container\">\r\n    <div class=\"col-sm-12\">\r\n      <ul class=\"nav animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n        <li class=\"active\"><a href=\"#about\" class=\"title anchor\">О агентстве</a></li>\r\n        <li><a href=\"#mission\" class=\"title anchor\">Миссия и цели</a></li>\r\n        <li><a href=\"#benefits\" class=\"title anchor\">Преимущества</a></li>\r\n        <li><a href=\"#news\" class=\"title anchor\">Новости</a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</section>',0),(19,'main_at_page_about','main part about page',2,'none',11,0,'<div class=\"main wrap_about\">\r\n  <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n    <div class=\"row\">\r\n      {{about_company}}\r\n      {{about_mission}}\r\n	  {{benefits_about}}\r\n      {{news_at_about_page}}\r\n    </div>\r\n  </div>\r\n</div>',0),(22,'news_at_about_page','новости на странице about',2,'none',11,0,'<div id=\"news\" class=\"col-sm-12 news_block\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"heading\">Новости</strong>\r\n  </div>\r\n  <ul class=\"news_list\">\r\n    <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n      <a href=\"#\">\r\n        <img src=\"assets/templates/vasko/assets/images/new2.jpg\" alt=\"First slide\">\r\n        <div class=\"info_news\">\r\n          <span class=\"date\">21/05/2014</span>\r\n          <span class=\"title_new\">С чего начать поиск работы</span>\r\n          <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n        </div>\r\n      </a>\r\n    </li>\r\n    <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n      <a href=\"#\">\r\n        <img src=\"assets/templates/vasko/assets/images/new3.jpg\" alt=\"First slide\">\r\n        <div class=\"info_news\">\r\n          <span class=\"date\">21/05/2014</span>\r\n          <span class=\"title_new\">С чего начать поиск работы</span>\r\n          <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n        </div>\r\n      </a>\r\n    </li>\r\n    <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n      <a href=\"#\">\r\n        <img src=\"assets/templates/vasko/assets/images/new4.jpg\" alt=\"First slide\">\r\n        <div class=\"info_news\">\r\n          <span class=\"date\">21/05/2014</span>\r\n          <span class=\"title_new\">С чего начать поиск работы</span>\r\n          <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n        </div>\r\n      </a>\r\n    </li>\r\n  </ul>\r\n  <a href=\"#\" class=\"btn btn_transp details\">Все новости</a>\r\n</div>',0),(23,'benefits_about','преимущества на странице about',2,'none',11,0,'<div id=\"benefits\" class=\"col-sm-12\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"heading\">Преимущества</strong>\r\n  </div>\r\n  <div class=\"col-sm-12 benefits_block\">\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n      <span class=\"icon_item\"><img src=\"assets/images/icon5.png\" alt=\"\" /></span>\r\n      <span class=\"title\">Экономия времени</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n      <span class=\"icon_item\"><img src=\"assets/images/icon6.png\" alt=\"\" /></span>\r\n      <span class=\"title\">гарантия</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n      <span class=\"icon_item\"><img src=\"assets/images/icon7.png\" alt=\"\" /></span>\r\n      <span class=\"title\">Профессионализм</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n      <span class=\"icon_item\"><img src=\"assets/images/icon8.png\" alt=\"\" /></span>\r\n      <span class=\"title\">экономия финансов</span>\r\n    </div>\r\n  </div>\r\n  <div class=\"col-sm-12 content\">\r\n    <p>Кадровое агентство в Киеве «Vasko-personal» — один из лидеров в своей отралси. Основа нашего успеха заключается<br/>в четкой концентрации на едином направлении - рекрутинге.</p>\r\n  </div>\r\n</div>',0),(24,'contacts_title','title contacts',2,'none',12,0,'<section class=\"pagetitle\">\r\n<div class=\"container\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">Контакты</strong>\r\n  </div>\r\n</div>\r\n</section>',0),(25,'map_contacts','map in contacts',2,'none',12,0,'<section class=\"map animated\" data-animation=\"fadeIn\" data-animation-delay=\"600\">\r\n  <div id=\"map-canvas\"></div>\r\n  <div id=\"address_content\">\r\n    <div class=\"content\">\r\n      <strong>Агентство \"Vasko-personal\"</strong>\r\n      <p>г. Киев, ул. Старокиевская, 10Г</br>\r\n      офисный центр \"Вектор\"</br>\r\n      корп. А, офис 505</br>\r\n      ПН - ПТ: 8:00 - 18:00</p>\r\n    </div>  \r\n  </div>\r\n</section>',0),(26,'contacts_main','main in Contacts',2,'none',12,0,'<div class=\"main contacts\">\r\n  <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n    <div class=\"contact_block col-md-6 col-sm-12 col-xs-12\">\r\n      <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n        <li>Агентство \"Vasko-personal\"</li>\r\n        <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n        <li>офисный центр \"Вектор\"</li>\r\n        <li>корп. А, офис 505</li>\r\n        <li>ПН - ПТ: 8:00 - 18:00</li>\r\n      </ul>\r\n      <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n        <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n        <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n        <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n        <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n      </ul>\r\n    </div>\r\n	  {{feedback_block}}\r\n  </div>\r\n</div>',0),(28,'newsone_pagetitle','title at news page',2,'none',13,0,'<section class=\"pagetitle\">\r\n<div class=\"container\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">Новости</strong>\r\n  </div>\r\n</div>\r\n</section>',0),(29,'newsone_main','main in newsone page',2,'none',13,0,'<div class=\"main news\">\r\n  <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n    <div class=\"row\">\r\n      <div class=\"col-sm-12\">\r\n        <div class=\"col-md-8 col-sm-8 col-xs-12\">\r\n          <strong class=\"title_block\">С чего начать поиск работы</strong>\r\n          <div class=\"img_new\">\r\n            <img src=\"assets/templates/vasko/assets/images/new_img1.jpg\" alt=\"\" />\r\n            <span class=\"date\">22/01/2015</span>\r\n          </div>\r\n          <div class=\"content\">\r\n            <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n            <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n            <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n            </div>\r\n            <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n            <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n            <blockquote>\r\n              Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n            </blockquote>\r\n            <p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n          </div>\r\n          {{pagination}}\r\n        </div>\r\n        <div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n          <strong class=\"heading\">Последние новости</strong>\r\n          <ul class=\"news_list_sidebar\">\r\n            <li class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new2.jpg\" alt=\"First slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <a href=\"#\" class=\"title_new\">С чего начать поиск работы</a>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </li>\r\n            <li class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new3.jpg\" alt=\"First slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <a href=\"#\" class=\"title_new\">С чего начать поиск работы</a>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </li>\r\n            <li class=\"item\">\r\n              <img src=\"assets/templates/vasko/assets/images/new4.jpg\" alt=\"First slide\">\r\n              <div class=\"info_news\">\r\n                <span class=\"date\">21/05/2014</span>\r\n                <a href=\"#\" class=\"title_new\">С чего начать поиск работы</a>\r\n                <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n              </div>\r\n            </li>\r\n          </ul>\r\n          <a href=\"#\" class=\"btn btn_transp details\">Все новости</a>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>',0),(20,'about_company','about company',2,'none',11,0,'<div id=\"about\" class=\"col-sm-12\">\r\n  <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n    <strong class=\"heading\">Кадровое агентство Vasko-personal</strong>\r\n    <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n    <div class=\"quote\"> Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n  </div>\r\n  <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n    <div class=\"owl-carousel owl-theme\">\r\n      <div class=\"item\"><img src=\"assets/templates/vasko/assets/images/slider1.jpg\" alt=\"\"></div>\r\n      <div class=\"item\"><img src=\"assets/templates/vasko/assets/images/slider1.jpg\" alt=\"\"></div>\r\n      <div class=\"item\"><img src=\"assets/templates/vasko/assets/images/slider1.jpg\" alt=\"\"></div>\r\n    </div>\r\n  </div>\r\n</div>',0),(21,'about_mission','about company\'s mission',2,'none',11,0,'<div id=\"mission\" class=\"col-sm-12\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"heading\">Миссия и цели</strong>\r\n  </div>\r\n  <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n    <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. </p>\r\n    <p>И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n  </div>\r\n  <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n    <ul class=\"purp\">\r\n      <li><span>ЭКОНОМИЯ ВРЕМЕНИ.</span>\r\n      Собеседования проводятся только с отобранными,\r\n      по Вашим заявкам, соискателями.</li>  \r\n      <li><span>ГАРАНТИЯ</span>\r\n      закрытия вакансии в требуемый Вами срок.</li>\r\n      <li><span>КАЧЕСТВО.</span>\r\n      Подбором кандидатов занимаются опытные специалисты.</li>\r\n      <li><span>ЭКОНОМИЯ ФИНАНСОВ</span>\r\n      на размещении вакансий в специализированных изданиях и на сайтах.</li>                        \r\n    </ul>\r\n  </div>\r\n</div>',0),(27,'feedback_block','feedback block',2,'none',12,0,'<div class=\"feedback_block form\">\r\n  <div class=\"col-sm-12\">\r\n    <strong class=\"heading\">Обратная связь</strong>\r\n  </div>\r\n  <form class=\"contact js_validate\" method=\"post\" action=\"#\">\r\n    <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n      <label for=\"name\" class=\"label\">Имя*</label>\r\n      <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required />\r\n      <span class=\"success form-control-feedback\"></span>\r\n      <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n    </div>\r\n    <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n      <label for=\"email\" class=\"label\">Email*</label>\r\n      <input type=\"text\" class=\"form-control\" name=\"email\" id=\"email\" required data-validate=\"email\" />\r\n      <span class=\"success form-control-feedback\"></span>\r\n      <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n    </div>\r\n    <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n      <label for=\"phone\" class=\"label\">Телефон*</label>\r\n      <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required data-validate=\"phone\" />\r\n      <span class=\"success form-control-feedback\"></span>\r\n      <div class=\"error_text\"><span>(<em>Пример: +380576588978</em>)</span><i class=\"form-control-feedback\"></i></div>\r\n    </div>\r\n    <div class=\"form-group col-xs-12\">\r\n      <label for=\"message\" class=\"label\">Сообщение*</label>\r\n      <textarea class=\"form-control message\" rows=\"8\" id=\"message\" name=\"message\" required ></textarea>\r\n      <span class=\"success form-control-feedback\"></span>\r\n      <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n    </div>\r\n    <div class=\"form-group col-xs-12\">  \r\n      <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"submit\">Отправить</button>\r\n    </div>\r\n  </form>\r\n</div>',0),(30,'pagination','pagination',2,'none',13,0,'<nav class=\"pages_block\">\r\n  <ul class=\"pagination\">\r\n    <li class=\"prev\">\r\n      <a href=\"#\">\r\n        <span>Предыдущая</span>\r\n      </a>\r\n    </li>\r\n    <li><a href=\"#\">1</a></li>\r\n    <li><span>2</span></li>\r\n    <li><a href=\"#\">3</a></li>\r\n    <li><a href=\"#\">4</a></li>\r\n    <li><a href=\"#\">5</a></li>\r\n    <li class=\"next\">\r\n      <a href=\"#\">\r\n        <span>Следующая</span>\r\n      </a>\r\n    </li>\r\n  </ul>\r\n</nav>',0);
/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_keywords`
--

DROP TABLE IF EXISTS `modx_site_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_keywords`
--

LOCK TABLES `modx_site_keywords` WRITE;
/*!40000 ALTER TABLE `modx_site_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_metatags`
--

DROP TABLE IF EXISTS `modx_site_metatags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_metatags`
--

LOCK TABLES `modx_site_metatags` WRITE;
/*!40000 ALTER TABLE `modx_site_metatags` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_metatags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_module_access`
--

DROP TABLE IF EXISTS `modx_site_module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_module_access`
--

LOCK TABLES `modx_site_module_access` WRITE;
/*!40000 ALTER TABLE `modx_site_module_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_module_depobj`
--

DROP TABLE IF EXISTS `modx_site_module_depobj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_module_depobj`
--

LOCK TABLES `modx_site_module_depobj` WRITE;
/*!40000 ALTER TABLE `modx_site_module_depobj` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_module_depobj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_modules`
--

DROP TABLE IF EXISTS `modx_site_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_modules`
--

LOCK TABLES `modx_site_modules` WRITE;
/*!40000 ALTER TABLE `modx_site_modules` DISABLE KEYS */;
INSERT INTO `modx_site_modules` VALUES (1,'Extras','<strong>0.1.3</strong> first repository for MODX EVO',0,0,3,0,0,'',0,'',0,0,'store435243542tf542t5t',1,'',' \r\n/**\r\n * Extras\r\n * \r\n * first repository for MODX EVO\r\n * \r\n * @category	module\r\n * @version 	0.1.3\r\n * @internal	@properties\r\n * @internal	@guid store435243542tf542t5t	\r\n * @internal	@shareparams 1\r\n * @internal	@dependencies requires files located at /assets/modules/store/\r\n * @internal	@modx_category Manager and Admin\r\n * @internal    @installset base, sample\r\n * @lastupdate  25/11/2016\r\n */\r\n\r\n//AUTHORS: Bumkaka & Dmi3yy \r\ninclude_once(\'../assets/modules/store/core.php\');'),(2,'Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions',0,0,3,0,0,'',0,'',0,0,'docman435243542tf542t5t',1,'',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');
/*!40000 ALTER TABLE `modx_site_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugin_events`
--

LOCK TABLES `modx_site_plugin_events` WRITE;
/*!40000 ALTER TABLE `modx_site_plugin_events` DISABLE KEYS */;
INSERT INTO `modx_site_plugin_events` VALUES (1,25,0),(1,27,0),(1,37,0),(1,39,0),(1,43,0),(1,45,0),(1,49,0),(1,51,0),(1,55,0),(1,57,0),(1,75,0),(1,77,0),(1,206,0),(1,210,0),(1,211,0),(2,80,0),(2,81,0),(2,93,0),(3,28,0),(3,29,0),(3,30,0),(3,31,0),(3,35,0),(3,53,0),(3,205,0),(4,3,0),(4,20,0),(4,85,0),(4,87,0),(4,88,0),(4,91,0),(4,92,0),(5,3,0),(6,23,0),(6,29,0),(6,35,0),(6,41,0),(6,47,0),(6,73,0),(6,88,0),(7,34,0),(7,35,0),(7,36,0),(7,40,0),(7,41,0),(7,42,0),(8,100,0),(9,3,0),(9,13,0),(9,28,0),(9,31,0),(9,92,0);
/*!40000 ALTER TABLE `modx_site_plugin_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugins`
--

LOCK TABLES `modx_site_plugins` WRITE;
/*!40000 ALTER TABLE `modx_site_plugins` DISABLE KEYS */;
INSERT INTO `modx_site_plugins` VALUES (1,'ElementsInTree','<strong>1.5.7</strong> Get access to all Elements and Modules inside Manager sidebar',0,3,0,'require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n',0,'&tabTreeTitle=Tree Tab Title;text;Site Tree;;Custom title of Site Tree tab. &useIcons=Use icons in tabs;list;yes,no;yes;;Icons available in MODX version 1.2 or newer. &treeButtonsInTab=Tree Buttons in tab;list;yes,no;yes;;Move Tree Buttons into Site Tree tab. &unifyFrames=Unify Frames;list;yes,no;yes;;Unify Tree and Main frame style. Right now supports MODxRE2 theme only.',0,''),(2,'Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation',0,3,0,'require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';',0,'',0,''),(3,'ManagerManager','<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.',0,3,0,'\n/**\n * ManagerManager\n *\n * Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.2\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  06/03/2016\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');',0,'&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules',0,''),(4,'TinyMCE4','<strong>4.3.7.2</strong> Javascript WYSIWYG editor',0,3,0,'require MODX_BASE_PATH.\'assets/plugins/tinymce4/plugin.tinymce.php\';',0,'&styleFormats=Custom Style Formats;textarea;Title,cssClass|Title2,cssClass &customParams=Custom Parameters <b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled',0,''),(5,'Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results',0,4,0,'/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}',0,'',1,''),(6,'CodeMirror','<strong>1.4</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12',0,3,0,'\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12\r\n *\r\n * @category    plugin\r\n * @version     1.4\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     modx\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/modxcms/evolution\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @lastupdate  11/04/2016\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');',0,'&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250',0,''),(7,'FileSource','<strong>0.1</strong> Save snippet and plugins to file',0,3,0,'require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';',0,'',0,''),(8,'TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides',0,3,0,'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';',0,'&table_name=Trans table;list;common,russian,dutch,german,czech,utf8,utf8lowercase;utf8lowercase &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;legal characters &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;',0,''),(9,'Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support',0,3,0,'\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv\n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr\n * @lastupdate  31/03/2014\n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n}\n',0,'&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv',1,'');
/*!40000 ALTER TABLE `modx_site_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_snippets`
--

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;
INSERT INTO `modx_site_snippets` VALUES (1,'UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent',0,5,0,'return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';',0,'',''),(2,'Wayfinder','<strong>2.0.5</strong> Completely template-driven and highly flexible menu builder',0,5,0,'return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n',0,'',''),(3,'WebLogin','<strong>1.2</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups',0,6,0,'return require MODX_BASE_PATH.\'assets/snippets/weblogin/snippet.weblogin.php\';\n',0,'&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;',''),(4,'Personalize','<strong>2.1</strong> Checks to see if web- / mgr-users are logged in or not, to display accordingly yesChunk/noChunk',0,6,0,'return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';',0,'',''),(5,'eForm','<strong>1.4.8</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads',0,7,0,'return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';',0,'',''),(6,'AjaxSearch','<strong>1.10.1</strong> Ajax and non-Ajax search that supports results highlighting',0,4,0,'return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';',0,'',''),(7,'WebSignup','<strong>1.1.2</strong> Basic Web User account creation/signup system',0,6,0,'\n/**\n * WebSignup\n * \n * Basic Web User account creation/signup system\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties &tpl=Template;string;\n * @internal	@modx_category Login\n * @internal    @installset base, sample\n * @documentation [+site_url+]assets/snippets/weblogin/docs/websignup.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;',0,'&tpl=Template;string;',''),(8,'phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them',0,8,0,'return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\r\n',0,'',''),(9,'WebChangePwd','<strong>1.1.2</strong> Allows Web User to change their password from the front-end of the website',0,6,0,'\n/**\n * WebChangePwd\n * \n * Allows Web User to change their password from the front-end of the website\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Login\n * @internal    @installset base\n * @documentation [+site_url+]assets/snippets/weblogin/docs/webchangepwd.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n',0,'',''),(10,'Reflect','<strong>2.2</strong> Generates date-based archives using Ditto',0,8,0,'\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n',0,'',''),(11,'MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership',0,6,0,'return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';',0,'',''),(12,'Ditto','<strong>2.1.2</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more',0,8,0,'return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';',0,'',''),(13,'if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.',0,5,0,'return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';',0,'',''),(14,'Jot','<strong>1.1.5</strong> User comments with moderation and email subscription',0,8,0,'\n/**\n * Jot\n * \n * User comments with moderation and email subscription\n *\n * @category 	snippet\n * @version 	1.1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation MODX Wiki http://wiki.modxcms.com/index.php/Jot\n * @reportissues https://github.com/modxcms/evolution\n * @link 		Latest Version http://modx.com/extras/package/jot\n * @link 		Jot Demo Site http://projects.zerobarrier.nl/modx/\n * @author      Armand \"bS\" Pondman apondman@zerobarrier.nl\n * @lastupdate  09/02/2016\n */\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.5\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();',0,'',''),(15,'DocLister','<strong>2.3.0</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView',0,8,0,'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';',0,'',''),(16,'Breadcrumbs','<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation',0,5,0,'return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';',0,'',''),(17,'FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource',0,5,0,'return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';',0,'','');
/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_templates`
--

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;
INSERT INTO `modx_site_templates` VALUES (3,'Главная страница','шаблон главной страницы',0,0,'',0,'<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{HEAD}}\r\n  <body>\r\n  {{WARNING}}\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      {{HEADER}}\r\n	  {{slider}}\r\n	  {{services}}\r\n	  {{about_main}}\r\n	  {{BENEFITS}}\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n    </div><!--page_wrapper end-->\r\n    {{FOOTER}}\r\n	{{MODAL}}\r\n  </body>\r\n</html>',0,1),(5,'О нас','подробная информация о нас',0,0,'',0,'<!DOCTYPE html>\r\n<html lang=\"en\">\r\n	{{HEAD}}\r\n  <body>\r\n    {{WARNING}}\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      {{HEADER}}\r\n	  {{about_pagetitle}}\r\n      {{main_at_page_about}}\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n    </div><!--page_wrapper end-->\r\n    {{FOOTER}}\r\n    {{MODAL}}\r\n  </body>\r\n</html>',0,1),(6,'Контакты','Наши контакты',0,0,'',0,'<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{HEAD}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      {{HEADER}}\r\n      {{contacts_title}}\r\n      {{map_contacts}}\r\n      {{contacts_main}}\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n    </div><!--page_wrapper end-->\r\n    {{FOOTER}}\r\n    {{MODAL}}\r\n  </body>\r\n</html>',0,1),(7,'Новость','Новость',0,0,'',0,'<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{HEAD}}\r\n  <body>\r\n   {{WARNING}}\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      {{HEADER}}\r\n      {{newsone_pagetitle}}\r\n      {{newsone_main}}\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n    </div><!--page_wrapper end-->\r\n    {{FOOTER}}\r\n    \r\n    {{MODAL}}\r\n  </body>\r\n</html>',0,1);
/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_access`
--

LOCK TABLES `modx_site_tmplvar_access` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvars`
--

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvars` VALUES (1,'text','documentTags','Tags','Space delimited tags for the current document',0,1,0,'',0,'','',''),(2,'richtext','blogContent','blogContent','RTE for the new blog entries',0,1,0,'',0,'RichText','&w=383px&h=450px&edt=TinyMCE',''),(3,'text','loginName','loginName','Conditional name for the Login menu item',0,1,0,'',0,'','','@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';');
/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_eventnames`
--

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;
INSERT INTO `modx_system_eventnames` VALUES (1,'OnDocPublished',5,''),(2,'OnDocUnPublished',5,''),(3,'OnWebPagePrerender',5,''),(4,'OnWebLogin',3,''),(5,'OnBeforeWebLogout',3,''),(6,'OnWebLogout',3,''),(7,'OnWebSaveUser',3,''),(8,'OnWebDeleteUser',3,''),(9,'OnWebChangePassword',3,''),(10,'OnWebCreateGroup',3,''),(11,'OnManagerLogin',2,''),(12,'OnBeforeManagerLogout',2,''),(13,'OnManagerLogout',2,''),(14,'OnManagerSaveUser',2,''),(15,'OnManagerDeleteUser',2,''),(16,'OnManagerChangePassword',2,''),(17,'OnManagerCreateGroup',2,''),(18,'OnBeforeCacheUpdate',4,''),(19,'OnCacheUpdate',4,''),(107,'OnMakePageCacheKey',4,''),(20,'OnLoadWebPageCache',4,''),(21,'OnBeforeSaveWebPageCache',4,''),(22,'OnChunkFormPrerender',1,'Chunks'),(23,'OnChunkFormRender',1,'Chunks'),(24,'OnBeforeChunkFormSave',1,'Chunks'),(25,'OnChunkFormSave',1,'Chunks'),(26,'OnBeforeChunkFormDelete',1,'Chunks'),(27,'OnChunkFormDelete',1,'Chunks'),(28,'OnDocFormPrerender',1,'Documents'),(29,'OnDocFormRender',1,'Documents'),(30,'OnBeforeDocFormSave',1,'Documents'),(31,'OnDocFormSave',1,'Documents'),(32,'OnBeforeDocFormDelete',1,'Documents'),(33,'OnDocFormDelete',1,'Documents'),(1033,'OnDocFormUnDelete',1,'Documents'),(1034,'onBeforeMoveDocument',1,'Documents'),(1035,'onAfterMoveDocument',1,'Documents'),(34,'OnPluginFormPrerender',1,'Plugins'),(35,'OnPluginFormRender',1,'Plugins'),(36,'OnBeforePluginFormSave',1,'Plugins'),(37,'OnPluginFormSave',1,'Plugins'),(38,'OnBeforePluginFormDelete',1,'Plugins'),(39,'OnPluginFormDelete',1,'Plugins'),(40,'OnSnipFormPrerender',1,'Snippets'),(41,'OnSnipFormRender',1,'Snippets'),(42,'OnBeforeSnipFormSave',1,'Snippets'),(43,'OnSnipFormSave',1,'Snippets'),(44,'OnBeforeSnipFormDelete',1,'Snippets'),(45,'OnSnipFormDelete',1,'Snippets'),(46,'OnTempFormPrerender',1,'Templates'),(47,'OnTempFormRender',1,'Templates'),(48,'OnBeforeTempFormSave',1,'Templates'),(49,'OnTempFormSave',1,'Templates'),(50,'OnBeforeTempFormDelete',1,'Templates'),(51,'OnTempFormDelete',1,'Templates'),(52,'OnTVFormPrerender',1,'Template Variables'),(53,'OnTVFormRender',1,'Template Variables'),(54,'OnBeforeTVFormSave',1,'Template Variables'),(55,'OnTVFormSave',1,'Template Variables'),(56,'OnBeforeTVFormDelete',1,'Template Variables'),(57,'OnTVFormDelete',1,'Template Variables'),(58,'OnUserFormPrerender',1,'Users'),(59,'OnUserFormRender',1,'Users'),(60,'OnBeforeUserFormSave',1,'Users'),(61,'OnUserFormSave',1,'Users'),(62,'OnBeforeUserFormDelete',1,'Users'),(63,'OnUserFormDelete',1,'Users'),(64,'OnWUsrFormPrerender',1,'Web Users'),(65,'OnWUsrFormRender',1,'Web Users'),(66,'OnBeforeWUsrFormSave',1,'Web Users'),(67,'OnWUsrFormSave',1,'Web Users'),(68,'OnBeforeWUsrFormDelete',1,'Web Users'),(69,'OnWUsrFormDelete',1,'Web Users'),(70,'OnSiteRefresh',1,''),(71,'OnFileManagerUpload',1,''),(72,'OnModFormPrerender',1,'Modules'),(73,'OnModFormRender',1,'Modules'),(74,'OnBeforeModFormDelete',1,'Modules'),(75,'OnModFormDelete',1,'Modules'),(76,'OnBeforeModFormSave',1,'Modules'),(77,'OnModFormSave',1,'Modules'),(78,'OnBeforeWebLogin',3,''),(79,'OnWebAuthentication',3,''),(80,'OnBeforeManagerLogin',2,''),(81,'OnManagerAuthentication',2,''),(82,'OnSiteSettingsRender',1,'System Settings'),(83,'OnFriendlyURLSettingsRender',1,'System Settings'),(84,'OnUserSettingsRender',1,'System Settings'),(85,'OnInterfaceSettingsRender',1,'System Settings'),(86,'OnMiscSettingsRender',1,'System Settings'),(87,'OnRichTextEditorRegister',1,'RichText Editor'),(88,'OnRichTextEditorInit',1,'RichText Editor'),(89,'OnManagerPageInit',2,''),(90,'OnWebPageInit',5,''),(101,'OnLoadDocumentObject',5,''),(104,'OnBeforeLoadDocumentObject',5,''),(105,'OnAfterLoadDocumentObject',5,''),(91,'OnLoadWebDocument',5,''),(92,'OnParseDocument',5,''),(106,'OnParseProperties',5,''),(108,'OnBeforeParseParams',5,''),(93,'OnManagerLoginFormRender',2,''),(94,'OnWebPageComplete',5,''),(95,'OnLogPageHit',5,''),(96,'OnBeforeManagerPageInit',2,''),(97,'OnBeforeEmptyTrash',1,'Documents'),(98,'OnEmptyTrash',1,'Documents'),(99,'OnManagerLoginFormPrerender',2,''),(100,'OnStripAlias',1,'Documents'),(102,'OnMakeDocUrl',5,''),(103,'OnBeforeLoadExtension',5,''),(200,'OnCreateDocGroup',1,'Documents'),(201,'OnManagerWelcomePrerender',2,''),(202,'OnManagerWelcomeHome',2,''),(203,'OnManagerWelcomeRender',2,''),(204,'OnBeforeDocDuplicate',1,'Documents'),(205,'OnDocDuplicate',1,'Documents'),(206,'OnManagerMainFrameHeaderHTMLBlock',2,''),(207,'OnManagerPreFrameLoader',2,''),(208,'OnManagerFrameLoader',2,''),(209,'OnManagerTreeInit',2,''),(210,'OnManagerTreePrerender',2,''),(211,'OnManagerTreeRender',2,''),(212,'OnManagerNodePrerender',2,''),(213,'OnManagerNodeRender',2,''),(214,'OnManagerMenuPrerender',2,''),(215,'OnManagerTopPrerender',2,''),(224,'OnDocFormTemplateRender',1,'Documents'),(999,'OnPageUnauthorized',1,''),(1000,'OnPageNotFound',1,''),(1001,'OnFileBrowserUpload',1,'File Browser Events');
/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_settings`
--

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;
INSERT INTO `modx_system_settings` VALUES ('settings_version','1.2.1'),('manager_theme','MODxRE2'),('server_offset_time','0'),('manager_language','russian-UTF8'),('modx_charset','UTF-8'),('site_name','Vasko Personal'),('site_start','1'),('error_page','1'),('unauthorized_page','1'),('site_status','1'),('auto_template_logic','parent'),('default_template','3'),('old_template','3'),('cache_type','1'),('use_udperms','1'),('udperms_allowroot','0'),('failed_login_attempts','3'),('blocked_minutes','60'),('use_captcha','0'),('emailsender',''),('use_editor','1'),('use_browser','1'),('fe_editor_lang','russian-UTF8'),('session.cookie.lifetime','604800'),('theme_refresher',''),('site_id','58badb1e79d3f'),('site_unavailable_page',''),('reload_site_unavailable',''),('site_unavailable_message','В настоящее время сайт недоступен.'),('siteunavailable_message_default','В настоящее время сайт недоступен.'),('enable_filter','0'),('publish_default','0'),('cache_default','1'),('search_default','1'),('auto_menuindex','1'),('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),('docid_incrmnt_method','0'),('minifyphp_incache','0'),('server_protocol','http'),('rss_url_news','http://feeds.feedburner.com/modx-announce'),('track_visitors','0'),('top_howmany','10'),('friendly_urls','1'),('xhtml_urls','1'),('friendly_url_prefix',''),('friendly_url_suffix','.html'),('make_folders','0'),('seostrict','0'),('aliaslistingfolder','0'),('friendly_alias_urls','1'),('use_alias_path','1'),('allow_duplicate_alias','0'),('automatic_alias','1'),('email_method','mail'),('smtp_auth','0'),('smtp_secure','none'),('smtp_host','smtp.example.com'),('smtp_port','25'),('smtp_username','you@example.com'),('reload_emailsubject',''),('emailsubject','Данные для авторизации'),('emailsubject_default','Данные для авторизации'),('reload_signupemail_message',''),('signupemail_message','Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации в системе управления сайтом [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),('system_email_signup_default','Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации в системе управления сайтом [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),('reload_websignupemail_message',''),('websignupemail_message','Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),('system_email_websignup_default','Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),('reload_system_email_webreminder_message',''),('webpwdreminder_message','Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),('system_email_webreminder_default','Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),('warning_visibility','1'),('tree_page_click','27'),('use_breadcrumbs','0'),('remember_last_tab','0'),('resource_tree_node_name','pagetitle'),('session_timeout','15'),('tree_show_protected','0'),('show_meta','0'),('datepicker_offset','-10'),('datetime_format','dd-mm-YYYY'),('number_of_logs','100'),('mail_check_timeperiod','60'),('number_of_messages','40'),('number_of_results','30'),('which_editor','TinyMCE4'),('editor_css_path',''),('tinymce4_theme','custom'),('tinymce4_skin','lightgray'),('tinymce4_template_docs',''),('tinymce4_template_chunks',''),('tinymce4_entermode','p'),('tinymce4_element_format','xhtml'),('tinymce4_schema','html5'),('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code'),('tinymce4_custom_buttons3',''),('tinymce4_custom_buttons4',''),('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),('allow_eval','with_scan'),('safe_functions_at_eval','time,date,strtotime,strftime'),('check_files_onlogin','index.php\r\n.htaccess\r\nmanager/index.php\r\nmanager/includes/config.inc.php'),('validate_referer','1'),('rss_url_security','http://feeds.feedburner.com/modxsecurity'),('error_reporting','1'),('send_errormail','0'),('pwd_hash_algo','UNCRYPT'),('enable_bindings','1'),('reload_captcha_words',''),('captcha_words','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),('filemanager_path','/var/www/html/Modx/'),('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg'),('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg'),('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),('upload_flash','fla,flv,swf'),('upload_maxsize','5000000'),('new_file_permissions','0644'),('new_folder_permissions','0755'),('which_browser','mcpuk'),('rb_webuser','0'),('rb_base_dir','/var/www/html/Modx/assets/'),('rb_base_url','assets/'),('clean_uploaded_filename','1'),('strip_image_paths','1'),('maxImageWidth','1600'),('maxImageHeight','1200'),('thumbWidth','150'),('thumbHeight','150'),('thumbsDir','.thumbs'),('jpegQuality','90'),('denyZipDownload','0'),('denyExtensionRename','0'),('showHiddenFiles','0'),('lang_code','ru'),('sys_files_checksum','a:4:{s:28:\"/var/www/html/Modx/index.php\";s:32:\"ed8dd02021b28b9227b44d5a76ef7440\";s:28:\"/var/www/html/Modx/.htaccess\";s:32:\"bdb6406c23ca2ca7c5735de90b5850af\";s:36:\"/var/www/html/Modx/manager/index.php\";s:32:\"afb412c538f339b214dfa2218d0e1349\";s:50:\"/var/www/html/Modx/manager/includes/config.inc.php\";s:32:\"1653ea00810578471109f8c95346efa2\";}');
/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_attributes`
--

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;
INSERT INTO `modx_user_attributes` VALUES (1,1,'Default admin account',1,'','','',0,0,0,1,0,1488640807,0,'0thhbks32ohgin60df7f1unqd7',0,0,'','','','','','','','');
/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_messages`
--

LOCK TABLES `modx_user_messages` WRITE;
/*!40000 ALTER TABLE `modx_user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_roles`
--

DROP TABLE IF EXISTS `modx_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_roles`
--

LOCK TABLES `modx_user_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_roles` DISABLE KEYS */;
INSERT INTO `modx_user_roles` VALUES (2,'Editor','Limited to managing content',1,1,1,1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,1,1,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,1,1,1),(3,'Publisher','Editor with expanded permissions including manage users, update Elements and site settings',1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,0,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,0,1,0,0,1,1,1),(1,'Administrator','Site administrators have full access to all functions',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `modx_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_settings`
--

LOCK TABLES `modx_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_web_groups`
--

DROP TABLE IF EXISTS `modx_web_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_web_groups`
--

LOCK TABLES `modx_web_groups` WRITE;
/*!40000 ALTER TABLE `modx_web_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_web_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_web_user_attributes`
--

DROP TABLE IF EXISTS `modx_web_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_web_user_attributes`
--

LOCK TABLES `modx_web_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_web_user_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_web_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_web_user_settings`
--

DROP TABLE IF EXISTS `modx_web_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_web_user_settings`
--

LOCK TABLES `modx_web_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_web_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_web_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_web_users`
--

DROP TABLE IF EXISTS `modx_web_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_web_users`
--

LOCK TABLES `modx_web_users` WRITE;
/*!40000 ALTER TABLE `modx_web_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_web_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_webgroup_access`
--

DROP TABLE IF EXISTS `modx_webgroup_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_webgroup_access`
--

LOCK TABLES `modx_webgroup_access` WRITE;
/*!40000 ALTER TABLE `modx_webgroup_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_webgroup_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_webgroup_names`
--

DROP TABLE IF EXISTS `modx_webgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_webgroup_names`
--

LOCK TABLES `modx_webgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_webgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_webgroup_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-06  7:36:03
