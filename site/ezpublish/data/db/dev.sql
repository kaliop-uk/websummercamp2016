-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: mysql    Database: ezdeploy
-- ------------------------------------------------------
-- Server version	5.6.32-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
INSERT INTO `ezbinaryfile` VALUES (441,0,'61fbe9b6.png','image/png','eZ_logo_color_black_RGB_150dpi.png',1);
INSERT INTO `ezbinaryfile` VALUES (446,0,'03d7d146.png','image/png','eZ_logo_color_white_RGB_150dpi.png',1);
INSERT INTO `ezbinaryfile` VALUES (502,0,'d58593ff.pdf','application/pdf','20130116_whitepaper_ezpublish5 light.pdf',1);
INSERT INTO `ezbinaryfile` VALUES (562,6,'0de8dd10.mp4','video/mp4','ezshortintro.mp4',1);
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0);
INSERT INTO `ezcobj_state` VALUES (2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',2);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked');
INSERT INTO `ezcobj_state_language` VALUES (2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (4,1);
INSERT INTO `ezcobj_state_link` VALUES (10,1);
INSERT INTO `ezcobj_state_link` VALUES (11,1);
INSERT INTO `ezcobj_state_link` VALUES (12,1);
INSERT INTO `ezcobj_state_link` VALUES (13,1);
INSERT INTO `ezcobj_state_link` VALUES (14,1);
INSERT INTO `ezcobj_state_link` VALUES (41,1);
INSERT INTO `ezcobj_state_link` VALUES (42,1);
INSERT INTO `ezcobj_state_link` VALUES (45,1);
INSERT INTO `ezcobj_state_link` VALUES (49,1);
INSERT INTO `ezcobj_state_link` VALUES (50,1);
INSERT INTO `ezcobj_state_link` VALUES (51,1);
INSERT INTO `ezcobj_state_link` VALUES (52,1);
INSERT INTO `ezcobj_state_link` VALUES (54,1);
INSERT INTO `ezcobj_state_link` VALUES (56,1);
INSERT INTO `ezcobj_state_link` VALUES (57,1);
INSERT INTO `ezcobj_state_link` VALUES (58,1);
INSERT INTO `ezcobj_state_link` VALUES (59,1);
INSERT INTO `ezcobj_state_link` VALUES (60,1);
INSERT INTO `ezcobj_state_link` VALUES (61,1);
INSERT INTO `ezcobj_state_link` VALUES (62,1);
INSERT INTO `ezcobj_state_link` VALUES (63,1);
INSERT INTO `ezcobj_state_link` VALUES (64,1);
INSERT INTO `ezcobj_state_link` VALUES (65,1);
INSERT INTO `ezcobj_state_link` VALUES (66,1);
INSERT INTO `ezcobj_state_link` VALUES (67,1);
INSERT INTO `ezcobj_state_link` VALUES (68,1);
INSERT INTO `ezcobj_state_link` VALUES (69,1);
INSERT INTO `ezcobj_state_link` VALUES (70,1);
INSERT INTO `ezcobj_state_link` VALUES (71,1);
INSERT INTO `ezcobj_state_link` VALUES (72,1);
INSERT INTO `ezcobj_state_link` VALUES (73,1);
INSERT INTO `ezcobj_state_link` VALUES (74,1);
INSERT INTO `ezcobj_state_link` VALUES (75,1);
INSERT INTO `ezcobj_state_link` VALUES (76,1);
INSERT INTO `ezcobj_state_link` VALUES (77,1);
INSERT INTO `ezcobj_state_link` VALUES (78,1);
INSERT INTO `ezcobj_state_link` VALUES (79,1);
INSERT INTO `ezcobj_state_link` VALUES (80,1);
INSERT INTO `ezcobj_state_link` VALUES (81,1);
INSERT INTO `ezcobj_state_link` VALUES (82,1);
INSERT INTO `ezcobj_state_link` VALUES (83,1);
INSERT INTO `ezcobj_state_link` VALUES (84,1);
INSERT INTO `ezcobj_state_link` VALUES (85,1);
INSERT INTO `ezcobj_state_link` VALUES (86,1);
INSERT INTO `ezcobj_state_link` VALUES (87,1);
INSERT INTO `ezcobj_state_link` VALUES (88,1);
INSERT INTO `ezcobj_state_link` VALUES (89,1);
INSERT INTO `ezcobj_state_link` VALUES (90,1);
INSERT INTO `ezcobj_state_link` VALUES (91,1);
INSERT INTO `ezcobj_state_link` VALUES (92,1);
INSERT INTO `ezcobj_state_link` VALUES (93,1);
INSERT INTO `ezcobj_state_link` VALUES (94,1);
INSERT INTO `ezcobj_state_link` VALUES (95,1);
INSERT INTO `ezcobj_state_link` VALUES (96,1);
INSERT INTO `ezcobj_state_link` VALUES (97,1);
INSERT INTO `ezcobj_state_link` VALUES (98,1);
INSERT INTO `ezcobj_state_link` VALUES (99,1);
INSERT INTO `ezcobj_state_link` VALUES (100,1);
INSERT INTO `ezcobj_state_link` VALUES (101,1);
INSERT INTO `ezcobj_state_link` VALUES (102,1);
INSERT INTO `ezcobj_state_link` VALUES (103,1);
INSERT INTO `ezcobj_state_link` VALUES (104,1);
INSERT INTO `ezcobj_state_link` VALUES (105,1);
INSERT INTO `ezcobj_state_link` VALUES (106,1);
INSERT INTO `ezcobj_state_link` VALUES (107,1);
INSERT INTO `ezcobj_state_link` VALUES (108,1);
INSERT INTO `ezcobj_state_link` VALUES (109,1);
INSERT INTO `ezcobj_state_link` VALUES (110,1);
INSERT INTO `ezcobj_state_link` VALUES (111,1);
INSERT INTO `ezcobj_state_link` VALUES (112,1);
INSERT INTO `ezcobj_state_link` VALUES (113,1);
INSERT INTO `ezcobj_state_link` VALUES (114,1);
INSERT INTO `ezcobj_state_link` VALUES (115,1);
INSERT INTO `ezcobj_state_link` VALUES (116,1);
INSERT INTO `ezcobj_state_link` VALUES (117,1);
INSERT INTO `ezcobj_state_link` VALUES (118,1);
INSERT INTO `ezcobj_state_link` VALUES (119,1);
INSERT INTO `ezcobj_state_link` VALUES (120,1);
INSERT INTO `ezcobj_state_link` VALUES (121,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2',NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Folder\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900',NULL,'a:2:{s:6:\"eng-GB\";s:19:\"Common ini settings\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92',NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Template look\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
INSERT INTO `ezcontentclass` VALUES (0,'<short_title|title>',1472204176,14,16,'article',2,1,3,1472204176,14,'c15b600eb9198b1924063b5a68758232','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204176,14,17,'blog',2,1,3,1472204176,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Blog\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204176,14,18,'blog_post',2,1,3,1472204176,14,'7ecb961056b7cbb30f22a91357e0a007','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Blog post\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204176,14,19,'call_to_action',2,1,3,1472204176,14,'5ef96fd48e645dbdeb803014fe7af178','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:14:\"Call To Action\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204177,14,20,'call_to_action_feedback',2,0,3,1472204177,14,'d88d2cd52ba6c6b1383f661a959c995f','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:23:\"Call To Action Feedback\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,21,'product',2,0,3,1472204177,14,'77f3ede996a3a39c7159cc69189c5307','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Product\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,22,'feedback_form',2,1,3,1472204177,14,'df0257b8fc55f6b8ab179d6fb915455e','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:13:\"Feedback form\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,23,'landing_page',2,1,3,1472204177,14,'e36c458e3e4a81298a0945f53a2c81f4','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Landing Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204177,14,24,'wiki_page',2,1,3,1472204177,14,'d4a05eed0402e4d70fedfda2023f1aa2','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Wiki Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,25,'poll',2,0,3,1472204177,14,'232937a3a2eacbbf24e2601aebe16522','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Poll\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,26,'file',2,0,3,1472204177,14,'637d58bfddf164627bdfd265733280a0','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,27,'image',2,0,3,1472204177,14,'f6df12aa74e36230eb675f364fccd25a','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,28,'link',2,0,3,1472204177,14,'74ec6507063150bc813549b22534ad48','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,29,'gallery',2,1,3,1472204177,14,'6a320cdc3e274841b82fcd63a86f80d1','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Gallery\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,30,'forum',2,1,3,1472204177,14,'b241f924b96b267153f5f55904e0675a','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Forum\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1472204177,14,31,'forum_topic',2,1,3,1472204177,14,'71f99c516743a33562c3893ef98c9b60','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum topic\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<subject>',1472204177,14,32,'forum_reply',2,0,3,1472204177,14,'80ee42a66b2b8b6ee15f5c5f4b361562','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum reply\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<short_title|title>',1472204177,14,33,'event',2,0,3,1472204177,14,'563cb5edc2adfd2b240efa456c81525f','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Event\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204177,14,34,'event_calendar',2,1,3,1472204177,14,'020cbeb6382c8c89dcec2cd406fb47a8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Event calendar\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,35,'banner',2,0,3,1472204177,14,'9cb558e25fd946246bbb32950c00228e','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Banner\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<title>',1472204177,14,36,'forums',2,1,3,1472204177,14,'60a921e54c1efbb9456bd2283d9e66cb','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Forums\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,37,'video',2,0,3,1472204177,14,'b38417e8194fb8f893ca918d297b4fa8','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Video\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,38,'place',2,0,3,1472204177,14,'861f02510226434178f3859242fe40d7','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Place\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
INSERT INTO `ezcontentclass` VALUES (0,'<name>',1472204177,14,39,'place_list',2,1,3,1472204177,14,'e3461a7a3d2b6c0d291be6becfb6127e','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Place list\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Display sub items\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Index Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Default Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Debug Output\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Debug By IP\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Debug IP List\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Debug Redirection\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"View Caching\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:14:\"Template Cache\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Template Compile\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Small Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Image Medium Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Large Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Meta data\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Sitestyle\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Site URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',181,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,255,0,0,0,'','','','','','ezstring',182,'short_title',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',183,'intro',0,1,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',184,'body',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',185,'subscriber_teaser',0,0,0,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:35:\"Teaser displayed for non subscriber\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Subscriber teaser\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezimage',186,'image',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',187,'caption',0,0,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',188,'location',0,0,1,8,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezauthor',189,'author',0,0,0,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',190,'publish_date',0,0,1,10,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Publish date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',191,'star_rating',0,0,0,11,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',192,'tags',0,0,1,12,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',195,'tags',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:16:\"Publication date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',199,'tags',0,0,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',200,'title',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',201,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',202,'feedback_page',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Feedback Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',203,'first_name',1,1,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"First Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',204,'last_name',1,1,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Last Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezemail',205,'email',1,1,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezcountry',206,'country',1,0,1,7,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Country\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,10,0,0,0,'','','','','','eztext',207,'comment',1,1,1,8,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',208,'action_button_label',0,0,1,9,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:19:\"Action Button Label\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',209,'title',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',20,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',210,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezstring',211,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezstring',212,'product_number',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Product number\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',213,'short_description',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',214,'description',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,1,0,0,0,1,0,0,0,'','','','','','ezprice',215,'price',0,0,0,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Price\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezimage',216,'image',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',217,'caption',0,0,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezmultioption',218,'additional_options',0,0,1,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:18:\"Additional options\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',219,'star_rating',0,0,1,9,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',220,'tags',0,0,1,10,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',221,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',222,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',223,'first_name',1,1,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"First Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',224,'last_name',1,1,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Last Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',225,'subject',1,1,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezcountry',226,'country',1,1,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Country\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',22,0,0,0,0,10,0,0,0,'','','','','','eztext',227,'message',1,1,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',22,0,0,0,0,0,0,0,0,'','','','','','ezemail',228,'email',1,1,0,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',22,0,0,0,0,0,0,0,0,'','','','','','ezemail',229,'recipient',0,0,0,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Recipient\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezstring',230,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezpage',231,'page',0,0,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Layout\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezstring',232,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',233,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',234,'star_rating',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',235,'tags',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezboolean',236,'show_children',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Display sub items\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezstring',237,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',238,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezoption',239,'question',1,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Question\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',240,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',241,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',242,'file',0,1,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',243,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',244,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,150,0,0,0,'','','','','','ezstring',245,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',246,'caption',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,2,0,0,0,'','','','','','ezimage',247,'image',0,0,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',248,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',249,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,255,0,0,0,'','','','','','ezstring',250,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',251,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezurl',252,'location',0,0,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',28,0,0,0,0,0,0,1,0,'','','','','','ezboolean',253,'open_in_new_window',0,0,1,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:18:\"Open in new window\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezstring',254,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',255,'short_description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',256,'description',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',257,'image',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',258,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',30,0,0,0,0,0,0,0,0,'','','','','','ezstring',259,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',30,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',260,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezstring',261,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,10,0,0,0,'','','','','','eztext',262,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezboolean',263,'sticky',0,0,1,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Sticky\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezsubtreesubscription',264,'notify_me',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:23:\"Notify me about updates\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',32,0,0,0,0,0,0,0,0,'','','','','','ezstring',265,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',32,0,0,0,0,10,0,0,0,'','','','','','eztext',266,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,55,0,0,0,'','','','','','ezstring',267,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:10:\"Full title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,19,0,0,0,'','','','','','ezstring',268,'short_title',0,1,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',269,'text',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Text\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',270,'category',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:8:\"Category\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',33,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',271,'from_time',0,1,0,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"From Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',33,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',272,'to_time',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"To Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',273,'tags',0,0,1,7,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',34,0,0,0,0,65,0,0,0,'','','','','','ezstring',274,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (0,'',34,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Calendar\"/><option id=\"1\" name=\"Program\"/></options></ezselection>\n','ezselection',275,'view',0,1,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"View\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezstring',276,'name',0,1,0,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezstring',277,'url',0,0,0,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:3:\"URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezimage',278,'image',0,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,10,0,0,0,'','','','','','eztext',279,'image_map',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:9:\"Image map\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',280,'tags',0,0,1,5,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',36,0,0,0,0,0,0,0,0,'','','','','','ezstring',281,'title',0,0,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',36,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',282,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezstring',283,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',284,'caption',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',285,'file',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',286,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',287,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',288,'description',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezimage',289,'image',0,0,0,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',290,'location',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',291,'keyword',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Keyword\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',292,'rating',0,0,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',293,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',294,'short_name',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',39,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',295,'description',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',296,'site_map_url',0,0,0,8,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:12:\"Site map URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',297,'tag_cloud_url',0,0,0,9,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Tag Cloud URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',298,'login_label',0,0,0,10,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Login (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',299,'logout_label',0,0,0,11,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:14:\"Logout (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',300,'my_profile_label',0,0,0,12,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:18:\"My profile (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',301,'register_user_label',0,0,0,13,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:25:\"Register new user (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',302,'rss_feed',0,0,0,14,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"RSS feed\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',303,'shopping_basket_label',0,0,0,15,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:23:\"Shopping basket (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',304,'site_settings_label',0,0,0,16,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:21:\"Site settings (label)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',305,'footer_text',0,0,0,17,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Footer text\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezboolean',306,'hide_powered_by',0,0,0,18,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Hide \"Powered by\"\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',307,'footer_script',0,0,0,19,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:17:\"Footer Javascript\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',308,'call_for_action',0,0,0,6,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',309,'tags',0,0,0,7,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (3,0,2,'Users');
INSERT INTO `ezcontentclass_classgroup` VALUES (4,0,2,'Users');
INSERT INTO `ezcontentclass_classgroup` VALUES (13,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (14,0,4,'Setup');
INSERT INTO `ezcontentclass_classgroup` VALUES (15,0,4,'Setup');
INSERT INTO `ezcontentclass_classgroup` VALUES (16,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (17,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (18,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (19,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (20,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (21,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (22,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (23,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (24,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (25,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (26,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (27,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (28,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (29,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (30,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (31,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (32,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (33,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (34,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (35,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (36,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (37,0,3,'Media');
INSERT INTO `ezcontentclass_classgroup` VALUES (38,0,1,'Content');
INSERT INTO `ezcontentclass_classgroup` VALUES (39,0,1,'Content');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-GB','Folder');
INSERT INTO `ezcontentclass_name` VALUES (3,0,3,'eng-GB','User group');
INSERT INTO `ezcontentclass_name` VALUES (4,0,3,'eng-GB','User');
INSERT INTO `ezcontentclass_name` VALUES (13,0,3,'eng-GB','Comment');
INSERT INTO `ezcontentclass_name` VALUES (14,0,3,'eng-GB','Common ini settings');
INSERT INTO `ezcontentclass_name` VALUES (15,0,3,'eng-GB','Template look');
INSERT INTO `ezcontentclass_name` VALUES (16,0,3,'eng-GB','Article');
INSERT INTO `ezcontentclass_name` VALUES (17,0,3,'eng-GB','Blog');
INSERT INTO `ezcontentclass_name` VALUES (18,0,3,'eng-GB','Blog post');
INSERT INTO `ezcontentclass_name` VALUES (19,0,3,'eng-GB','Call To Action');
INSERT INTO `ezcontentclass_name` VALUES (20,0,3,'eng-GB','Call To Action Feedback');
INSERT INTO `ezcontentclass_name` VALUES (21,0,3,'eng-GB','Product');
INSERT INTO `ezcontentclass_name` VALUES (22,0,3,'eng-GB','Feedback form');
INSERT INTO `ezcontentclass_name` VALUES (23,0,3,'eng-GB','Landing Page');
INSERT INTO `ezcontentclass_name` VALUES (24,0,3,'eng-GB','Wiki Page');
INSERT INTO `ezcontentclass_name` VALUES (25,0,3,'eng-GB','Poll');
INSERT INTO `ezcontentclass_name` VALUES (26,0,3,'eng-GB','File');
INSERT INTO `ezcontentclass_name` VALUES (27,0,3,'eng-GB','Image');
INSERT INTO `ezcontentclass_name` VALUES (28,0,3,'eng-GB','Link');
INSERT INTO `ezcontentclass_name` VALUES (29,0,3,'eng-GB','Gallery');
INSERT INTO `ezcontentclass_name` VALUES (30,0,3,'eng-GB','Forum');
INSERT INTO `ezcontentclass_name` VALUES (31,0,3,'eng-GB','Forum topic');
INSERT INTO `ezcontentclass_name` VALUES (32,0,3,'eng-GB','Forum reply');
INSERT INTO `ezcontentclass_name` VALUES (33,0,3,'eng-GB','Event');
INSERT INTO `ezcontentclass_name` VALUES (34,0,3,'eng-GB','Event calendar');
INSERT INTO `ezcontentclass_name` VALUES (35,0,3,'eng-GB','Banner');
INSERT INTO `ezcontentclass_name` VALUES (36,0,3,'eng-GB','Forums');
INSERT INTO `ezcontentclass_name` VALUES (37,0,3,'eng-GB','Video');
INSERT INTO `ezcontentclass_name` VALUES (38,0,3,'eng-GB','Place');
INSERT INTO `ezcontentclass_name` VALUES (39,0,3,'eng-GB','Place list');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content');
INSERT INTO `ezcontentclassgroup` VALUES (1031216941,14,2,1033922113,14,'Users');
INSERT INTO `ezcontentclassgroup` VALUES (1032009743,14,3,1033922120,14,'Media');
INSERT INTO `ezcontentclassgroup` VALUES (1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1);
INSERT INTO `ezcontentobject` VALUES (4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1);
INSERT INTO `ezcontentobject` VALUES (3,2,11,2,3,1472204188,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1);
INSERT INTO `ezcontentobject` VALUES (3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1);
INSERT INTO `ezcontentobject` VALUES (3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1);
INSERT INTO `ezcontentobject` VALUES (4,4,14,2,3,1472204187,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1);
INSERT INTO `ezcontentobject` VALUES (1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1);
INSERT INTO `ezcontentobject` VALUES (3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1);
INSERT INTO `ezcontentobject` VALUES (1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1);
INSERT INTO `ezcontentobject` VALUES (1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1);
INSERT INTO `ezcontentobject` VALUES (1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1);
INSERT INTO `ezcontentobject` VALUES (1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1);
INSERT INTO `ezcontentobject` VALUES (14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1);
INSERT INTO `ezcontentobject` VALUES (15,2,54,2,2,1301062376,'eZ Publish Deploy Site for Summercamp 2016',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1);
INSERT INTO `ezcontentobject` VALUES (1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1);
INSERT INTO `ezcontentobject` VALUES (23,1,57,2,3,1284454019,'Home',14,1195480486,'8a9c9c761004866fb458d89910f52bee',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,58,2,2,1352741504,'footer',14,1352735678,'115536b84726ddb2184014682753b794',1,1);
INSERT INTO `ezcontentobject` VALUES (23,1,59,2,2,1358957450,'Getting Started',14,1332927190,'7c013ad2b5221a74704c3d8313c4936a',1,1);
INSERT INTO `ezcontentobject` VALUES (22,1,60,2,2,1358867717,'Feedback',14,1358863330,'6442aa1a9c5ed4cbfe2bc8d26fade210',1,1);
INSERT INTO `ezcontentobject` VALUES (1,1,61,2,3,1332936697,'Resources',14,1332936697,'90cf3af65240904b2e8ededf5a80aa52',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,62,2,2,1332939216,'eZ Publish Tutorials',14,1332938805,'93db70ffc8003c01f03cf81fa622d456',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,63,2,2,1332939113,'eZ User Documentation',14,1332938824,'dc55dac3352b47cdf54646d9cb6200e5',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,64,2,2,1332939505,'Technical Documentation',14,1332939505,'45d1f7e22c1ddbaeaae72505341e854d',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,65,2,2,1332939663,'Demos and Videos',14,1332939663,'94b224233ef4b2d8660824ad1bf27bc4',1,1);
INSERT INTO `ezcontentobject` VALUES (1,1,66,2,3,1332937412,'Selected Features',14,1332932074,'b26079e84486ed2368778c2a2ff3be15',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,67,2,2,1378496358,'Automate',14,1359570029,'f9a7487e6dc1d94615551bc7f4c01f1f',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,68,2,2,1378496122,'Deliver',14,1332932904,'c8fa6ace2c8b3cdd30941c89470b9213',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,69,2,2,1378496047,'Create',14,1332933539,'db01949a286c60127a496daf7343591c',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,70,2,2,1378496268,'Optimize',14,1332933792,'16923c9da5bf2dc970e7c802ae434f8e',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,71,2,2,1378496732,'Getting Started with eZ Publish Platform',14,1332934074,'699c5b72347666a663adf84f5410ea18',7,1);
INSERT INTO `ezcontentobject` VALUES (23,1,72,2,2,1361815555,'Shopping',14,1332929528,'fdfad0d10118eda1334a1aa8ee117ca6',1,1);
INSERT INTO `ezcontentobject` VALUES (1,1,73,2,3,1332935044,'Products',14,1332929541,'88ebdebc4d5e55ebe841c50a92882961',1,1);
INSERT INTO `ezcontentobject` VALUES (21,1,74,2,2,1360098388,'eZ Publish Community - iPhone 4 Case',14,1360098388,'19e07e67927891a6f26a3c7996438c2f',1,1);
INSERT INTO `ezcontentobject` VALUES (21,1,75,2,2,1360110955,'eZ Publish - Samsung Galaxy SIII Case',14,1360098574,'1a5703c2fb7a116fbc771a458b48360c',1,1);
INSERT INTO `ezcontentobject` VALUES (21,1,76,2,2,1360098944,'eZ Publish Community Mug',14,1360098944,'5508dd3b0059b307019aec7b923bf976',1,1);
INSERT INTO `ezcontentobject` VALUES (21,1,77,2,2,1360099355,'eZ Publish - Man jacket',14,1360099355,'9ade4e0df6df80cc6e3259c57fc7a402',1,1);
INSERT INTO `ezcontentobject` VALUES (1,1,78,2,3,1361813574,'Services',14,1332930904,'3d8a1028538c7c1d019cb39890b7d64a',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,79,2,2,1361872727,'Support & Maintenance',14,1361814102,'e402b6891929c4c461d8a79af97b145d',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,80,2,2,1361873292,'Professional Services',14,1361814186,'fee6e1c8a6d9b0fe9b607396756bee1a',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,81,2,2,1361873332,'Training Services',14,1361814309,'a7abdfb937a621be30b257026ae31774',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,82,2,2,1361874323,'eZ Publish Enterprise Service',14,1332930989,'87eb8bb6f1839c4c2b5a63c08240a0e3',1,1);
INSERT INTO `ezcontentobject` VALUES (27,1,83,2,2,1361814650,'squares',14,1358444220,'46db1daad7f293466547a64548615663',1,1);
INSERT INTO `ezcontentobject` VALUES (1,1,84,2,3,1358935724,'Partner',14,1332927318,'d58a80698adb4e2fc8841ba07a5d4a3b',6,1);
INSERT INTO `ezcontentobject` VALUES (26,1,85,2,2,1332931967,'eZ Logo Black',14,1332931967,'dea1fa921d0240f266116fecf9e1d94d',6,1);
INSERT INTO `ezcontentobject` VALUES (26,1,86,2,2,1332932005,'eZ Logo White',14,1332932005,'9c75ceb69a9eeb2fb4285c427fc81022',6,1);
INSERT INTO `ezcontentobject` VALUES (1,1,87,2,3,1332932020,'Logos',14,1332932020,'aff81f1aaca7d418e748bfc3a98e5caf',6,1);
INSERT INTO `ezcontentobject` VALUES (17,1,88,2,2,1332932403,'Blog',14,1332932403,'c62cbc4be226d3c7c7379e0cd9ef7ba7',1,1);
INSERT INTO `ezcontentobject` VALUES (18,1,89,2,2,1361888108,'This will be our magic recipe',14,1332932449,'f6fdb5ffc10c01f8ba1093c206e9dc6a',1,1);
INSERT INTO `ezcontentobject` VALUES (29,1,90,2,2,1358935692,'Gallery',14,1358935692,'6e7910061d12a5514d806a8b0690e8d9',1,1);
INSERT INTO `ezcontentobject` VALUES (18,1,91,2,2,1378496598,'It\'s helping me optimizing my business',14,1358956937,'1586a075852367c4a665361e9905ba29',1,1);
INSERT INTO `ezcontentobject` VALUES (19,1,92,2,2,1359560368,'Discover eZ Publish 5',14,1359130307,'ec8ceac6bc6c2d3cc8b4d3fbf5655914',1,1);
INSERT INTO `ezcontentobject` VALUES (16,1,93,2,2,1359514335,'Download your White Paper here',14,1359130653,'681116da12d3fed558704658248067da',1,1);
INSERT INTO `ezcontentobject` VALUES (22,1,94,2,2,1360862590,'Contact Us',14,1359730637,'89de2e1f37ab95f9b6a9b30698232ee7',1,1);
INSERT INTO `ezcontentobject` VALUES (26,1,95,2,2,1359513790,'eZ Publish 5 Platform Whitepaper',14,1359513790,'5bcdcb59fb379c006f00ecdfe7e30264',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,96,2,2,1359681490,'Screen Shot 2013-01-31 at 8.17.26 PM',14,1359681490,'cee3aa058077b248fbbfbac0a13c0557',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,97,2,2,1360105024,'funel',14,1360105024,'eb51c2e7184b625fea3d798511e600ce',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,98,2,2,1360112401,'mount Matterhorn',14,1360109269,'21feb8954d82ba0849b40794877e05d9',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,99,2,2,1360112380,'mount Annapurna',14,1360109285,'7391c23b1a7e1b64e03cd01bc9c17a60',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,100,2,2,1360111726,'mount Stadda',14,1360109312,'9fc874a5faf032ddf198e67cb129ecc4',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,101,2,2,1360112564,'mount Ventoux',14,1360109327,'30847bec12a8a398777493a4bdb10398',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,102,2,2,1415660639,'mount Castor',14,1415660639,'2d9bef9f1e0eb417a56e1707352e83c0',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,103,2,2,1360111617,'mount Kilimanjaro',14,1360109334,'9c44b69d423f44bfcf1b65fcbf56a731',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,104,2,2,1360112335,'mount Etna',14,1360109341,'97350a2c1cacc7390da1fa12cf768a7e',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,105,2,2,1360112186,'mount Fuji',14,1360109363,'3c1edb6ac1491ff9c281e64181cb7f0f',3,1);
INSERT INTO `ezcontentobject` VALUES (27,1,106,2,2,1360111977,'mount Aconcagua',14,1360109377,'2be558595f6435547b9f1900a61beb8e',3,1);
INSERT INTO `ezcontentobject` VALUES (37,1,107,2,2,1360104780,'eZ Publish Optimize',14,1360104780,'bacf6f6577fbbf6105353e35c9ffe297',3,1);
INSERT INTO `ezcontentobject` VALUES (39,1,108,2,2,1396910676,'eZ Mountains',14,1396910676,'e4a175637fdb2a0841ac13dafce40c25',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,109,2,2,1400856937,'Mount Fuji',14,1396910902,'c1e928edcf93cb90b4e6913324e43c8d',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,110,2,2,1400856959,'Mount Matterhorn',14,1396911053,'83925375c49447d034816699a8bc1e89',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,111,2,2,1400856987,'Mount Annapurna',14,1396911250,'8c6bc4d2124379707baf83ca6c9717d4',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,112,2,2,1400857015,'Mount Etna',14,1396911597,'94c8b13d604ea04ab338d9a21c44e1c4',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,113,2,2,1400857033,'Mount Kilimanjaro',14,1396911673,'954cd863ca3b3fadae24eab118af2149',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,114,2,2,1400856708,'Mount Stadda',14,1396911940,'5dcb6a1a9bed4da3b1a16c84080ffd88',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,115,2,2,1400856796,'Mount Aconcagua',14,1396912091,'75f2d4d89b405816a1d03fed2da17eba',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,116,2,2,1400856880,'Mount Ventoux',14,1396912171,'c56fa5a0274ea48e738dd63399116444',1,1);
INSERT INTO `ezcontentobject` VALUES (38,1,117,2,2,1415655037,'Mount Castor',14,1415654713,'12d04011332555e8c7fb42c59324f76f',1,1);
INSERT INTO `ezcontentobject` VALUES (3,1,118,2,3,1472204188,'Partners',14,1472204188,'95f5a3fa18f2c598c77f2f7c0ee78fff',2,1);
INSERT INTO `ezcontentobject` VALUES (3,1,119,2,3,1472204188,'Subscribers',14,1472204188,'6bd55b59a7ff2936aa072b8a246b45cc',2,1);
INSERT INTO `ezcontentobject` VALUES (4,1,120,2,3,1472204188,'Subscriber User',14,1472204188,'7c0b88bbc2349e56227ef39ce837903b',2,1);
INSERT INTO `ezcontentobject` VALUES (4,1,121,2,3,1472204188,'Member User',14,1472204188,'591c1f5e0fed6591b758ab5e3edc2c59',2,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,11,0,0,'Members','ezstring',22,'eng-GB',3,0,'members',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',4);
INSERT INTO `ezcontentobject_attribute` VALUES (30,12,14,0,0,'{\"login\":\"admin\",\"password_hash\":\"c78e3b0f3d9244ed8c6d1c29464bdff9\",\"email\":\"ggiunta@kaliop.com\",\"password_hash_type\":2}','ezuser',30,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,41,0,1045487555,'','ezxmltext',105,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,41,0,0,'','ezboolean',109,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,45,0,0,'','ezboolean',128,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,49,0,1,'','ezboolean',146,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,50,0,1,'','ezboolean',151,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,51,0,1,'','ezboolean',156,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,159,52,0,0,'Common INI settings','ezstring',157,'eng-GB',2,0,'common ini settings',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,162,52,0,0,'disabled','ezinisetting',160,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,163,52,0,0,'disabled','ezinisetting',161,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,164,52,0,0,'','ezinisetting',162,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,165,52,0,0,'enabled','ezinisetting',163,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,166,52,0,0,'disabled','ezinisetting',164,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,167,52,0,0,'enabled','ezinisetting',165,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,168,52,0,0,'enabled','ezinisetting',166,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,172,54,0,0,'eZ Publish Deploy Site for Summercamp 2016','ezinisetting',170,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Deploy-Site-for-Summercamp-20161.png\" suffix=\"png\" basename=\"eZ-Publish-Deploy-Site-for-Summercamp-20161\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB/eZ-Publish-Deploy-Site-for-Summercamp-20161.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204187\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',172,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,175,54,0,0,'0','ezpackage',173,'eng-GB',2,0,'0',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,177,54,0,0,'ggiunta@kaliop.com','ezinisetting',175,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,178,54,0,0,'www.deploy.websc/index.php','ezinisetting',176,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,10,0,0,'','ezimage',179,'eng-GB',3,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',4);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,56,0,NULL,'Design','ezstring',181,'eng-GB',3,0,'design',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,56,0,NULL,'','ezstring',182,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,158,56,0,1,'','ezboolean',185,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,230,57,0,NULL,'Home','ezstring',186,'eng-GB',3,0,'home',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,231,57,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_865346aabbcc48a9839274cc554868be\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_b185f6579a346b728f3a6e344500c9fb\">\n      <name>Main Story</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_1a72c0bc9faa36b5e20be733fc8c8807\">\n      <name>Mixed Content</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>ContentGrid</type>\n      <view>2_columns_2_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_1e0260ecfb7f0d281c17447791584041\">\n      <name>Gallery</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>Gallery</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_f742abffba08fc849b6e80dec769a74c\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_3bb6f2370e6640145cce2c39cac1128e\">\n      <name>White Paper</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_2e6db295bcd100bae0dfd9411d9a53c1\">\n      <name>Main Items</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_4c3e0180ec19775b3dea5794dd12312a\">\n      <name>News</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>FeedReader</type>\n      <custom_attributes>\n        <source>http://ez.no/rss/feed/blog</source>\n        <limit>8</limit>\n        <offset>0</offset>\n      </custom_attributes>\n      <view>default</view>\n    </block>\n    <block id=\"id_53d83f8bd8ee4307eb23cc46dc29c145\">\n      <name>Selected Video</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>Video</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_6c72d9153b703a8598bd2760e4d0dccb\">\n      <name>Tags</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>TagCloud</type>\n      <view>default</view>\n      <custom_attributes>\n        <subtree_node_id>2</subtree_node_id>\n      </custom_attributes>\n    </block>\n  </zone>\n</page>\n','ezpage',187,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,58,0,NULL,'Footer','ezstring',188,'eng-GB',2,0,'footer',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,58,0,NULL,'footer','ezstring',189,'eng-GB',2,0,'footer',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ is a global company with offices around the world including Skien (Norway), New York (USA), Oslo (Norway), Cologne (Germany), Paris (France), Lyon (France), Tokyo (Japan), Katowice (Poland)</paragraph><paragraph><link url_id=\"23\">Contact us</link> for more information!</paragraph></section>','ezxmltext',190,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Official site: <link url_id=\"8\">http://ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Community site: <link url_id=\"24\">http://share.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Documentation: <link url_id=\"25\">http://doc.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Follow us on <link url_id=\"26\">Twitter</link>, <link url_id=\"27\">Facebook</link> and <link url_id=\"28\">LinkedIn</link></paragraph></li></ul></paragraph><paragraph>Copyright © 2014 eZ Systems AS (except where otherwise noted). All rights reserved.</paragraph></section>','ezxmltext',191,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,58,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',192,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204178\"><original attribute_id=\"193\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',193,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',194,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,58,0,0,'','ezgmaplocation',195,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',196,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,58,0,1341417600,'','ezdatetime',197,'eng-GB',2,1341417600,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,58,0,0,'','ezsrrating',198,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,58,0,NULL,'','ezkeyword',199,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,230,59,0,NULL,'Getting Started','ezstring',200,'eng-GB',2,0,'getting started',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,231,59,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout2</zone_layout>\n  <zone id=\"id_c5ce576877ab71afb7c143ea3276db4f\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_7cf0aae050d80f40f00ef4eb2295d0cb\">\n      <name>Highlighted Feature</name>\n      <zone_id>c5ce576877ab71afb7c143ea3276db4f</zone_id>\n      <type>HighlightedItem</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_32e704f1bc3d785eee7e742c081d5beb\">\n      <name>Main Features</name>\n      <zone_id>c5ce576877ab71afb7c143ea3276db4f</zone_id>\n      <type>ContentGrid</type>\n      <view>1_column_4_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_fe8088a104581ea7faa6c00fe743f072\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_639b9f037115d1ef4269713fdb7b6c71\">\n      <name></name>\n      <zone_id>fe8088a104581ea7faa6c00fe743f072</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_96a998b9f2d0cfba849c27209dc582e9\">\n      <name></name>\n      <zone_id>fe8088a104581ea7faa6c00fe743f072</zone_id>\n      <type>ContentGrid</type>\n      <view>2_columns_2_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',201,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,221,60,0,NULL,'Feedback','ezstring',202,'eng-GB',2,0,'feedback',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,222,60,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',203,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,223,60,0,NULL,'','ezstring',204,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,224,60,0,NULL,'','ezstring',205,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,225,60,0,NULL,'','ezstring',206,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,226,60,0,NULL,'GB','ezcountry',207,'eng-GB',2,0,'united kingdom',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,227,60,0,NULL,'','eztext',208,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,228,60,0,NULL,'','ezemail',209,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,229,60,0,NULL,'tony.wood@ez.no','ezemail',210,'eng-GB',2,0,'tony.wood@ez.no',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,61,0,NULL,'Resources','ezstring',211,'eng-GB',3,0,'resources',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,61,0,NULL,'','ezstring',212,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,61,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',213,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,61,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',214,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (215,158,61,0,1,'','ezboolean',215,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,62,0,NULL,'eZ Publish Tutorials','ezstring',216,'eng-GB',2,0,'ez publish tutorials',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,62,0,NULL,'','ezstring',217,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"29\">Developing eZ Publish Extensions</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"30\">Building mobile browser and hybrid applications with eZ Publish</link></paragraph></li></ul></paragraph></section>','ezxmltext',218,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',219,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',220,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204178\"><original attribute_id=\"221\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',221,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',222,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,62,0,0,'','ezgmaplocation',223,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',224,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,62,0,0,'','ezdatetime',225,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,62,0,0,'','ezsrrating',226,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,62,0,NULL,'','ezkeyword',227,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,63,0,NULL,'eZ User Documentation','ezstring',228,'eng-GB',2,0,'ez user documentation',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,63,0,NULL,'','ezstring',229,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"31\">Administration Interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"32\">Daily Tasks</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"33\">Website Interface User Documentation</link></paragraph></li></ul></paragraph></section>','ezxmltext',230,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',231,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',232,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"Documentation\" alias_key=\"1293033771\" timestamp=\"1472204179\"><original attribute_id=\"233\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',233,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',234,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,63,0,0,'','ezgmaplocation',235,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',236,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,63,0,0,'','ezdatetime',237,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,63,0,0,'','ezsrrating',238,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,63,0,NULL,'','ezkeyword',239,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,64,0,NULL,'Technical Documentation','ezstring',240,'eng-GB',2,0,'technical documentation',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,64,0,NULL,'','ezstring',241,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,64,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"34\">Concepts and basics</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"35\">Template language</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"36\">REST API</link></paragraph></li></ul></paragraph></section>','ezxmltext',242,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,64,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',243,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',244,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204179\"><original attribute_id=\"245\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',245,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,64,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',246,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,64,0,0,'','ezgmaplocation',247,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',248,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,64,0,0,'','ezdatetime',249,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,64,0,0,'','ezsrrating',250,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,64,0,NULL,'','ezkeyword',251,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,65,0,NULL,'Demos and Videos','ezstring',252,'eng-GB',2,0,'demos and videos',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,65,0,NULL,'','ezstring',253,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"37\">Multichannel Content Management</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"38\">Landingpage Management with eZ Flow</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"39\">More Demos and Videos</link></paragraph></li></ul></paragraph></section>','ezxmltext',254,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',255,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,65,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',256,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,65,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204179\"><original attribute_id=\"257\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',257,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',258,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,65,0,0,'','ezgmaplocation',259,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,65,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',260,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,65,0,0,'','ezdatetime',261,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,65,0,0,'','ezsrrating',262,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,65,0,NULL,'','ezkeyword',263,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,66,0,NULL,'Selected Features','ezstring',264,'eng-GB',3,0,'selected features',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,66,0,NULL,'','ezstring',265,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,66,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',266,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,66,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',267,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (268,158,66,0,1,'','ezboolean',268,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,67,0,NULL,'Automate','ezstring',269,'eng-GB',2,0,'automate',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,67,0,NULL,'','ezstring',270,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>If Create, Deliver and Optimize is the winning formula, the last thing you want to do when you are there is to automate so that your online user experience is self-building!</paragraph></section>','ezxmltext',271,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Identifying the right content, picking delivery strategy, understanding your metrics and optimizing your online presence to have your numbers on the up-side are tasks that requires a lot of work that no machine could do by itself. However, when you have identified the right recipes in that Create - Deliver - Optimize cycle, the next thing you want to do is automate as much as possible all the recurring tasks. That is where a platform like the eZ Publish Platform will deliver even more value, from Content sourcing and authoring to delivery workflow and marketing automation, relying on an integrated platform will help you automate the tasks that are taking your KPIs and your online business up!</paragraph></section>','ezxmltext',272,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',273,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,67,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Automate.jpg\" suffix=\"jpg\" basename=\"Automate\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/automate/274-1-eng-GB\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/automate/274-1-eng-GB/Automate.jpg\" original_filename=\"ba2a2bea.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"281\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204179\"><original attribute_id=\"274\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"281\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxNzo0MjoyMA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">Mjgx</item></array></information></ezimage>\n','ezimage',274,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',275,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,67,0,1,'','ezgmaplocation',276,'eng-GB',2,0,'Castor, Italy',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,67,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',277,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,67,0,0,'','ezdatetime',278,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,67,0,0,'','ezsrrating',279,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,67,0,NULL,'','ezkeyword',280,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,68,0,NULL,'Deliver','ezstring',281,'eng-GB',2,0,'deliver',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,68,0,NULL,'','ezstring',282,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Content consumption is changing rapidly. An agile solution to distribute your content and empower your digital business model is key to success in every industry.</paragraph></section>','ezxmltext',283,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Publish Enterprise is the platform to make the omni-channel approach possible. A powerful presentation engine provides a multiplicity of websites and pages that display your content in a variety of renderings. A powerful API directly and simply integrates your content with any Web-enabled application on any device, including the iPad, iPhone or Android without ever interfering with or impacting the platform itself.</paragraph></section>','ezxmltext',284,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',285,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,68,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Deliver.jpg\" suffix=\"jpg\" basename=\"Deliver\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/deliver/286-1-eng-GB\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/deliver/286-1-eng-GB/Deliver.jpg\" original_filename=\"c97d7955.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"281\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204179\"><original attribute_id=\"286\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"281\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxNzo0MDoyMw==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">Mjgx</item></array></information></ezimage>\n','ezimage',286,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',287,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,68,0,1,'','ezgmaplocation',288,'eng-GB',2,0,'Castor, Italy',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,68,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',289,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,68,0,0,'','ezdatetime',290,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,68,0,0,'','ezsrrating',291,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,68,0,NULL,'','ezkeyword',292,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,69,0,NULL,'Create','ezstring',293,'eng-GB',2,0,'create',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,69,0,NULL,'','ezstring',294,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Increasing the productivity of your content infrastructure, eZ Publish Enterprise provides you with powerful tools to create, automate and collaborate on content...</paragraph></section>','ezxmltext',295,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Dealing with hundreds of editors, having millions of content contributions from different sources and managing information with dozens of audiences can get complex. You get a single tool to create content whatever the content type is. From very simple and unstructured to highly structured content with complex metadata and rich media. eZ Publish Enterprise enables your non-technical contributors to manage complex content infrastructures and to collaborate with co-workers to get tasks done quickly.</paragraph></section>','ezxmltext',296,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',297,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,69,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Create.jpg\" suffix=\"jpg\" basename=\"Create\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/create/298-1-eng-GB\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/create/298-1-eng-GB/Create.jpg\" original_filename=\"92f022f1.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"281\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204180\"><original attribute_id=\"298\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"281\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxNzozNjo1OQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">Mjgx</item></array></information></ezimage>\n','ezimage',298,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',299,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,69,0,1,'','ezgmaplocation',300,'eng-GB',2,0,'Castor, Italy',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,69,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',301,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,69,0,0,'','ezdatetime',302,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,69,0,0,'','ezsrrating',303,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,69,0,NULL,'','ezkeyword',304,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,70,0,NULL,'Optimize','ezstring',305,'eng-GB',2,0,'optimize',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,70,0,NULL,'','ezstring',306,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,70,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>It’s about the right content at the right time and in the right format!</paragraph></section>','ezxmltext',307,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,70,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Publish Enterprise offers an entire set of capabilities including search, analytics, personalized recommendations as well as automated and integrated testing functionality (e.g. A/B, Multivariate, etc.). Efficient search starts with enabling editors and letting them search for existing content to reuse and re-purpose. You can analyze the user behavior, create a compelling content strategy and provide automated scenarios based on the users\' behavior.</paragraph></section>','ezxmltext',308,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,70,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',309,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,70,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Optimize.jpg\" suffix=\"jpg\" basename=\"Optimize\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/optimize/310-1-eng-GB\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/optimize/310-1-eng-GB/Optimize.jpg\" original_filename=\"bb64019b.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"281\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204180\"><original attribute_id=\"310\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"281\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxNzo0NDo1NA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">Mjgx</item></array></information></ezimage>\n','ezimage',310,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,70,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',311,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,70,0,1,'','ezgmaplocation',312,'eng-GB',2,0,'Castor, Italy',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,70,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',313,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,70,0,0,'','ezdatetime',314,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,70,0,0,'','ezsrrating',315,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,70,0,NULL,'','ezkeyword',316,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,71,0,NULL,'Getting Started with eZ Publish Platform','ezstring',317,'eng-GB',2,0,'getting started with ez publish platform',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,71,0,NULL,'','ezstring',318,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Welcome to eZ Publish Platform 5.4, the Castor release. </line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This release brings several new features and general improvements on the foundations introduced in eZ Publish Platform 5</line></paragraph></section>','ezxmltext',319,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Key Selected New Features in eZ Publish 5.4</header><paragraph>Our objective is to provide you the most compelling Multichannel Web and Customer Experience Platform. With the eZ Publish 5 architecture we encompass a thoroughly revamped platform, which facilitates better user experiences, increases productivity, and enables your digital business model sustainably. Underlying and enabling these ambitious goals is a completely new but thoroughly backward compatible product architecture, along with a host of user interface (UI) enhancements. New in 5.4:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Native IO support</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Faster multilingual and multisite search API</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Native support for legacy DFS cluster</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">New image alias system</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">URL decorators</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Premium content wall</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Improved HTTP cache system</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Simplified configuration </paragraph></li></ul></paragraph><paragraph>For further information visit <link url_id=\"8\">www.ez.no,</link> the documentation: <link url_id=\"25\">doc.ez.no</link> and the <link url_id=\"24\">share.ez.no</link> community.</paragraph></section></section>','ezxmltext',320,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Key new features you don\'t want to miss</header><paragraph>eZ Publish Platform 5.4 provides a range of core improvements to the eZ platform that will be core to eZ Platform in the future. You clearly want to know about the benefits for your eZ Publish project...</paragraph></section></section>','ezxmltext',321,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,71,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Getting-Started-with-eZ-Publish-Platform.jpg\" suffix=\"jpg\" basename=\"Getting-Started-with-eZ-Publish-Platform\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-platform/322-1-eng-GB\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-platform/322-1-eng-GB/Getting-Started-with-eZ-Publish-Platform.jpg\" original_filename=\"1f96ad5f.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"378\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204180\"><original attribute_id=\"322\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"378\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxNzoxMzoyMQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">Mzc4</item></array></information></ezimage>\n','ezimage',322,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',323,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,71,0,1,'','ezgmaplocation',324,'eng-GB',2,0,'Castor, Italy',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,71,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',325,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,71,0,0,'','ezdatetime',326,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,71,0,0,'','ezsrrating',327,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,71,0,NULL,'','ezkeyword',328,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,230,72,0,NULL,'Shopping','ezstring',329,'eng-GB',2,0,'shopping',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,231,72,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_1b6149311bf4ece4717e6fff905e148c\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_a74a80887661109e0c87d0ad912ce09c\">\n      <name></name>\n      <zone_id>1b6149311bf4ece4717e6fff905e148c</zone_id>\n      <type>ContentGrid</type>\n      <view>2_columns_2_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_6669bce3079221f326d4eb4121447fd9\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_e9f6cd9b25adb89f87efcb06d8a3c324\">\n      <name>Products</name>\n      <zone_id>6669bce3079221f326d4eb4121447fd9</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_7838c8283e8647f754569ab99419a727\">\n      <name></name>\n      <zone_id>6669bce3079221f326d4eb4121447fd9</zone_id>\n      <type>Video</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',330,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,73,0,NULL,'Products','ezstring',331,'eng-GB',3,0,'products',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,73,0,NULL,'','ezstring',332,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,73,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',333,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,73,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',334,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (335,158,73,0,1,'','ezboolean',335,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,211,74,0,NULL,'eZ Publish Community - iPhone 4 Case','ezstring',336,'eng-GB',2,0,'ez publish community - iphone 4 case',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,212,74,0,NULL,'','ezstring',337,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,213,74,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Protect your iPhone 4 with a customizable iPhone 4 case.</paragraph></section>','ezxmltext',338,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,214,74,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Made of lightweight hard shell plastic, this case protects the back and sides of your iPhone 4 without adding bulk. Made with a matte finish, your designs, photos, and text will look great displayed on this one of a kind case.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Designed for Apple’s iPhone 4.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Hard shell plastic case with matte finish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Access to all ports, controls &amp; sensors.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Customize with photos, artwork and text.</paragraph></li></ul></paragraph></section>','ezxmltext',339,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,215,74,35.95,NULL,'','ezprice',340,'eng-GB',2,3595,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,216,74,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Community-iPhone-4-Case.jpg\" suffix=\"jpg\" basename=\"eZ-Publish-Community-iPhone-4-Case\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB/eZ-Publish-Community-iPhone-4-Case.jpg\" original_filename=\"94bbf784.jpg\" mime_type=\"image/jpeg\" width=\"512\" height=\"512\" alternative_text=\"Case Savvy iPhone 4 Matte Finish Case\" alias_key=\"1293033771\" timestamp=\"1472204180\"><original attribute_id=\"341\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"512\" Width=\"512\" IsColor=\"1\"/><alias name=\"productthumbnail\" filename=\"eZ-Publish-Community-iPhone-4-Case_productthumbnail.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB/eZ-Publish-Community-iPhone-4-Case_productthumbnail.jpg\" mime_type=\"image/jpeg\" width=\"170\" height=\"170\" alias_key=\"1108033634\" timestamp=\"1472315033\" is_valid=\"1\"/></ezimage>\n','ezimage',341,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,217,74,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Case Savvy iPhone 4 Matte Finish Case</paragraph></section>','ezxmltext',342,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,218,74,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Style option</name><multioptions><multioption id=\"1\" name=\"\" priority=\"1\" default_option_id=\"1\"><option id=\"1\" option_id=\"1\" value=\"Glossy\" additional_price=\"\"/><option id=\"2\" option_id=\"2\" value=\"Matt\" additional_price=\"\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',343,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,219,74,0,0,'','ezsrrating',344,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,220,74,0,NULL,'','ezkeyword',345,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,211,75,0,NULL,'eZ Publish - Samsung Galaxy SIII Case','ezstring',346,'eng-GB',2,0,'ez publish - samsung galaxy siii case',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,212,75,0,NULL,'','ezstring',347,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,213,75,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Pump up your Galaxy S3 with the customizable Case-Mate Vibe case from Zazzle.</paragraph></section>','ezxmltext',348,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,214,75,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Contoured perfectly to fit the Galaxy S3, this case features a hard shell plastic exterior and shock absorbing liner to protect your device from daily wear and tear. Sleek and lightweight, this case is the perfect way to share your custom style with the world.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Impact resistant &amp; lightweight hard plastic case with rubber lined interior.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Designed for the Samsung Galaxy S3 (AT&amp;T, Verizon, T-Mobile, and Sprint models).</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Printed in the USA.</paragraph></li></ul></paragraph></section>','ezxmltext',349,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,215,75,44.95,NULL,'','ezprice',350,'eng-GB',2,4495,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,216,75,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Samsung-Galaxy-SIII-Case.jpg\" suffix=\"jpg\" basename=\"eZ-Publish-Samsung-Galaxy-SIII-Case\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-samsung-galaxy-siii-case/351-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-samsung-galaxy-siii-case/351-1-eng-GB/eZ-Publish-Samsung-Galaxy-SIII-Case.jpg\" original_filename=\"d1452126.jpg\" mime_type=\"image/jpeg\" width=\"512\" height=\"512\" alternative_text=\"Case-Mate Samsung Galaxy S3 Vibe Case\" alias_key=\"1293033771\" timestamp=\"1472204180\"><original attribute_id=\"351\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"512\" Width=\"512\" IsColor=\"1\"/></ezimage>\n','ezimage',351,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,217,75,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Case-Mate Samsung Galaxy S3 Vibe Case</paragraph></section>','ezxmltext',352,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,218,75,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name></name><multioptions><multioption id=\"1\" name=\"Style\" priority=\"1\" default_option_id=\"1\"><option id=\"1\" option_id=\"1\" value=\"Glossy\" additional_price=\"\"/><option id=\"2\" option_id=\"2\" value=\"Matt\" additional_price=\"\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',353,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,219,75,0,0,'','ezsrrating',354,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,220,75,0,NULL,'','ezkeyword',355,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,211,76,0,NULL,'eZ Publish Community Mug','ezstring',356,'eng-GB',2,0,'ez publish community mug',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,212,76,0,NULL,'','ezstring',357,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,213,76,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><section><header>Morphing Mug</header></section></section></section>','ezxmltext',358,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,214,76,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>A truly unique mug. When it’s cold, it’s just a simple black mug. When you add any hot beverage (water, tea, coffee, etc.), your mug turns white and the image comes to life in vibrant colors. 11 oz. Hand wash only. Imported.</paragraph></section>','ezxmltext',359,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,215,76,19.95,NULL,'','ezprice',360,'eng-GB',2,1995,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,216,76,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Community-Mug.png\" suffix=\"png\" basename=\"eZ-Publish-Community-Mug\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-mug/361-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-community-mug/361-1-eng-GB/eZ-Publish-Community-Mug.png\" original_filename=\"94ba49af.png\" mime_type=\"image/png\" width=\"345\" height=\"353\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204181\"><original attribute_id=\"361\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',361,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,217,76,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',362,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,218,76,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"4\"><name>Size</name><multioptions><multioption id=\"1\" name=\"\" priority=\"1\" default_option_id=\"1\"><option id=\"1\" option_id=\"1\" value=\"11 oz\" additional_price=\"\"/><option id=\"2\" option_id=\"2\" value=\"15 oz\" additional_price=\"2\"/></multioption><multioption id=\"2\" name=\"Color\" priority=\"2\" default_option_id=\"\"><option id=\"1\" option_id=\"3\" value=\"Black\" additional_price=\"\"/><option id=\"2\" option_id=\"4\" value=\"White\" additional_price=\"\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',363,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,219,76,0,0,'','ezsrrating',364,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,220,76,0,NULL,'','ezkeyword',365,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,211,77,0,NULL,'eZ Publish - Man jacket','ezstring',366,'eng-GB',2,0,'ez publish - man jacket',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,212,77,0,NULL,'','ezstring',367,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,213,77,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>American Apparel California Fleece Track Jacket</paragraph></section>','ezxmltext',368,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,214,77,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This best-selling California Fleece track jacket by American Apparel is extra thick for added warmth, yet it\'s breathable. Stay comfortable while walking, jogging, or hanging out outside with this jacket made of 100% extra soft ringspun combed cotton. Featuring contrast white piping and zipper, you\'ll look and feel vibrant when wearing this to all of your favorite activities.</paragraph></section>','ezxmltext',369,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,215,77,56.45,NULL,'','ezprice',370,'eng-GB',2,5645,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,216,77,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Man-jacket.jpg\" suffix=\"jpg\" basename=\"eZ-Publish-Man-jacket\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB/eZ-Publish-Man-jacket.jpg\" original_filename=\"9f7c6a08.jpg\" mime_type=\"image/jpeg\" width=\"512\" height=\"512\" alternative_text=\"American Apparel California Fleece Track Jacket\" alias_key=\"1293033771\" timestamp=\"1472204181\"><original attribute_id=\"371\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"512\" Width=\"512\" IsColor=\"1\"/><alias name=\"productthumbnail\" filename=\"eZ-Publish-Man-jacket_productthumbnail.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB/eZ-Publish-Man-jacket_productthumbnail.jpg\" mime_type=\"image/jpeg\" width=\"170\" height=\"170\" alias_key=\"1108033634\" timestamp=\"1472315033\" is_valid=\"1\"/></ezimage>\n','ezimage',371,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,217,77,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>American Apparel California Fleece Track Jacket</paragraph></section>','ezxmltext',372,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,218,77,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"9\"><name></name><multioptions><multioption id=\"1\" name=\"Size\" priority=\"1\" default_option_id=\"4\"><option id=\"1\" option_id=\"1\" value=\"Adult XS\" additional_price=\"\"/><option id=\"2\" option_id=\"2\" value=\"Adult S\" additional_price=\"\"/><option id=\"3\" option_id=\"3\" value=\"Adult M\" additional_price=\"\"/><option id=\"4\" option_id=\"4\" value=\"Adult L\" additional_price=\"\"/><option id=\"5\" option_id=\"5\" value=\"Adult XL\" additional_price=\"\"/><option id=\"6\" option_id=\"8\" value=\"Adult 2X\" additional_price=\"4\"/></multioption><multioption id=\"2\" name=\"Color\" priority=\"2\" default_option_id=\"1\"><option id=\"1\" option_id=\"6\" value=\"Black\" additional_price=\"\"/><option id=\"2\" option_id=\"7\" value=\"Brown\" additional_price=\"\"/><option id=\"3\" option_id=\"9\" value=\"Blue\" additional_price=\"\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',373,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,219,77,0,0,'','ezsrrating',374,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,220,77,0,NULL,'','ezkeyword',375,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,78,0,NULL,'Services','ezstring',376,'eng-GB',3,0,'services',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,78,0,NULL,'','ezstring',377,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,78,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',378,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,78,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',379,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (380,158,78,0,1,'','ezboolean',380,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,79,0,NULL,'Support & Maintenance','ezstring',381,'eng-GB',2,0,'support & maintenance',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,79,0,NULL,'','ezstring',382,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,79,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Product Support is the core service of the eZ Publish Enterprise subscription, available to all our customers, with differing initial response times depending on the subscription service level. Subscribing to eZ Publish Enterprise gives you the option of requesting assistance from our product support team.</paragraph></section>','ezxmltext',383,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,79,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Dedicated, Responsive and Efficient</header><paragraph>Product Support is the core service of the eZ Publish Enterprise subscription, available to all our customers, with differing initial response times depending on the subscription service level.</paragraph><section><header>Unlimited Product Support</header><paragraph>In addition to the available documentation and books, Enterprise subscribers have access to a highly professional support service which provides 3 tiers of support, escalation processes and both online and phone access. Our highly qualified, experienced product support teams are dedicated to the success of our customers. They ensure that your projects are successful and that you are totally satisfied with eZ. eZ is dedicated to helping and supporting both clients and partners. This is the core service of eZ\'s Enterprise Open Source Business model.</paragraph></section><section><header>Access to extended solution support</header><paragraph>In addition to maintenance, you may want assistance from our professional services team to help manage your platform or assist with eZ Publish-based application development. With eZ Publish Enterprise, you are free to include extended services from our professional services staff. They are on-hand to help you implement and run your platform. Services differ depending on your region. They can include solution support tickets, regular audits, technical key accounting or training services.</paragraph><paragraph>No single solution is right for everyone, and just as one size does not fit all, you will discuss extended solution support with our sales engineer to define the specific package that fits your needs!</paragraph><paragraph>In the event that you need a one-time intervention, you have the flexibility to order specific professional services in addition to your service subscription at a moment’s notice.</paragraph></section></section><section><header>Keep Your Platform Secure and Up-to-Date</header><paragraph>Subscribing to eZ Publish Enterprise gives you the option of requesting assistance from our product support team.</paragraph><section><header>eZ Publish Enterprise maintenance</header><paragraph>Subscribing to eZ Publish Enterprise gives you the option of requesting assistance from our product support team. In addition, eZ is constantly actively maintaining and assuring the quality of our software. With an eZ Publish Enterprise subscription, your installation will benefit from our quality assurance programs, which feature service packs to fix issues identified in the software as well as improve or enhance it in a variety of ways. eZ Publish Enterprise subscription is the best option for ensuring your eZ Publish platform is stable, reliable and continuously supported by our support services.</paragraph></section><section><header>eZ Publish bug fix guarantee</header><paragraph>By subscribing to eZ Publish Enterprise, you benefit from an unique bug fix guarantee that cannot be obtained in any other way. eZ, as the maker of eZ Publish, deploys the necessary resources in order to fix the bugs you identify via the maintenance service.</paragraph><paragraph>If need be, and depending of the service level of your subscription, eZ will provide hot fixes - a rapid-response measure to workaround issues before the fix is even available in the maintenance service.</paragraph></section></section></section>','ezxmltext',384,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,79,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',385,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,79,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Support-Maintenance.jpg\" suffix=\"jpg\" basename=\"Support-Maintenance\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/support-maintenance/386-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/support-maintenance/386-1-eng-GB/Support-Maintenance.jpg\" original_filename=\"4ff73fcb.jpg\" mime_type=\"image/jpeg\" width=\"640\" height=\"427\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204181\"><original attribute_id=\"386\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"427\" Width=\"640\" IsColor=\"1\"/></ezimage>\n','ezimage',386,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,79,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Photo: Martin Bekkelund, Friprogsenteret. <link xhtml:id=\"yui_3_7_3_3_1361872687650_893\" url_id=\"40\">CC Some rights reserved</link></paragraph></section>','ezxmltext',387,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,79,0,0,'','ezgmaplocation',388,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,79,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"admin@ezmarketingautomation.com\"/></authors></ezauthor>\n','ezauthor',389,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,79,0,0,'','ezdatetime',390,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,79,0,0,'','ezsrrating',391,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,79,0,NULL,'','ezkeyword',392,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,80,0,NULL,'Professional Services','ezstring',393,'eng-GB',2,0,'professional services',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,80,0,NULL,'','ezstring',394,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,80,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ offers Expert Consulting and Audits via our Professional Services to help keep your eZ websites on-time, on-track and performing at peak levels. Our goal is that your implementation succeeds and that you get your message out on-time and on-budget.</paragraph></section>','ezxmltext',395,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,80,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ offers professional services to assist partners and/or clients with unusually complex situations that require specific project assistance. The scope is determined and customized prior to the time of engagement. Work can be performed remotely or on the client premises according to project needs.</paragraph></section>','ezxmltext',396,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,80,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',397,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,80,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Professional-Services.jpg\" suffix=\"jpg\" basename=\"Professional-Services\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/professional-services/398-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/professional-services/398-1-eng-GB/Professional-Services.jpg\" original_filename=\"d08e25a3.jpg\" mime_type=\"image/jpeg\" width=\"1600\" height=\"901\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204181\"><original attribute_id=\"398\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"901\" Width=\"1600\" IsColor=\"1\" ByteOrderMotorola=\"0\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Software\" base64=\"1\">UGljYXNh</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">NDY=</item></array><array name=\"exif\"><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"ExifImageWidth\" base64=\"1\">MTYwMA==</item><item key=\"ExifImageLength\" base64=\"1\">OTAx</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTQ2</item><item key=\"ImageUniqueID\" base64=\"1\">NzkyNzNlNmY3MzczM2U2ZjE5MzBkYWJiZWZmYmQyMTk=</item></array></information></ezimage>\n','ezimage',398,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,80,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Photo: <link url_id=\"41\">Petri Mertanen</link></paragraph></section>','ezxmltext',399,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,80,0,0,'','ezgmaplocation',400,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,80,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"admin@ezmarketingautomation.com\"/></authors></ezauthor>\n','ezauthor',401,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,80,0,0,'','ezdatetime',402,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,80,0,0,'','ezsrrating',403,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,80,0,NULL,'','ezkeyword',404,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,81,0,NULL,'Training Services','ezstring',405,'eng-GB',2,0,'training services',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,81,0,NULL,'','ezstring',406,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,81,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Systems can offer your company the expert training you require to get the most out of eZ Publish. We have training scheduled in our regional offices, please check our Training Calendar. For groups of four or more, eZ can arrange training sessions that fit your schedule. </paragraph></section>','ezxmltext',407,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,81,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><section><header><link url_id=\"42\">Essential Training</link></header><paragraph>The eZ Publish essential training packages will help you get an easy introduction to the enterprise Content Management System eZ Publish.There are two target groups, technical skilled people like CMS beginners and de...</paragraph><paragraph><link url_id=\"42\">more »</link></paragraph></section></section><section><section><header><link url_id=\"43\">Special Topics Training</link></header><paragraph>If you already have some experience with eZ Publish and want to get a deeper knowledge in special topics like enterprise search, website optimization, analytics or recommendations? You can select here from different s...</paragraph><paragraph><link url_id=\"43\">more »</link></paragraph></section></section><section><section><header><link url_id=\"44\">Update Training</link></header><paragraph>New eZ Publish version released ? If you need an overview of the new features and changes of a new eZ Publish version, simply book our update training and you will learn everything about the new version. You learn the...</paragraph><paragraph><link url_id=\"44\">more »</link></paragraph></section></section><section><section><header><link url_id=\"45\">Custom Training</link></header><paragraph>If you have special topics which we did not mention in the categories above? We can design a training only for you. You define your interests and we prepare special training material matching your needs. Custom traini...</paragraph><paragraph><link url_id=\"45\">more »</link></paragraph></section></section><section><section><header><link url_id=\"46\">eZ Partner Training</link></header><paragraph>Participation in the eZ System Partner Program affords the ability to offer eZ training curriculum, add value to offerings, enhance training business and opens doors to the eZ\'s ecosystem of partners and customers, wh...</paragraph><paragraph><link url_id=\"46\">more »</link></paragraph></section></section><section><section><header><link url_id=\"47\">Online Certification</link></header><paragraph>Most trainings are combined with the option of an online certification. eZ systems offers to perform an online exam with an automated tool.</paragraph></section></section></section>','ezxmltext',408,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,81,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',409,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,81,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Training-Services.jpg\" suffix=\"jpg\" basename=\"Training-Services\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/training-services/410-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/training-services/410-1-eng-GB/Training-Services.jpg\" original_filename=\"138f5201.jpg\" mime_type=\"image/jpeg\" width=\"1838\" height=\"1105\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204181\"><original attribute_id=\"410\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"1105\" Width=\"1838\" IsColor=\"1\" ByteOrderMotorola=\"0\" CCDWidth=\"5mm\" ApertureFNumber=\"f/3.5\" UserComment=\"\" UserCommentEncoding=\"UNDEFINED\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">Q2Fub24=</item><item key=\"Model\" base64=\"1\">Q2Fub24gRElHSVRBTCBJWFVTIDMw</item><item key=\"Orientation\" base64=\"1\">MA==</item><item key=\"XResolution\" base64=\"1\">MTgwLzE=</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"YResolution\" base64=\"1\">MTgwLzE=</item><item key=\"Software\" base64=\"1\">UGljYXNhIDMuMA==</item><item key=\"DateTime\" base64=\"1\">MjAwODowOTozMCAwODo1Nzo0Mw==</item><item key=\"YCbCrPositioning\" base64=\"1\">MQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjEw</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MS8yNQ==</item><item key=\"FNumber\" base64=\"1\">MzUvMTA=</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwODowOTozMCAwODo1Nzo0Mw==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwODowOTozMCAwODo1Nzo0Mw==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">My8x</item><item key=\"ShutterSpeedValue\" base64=\"1\">MTQ5LzMy</item><item key=\"ApertureValue\" base64=\"1\">MTE2LzMy</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8z</item><item key=\"MaxApertureValue\" base64=\"1\">MTE2LzMy</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"Flash\" base64=\"1\">MTY=</item><item key=\"FocalLength\" base64=\"1\">ODQ2Mi8xMDAw</item><item key=\"MakerNote\" base64=\"1\">EQABAAMALgAAAJIDAAACAAMABAAAAO4DAAADAAMABAAAAPYDAAAEAAMAIgAAAP4DAAAAAAMABgAAAEIEAAAAAAMACQAAAE4EAAASAAMAHAAAAGAEAAATAAMABAAAAJgEAAAGAAIAGQAAAKAEAAAHAAIAFgAAAMAEAAAIAAQAAQAAAAwNHAAJAAIAIAAAANgEAAAQAAQAAQAAAAAAVQENAAQAVgAAAPgEAAAYAAEAAAEAAFAGAAAZAAMAAQAAAAEAAAAcAAMAAQAAAAAAAAAAAAAAXAACAAAAAwAAAAEAAAAEAP//AQAAABgAAAAAAAAAAAAPAAMAAQAFIAAA/3////hDqBboA3QAtQD//wAAAAAAAAAAAAD//wAAAAgACAAAAAAAAAAA/3//fwAAAAACAA4hAgACAAAAAAAAAAAARABAAIAAUQB0AJUAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAQA2AgAAcACaAAAAAAAKAPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAAAABAAAAAAAAAAAAAAAJAAEAAAgABgAIAAFxAS4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAASU1HOkRJR0lUQUwgSVhVUyAzMCBKUEVHAAAAAAAAAABGaXJtd2FyZSBWZXJzaW9uIDEuMDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAOUAAAAfAAAAAAAAAAoAAAAfAAAAAAAAAAAAAAAPAAAACgAAANUAAADlAAAAUQEAAAAAAAAvAAAA1QAAAEoCAAAAAAAAAAAAAAAAAAA0AAAAYQAAAKYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA6AQAAAAAAAF4AAAClAAAAAAAAAAAAAAAABAAAAAUAAF8AAACjAAAAFQAAAK8DAADFBQAA2wYAAK8DAAABAAAAfQIAAFEBAAD0AAAA4AEAAPsAAAAGAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAHAEAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAABIAQAAbgEAAAAAAAAAAAAAAQAAAAAAAAA4JQAABAAAAAEAAAAfAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD2////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAElJKgCmAgAA</item><item key=\"UserComment\" base64=\"1\">AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">NjU1MzU=</item><item key=\"ExifImageWidth\" base64=\"1\">MTgzOA==</item><item key=\"ExifImageLength\" base64=\"1\">MTEwNQ==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MjIwMg==</item><item key=\"FocalPlaneXResolution\" base64=\"1\">MjA0ODAwMC8yMjQ=</item><item key=\"FocalPlaneYResolution\" base64=\"1\">MTUzNjAwMC8xNjg=</item><item key=\"FocalPlaneResolutionUnit\" base64=\"1\">Mg==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MjA0OC8yMDQ4</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"ImageUniqueID\" base64=\"1\">YmQ4ZjAyMDA1YjMxOGUzYjJmZDAwNmViY2ZiMjk1MmE=</item></array></information></ezimage>\n','ezimage',410,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,81,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Photo: <link url_id=\"41\">Petri Mertanen</link></paragraph></section>','ezxmltext',411,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,81,0,0,'','ezgmaplocation',412,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,81,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"admin@ezmarketingautomation.com\"/></authors></ezauthor>\n','ezauthor',413,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,81,0,0,'','ezdatetime',414,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,81,0,0,'','ezsrrating',415,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,81,0,NULL,'','ezkeyword',416,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,82,0,NULL,'eZ Publish Enterprise Service','ezstring',417,'eng-GB',2,0,'ez publish enterprise service',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,82,0,NULL,'','ezstring',418,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,82,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Joining the leading companies who subscribe to eZ Publish Enterprise brings a long list of benefits, services and tools designed to improve and secure your content platform.</paragraph></section>','ezxmltext',419,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,82,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><embed align=\"right\" view=\"embed\" size=\"listitem\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"83\"/></paragraph><section><section><section><header>The best of two worlds</header><paragraph>eZ Publish Enterprise is the best choice for organizations employing eZ Publish in a professional environment. eZ Publish Enterprise comes with all the benefits of the open source eZ Publish community project, which is founded on innovative software created by eZ in collaboration with a global user base. The software is based on open standards, but packaged with a professional software and services package that is standardized, stable and solid. The Enterprise subscription includes support and bug fix guarantees, monitoring, and other value-added services.&#xA0;</paragraph><paragraph><anchor name=\"eztoc170091_0_2\"/></paragraph></section></section></section><section><section><section><header>The license that fits</header><paragraph>Clear, concise intellectual property framework is another competitive advantage that sets eZ Publish Enterprise apart. Our customers are free to select the license that fits their business: either the traditional General Public License (GPL), or the professional Personal Use License (PUL). In either case, eZ Systems controls the intellectual property rights of the software, so there&#x2019;s no concern about conflicts of interest between software contributors.</paragraph><paragraph><anchor name=\"eztoc170091_0_3\"/></paragraph></section></section></section><section><section><section><header>Access to a dedicated Service Portal</header><paragraph>Your subscription to eZ Publish Enterprise entitles you to a dedicated Service Portal for communication and collaboration with our teams. In addition, you will receive secured extranet access for each service user for streamlined communication with eZ.</paragraph><paragraph>Important features of the Service Portal includes a support issue tracker, detailed summary of your subscription and its certified software, as well as access to maintenance and monitoring information.</paragraph><paragraph>Product Support is the core service of the eZ Publish Enterprise subscription, available to all our customers with differing initial response times depending on the subscription service level.</paragraph></section></section></section></section>\n','ezxmltext',420,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,82,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',421,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,82,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Enterprise-Service.jpg\" suffix=\"jpg\" basename=\"eZ-Publish-Enterprise-Service\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/422-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/422-1-eng-GB/eZ-Publish-Enterprise-Service.jpg\" original_filename=\"f6ff91ab.jpg\" mime_type=\"image/jpeg\" width=\"708\" height=\"400\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204182\"><original attribute_id=\"422\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"400\" Width=\"708\" IsColor=\"1\" ByteOrderMotorola=\"0\" Copyright=\"NGUYEN DINH Quoc-Huy - QH Photography\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Software\" base64=\"1\">UGljYXNh</item><item key=\"Artist\" base64=\"1\">TkdVWUVOIERJTkggUXVvYy1IdXk=</item><item key=\"Copyright\" base64=\"1\">TkdVWUVOIERJTkggUXVvYy1IdXkgLSBRSCBQaG90b2dyYXBoeQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTI4</item></array><array name=\"exif\"><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"ExifImageWidth\" base64=\"1\">ODAw</item><item key=\"ExifImageLength\" base64=\"1\">NTMx</item></array></information></ezimage>\n','ezimage',422,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,82,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Copyright: <link url_id=\"48\">QH Photography</link></paragraph></section>','ezxmltext',423,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,82,0,1,'','ezgmaplocation',424,'eng-GB',2,0,'Manhattan New York',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,82,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',425,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,82,0,0,'','ezdatetime',426,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,82,0,0,'','ezsrrating',427,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,82,0,NULL,'','ezkeyword',428,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,83,0,NULL,'squares','ezstring',429,'eng-GB',2,0,'squares',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,83,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',430,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,83,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"squares.png\" suffix=\"png\" basename=\"squares\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB/squares.png\" original_filename=\"a825a4dc.png\" mime_type=\"image/png\" width=\"83\" height=\"83\" alternative_text=\"htuiedhuehtdneui\" alias_key=\"1293033771\" timestamp=\"1472204182\"><original attribute_id=\"431\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><alias name=\"listitem\" filename=\"squares_listitem.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB\" url=\"var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB/squares_listitem.png\" mime_type=\"image/png\" width=\"83\" height=\"83\" alias_key=\"379714049\" timestamp=\"1472315205\" is_valid=\"1\"/></ezimage>\n','ezimage',431,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,83,0,0,'','ezsrrating',432,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,83,0,NULL,'','ezkeyword',433,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,84,0,NULL,'Partner','ezstring',434,'eng-GB',3,0,'partner',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,84,0,NULL,'','ezstring',435,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,84,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In this section you find information that is restricted based on login privileges. This is done by assigning a non-public section to the content, in this case \"Restricted\" is used.</paragraph></section>','ezxmltext',436,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,84,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',437,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (438,158,84,0,1,'','ezboolean',438,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,240,85,0,NULL,'eZ Logo Black','ezstring',439,'eng-GB',2,0,'ez logo black',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,241,85,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>150 DPI PNG version of the eZ Logo.</paragraph></section>','ezxmltext',440,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,242,85,0,NULL,'','ezbinaryfile',441,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,243,85,0,0,'','ezsrrating',442,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,244,85,0,NULL,'','ezkeyword',443,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,240,86,0,NULL,'eZ Logo White','ezstring',444,'eng-GB',2,0,'ez logo white',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,241,86,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Logo 150DPI in PNG format.</paragraph></section>','ezxmltext',445,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,242,86,0,NULL,'','ezbinaryfile',446,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,243,86,0,0,'','ezsrrating',447,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,244,86,0,NULL,'','ezkeyword',448,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,87,0,NULL,'Logos','ezstring',449,'eng-GB',3,0,'logos',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,155,87,0,NULL,'','ezstring',450,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,119,87,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',451,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,156,87,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',452,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (453,158,87,0,1,'','ezboolean',453,'eng-GB',3,1,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,193,88,0,NULL,'Blog','ezstring',454,'eng-GB',2,0,'blog',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,194,88,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',455,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,195,88,0,NULL,'','ezkeyword',456,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,196,89,0,NULL,'This will be our magic recipe','ezstring',457,'eng-GB',2,0,'this will be our magic recipe',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,197,89,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Pretty simple:</paragraph><paragraph><embed align=\"center\" view=\"embed\" size=\"large\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"96\"/></paragraph></section>\n','ezxmltext',458,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,198,89,0,1332932400,'','ezdatetime',459,'eng-GB',2,1332932400,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,199,89,0,NULL,'','ezkeyword',460,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,254,90,0,NULL,'Gallery','ezstring',461,'eng-GB',2,0,'gallery',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,255,90,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',462,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,256,90,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',463,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,257,90,0,NULL,'','ezobjectrelation',464,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,258,90,0,NULL,'','ezkeyword',465,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,196,91,0,NULL,'It\'s helping me optimizing my business','ezstring',466,'eng-GB',2,0,'it\'s helping me optimizing my business',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,197,91,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Mauris hendrerit dignissim nisl, non sagittis velit aliquet ut. Ut egestas euismod tempus. Aliquam luctus ultrices interdum. Donec commodo, mi quis cursus feugiat, odio arcu tempor tortor, et sollicitudin velit nulla vitae mi. Cras feugiat interdum sem, quis vestibulum nisl interdum vel. Fusce eget nibh mauris. Nulla et purus sed urna pharetra egestas eu sed dui. Nulla sollicitudin eu eros sit amet porttitor.In lacus justo, cursus tincidunt quam eu, pretium pellentesque tellus. Nulla condimentum ultrices lorem, in ornare nulla imperdiet nec. Etiam facilisis vestibulum ligula condimentum interdum. Sed molestie nunc gravida nunc tristique gravida. Proin laoreet luctus enim nec interdum. Proin massa mi, rutrum et dui sit amet, consectetur elementum sem. Sed lorem massa, scelerisque in nunc eu, tempor auctor purus. Aliquam convallis enim non viverra molestie. Ut quis arcu fringilla, vehicula eros et, scelerisque turpis. Donec at ante eu mauris sagittis posuere. Suspendisse sit amet risus dolor. Donec posuere massa eget consequat malesuada. Nunc eget feugiat massa.</paragraph></section>','ezxmltext',467,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,198,91,0,1358956920,'','ezdatetime',468,'eng-GB',2,1358956920,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,199,91,0,NULL,'','ezkeyword',469,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,200,92,0,NULL,'Discover eZ Publish 5','ezstring',470,'eng-GB',2,0,'discover ez publish 5',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,201,92,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong><embed align=\"right\" view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"102\"/>Mont Castor</strong>&#xA0;Castor (Italian: Castore) is a mountain in the Pennine Alps on the border between Valais, Switzerland and the Aosta Valley in Italy. It is the higher of a pair of twin peaks (Zwillinge), the other being Pollux, named after the Gemini twins of Roman mythology. Castor\'s peak is at an elevation of 4,228 m (13,871 ft), and it lies between Breithorn and Monte Rosa. It is separated from Pollux by a pass at 3,845 m (12,615 ft), named Passo di Verra in Italian and Zwillingsjoch in German.</paragraph><section><section><header>White Papers</header><paragraph>Download our white paper if you want to quickly discover eZ Publish 5.</paragraph><paragraph>This white paper contains</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><strong>A detailed presentation of eZ Publish 5 for Marketers and Editors.</strong></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><strong>An introduction to the eZ Publish 5 technical architecture.</strong></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><strong>A clear summary of the value of using such a digital user experience management platform.</strong></paragraph></li></ul></paragraph><paragraph>Don\'t hesitate, leave us your contact information and download this paper to get all the benefits of eZ Publish 5.</paragraph></section></section></section>\n','ezxmltext',471,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,202,92,0,93,'681116da12d3fed558704658248067da','ezobjectrelation',472,'eng-GB',2,93,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,203,92,0,NULL,'','ezstring',473,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,204,92,0,NULL,'','ezstring',474,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,205,92,0,NULL,'','ezemail',475,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,206,92,0,NULL,'','ezcountry',476,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,207,92,0,NULL,'','eztext',477,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,208,92,0,NULL,'Get your copy!','ezstring',478,'eng-GB',2,0,'get your copy!',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,181,93,0,NULL,'Download your White Paper here','ezstring',479,'eng-GB',2,0,'download your white paper here',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,182,93,0,NULL,'','ezstring',480,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,183,93,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Thanks for your interest, please download your copy of the white paper below.</paragraph></section>','ezxmltext',481,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,184,93,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Beyond Content Management, managing &#x201C;Digital Experiences&#x201D;, takes much more than technology; it is a strategy that focuses on the operations and processes of a business around the needs of the individual customer. Today leading organizations are increasingly focusing on building great experiences but realize it is a complex enterprise, involving strategy, integration of technology, orchestrating business models, brand management and CEO commitment.&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"95\"/></paragraph></section>\n','ezxmltext',482,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,185,93,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',483,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,186,93,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204183\"><original attribute_id=\"484\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',484,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,187,93,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',485,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,188,93,0,0,'','ezgmaplocation',486,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,189,93,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',487,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,190,93,0,0,'','ezdatetime',488,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,191,93,0,0,'','ezsrrating',489,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,192,93,0,NULL,'','ezkeyword',490,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,221,94,0,NULL,'Contact Us','ezstring',491,'eng-GB',2,0,'contact us',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,222,94,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Your opinion matter!</paragraph></section>','ezxmltext',492,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,223,94,0,NULL,'','ezstring',493,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,224,94,0,NULL,'','ezstring',494,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,225,94,0,NULL,'','ezstring',495,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,226,94,0,NULL,'GB','ezcountry',496,'eng-GB',2,0,'united kingdom',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,227,94,0,NULL,'','eztext',497,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,228,94,0,NULL,'','ezemail',498,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,229,94,0,NULL,'','ezemail',499,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,240,95,0,NULL,'eZ Publish 5 Platform Whitepaper','ezstring',500,'eng-GB',2,0,'ez publish 5 platform whitepaper',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,241,95,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Ability to create your own Digital Experience is the key to a successful digital business! This is what eZ can help you with.</paragraph></section>','ezxmltext',501,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,242,95,0,NULL,'','ezbinaryfile',502,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,243,95,0,0,'','ezsrrating',503,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,244,95,0,NULL,'','ezkeyword',504,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,96,0,NULL,'Screen Shot 2013-01-31 at 8.17.26 PM','ezstring',505,'eng-GB',2,0,'screen shot 2013-01-31 at 8.17.26 pm',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,96,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',506,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,96,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen-Shot-2013-01-31-at-8.17.26-PM.png\" suffix=\"png\" basename=\"Screen-Shot-2013-01-31-at-8.17.26-PM\" dirpath=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM.png\" original_filename=\"07cad76d.png\" mime_type=\"image/png\" width=\"707\" height=\"442\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204183\"><original attribute_id=\"507\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><alias name=\"reference\" filename=\"Screen-Shot-2013-01-31-at-8.17.26-PM_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM_reference.png\" mime_type=\"image/png\" width=\"600\" height=\"375\" alias_key=\"2605465115\" timestamp=\"1472315205\" is_valid=\"1\"/><alias name=\"large\" filename=\"Screen-Shot-2013-01-31-at-8.17.26-PM_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM_large.png\" mime_type=\"image/png\" width=\"300\" height=\"188\" alias_key=\"1592566908\" timestamp=\"1472315205\" is_valid=\"1\"/></ezimage>\n','ezimage',507,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,96,0,0,'','ezsrrating',508,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,96,0,NULL,'','ezkeyword',509,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,97,0,NULL,'funel','ezstring',510,'eng-GB',2,0,'funel',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,97,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',511,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,97,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"funel.png\" suffix=\"png\" basename=\"funel\" dirpath=\"var/ezdemo_site/storage/images/media/images/funel/512-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/funel/512-1-eng-GB/funel.png\" original_filename=\"1e653715.png\" mime_type=\"image/png\" width=\"600\" height=\"371\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204183\"><original attribute_id=\"512\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',512,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,97,0,0,'','ezsrrating',513,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,97,0,NULL,'','ezkeyword',514,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,98,0,NULL,'mount Matterhorn','ezstring',515,'eng-GB',2,0,'mount matterhorn',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,98,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The Matterhorn, also known as Cervino was the second mountain codename used, it was in spring 2011 for the eZ Publish 4.5 release. Photo: ccl <link url_id=\"49\">Some rights reserved</link> by <link url_id=\"50\">Frank Peters</link></paragraph></section>','ezxmltext',516,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,98,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Matterhorn.jpg\" suffix=\"jpg\" basename=\"mount-Matterhorn\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-matterhorn/517-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-matterhorn/517-1-eng-GB/mount-Matterhorn.jpg\" original_filename=\"3963f0b6.jpg\" mime_type=\"image/jpeg\" width=\"853\" height=\"640\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"517\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"640\" Width=\"853\" IsColor=\"1\" ByteOrderMotorola=\"0\"/></ezimage>\n','ezimage',517,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,98,0,0,'','ezsrrating',518,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,98,0,NULL,'','ezkeyword',519,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,99,0,NULL,'mount Annapurna','ezstring',520,'eng-GB',2,0,'mount annapurna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,99,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph align=\"justify\">eZ Publish 4.6 was named after the Annapurna mountain (Sanskrit: “full of food”). This was fall 2011. Photo: <link url_id=\"49\">Some rights reserved</link> by <link url_id=\"51\">Sam@flickr</link></paragraph></section>','ezxmltext',521,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,99,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Annapurna.jpg\" suffix=\"jpg\" basename=\"mount-Annapurna\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-annapurna/522-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-annapurna/522-1-eng-GB/mount-Annapurna.jpg\" original_filename=\"38d686e0.jpg\" mime_type=\"image/jpeg\" width=\"1024\" height=\"768\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"522\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"768\" Width=\"1024\" IsColor=\"1\"/></ezimage>\n','ezimage',522,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,99,0,0,'','ezsrrating',523,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,99,0,NULL,'','ezkeyword',524,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,100,0,NULL,'mount Stadda','ezstring',525,'eng-GB',2,0,'mount stadda',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,100,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Stadda is almost there, the \".1\" of the 5th generation: eZ Publish 5.1 and Norway\'s national mountain.</paragraph></section>','ezxmltext',526,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,100,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Stadda.jpg\" suffix=\"jpg\" basename=\"mount-Stadda\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-stadda/527-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-stadda/527-1-eng-GB/mount-Stadda.jpg\" original_filename=\"05d34e35.jpg\" mime_type=\"image/jpeg\" width=\"2560\" height=\"1920\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"527\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"1920\" Width=\"2560\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">Q0FTSU8=</item><item key=\"Model\" base64=\"1\">UVYtNTcwMCAg</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">VmVyMS4wMCAgICAgICAgICAgICAgICA=</item><item key=\"DateTime\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"YCbCrPositioning\" base64=\"1\">MQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjYy</item><item key=\"UndefinedTag:0xC4A5\" base64=\"1\">UHJpbnRJTQAwMjUwAAAABAABABYAFgACAQAAAAEABQAAAAEBAgAAAA==</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTYwNC8xMDAwMDAw</item><item key=\"FNumber\" base64=\"1\">MjgvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTkyOTM3OTIvNDkxNTIwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MjAvMTA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MTY=</item><item key=\"FocalLength\" base64=\"1\">MjA3NC8xMDA=</item><item key=\"MakerNote\" base64=\"1\">AB0AAgADAAAAAQADAAAAAwADAAAAAQAHAAAABAADAAAAAQAEAAAABQADAAAAAQANAAAABgAEAAAAAQAATiAABwADAAAAAQABAAAACAADAAAAAQAAAAAACQADAAAAAQABAAAACgAEAAAAAQABAAAACwADAAAAAQAQAAAADAADAAAAAQAQAAAADQADAAAAAQARAAAADgADAAAAAQAAAAAADwADAAAAAQAAAAAAEAADAAAAAQAAAAAAEQAEAAAAAQB2AE0AEgADAAAAAQAQAAAAEwADAAAAAQAZAAAAFQACAAAAEgAABEIAFgADAAAAAQAFAAAAFwADAAAAAQABAAAAGAADAAAAAQABAAAAGQADAAAAAQABAAAAGgAHAAAAFAAABFQAHAADAAAAAQAGAAAAHQADAAAAAQADAAAAHgADAAAAAQABAAAAFAADAAAAAQAyAAAgIwADAAAAAQABAAAAAAAAMDIwOQAAMTAwOQAAMjMwMAAAAAABEAEBAAAAAAIAAAAAAAAAAAA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjU2MA==</item><item key=\"ExifImageLength\" base64=\"1\">MTkyMA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTEyOA==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">Mg==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">NjU1MzYvNjU1MzY=</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MTAw</item><item key=\"SceneCaptureType\" base64=\"1\">Mg==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',527,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,100,0,0,'','ezsrrating',528,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,100,0,NULL,'','ezkeyword',529,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,101,0,NULL,'mount Ventoux','ezstring',530,'eng-GB',2,0,'mount ventoux',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,101,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>\"le Ventoux\", aka the Giant of Provence, was on eZ\'s list in spring 2014, a few weeks before le Tour de France. eZ Publish Platform 5.3 is here!</paragraph></section>','ezxmltext',531,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,101,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Ventoux.jpg\" suffix=\"jpg\" basename=\"mount-Ventoux\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-ventoux/532-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-ventoux/532-1-eng-GB/mount-Ventoux.jpg\" original_filename=\"2323304e.jpg\" mime_type=\"image/jpeg\" width=\"1024\" height=\"768\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"532\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"768\" Width=\"1024\" IsColor=\"1\"/></ezimage>\n','ezimage',532,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,101,0,0,'','ezsrrating',533,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,101,0,NULL,'','ezkeyword',534,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,102,0,NULL,'mount Castor','ezstring',535,'eng-GB',2,0,'mount castor',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,102,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Castor is the eZ summit for November 2014. It is also the last of the 5.x series of eZ Publish Platform.</paragraph></section>','ezxmltext',536,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,102,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Castor.jpg\" suffix=\"jpg\" basename=\"mount-Castor\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor.jpg\" original_filename=\"af41107b.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"537\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"YResolution\" base64=\"1\">NzIwMDAwLzEwMDAw</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKQ==</item><item key=\"DateTime\" base64=\"1\">MjAxNDoxMToxMCAxODowMjo0NA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTY4</item></array><array name=\"exif\"><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">Nzcw</item><item key=\"ExifImageLength\" base64=\"1\">NTc4</item></array></information><alias name=\"reference\" filename=\"mount-Castor_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"450\" alias_key=\"2605465115\" timestamp=\"1472315206\" is_valid=\"1\"/><alias name=\"medium\" filename=\"mount-Castor_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"150\" alias_key=\"405413724\" timestamp=\"1472315206\" is_valid=\"1\"/></ezimage>\n','ezimage',537,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,102,0,0,'','ezsrrating',538,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,102,0,NULL,'','ezkeyword',539,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,103,0,NULL,'mount Kilimanjaro','ezstring',540,'eng-GB',2,0,'mount kilimanjaro',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,103,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The first release of the new generation of eZ Publish, eZ Publish  5.0 platform, was Kilimanjaro. A giant for a giant step that happened in fall 2012. </paragraph></section>','ezxmltext',541,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,103,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Kilimanjaro.jpg\" suffix=\"jpg\" basename=\"mount-Kilimanjaro\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-kilimanjaro/542-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-kilimanjaro/542-1-eng-GB/mount-Kilimanjaro.jpg\" original_filename=\"b970cf62.jpg\" mime_type=\"image/jpeg\" width=\"853\" height=\"640\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"542\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"640\" Width=\"853\" IsColor=\"1\" ByteOrderMotorola=\"0\"/></ezimage>\n','ezimage',542,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,103,0,0,'','ezsrrating',543,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,103,0,NULL,'','ezkeyword',544,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,104,0,NULL,'mount Etna','ezstring',545,'eng-GB',2,0,'mount etna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,104,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The Etna release was the last of the 4.x generation, released in spring 2012. Photo by Josep Renalias under the <link url_id=\"52\">Creative Commons</link> <link url_id=\"53\">Attribution-Share Alike 2.5 Generic</link> license.</paragraph></section>','ezxmltext',546,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,104,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Etna.jpg\" suffix=\"jpg\" basename=\"mount-Etna\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-etna/547-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-etna/547-1-eng-GB/mount-Etna.jpg\" original_filename=\"e08a9864.jpg\" mime_type=\"image/jpeg\" width=\"850\" height=\"638\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204184\"><original attribute_id=\"547\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"638\" Width=\"850\" IsColor=\"1\" ByteOrderMotorola=\"0\" CCDWidth=\"7mm\" ExposureTime=\"0.002 s (1/446)\" ApertureFNumber=\"f/6.3\" Copyright=\"    \"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">RlVKSUZJTE0=</item><item key=\"Model\" base64=\"1\">RmluZVBpeDY5MDBaT09N</item><item key=\"Software\" base64=\"1\">RGlnaXRhbCBDYW1lcmEgRmluZVBpeDY5MDBaT09NIFZlcjEuMDA=</item><item key=\"DateTime\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"YCbCrPositioning\" base64=\"1\">Mg==</item><item key=\"Copyright\" base64=\"1\">ICAgIA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTkw</item></array><array name=\"exif\"><item key=\"FNumber\" base64=\"1\">NjMwLzEwMA==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MTAw</item><item key=\"ExifVersion\" base64=\"1\">MDIxMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTUvMTA=</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODgwLzEwMA==</item><item key=\"ApertureValue\" base64=\"1\">NTMzLzEwMA==</item><item key=\"BrightnessValue\" base64=\"1\">OTE2LzEwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8z</item><item key=\"MaxApertureValue\" base64=\"1\">MzAwLzEwMA==</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NDY4LzEw</item><item key=\"MakerNote\" base64=\"1\">RlVKSUZJTE0MAAAAEQAAAAcABAAAADAxMzAAEAIACAAAAN4AAAABEAMAAQAAAAMAAAACEAMAAQAAAAAAAAADEAMAAQAAAAAAAAAQEAMAAQAAAAIAAAAREAoAAQAAAOYAAAAgEAMAAQAAAAAAAAAhEAMAAQAAAAAAAAAwEAMAAQAAAAAAAAAxEAMAAQAAAAAAAAAyEAMAAQAAAAEAAAAAEQMAAQAAAAAAAAAAEgMAAQAAAAAAAAAAEwMAAQAAAAAAAAABEwMAAQAAAAAAAAACEwMAAQAAAAAAAAAAAAAATk9STUFMIAAAAAAACgAAAA==</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzMg==</item><item key=\"ExifImageLength\" base64=\"1\">MjEyOA==</item><item key=\"FocalPlaneXResolution\" base64=\"1\">MzcwNC8x</item><item key=\"FocalPlaneYResolution\" base64=\"1\">MzcwNC8x</item><item key=\"FocalPlaneResolutionUnit\" base64=\"1\">Mw==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item></array></information></ezimage>\n','ezimage',547,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,104,0,0,'','ezsrrating',548,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,104,0,NULL,'','ezkeyword',549,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,105,0,NULL,'mount Fuji','ezstring',550,'eng-GB',2,0,'mount fuji',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,105,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Fuji is the first mountain eZ climbed, when releasing eZ Publish 4.4 in fall 2010.</paragraph></section>','ezxmltext',551,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,105,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Fuji.jpg\" suffix=\"jpg\" basename=\"mount-Fuji\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-fuji/552-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-fuji/552-1-eng-GB/mount-Fuji.jpg\" original_filename=\"58504932.jpg\" mime_type=\"image/jpeg\" width=\"853\" height=\"640\" alternative_text=\"mount fuji\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"552\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"640\" Width=\"853\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:15:{s:10:&quot;ImageWidth&quot;;i:2560;s:11:&quot;ImageLength&quot;;i:1920;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:4:&quot;Make&quot;;s:5:&quot;CASIO&quot;;s:5:&quot;Model&quot;;s:9:&quot;QV-5700  &quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:12:&quot;720000/10000&quot;;s:11:&quot;YResolution&quot;;s:12:&quot;720000/10000&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:31:&quot;Adobe Photoshop CS6 (Macintosh)&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2013:02:05 19:00:18&quot;;s:16:&quot;YCbCrPositioning&quot;;i:1;s:16:&quot;Exif_IFD_Pointer&quot;;i:336;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTYwNC8xMDAwMDAw</item><item key=\"FNumber\" base64=\"1\">MjgvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTkyOTM3OTIvNDkxNTIwMA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">OTI3NjEyNC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">Mjk3MDg1NC8xMDAwMDAw</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MjAvMTA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MTY=</item><item key=\"FocalLength\" base64=\"1\">MjA3NC8xMDA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">ODUz</item><item key=\"ExifImageLength\" base64=\"1\">NjQw</item><item key=\"InteroperabilityOffset\" base64=\"1\">ODQw</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">Mg==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">NjU1MzYvNjU1MzY=</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MTAw</item><item key=\"SceneCaptureType\" base64=\"1\">Mg==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',552,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,105,0,0,'','ezsrrating',553,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,105,0,NULL,'','ezkeyword',554,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,245,106,0,NULL,'mount Aconcagua','ezstring',555,'eng-GB',2,0,'mount aconcagua',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,246,106,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ will climb Aconcagua in fall 2013, a very important release numbered eZ Publish Platform 5.2. Photo by Crystal Davis, World Resources Institute, 2007. Cc.</paragraph></section>','ezxmltext',556,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,247,106,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"mount-Aconcagua.jpg\" suffix=\"jpg\" basename=\"mount-Aconcagua\" dirpath=\"var/ezdemo_site/storage/images/media/images/mount-aconcagua/557-1-eng-GB\" url=\"var/ezdemo_site/storage/images/media/images/mount-aconcagua/557-1-eng-GB/mount-Aconcagua.jpg\" original_filename=\"8d6f1f98.jpg\" mime_type=\"image/jpeg\" width=\"1024\" height=\"768\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"557\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"768\" Width=\"1024\" IsColor=\"1\"/></ezimage>\n','ezimage',557,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,248,106,0,0,'','ezsrrating',558,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,249,106,0,NULL,'','ezkeyword',559,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,283,107,0,NULL,'eZ Publish Optimize','ezstring',560,'eng-GB',2,0,'ez publish optimize',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,284,107,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',561,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,285,107,0,NULL,'','ezbinaryfile',562,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,286,107,0,0,'','ezsrrating',563,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,293,108,0,NULL,'eZ Mountains','ezstring',564,'eng-GB',2,0,'ez mountains',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,294,108,0,NULL,'','ezstring',565,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,295,108,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The mountains that eZ climbed.</paragraph></section>','ezxmltext',566,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,109,0,NULL,'Mount Fuji','ezstring',567,'eng-GB',2,0,'mount fuji',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,109,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Mount Fuji</strong>, located on Honshu Island, is the highest mountain in Japan at 3,776.24 m (12,389 ft). An active stratovolcano that last erupted in 1707–08, Mount Fuji lies about 100 kilometres (60 mi) south-west of Tokyo, and can be seen from there on a clear day. Mount Fuji\'s exceptionally symmetrical cone, which is snow-capped several months a year, is a well-known symbol of Japan and it is frequently depicted in art and photographs, as well as visited by sightseers and climbers. It is one of Japan\'s \"Three Holy Mountains\" along with Mount Tate and Mount Haku; it is a Special Place of Scenic Beauty, a Historic Site, and was added to the World Heritage List as a Cultural Site on June 22nd, 2013.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"54\">Mount Fuji</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',568,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,109,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Fuji.jpg\" suffix=\"jpg\" basename=\"Mount-Fuji\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-fuji/569-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-fuji/569-1-eng-GB/Mount-Fuji.jpg\" original_filename=\"d5c11bd1.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"569\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:15:{s:10:&quot;ImageWidth&quot;;i:2560;s:11:&quot;ImageLength&quot;;i:1920;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:4:&quot;Make&quot;;s:5:&quot;CASIO&quot;;s:5:&quot;Model&quot;;s:9:&quot;QV-5700  &quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:4:&quot;72/1&quot;;s:11:&quot;YResolution&quot;;s:4:&quot;72/1&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:31:&quot;Adobe Photoshop CS6 (Macintosh)&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2013:02:05 19:00:18&quot;;s:16:&quot;YCbCrPositioning&quot;;i:1;s:16:&quot;Exif_IFD_Pointer&quot;;i:336;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTYwNC8xMDAwMDAw</item><item key=\"FNumber\" base64=\"1\">MjgvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTkyOTM3OTIvNDkxNTIwMA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">OTI3NjEyNC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">Mjk3MDg1NC8xMDAwMDAw</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MjAvMTA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MTY=</item><item key=\"FocalLength\" base64=\"1\">MjA3NC8xMDA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">ODUz</item><item key=\"ExifImageLength\" base64=\"1\">NjQw</item><item key=\"InteroperabilityOffset\" base64=\"1\">ODQw</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">Mg==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">NjU1MzYvNjU1MzY=</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MTAw</item><item key=\"SceneCaptureType\" base64=\"1\">Mg==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',569,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,109,0,1,'','ezgmaplocation',570,'eng-GB',2,0,'mount fuji',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,109,0,NULL,'','ezkeyword',571,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,109,0,0,'','ezsrrating',572,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,110,0,NULL,'Mount Matterhorn','ezstring',573,'eng-GB',2,0,'mount matterhorn',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,110,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The <strong>Matterhorn</strong> (German), <strong>Monte Cervino</strong> (Italian) or <strong>Mont Cervin</strong> (French), is a mountain in the Pennine Alps on the border between Switzerland and Italy. Its summit is 4,478 metres (14,692 ft) high, making it one of the highest peaks in the Alps. The four steep faces, rising above the surrounding glaciers, face the four compass points. The mountain overlooks the town of Zermatt in the canton of Valais to the north-east and Breuil-Cervinia in the Aosta Valley to the south. Theodul Pass, located at the eastern base of the peak, is the lowest passage between its north and south side.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"56\">Matterhorn</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',574,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,110,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Matterhorn.jpg\" suffix=\"jpg\" basename=\"Mount-Matterhorn\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-matterhorn/575-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-matterhorn/575-1-eng-GB/Mount-Matterhorn.jpg\" original_filename=\"7df85099.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"575\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"0\"/></ezimage>\n','ezimage',575,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,110,0,1,'','ezgmaplocation',576,'eng-GB',2,0,' Mount Matterhorn',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,110,0,NULL,'','ezkeyword',577,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,110,0,0,'','ezsrrating',578,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,111,0,NULL,'Mount Annapurna','ezstring',579,'eng-GB',2,0,'mount annapurna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,111,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Annapurna</strong> (Sanskrit, Nepali, Nepal Bhasa: अन्नपुर्ण) is a section of the Himalayas in north-central Nepal that includes 8,091 m (26,545 ft) Annapurna I, thirteen additional peaks over 7,000 m (22,970 ft) and 16 more over 6,000 m (19,690 ft). This section is a 55 km-long (34 mi-long) massif bounded by the Kali Gandaki Gorge on the west, the Marshyangdi River on the north and east, and Pokhara Valley on the south. Annapurna I is tenth among Earth\'s fourteen <emphasize>eight-thousanders</emphasize>. 8167 metre Dhaulagiri I rises 34 km to the west across the Kali Gandaki Gorge, considered Earth\'s deepest canyon.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"57\">Annapurna</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',580,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,111,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Annapurna.jpg\" suffix=\"jpg\" basename=\"Mount-Annapurna\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-annapurna/581-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-annapurna/581-1-eng-GB/Mount-Annapurna.jpg\" original_filename=\"553bfea2.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"581\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\"/></ezimage>\n','ezimage',581,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,111,0,1,'','ezgmaplocation',582,'eng-GB',2,0,'mount annapurna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,111,0,NULL,'','ezkeyword',583,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,111,0,0,'','ezsrrating',584,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,112,0,NULL,'Mount Etna','ezstring',585,'eng-GB',2,0,'mount etna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,112,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Mount Etna</strong> (Latin: <emphasize>Aetna</emphasize>, Sicilian: <emphasize>Mungibeddu</emphasize> or <emphasize>\'a Muntagna</emphasize>) is an active stratovolcano on the east coast of Sicily, Italy, close to Messina and Catania. It lies above the convergent plate margin between the African Plate and the Eurasian Plate. It is the tallest active volcano on the European continent, currently 3,329 m (10,922 ft) high, though this varies with summit eruptions. It is the highest mountain in Italy south of the Alps. Etna covers an area of 1,190 km<custom name=\"sup\">2</custom> (459 sq mi) with a basal circumference of 140 km. This makes it by far the largest of the three active volcanoes in Italy, being about two and a half times the height of the next largest, Mount Vesuvius. Only Mount Teide in Tenerife surpasses it in the whole of the European–North-African region. In Greek Mythology, the deadly monster Typhon was trapped under this mountain by Zeus, the god of the sky and thunder and king of gods, and the forges of Hephaestus were said to also be located underneath it.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"58\">Mount Etna</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',586,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,112,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Etna.jpg\" suffix=\"jpg\" basename=\"Mount-Etna\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-etna/587-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-etna/587-1-eng-GB/Mount-Etna.jpg\" original_filename=\"f5aab896.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204185\"><original attribute_id=\"587\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"0\" CCDWidth=\"7mm\" ExposureTime=\"0.002 s (1/446)\" ApertureFNumber=\"f/6.3\" Copyright=\"    \"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">RlVKSUZJTE0=</item><item key=\"Model\" base64=\"1\">RmluZVBpeDY5MDBaT09N</item><item key=\"Software\" base64=\"1\">RGlnaXRhbCBDYW1lcmEgRmluZVBpeDY5MDBaT09NIFZlcjEuMDA=</item><item key=\"DateTime\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"YCbCrPositioning\" base64=\"1\">Mg==</item><item key=\"Copyright\" base64=\"1\">ICAgIA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTkw</item></array><array name=\"exif\"><item key=\"FNumber\" base64=\"1\">NjMwLzEwMA==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MTAw</item><item key=\"ExifVersion\" base64=\"1\">MDIxMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzoxMjozMSAwOTo0NDo0Nw==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTUvMTA=</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODgwLzEwMA==</item><item key=\"ApertureValue\" base64=\"1\">NTMzLzEwMA==</item><item key=\"BrightnessValue\" base64=\"1\">OTE2LzEwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8z</item><item key=\"MaxApertureValue\" base64=\"1\">MzAwLzEwMA==</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NDY4LzEw</item><item key=\"MakerNote\" base64=\"1\">RlVKSUZJTE0MAAAAEQAAAAcABAAAADAxMzAAEAIACAAAAN4AAAABEAMAAQAAAAMAAAACEAMAAQAAAAAAAAADEAMAAQAAAAAAAAAQEAMAAQAAAAIAAAAREAoAAQAAAOYAAAAgEAMAAQAAAAAAAAAhEAMAAQAAAAAAAAAwEAMAAQAAAAAAAAAxEAMAAQAAAAAAAAAyEAMAAQAAAAEAAAAAEQMAAQAAAAAAAAAAEgMAAQAAAAAAAAAAEwMAAQAAAAAAAAABEwMAAQAAAAAAAAACEwMAAQAAAAAAAAAAAAAATk9STUFMIAAAAAAACgAAAA==</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzMg==</item><item key=\"ExifImageLength\" base64=\"1\">MjEyOA==</item><item key=\"FocalPlaneXResolution\" base64=\"1\">MzcwNC8x</item><item key=\"FocalPlaneYResolution\" base64=\"1\">MzcwNC8x</item><item key=\"FocalPlaneResolutionUnit\" base64=\"1\">Mw==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item></array></information></ezimage>\n','ezimage',587,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,112,0,1,'','ezgmaplocation',588,'eng-GB',2,0,'mount etna',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,112,0,NULL,'','ezkeyword',589,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,112,0,0,'','ezsrrating',590,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,113,0,NULL,'Mount Kilimanjaro','ezstring',591,'eng-GB',2,0,'mount kilimanjaro',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,113,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Mount Kilimanjaro</strong>, with its three volcanic cones, <strong>Kibo</strong>, <strong>Mawenzi</strong>, and <strong>Shira</strong>, is a dormant volcanic mountain in Tanzania. It is the highest mountain in Africa and the highest free-standing mountain in the world at 5,895 metres or 19,341 feet abovesea level (the <strong>Uhuru Peak</strong>/<strong>Kibo Peak</strong>).</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"59\">Mount Kilimanjaro</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',592,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,113,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Kilimanjaro.jpg\" suffix=\"jpg\" basename=\"Mount-Kilimanjaro\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-kilimanjaro/593-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-kilimanjaro/593-1-eng-GB/Mount-Kilimanjaro.jpg\" original_filename=\"944650b0.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204186\"><original attribute_id=\"593\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"0\"/></ezimage>\n','ezimage',593,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,113,0,1,'','ezgmaplocation',594,'eng-GB',2,0,'mount kilimanjaro',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,113,0,NULL,'','ezkeyword',595,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,113,0,0,'','ezsrrating',596,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,114,0,NULL,'Mount Stadda','ezstring',597,'eng-GB',2,0,'mount stadda',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,114,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Stadda </strong>(in Lule Sami: <emphasize>Stádda</emphasize>) is a mountain in the municipality of Tysfjord in Nordland county, Norway. It is located about 15 kilometres (9 mi) northeast of the village of Kjøpsvik. The mountain has very smooth sides reaching all the way to the fjord. Stetind has an obelisk-shape which gives it a very distinct look. In 2002 it was voted to be the \"National Mountain\" of Norway by listeners of NRK.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"60\">Mount Stetind</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',598,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,114,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Stadda.jpg\" suffix=\"jpg\" basename=\"Mount-Stadda\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-stadda/599-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-stadda/599-1-eng-GB/Mount-Stadda.jpg\" original_filename=\"4418140f.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204186\"><original attribute_id=\"599\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">Q0FTSU8=</item><item key=\"Model\" base64=\"1\">UVYtNTcwMCAg</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">VmVyMS4wMCAgICAgICAgICAgICAgICA=</item><item key=\"DateTime\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"YCbCrPositioning\" base64=\"1\">MQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjYy</item><item key=\"UndefinedTag:0xC4A5\" base64=\"1\">UHJpbnRJTQAwMjUwAAAABAABABYAFgACAQAAAAEABQAAAAEBAgAAAA==</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTYwNC8xMDAwMDAw</item><item key=\"FNumber\" base64=\"1\">MjgvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMzowNzoxMSAyMDoxNTo0NQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MTkyOTM3OTIvNDkxNTIwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MjAvMTA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MTY=</item><item key=\"FocalLength\" base64=\"1\">MjA3NC8xMDA=</item><item key=\"MakerNote\" base64=\"1\">AB0AAgADAAAAAQADAAAAAwADAAAAAQAHAAAABAADAAAAAQAEAAAABQADAAAAAQANAAAABgAEAAAAAQAATiAABwADAAAAAQABAAAACAADAAAAAQAAAAAACQADAAAAAQABAAAACgAEAAAAAQABAAAACwADAAAAAQAQAAAADAADAAAAAQAQAAAADQADAAAAAQARAAAADgADAAAAAQAAAAAADwADAAAAAQAAAAAAEAADAAAAAQAAAAAAEQAEAAAAAQB2AE0AEgADAAAAAQAQAAAAEwADAAAAAQAZAAAAFQACAAAAEgAABEIAFgADAAAAAQAFAAAAFwADAAAAAQABAAAAGAADAAAAAQABAAAAGQADAAAAAQABAAAAGgAHAAAAFAAABFQAHAADAAAAAQAGAAAAHQADAAAAAQADAAAAHgADAAAAAQABAAAAFAADAAAAAQAyAAAgIwADAAAAAQABAAAAAAAAMDIwOQAAMTAwOQAAMjMwMAAAAAABEAEBAAAAAAIAAAAAAAAAAAA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjU2MA==</item><item key=\"ExifImageLength\" base64=\"1\">MTkyMA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTEyOA==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">Mg==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">NjU1MzYvNjU1MzY=</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MTAw</item><item key=\"SceneCaptureType\" base64=\"1\">Mg==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',599,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,114,0,1,'','ezgmaplocation',600,'eng-GB',2,0,'mount stetind',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,114,0,NULL,'','ezkeyword',601,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,114,0,0,'','ezsrrating',602,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,115,0,NULL,'Mount Aconcagua','ezstring',603,'eng-GB',2,0,'mount aconcagua',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,115,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Aconcagua</strong> (Spanish pronunciation: [akoŋˈkaɣwa]) is the highest mountain in the Western and Southern Hemispheres at 6,960.8 metres (22,837 ft). It is located in the Andes mountain range, in the province of Mendoza, Argentina, and lies 112 kilometres (70 mi) northwest of its capital, the city of Mendoza. The summit is also located about 5 kilometres from San Juan Province and 15 kilometres from the international border with Chile. Aconcagua is the highest peak in both the Western and Southern Hemispheres. It is one of the Seven Summits.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"61\">Aconcagua</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',604,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,115,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Aconcagua.jpg\" suffix=\"jpg\" basename=\"Mount-Aconcagua\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-aconcagua/605-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-aconcagua/605-1-eng-GB/Mount-Aconcagua.jpg\" original_filename=\"08cbe9b8.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204186\"><original attribute_id=\"605\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\"/></ezimage>\n','ezimage',605,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,115,0,1,'','ezgmaplocation',606,'eng-GB',2,0,'aconcagua',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,115,0,NULL,'','ezkeyword',607,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,115,0,0,'','ezsrrating',608,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,116,0,NULL,'Mount Ventoux','ezstring',609,'eng-GB',2,0,'mount ventoux',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,116,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Mont Ventoux</strong> (<emphasize>Ventor</emphasize> in Provençal) is a mountain in the Provence region of southern France, located some 20 km northeast of Carpentras, Vaucluse. On the north side, the mountain borders the Drôme <emphasize>département</emphasize>. It is the largest mountain in the region and has been nicknamed the \"Beast of Provence\", the \"Giant of Provence\", or \"The Bald Mountain\". It has gained fame through its use in the Tour de France cycling race.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link target=\"_blank\" url_id=\"62\">Mount Ventoux</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>.</custom></paragraph></section>','ezxmltext',610,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,116,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Ventoux.jpg\" suffix=\"jpg\" basename=\"Mount-Ventoux\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-ventoux/611-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-ventoux/611-1-eng-GB/Mount-Ventoux.jpg\" original_filename=\"f2744337.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204186\"><original attribute_id=\"611\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"578\" Width=\"770\" IsColor=\"1\"/></ezimage>\n','ezimage',611,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,116,0,1,'','ezgmaplocation',612,'eng-GB',2,0,'mont ventoux',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,116,0,NULL,'','ezkeyword',613,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,116,0,0,'','ezsrrating',614,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,287,117,0,NULL,'Mount Castor','ezstring',615,'eng-GB',2,0,'mount castor',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,288,117,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Castor</strong> (Italian: <emphasize>Castore</emphasize>) is a mountain in the Pennine Alps on the border between Valais, Switzerland and the Aosta Valley in Italy. It is the higher of a pair of twin peaks (Zwillinge), the other being Pollux, named after the Gemini twins of Roman mythology. Castor\'s peak is at an elevation of 4,228 m (13,871 ft), and it lies between Breithorn and Monte Rosa. It is separated from Pollux by a pass at 3,845 m (12,615 ft), named <emphasize>Passo di Verra</emphasize> in Italian and <emphasize>Zwillingsjoch</emphasize> in German. Ascents are usually made from the alpine hut <emphasize>Capanna Quintino Sella</emphasize> on the Italian side, by means of the Felikjoch and the long and narrow southeast ridge. From the Swiss side, ascents start from Klein Matterhorn and go by way of the Italian Mezzalama glacier and the mountain\'s west flank. The first ascent was made on August 23, 1861.</paragraph><paragraph><custom name=\"sub\">This article uses material from the Wikipedia article <link url_id=\"63\">Mount Castor</link>, which is released under the <link target=\"_blank\" url_id=\"55\">Creative Commons Attribution-ShareAlike License</link>. <link anchor_name=\"mediaviewer/File:Castore_per_la_cresta_sudorientale.JPG\" url_id=\"64\">Photo</link>: \"Castore per la cresta sudorientale\" by Franco56 - fotografia personale. Licensed under Creative Commons Attribution-Share Alike 3.0 via Wikimedia Commons.</custom></paragraph></section>','ezxmltext',616,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,289,117,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mount-Castor.jpg\" suffix=\"jpg\" basename=\"Mount-Castor\" dirpath=\"var/ezdemo_site/storage/images/ez-mountains/mount-castor/617-1-eng-GB\" url=\"var/ezdemo_site/storage/images/ez-mountains/mount-castor/617-1-eng-GB/Mount-Castor.jpg\" original_filename=\"45b6205e.jpg\" mime_type=\"image/jpeg\" width=\"1632\" height=\"1232\" alternative_text=\"Castore per la cresta sudorientale\" alias_key=\"1293033771\" timestamp=\"1472204186\"><original attribute_id=\"617\" attribute_version=\"1\" attribute_language=\"eng-GB\"/><information Height=\"1232\" Width=\"1632\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/6.3\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">SGV3bGV0dC1QYWNrYXJkIENvbXBhbnk=</item><item key=\"Model\" base64=\"1\">aHAgUGhvdG9TbWFydCA2MjA=</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">VmVyIFYwLjYxMA==</item><item key=\"YCbCrPositioning\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MzM4</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTAwMC8xMDAwMDAw</item><item key=\"FNumber\" base64=\"1\">NjI2LzEwMA==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MTAw</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMjowMTozMCAxMjozNDoxNw==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMjowMTozMCAxMjozNDoxNw==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">MjcwLzEwMA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">OTk2LzEwMA==</item><item key=\"ApertureValue\" base64=\"1\">NjAwLzEwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8xMA==</item><item key=\"MaxApertureValue\" base64=\"1\">NjAwLzEwMA==</item><item key=\"MeteringMode\" base64=\"1\">Mg==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">Nzc2LzEwMA==</item><item key=\"MakerNote\" base64=\"1\">AAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAABwAAACIAAAAMAAAAHgAAAAAAAABmAAAAAAAAAAAAAAAAAAAAAABkAAAAigAALzkYeAAAA+gAZAAAAAAAAAAAAACB/8cAAAAAAAAAAAEDCAAAAAAAAA==</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MTYzMg==</item><item key=\"ExifImageLength\" base64=\"1\">MTIzMg==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTc1MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',617,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,290,117,0,1,'','ezgmaplocation',618,'eng-GB',2,0,'Castor, Switzerland',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,291,117,0,NULL,'','ezkeyword',619,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,292,117,0,0,'','ezsrrating',620,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,296,54,0,65,'Site map','ezurl',621,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,297,54,0,66,'Tag cloud','ezurl',622,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,298,54,0,NULL,'Login','ezstring',623,'eng-GB',2,0,'login',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,299,54,0,NULL,'Logout','ezstring',624,'eng-GB',2,0,'logout',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,300,54,0,NULL,'My profile','ezstring',625,'eng-GB',2,0,'my profile',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,301,54,0,NULL,'Register','ezstring',626,'eng-GB',2,0,'register',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,302,54,0,NULL,'/rss/feed/my_feed','ezstring',627,'eng-GB',2,0,'/rss/feed/my_feed',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,303,54,0,NULL,'Shopping basket','ezstring',628,'eng-GB',2,0,'shopping basket',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,304,54,0,NULL,'Site settings','ezstring',629,'eng-GB',2,0,'site settings',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,305,54,0,NULL,'Copyright &#169; 2016 <a href=\"http://ez.no\" title=\"eZ Systems\">eZ Systems AS</a> (except where otherwise noted). All rights reserved.','eztext',630,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,306,54,0,0,'','ezboolean',631,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,307,54,0,NULL,'','eztext',632,'eng-GB',2,0,'',2);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,118,0,NULL,'Partners','ezstring',633,'eng-GB',3,0,'partners',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,118,0,NULL,'','ezstring',634,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,6,119,0,NULL,'Subscribers','ezstring',635,'eng-GB',3,0,'subscribers',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,119,0,NULL,'','ezstring',636,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,120,0,NULL,'Subscriber','ezstring',637,'eng-GB',3,0,'subscriber',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,120,0,NULL,'User','ezstring',638,'eng-GB',3,0,'user',1);
INSERT INTO `ezcontentobject_attribute` VALUES (639,12,120,0,NULL,'{\"login\":\"subscriber\",\"password_hash\":\"aff687ebeaa4f54c53707b7918041662\",\"email\":\"subscriber@ez.no\",\"password_hash_type\":\"2\"}','ezuser',639,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,120,0,NULL,'','eztext',640,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,120,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204188\"/>\n','ezimage',641,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,8,121,0,NULL,'Member','ezstring',642,'eng-GB',3,0,'member',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,9,121,0,NULL,'User','ezstring',643,'eng-GB',3,0,'user',1);
INSERT INTO `ezcontentobject_attribute` VALUES (644,12,121,0,NULL,'{\"login\":\"member\",\"password_hash\":\"61c4aed984adf5eb50a90802959d60e8\",\"email\":\"member@ez.no\",\"password_hash_type\":\"2\"}','ezuser',644,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,179,121,0,NULL,'','eztext',645,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,180,121,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1472204188\"/>\n','ezimage',646,'eng-GB',3,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',647,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',648,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',649,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',650,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',651,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',652,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,61,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',653,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,66,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',654,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,73,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',655,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,78,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',656,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,84,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',657,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,308,87,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',658,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,41,0,NULL,'','ezkeyword',659,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,45,0,NULL,'','ezkeyword',660,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,49,0,NULL,'','ezkeyword',661,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,50,0,NULL,'','ezkeyword',662,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,51,0,NULL,'','ezkeyword',663,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,56,0,NULL,'','ezkeyword',664,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,61,0,NULL,'','ezkeyword',665,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,66,0,NULL,'','ezkeyword',666,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,73,0,NULL,'','ezkeyword',667,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,78,0,NULL,'','ezkeyword',668,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,84,0,NULL,'','ezkeyword',669,'eng-GB',2,0,'',1);
INSERT INTO `ezcontentobject_attribute` VALUES (0,309,87,0,NULL,'','ezkeyword',670,'eng-GB',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (0,82,1,1,2,83);
INSERT INTO `ezcontentobject_link` VALUES (0,89,1,2,2,96);
INSERT INTO `ezcontentobject_link` VALUES (0,92,1,3,2,102);
INSERT INTO `ezcontentobject_link` VALUES (202,92,1,4,8,93);
INSERT INTO `ezcontentobject_link` VALUES (0,93,1,5,2,95);
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,4,3,'Users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,10,3,'Anonymous User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,11,3,'Members','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,12,3,'Administrator users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,13,3,'Editors','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',4,14,3,'Administrator User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,41,3,'Media','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,42,3,'Anonymous Users','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,45,3,'Setup','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,49,3,'Images','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,50,3,'Files','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,51,3,'Multimedia','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,52,2,'Common INI settings','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',2,54,2,'eZ Publish Deploy Site for Summercamp 2016','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,56,3,'Design','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,57,3,'Home','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,58,2,'footer','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,59,2,'Getting Started','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,60,2,'Feedback','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,61,3,'Resources','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,62,2,'eZ Publish Tutorials','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,63,2,'eZ User Documentation','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,64,2,'Technical Documentation','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,65,2,'Demos and Videos','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,66,3,'Selected Features','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,67,2,'Automate','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,68,2,'Deliver','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,69,2,'Create','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,70,2,'Optimize','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,71,2,'Getting Started with eZ Publish Platform','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,72,2,'Shopping','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,73,3,'Products','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,74,2,'eZ Publish Community - iPhone 4 Case','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,75,2,'eZ Publish - Samsung Galaxy SIII Case','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,76,2,'eZ Publish Community Mug','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,77,2,'eZ Publish - Man jacket','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,78,3,'Services','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,79,2,'Support & Maintenance','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,80,2,'Professional Services','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,81,2,'Training Services','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,82,2,'eZ Publish Enterprise Service','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,83,2,'squares','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,84,3,'Partner','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,85,2,'eZ Logo Black','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,86,2,'eZ Logo White','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,87,3,'Logos','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,88,2,'Blog','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,89,2,'This will be our magic recipe','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,90,2,'Gallery','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,91,2,'It\'s helping me optimizing my business','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,92,2,'Discover eZ Publish 5','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,93,2,'Download your White Paper here','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,94,2,'Contact Us','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,95,2,'eZ Publish 5 Platform Whitepaper','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,96,2,'Screen Shot 2013-01-31 at 8.17.26 PM','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,97,2,'funel','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,98,2,'mount Matterhorn','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,99,2,'mount Annapurna','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,100,2,'mount Stadda','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,101,2,'mount Ventoux','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,102,2,'mount Castor','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,103,2,'mount Kilimanjaro','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,104,2,'mount Etna','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,105,2,'mount Fuji','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,106,2,'mount Aconcagua','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,107,2,'eZ Publish Optimize','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,108,2,'eZ Mountains','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,109,2,'Mount Fuji','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,110,2,'Mount Matterhorn','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,111,2,'Mount Annapurna','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,112,2,'Mount Etna','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,113,2,'Mount Kilimanjaro','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,114,2,'Mount Stadda','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,115,2,'Mount Aconcagua','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,116,2,'Mount Ventoux','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,117,2,'Mount Castor','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,118,3,'Partners','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,119,3,'Subscribers','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,120,3,'Subscriber User','eng-GB');
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,121,3,'Member User','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1472204188,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (57,1,1,1,0,0,2,1472204187,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1);
INSERT INTO `ezcontentobject_tree` VALUES (4,1,1,1,0,0,5,1472204188,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (11,1,2,2,0,0,12,1472204188,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (12,1,1,2,0,0,13,1472204187,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (14,1,4,3,0,0,15,1472204187,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (41,1,1,1,0,0,43,1472204185,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (49,1,1,2,0,0,51,1472204185,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (50,1,1,2,0,0,52,1472204183,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (51,1,1,2,0,0,53,1472204185,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1);
INSERT INTO `ezcontentobject_tree` VALUES (52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (54,1,2,2,0,0,56,1472204187,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (56,1,1,1,0,0,58,1472204187,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (58,1,1,2,0,0,60,1472204178,60,2,'footer','/1/2/60/',0,'86bf306624668ee9b8b979b0d56f7e0d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (59,1,1,2,0,0,61,1472204180,61,2,'getting_started','/1/2/61/',-12,'a056661abf6a4c778ca3a642797ae5e3',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (60,1,1,3,0,0,62,1472204178,62,61,'getting_started/feedback','/1/2/61/62/',0,'0dc12932089bea012bf35c1417b0aa2a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (61,1,1,3,0,0,63,1472204179,63,61,'getting_started/resources','/1/2/61/63/',0,'016830043439eddf2956a14d3192fc09',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (62,1,1,4,0,0,64,1472204179,64,63,'getting_started/resources/ez_publish_tutorials','/1/2/61/63/64/',0,'a2304f8b1c6a2a363e7055aa16b2d555',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (63,1,1,4,0,0,65,1472204179,65,63,'getting_started/resources/ez_user_documentation','/1/2/61/63/65/',0,'0382aaa1f4fb90e8cf01cc77406e88b0',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (64,1,1,4,0,0,66,1472204179,66,63,'getting_started/resources/technical_documentation','/1/2/61/63/66/',0,'b9b95382aaa102120ca724dc96fb5892',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (65,1,1,4,0,0,67,1472204179,67,63,'getting_started/resources/demos_and_videos','/1/2/61/63/67/',0,'0240c72d729c2412817a1c252e51eb1a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (66,1,1,3,0,0,68,1472204180,68,61,'getting_started/selected_features','/1/2/61/68/',0,'595c35359a2d37e2dba89eb8dba4ce93',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (67,1,1,4,0,0,69,1472204179,69,68,'getting_started/selected_features/automate','/1/2/61/68/69/',0,'e1b2a7e5f3a4368e666c4cd6a3810552',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (68,1,1,4,0,0,70,1472204179,70,68,'getting_started/selected_features/deliver','/1/2/61/68/70/',0,'0379665e0367a771802c95a1a755679e',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (69,1,1,4,0,0,71,1472204180,71,68,'getting_started/selected_features/create','/1/2/61/68/71/',0,'fd2168050d72bcfe92b1250586a8a87f',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (70,1,1,4,0,0,72,1472204180,72,68,'getting_started/selected_features/optimize','/1/2/61/68/72/',0,'cbd26486e64e79b91e7b4cc4ca6a7f87',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (71,1,1,4,0,0,73,1472204180,73,68,'getting_started/selected_features/getting_started_with_ez_publish_platform','/1/2/61/68/73/',0,'80536ae793c16e51018c632b9c90ff25',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (72,1,1,2,0,0,74,1472204182,74,2,'shopping','/1/2/74/',-8,'d70f1694905d7c5df8e7a57628d5f223',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (73,1,1,3,0,0,75,1472204181,75,74,'shopping/products','/1/2/74/75/',0,'c07971827e6e6cdbb9ab4e65a1ca7634',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (74,1,1,4,0,0,76,1472204180,76,75,'shopping/products/ez_publish_community_iphone_4_case','/1/2/74/75/76/',0,'a1db085c4b30f728a063da72b4cf077d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (75,1,1,4,0,0,77,1472204181,77,75,'shopping/products/ez_publish_samsung_galaxy_siii_case','/1/2/74/75/77/',0,'f46d1041283c096b3b31f02feb126e40',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (76,1,1,4,0,0,78,1472204181,78,75,'shopping/products/ez_publish_community_mug','/1/2/74/75/78/',0,'698c1afa581bff910aa28ee5722e8ef3',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (77,1,1,4,0,0,79,1472204181,79,75,'shopping/products/ez_publish_man_jacket','/1/2/74/75/79/',0,'e5ae437d5696f19ffd9f9d412405eff9',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (78,1,1,3,0,0,80,1472204182,80,74,'shopping/services','/1/2/74/80/',0,'a655946daa57223381420cf5d93dfed2',2,1);
INSERT INTO `ezcontentobject_tree` VALUES (79,1,1,4,0,0,81,1472204181,81,80,'shopping/services/support_maintenance','/1/2/74/80/81/',0,'2cbc5d102c426831314f67530588def2',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (80,1,1,4,0,0,82,1472204181,82,80,'shopping/services/professional_services','/1/2/74/80/82/',0,'d0348df851326b0bb8bcd885d1ca9c11',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (81,1,1,4,0,0,83,1472204182,83,80,'shopping/services/training_services','/1/2/74/80/83/',0,'11e34e72be29920e4abcdc0d4f2347d3',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (82,1,1,4,0,0,84,1472204182,84,80,'shopping/services/ez_publish_enterprise_service','/1/2/74/80/84/',0,'23a8950df34d7f7d2fdf1b50ee4b2eb5',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (83,1,1,5,0,0,85,1472204182,85,84,'shopping/services/ez_publish_enterprise_service/squares','/1/2/74/80/84/85/',0,'4c87fd389f9f30995f8f21c6ba708630',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (84,1,1,2,0,0,86,1472204182,86,2,'partner','/1/2/86/',-6,'49dfabb2e1a632ae1f95fdeb79f4a92e',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (85,1,1,3,0,0,87,1472204182,87,86,'partner/ez_logo_black','/1/2/86/87/',0,'a6748f3cbe4bbc163e532c03ad28d0d0',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (86,1,1,3,0,0,88,1472204182,88,86,'partner/ez_logo_white','/1/2/86/88/',0,'d59d9ae9190c7f4919beea16da748910',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (87,1,1,3,0,0,89,1472204182,89,86,'partner/logos','/1/2/86/89/',0,'deab6d56548e30311d6c5ca9b8676160',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (88,1,1,2,0,0,90,1472204183,90,2,'blog','/1/2/90/',-4,'0d05ff0c44f63901d8a1c0fbc5abc884',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (89,1,1,3,0,0,91,1472204183,91,90,'blog/this_will_be_our_magic_recipe','/1/2/90/91/',0,'c0125304ac852abc3b7abe57f5ecbf21',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (90,1,1,4,0,0,92,1472204183,92,91,'blog/this_will_be_our_magic_recipe/gallery','/1/2/90/91/92/',0,'d573d6c76b2a4e88799a76167d66ccad',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (91,1,1,3,0,0,93,1472204183,93,90,'blog/it_s_helping_me_optimizing_my_business','/1/2/90/93/',0,'510dcc113607e92399a8486d1e2c9a3f',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (92,1,1,2,0,0,94,1472204183,94,2,'discover_ez_publish_5','/1/2/94/',0,'3e49b9fe4c95366cb590d3beb32a5838',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (93,1,1,3,0,0,95,1472204183,95,94,'discover_ez_publish_5/download_your_white_paper_here','/1/2/94/95/',0,'0ad294a85c89e0fbfd227fd8c71c9a9d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (94,1,1,2,0,0,96,1472204183,96,2,'contact_us','/1/2/96/',0,'1e14d4e6b05a5af714297bfca4676fa1',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (95,1,1,3,0,0,97,1472204183,97,52,'media/files/ez_publish_5_platform_whitepaper','/1/43/52/97/',0,'f14be944ca09935f1eedcfe54a246b62',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (96,1,1,3,0,0,98,1472204183,98,51,'media/images/screen_shot_2013_01_31_at_8_17_26_pm','/1/43/51/98/',0,'3682049fd7c0ef33c2461d8a999fad0f',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (97,1,1,3,0,0,99,1472204184,99,51,'media/images/funel','/1/43/51/99/',0,'acf9aa4a0c03f43fa7d16a1ab21bd490',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (98,1,1,3,0,0,100,1472204184,100,51,'media/images/mount_matterhorn','/1/43/51/100/',2,'59f7ea490ee77a4acd70ac009b2445ea',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (99,1,1,3,0,0,101,1472204184,101,51,'media/images/mount_annapurna','/1/43/51/101/',3,'b98b62e53cd88cc6687ecec7d1c07270',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (100,1,1,3,0,0,102,1472204184,102,51,'media/images/mount_stadda','/1/43/51/102/',6,'9ce7495dd08002ee08a8fc3f3ab00a84',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (101,1,1,3,0,0,103,1472204184,103,51,'media/images/mount_ventoux','/1/43/51/103/',8,'f7d8939033eead11427e7e369ef4807f',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (102,1,1,3,0,0,104,1472204184,104,51,'media/images/mount_castor','/1/43/51/104/',0,'022374e0cb9ef8992a51d3b0d5ec2a0d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (103,1,1,3,0,0,105,1472204184,105,51,'media/images/mount_kilimanjaro','/1/43/51/105/',7,'7ce6d078414726c00c48e1f0bacd1a0c',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (104,1,1,3,0,0,106,1472204185,106,51,'media/images/mount_etna','/1/43/51/106/',4,'94e2e3c2495efe083fe10f2648a4682f',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (105,1,1,3,0,0,107,1472204185,107,51,'media/images/mount_fuji','/1/43/51/107/',1,'1d9e63828d750d13adb2be56b09369b4',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (106,1,1,3,0,0,108,1472204185,108,51,'media/images/mount_aconcagua','/1/43/51/108/',4,'48151b12d35885c7d8d7123be5713b06',2,0);
INSERT INTO `ezcontentobject_tree` VALUES (107,1,1,3,0,0,109,1472204185,109,53,'media/multimedia/ez_publish_optimize','/1/43/53/109/',0,'270b39b7e7b53cf8dcbd9fc0eaf3b636',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (108,1,1,2,0,0,110,1472204186,110,2,'ez_mountains','/1/2/110/',0,'12d24b1557425698ff9db34850d1847d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (109,1,1,3,0,0,111,1472204185,111,110,'ez_mountains/mount_fuji','/1/2/110/111/',0,'0dfb0702eef69260c27714a82a20298d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (110,1,1,3,0,0,112,1472204185,112,110,'ez_mountains/mount_matterhorn','/1/2/110/112/',0,'e24fbf24b197e3c24d31daa44ce96610',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (111,1,1,3,0,0,113,1472204185,113,110,'ez_mountains/mount_annapurna','/1/2/110/113/',0,'2bc9ea252667b11a8b5e5fac8a729cde',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (112,1,1,3,0,0,114,1472204186,114,110,'ez_mountains/mount_etna','/1/2/110/114/',0,'cf8f17f78ab4389214f90751d1bdfbb9',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (113,1,1,3,0,0,115,1472204186,115,110,'ez_mountains/mount_kilimanjaro','/1/2/110/115/',0,'c5e6bd34d3909e153e3c7d515989ec0a',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (114,1,1,3,0,0,116,1472204186,116,110,'ez_mountains/mount_stadda','/1/2/110/116/',0,'a2c302d12e7626c5f0214f383938e977',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (115,1,1,3,0,0,117,1472204186,117,110,'ez_mountains/mount_aconcagua','/1/2/110/117/',0,'8ef8377f6f21011dbfd2be75d0b8a5ea',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (116,1,1,3,0,0,118,1472204186,118,110,'ez_mountains/mount_ventoux','/1/2/110/118/',0,'d97f5298b335507192c0768e2d56f786',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (117,1,1,3,0,0,119,1472204186,119,110,'ez_mountains/mount_castor','/1/2/110/119/',0,'5dd5394bbec6fb6c7f4a9940bb2d63fc',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (118,1,1,2,0,0,120,1472204188,120,5,'users/partners','/1/5/120/',0,'17ef40be9cbfb895791ba0c4a082e30d',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (119,1,1,2,0,0,121,1472204188,121,5,'users/subscribers','/1/5/121/',0,'b91f2a7ad6af843314ca0ba0ebbfaeb9',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (120,1,1,3,0,0,122,1472204188,122,121,'users/subscribers/subscriber_user','/1/5/121/122/',0,'0e48391aa541cfd13b01fa0575c99568',1,1);
INSERT INTO `ezcontentobject_tree` VALUES (121,1,1,3,0,0,123,1472204188,123,12,'users/members/member_user','/1/5/12/123/',0,'c37dc29ef81264a02e39352aee720ec8',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1);
INSERT INTO `ezcontentobject_version` VALUES (12,1033920760,14,440,2,3,1033920775,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (13,1033920786,14,441,2,3,1033920794,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (41,1060695450,14,472,2,3,1060695457,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (42,1072180278,14,473,2,3,1072180330,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (10,1072180337,14,474,2,3,1072180405,1,0,2,0);
INSERT INTO `ezcontentobject_version` VALUES (45,1079684084,14,477,2,3,1079684190,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (49,1080220181,14,488,2,3,1080220197,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (50,1080220211,14,489,2,3,1080220220,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (51,1080220225,14,490,2,3,1080220233,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (52,1082016497,14,491,2,3,1082016591,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (56,1103023120,14,495,2,3,1103023120,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (54,1301062300,14,500,2,3,1301062375,1,0,2,0);
INSERT INTO `ezcontentobject_version` VALUES (57,1284453990,14,504,2,3,1284454018,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (58,1352741487,14,505,2,3,1352741504,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (59,1358957446,14,506,2,3,1358957450,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (60,1358867705,14,507,2,3,1358867717,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (61,1332936692,14,508,2,3,1332936697,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (62,1332939145,14,509,2,3,1332939216,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (63,1332939107,14,510,2,3,1332939113,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (64,1332939412,14,511,2,3,1332939505,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (65,1332939575,14,512,2,3,1332939663,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (66,1332937411,14,513,2,3,1332937412,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (67,1378496286,14,514,2,3,1378496358,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (68,1378496058,14,515,2,3,1378496122,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (69,1378496015,14,516,2,3,1378496047,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (70,1378496240,14,517,2,3,1378496268,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (71,1378496701,14,518,2,3,1378496732,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (72,1361815518,14,519,2,3,1361815555,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (73,1332935018,14,520,2,3,1332935044,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (74,1360098148,14,521,2,3,1360098388,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (75,1360110920,14,522,2,3,1360110955,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (76,1360098598,14,523,2,3,1360098944,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (77,1360099067,14,524,2,3,1360099355,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (78,1361813513,14,525,2,3,1361813574,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (79,1361872573,14,526,2,3,1361872727,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (80,1361872757,14,527,2,3,1361873292,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (81,1361873305,14,528,2,3,1361873332,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (82,1361874291,14,529,2,3,1361874323,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (83,1361814629,14,530,2,3,1361814650,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (84,1358935718,14,531,2,3,1358935724,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (85,1332931828,14,532,2,3,1332931967,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (86,1332931974,14,533,2,3,1332932005,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (87,1332932014,14,534,2,3,1332932020,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (88,1332932399,14,535,2,3,1332932403,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (89,1361888092,14,536,2,3,1361888108,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (90,1358935686,14,537,2,3,1358935692,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (91,1378496463,14,538,2,3,1378496598,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (92,1359560341,14,539,2,3,1359560368,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (93,1359514319,14,540,2,3,1359514335,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (94,1360862583,14,541,2,3,1360862590,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (95,1359513722,14,542,2,3,1359513790,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (96,1359681490,14,543,2,3,1359681490,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (97,1360105024,14,544,2,3,1360105024,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (98,1360112393,14,545,2,3,1360112401,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (99,1360112352,14,546,2,3,1360112380,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (100,1360111627,14,547,2,3,1360111726,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (101,1360112500,14,548,2,3,1360112564,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (102,1415660584,14,549,2,3,1415660639,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (103,1360111543,14,550,2,3,1360111617,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (104,1360112303,14,551,2,3,1360112335,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (105,1360112089,14,552,2,3,1360112186,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (106,1360111965,14,553,2,3,1360111977,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (107,1360104725,14,554,2,3,1360104780,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (108,1396910648,14,555,2,3,1396910676,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (109,1400856923,14,556,2,3,1400856937,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (110,1400856945,14,557,2,3,1400856959,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (111,1400856971,14,558,2,3,1400856986,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (112,1400856997,14,559,2,3,1400857015,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (113,1400857024,14,560,2,3,1400857033,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (114,1400856643,14,561,2,3,1400856708,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (115,1400856727,14,562,2,3,1400856796,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (116,1400856817,14,563,2,3,1400856880,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (117,1415654750,14,564,2,3,1415655037,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (14,1472204187,14,565,2,3,1472204187,1,0,4,0);
INSERT INTO `ezcontentobject_version` VALUES (118,1472204188,14,566,2,3,1472204188,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (119,1472204188,14,567,2,3,1472204188,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (120,1472204188,14,568,2,3,1472204188,1,0,1,0);
INSERT INTO `ezcontentobject_version` VALUES (11,1472204188,14,569,2,3,1472204188,1,0,2,0);
INSERT INTO `ezcontentobject_version` VALUES (121,1472204188,14,570,2,3,1472204188,1,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
INSERT INTO `ezgmaplocation` VALUES (276,1,45.9209,7.79336,'Castor, Italy');
INSERT INTO `ezgmaplocation` VALUES (288,1,45.9209,7.79336,'Castor, Italy');
INSERT INTO `ezgmaplocation` VALUES (300,1,45.9209,7.79336,'Castor, Italy');
INSERT INTO `ezgmaplocation` VALUES (312,1,45.9209,7.79336,'Castor, Italy');
INSERT INTO `ezgmaplocation` VALUES (324,1,45.9209,7.79336,'Castor, Italy');
INSERT INTO `ezgmaplocation` VALUES (424,1,40.78306,-73.971249,'Manhattan New York');
INSERT INTO `ezgmaplocation` VALUES (570,1,35.360555,138.727778,'mount fuji');
INSERT INTO `ezgmaplocation` VALUES (576,1,45.976433,7.658448,' Mount Matterhorn');
INSERT INTO `ezgmaplocation` VALUES (582,1,28.570556,84.035278,'mount annapurna');
INSERT INTO `ezgmaplocation` VALUES (588,1,37.75,15,'mount etna');
INSERT INTO `ezgmaplocation` VALUES (594,1,-3.066465,37.350666,'mount kilimanjaro');
INSERT INTO `ezgmaplocation` VALUES (600,1,68.165193,16.592763,'mount stetind');
INSERT INTO `ezgmaplocation` VALUES (606,1,-32.653333,-70.010833,'aconcagua');
INSERT INTO `ezgmaplocation` VALUES (612,1,44.173966,5.278285,'mont ventoux');
INSERT INTO `ezgmaplocation` VALUES (618,1,45.9209,7.79336,'Castor, Switzerland');
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (274,'var/ezdemo_site/storage/images/getting-started/selected-features/automate/274-1-eng-GB/Automate.jpg',2);
INSERT INTO `ezimagefile` VALUES (286,'var/ezdemo_site/storage/images/getting-started/selected-features/deliver/286-1-eng-GB/Deliver.jpg',4);
INSERT INTO `ezimagefile` VALUES (298,'var/ezdemo_site/storage/images/getting-started/selected-features/create/298-1-eng-GB/Create.jpg',6);
INSERT INTO `ezimagefile` VALUES (310,'var/ezdemo_site/storage/images/getting-started/selected-features/optimize/310-1-eng-GB/Optimize.jpg',8);
INSERT INTO `ezimagefile` VALUES (322,'var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-platform/322-1-eng-GB/Getting-Started-with-eZ-Publish-Platform.jpg',10);
INSERT INTO `ezimagefile` VALUES (341,'var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB/eZ-Publish-Community-iPhone-4-Case.jpg',12);
INSERT INTO `ezimagefile` VALUES (351,'var/ezdemo_site/storage/images/shopping/products/ez-publish-samsung-galaxy-siii-case/351-1-eng-GB/eZ-Publish-Samsung-Galaxy-SIII-Case.jpg',14);
INSERT INTO `ezimagefile` VALUES (361,'var/ezdemo_site/storage/images/shopping/products/ez-publish-community-mug/361-1-eng-GB/eZ-Publish-Community-Mug.png',16);
INSERT INTO `ezimagefile` VALUES (371,'var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB/eZ-Publish-Man-jacket.jpg',18);
INSERT INTO `ezimagefile` VALUES (386,'var/ezdemo_site/storage/images/shopping/services/support-maintenance/386-1-eng-GB/Support-Maintenance.jpg',20);
INSERT INTO `ezimagefile` VALUES (398,'var/ezdemo_site/storage/images/shopping/services/professional-services/398-1-eng-GB/Professional-Services.jpg',22);
INSERT INTO `ezimagefile` VALUES (410,'var/ezdemo_site/storage/images/shopping/services/training-services/410-1-eng-GB/Training-Services.jpg',24);
INSERT INTO `ezimagefile` VALUES (422,'var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/422-1-eng-GB/eZ-Publish-Enterprise-Service.jpg',26);
INSERT INTO `ezimagefile` VALUES (431,'var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB/squares.png',28);
INSERT INTO `ezimagefile` VALUES (507,'var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM.png',30);
INSERT INTO `ezimagefile` VALUES (512,'var/ezdemo_site/storage/images/media/images/funel/512-1-eng-GB/funel.png',32);
INSERT INTO `ezimagefile` VALUES (517,'var/ezdemo_site/storage/images/media/images/mount-matterhorn/517-1-eng-GB/mount-Matterhorn.jpg',34);
INSERT INTO `ezimagefile` VALUES (522,'var/ezdemo_site/storage/images/media/images/mount-annapurna/522-1-eng-GB/mount-Annapurna.jpg',36);
INSERT INTO `ezimagefile` VALUES (527,'var/ezdemo_site/storage/images/media/images/mount-stadda/527-1-eng-GB/mount-Stadda.jpg',38);
INSERT INTO `ezimagefile` VALUES (532,'var/ezdemo_site/storage/images/media/images/mount-ventoux/532-1-eng-GB/mount-Ventoux.jpg',40);
INSERT INTO `ezimagefile` VALUES (537,'var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor.jpg',42);
INSERT INTO `ezimagefile` VALUES (542,'var/ezdemo_site/storage/images/media/images/mount-kilimanjaro/542-1-eng-GB/mount-Kilimanjaro.jpg',44);
INSERT INTO `ezimagefile` VALUES (547,'var/ezdemo_site/storage/images/media/images/mount-etna/547-1-eng-GB/mount-Etna.jpg',46);
INSERT INTO `ezimagefile` VALUES (552,'var/ezdemo_site/storage/images/media/images/mount-fuji/552-1-eng-GB/mount-Fuji.jpg',48);
INSERT INTO `ezimagefile` VALUES (557,'var/ezdemo_site/storage/images/media/images/mount-aconcagua/557-1-eng-GB/mount-Aconcagua.jpg',50);
INSERT INTO `ezimagefile` VALUES (569,'var/ezdemo_site/storage/images/ez-mountains/mount-fuji/569-1-eng-GB/Mount-Fuji.jpg',52);
INSERT INTO `ezimagefile` VALUES (575,'var/ezdemo_site/storage/images/ez-mountains/mount-matterhorn/575-1-eng-GB/Mount-Matterhorn.jpg',54);
INSERT INTO `ezimagefile` VALUES (581,'var/ezdemo_site/storage/images/ez-mountains/mount-annapurna/581-1-eng-GB/Mount-Annapurna.jpg',56);
INSERT INTO `ezimagefile` VALUES (587,'var/ezdemo_site/storage/images/ez-mountains/mount-etna/587-1-eng-GB/Mount-Etna.jpg',58);
INSERT INTO `ezimagefile` VALUES (593,'var/ezdemo_site/storage/images/ez-mountains/mount-kilimanjaro/593-1-eng-GB/Mount-Kilimanjaro.jpg',60);
INSERT INTO `ezimagefile` VALUES (599,'var/ezdemo_site/storage/images/ez-mountains/mount-stadda/599-1-eng-GB/Mount-Stadda.jpg',62);
INSERT INTO `ezimagefile` VALUES (605,'var/ezdemo_site/storage/images/ez-mountains/mount-aconcagua/605-1-eng-GB/Mount-Aconcagua.jpg',64);
INSERT INTO `ezimagefile` VALUES (611,'var/ezdemo_site/storage/images/ez-mountains/mount-ventoux/611-1-eng-GB/Mount-Ventoux.jpg',66);
INSERT INTO `ezimagefile` VALUES (617,'var/ezdemo_site/storage/images/ez-mountains/mount-castor/617-1-eng-GB/Mount-Castor.jpg',68);
INSERT INTO `ezimagefile` VALUES (172,'var/ezdemo_site/storage/images/design/plain-site/172-2-eng-GB/eZ-Publish-Deploy-Site-for-Summercamp-20161.png',69);
INSERT INTO `ezimagefile` VALUES (371,'var/ezdemo_site/storage/images/shopping/products/ez-publish-man-jacket/371-1-eng-GB/eZ-Publish-Man-jacket_productthumbnail.jpg',70);
INSERT INTO `ezimagefile` VALUES (341,'var/ezdemo_site/storage/images/shopping/products/ez-publish-community-iphone-4-case/341-1-eng-GB/eZ-Publish-Community-iPhone-4-Case_productthumbnail.jpg',71);
INSERT INTO `ezimagefile` VALUES (431,'var/ezdemo_site/storage/images/shopping/services/ez-publish-enterprise-service/squares/431-1-eng-GB/squares_listitem.png',72);
INSERT INTO `ezimagefile` VALUES (507,'var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM_reference.png',73);
INSERT INTO `ezimagefile` VALUES (507,'var/ezdemo_site/storage/images/media/images/screen-shot-2013-01-31-at-8.17.26-pm/507-1-eng-GB/Screen-Shot-2013-01-31-at-8.17.26-PM_large.png',74);
INSERT INTO `ezimagefile` VALUES (537,'var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor_reference.jpg',75);
INSERT INTO `ezimagefile` VALUES (537,'var/ezdemo_site/storage/images/media/images/mount-castor/537-1-eng-GB/mount-Castor_medium.jpg',76);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1);
INSERT INTO `ezisbn_group` VALUES ('English language',1,2);
INSERT INTO `ezisbn_group` VALUES ('French language',2,3);
INSERT INTO `ezisbn_group` VALUES ('German language',3,4);
INSERT INTO `ezisbn_group` VALUES ('Japan',4,5);
INSERT INTO `ezisbn_group` VALUES ('Russian Federation and former USSR',5,6);
INSERT INTO `ezisbn_group` VALUES ('Iran',600,7);
INSERT INTO `ezisbn_group` VALUES ('Kazakhstan',601,8);
INSERT INTO `ezisbn_group` VALUES ('Indonesia',602,9);
INSERT INTO `ezisbn_group` VALUES ('Saudi Arabia',603,10);
INSERT INTO `ezisbn_group` VALUES ('Vietnam',604,11);
INSERT INTO `ezisbn_group` VALUES ('Turkey',605,12);
INSERT INTO `ezisbn_group` VALUES ('Romania',606,13);
INSERT INTO `ezisbn_group` VALUES ('Mexico',607,14);
INSERT INTO `ezisbn_group` VALUES ('Macedonia',608,15);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',609,16);
INSERT INTO `ezisbn_group` VALUES ('Thailand',611,17);
INSERT INTO `ezisbn_group` VALUES ('Peru',612,18);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',613,19);
INSERT INTO `ezisbn_group` VALUES ('Lebanon',614,20);
INSERT INTO `ezisbn_group` VALUES ('Hungary',615,21);
INSERT INTO `ezisbn_group` VALUES ('Thailand',616,22);
INSERT INTO `ezisbn_group` VALUES ('Ukraine',617,23);
INSERT INTO `ezisbn_group` VALUES ('China, People\'s Republic',7,24);
INSERT INTO `ezisbn_group` VALUES ('Czech Republic and Slovakia',80,25);
INSERT INTO `ezisbn_group` VALUES ('India',81,26);
INSERT INTO `ezisbn_group` VALUES ('Norway',82,27);
INSERT INTO `ezisbn_group` VALUES ('Poland',83,28);
INSERT INTO `ezisbn_group` VALUES ('Spain',84,29);
INSERT INTO `ezisbn_group` VALUES ('Brazil',85,30);
INSERT INTO `ezisbn_group` VALUES ('Serbia and Montenegro',86,31);
INSERT INTO `ezisbn_group` VALUES ('Denmark',87,32);
INSERT INTO `ezisbn_group` VALUES ('Italy',88,33);
INSERT INTO `ezisbn_group` VALUES ('Korea, Republic',89,34);
INSERT INTO `ezisbn_group` VALUES ('Netherlands',90,35);
INSERT INTO `ezisbn_group` VALUES ('Sweden',91,36);
INSERT INTO `ezisbn_group` VALUES ('International NGO Publishers and EC Organizations',92,37);
INSERT INTO `ezisbn_group` VALUES ('India',93,38);
INSERT INTO `ezisbn_group` VALUES ('Netherlands',94,39);
INSERT INTO `ezisbn_group` VALUES ('Argentina',950,40);
INSERT INTO `ezisbn_group` VALUES ('Finland',951,41);
INSERT INTO `ezisbn_group` VALUES ('Finland',952,42);
INSERT INTO `ezisbn_group` VALUES ('Croatia',953,43);
INSERT INTO `ezisbn_group` VALUES ('Bulgaria',954,44);
INSERT INTO `ezisbn_group` VALUES ('Sri Lanka',955,45);
INSERT INTO `ezisbn_group` VALUES ('Chile',956,46);
INSERT INTO `ezisbn_group` VALUES ('Taiwan',957,47);
INSERT INTO `ezisbn_group` VALUES ('Colombia',958,48);
INSERT INTO `ezisbn_group` VALUES ('Cuba',959,49);
INSERT INTO `ezisbn_group` VALUES ('Greece',960,50);
INSERT INTO `ezisbn_group` VALUES ('Slovenia',961,51);
INSERT INTO `ezisbn_group` VALUES ('Hong Kong, China',962,52);
INSERT INTO `ezisbn_group` VALUES ('Hungary',963,53);
INSERT INTO `ezisbn_group` VALUES ('Iran',964,54);
INSERT INTO `ezisbn_group` VALUES ('Israel',965,55);
INSERT INTO `ezisbn_group` VALUES ('Ukraine',966,56);
INSERT INTO `ezisbn_group` VALUES ('Malaysia',967,57);
INSERT INTO `ezisbn_group` VALUES ('Mexico',968,58);
INSERT INTO `ezisbn_group` VALUES ('Pakistan',969,59);
INSERT INTO `ezisbn_group` VALUES ('Mexico',970,60);
INSERT INTO `ezisbn_group` VALUES ('Philippines',971,61);
INSERT INTO `ezisbn_group` VALUES ('Portugal',972,62);
INSERT INTO `ezisbn_group` VALUES ('Romania',973,63);
INSERT INTO `ezisbn_group` VALUES ('Thailand',974,64);
INSERT INTO `ezisbn_group` VALUES ('Turkey',975,65);
INSERT INTO `ezisbn_group` VALUES ('Caribbean Community',976,66);
INSERT INTO `ezisbn_group` VALUES ('Egypt',977,67);
INSERT INTO `ezisbn_group` VALUES ('Nigeria',978,68);
INSERT INTO `ezisbn_group` VALUES ('Indonesia',979,69);
INSERT INTO `ezisbn_group` VALUES ('Venezuela',980,70);
INSERT INTO `ezisbn_group` VALUES ('Singapore',981,71);
INSERT INTO `ezisbn_group` VALUES ('South Pacific',982,72);
INSERT INTO `ezisbn_group` VALUES ('Malaysia',983,73);
INSERT INTO `ezisbn_group` VALUES ('Bangladesh',984,74);
INSERT INTO `ezisbn_group` VALUES ('Belarus',985,75);
INSERT INTO `ezisbn_group` VALUES ('Taiwan',986,76);
INSERT INTO `ezisbn_group` VALUES ('Argentina',987,77);
INSERT INTO `ezisbn_group` VALUES ('Hong Kong, China',988,78);
INSERT INTO `ezisbn_group` VALUES ('Portugal',989,79);
INSERT INTO `ezisbn_group` VALUES ('Qatar',9927,80);
INSERT INTO `ezisbn_group` VALUES ('Albania',9928,81);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',9929,82);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9930,83);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9931,84);
INSERT INTO `ezisbn_group` VALUES ('Lao People\'s Democratic Republic',9932,85);
INSERT INTO `ezisbn_group` VALUES ('Syria',9933,86);
INSERT INTO `ezisbn_group` VALUES ('Latvia',9934,87);
INSERT INTO `ezisbn_group` VALUES ('Iceland',9935,88);
INSERT INTO `ezisbn_group` VALUES ('Afghanistan',9936,89);
INSERT INTO `ezisbn_group` VALUES ('Nepal',9937,90);
INSERT INTO `ezisbn_group` VALUES ('Tunisia',9938,91);
INSERT INTO `ezisbn_group` VALUES ('Armenia',9939,92);
INSERT INTO `ezisbn_group` VALUES ('Montenegro',9940,93);
INSERT INTO `ezisbn_group` VALUES ('Georgia',9941,94);
INSERT INTO `ezisbn_group` VALUES ('Ecuador',9942,95);
INSERT INTO `ezisbn_group` VALUES ('Uzbekistan',9943,96);
INSERT INTO `ezisbn_group` VALUES ('Turkey',9944,97);
INSERT INTO `ezisbn_group` VALUES ('Dominican Republic',9945,98);
INSERT INTO `ezisbn_group` VALUES ('Korea, P.D.R.',9946,99);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9947,100);
INSERT INTO `ezisbn_group` VALUES ('United Arab Emirates',9948,101);
INSERT INTO `ezisbn_group` VALUES ('Estonia',9949,102);
INSERT INTO `ezisbn_group` VALUES ('Palestine',9950,103);
INSERT INTO `ezisbn_group` VALUES ('Kosova',9951,104);
INSERT INTO `ezisbn_group` VALUES ('Azerbaijan',9952,105);
INSERT INTO `ezisbn_group` VALUES ('Lebanon',9953,106);
INSERT INTO `ezisbn_group` VALUES ('Morocco',9954,107);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',9955,108);
INSERT INTO `ezisbn_group` VALUES ('Cameroon',9956,109);
INSERT INTO `ezisbn_group` VALUES ('Jordan',9957,110);
INSERT INTO `ezisbn_group` VALUES ('Bosnia and Herzegovina',9958,111);
INSERT INTO `ezisbn_group` VALUES ('Libya',9959,112);
INSERT INTO `ezisbn_group` VALUES ('Saudi Arabia',9960,113);
INSERT INTO `ezisbn_group` VALUES ('Algeria',9961,114);
INSERT INTO `ezisbn_group` VALUES ('Panama',9962,115);
INSERT INTO `ezisbn_group` VALUES ('Cyprus',9963,116);
INSERT INTO `ezisbn_group` VALUES ('Ghana',9964,117);
INSERT INTO `ezisbn_group` VALUES ('Kazakhstan',9965,118);
INSERT INTO `ezisbn_group` VALUES ('Kenya',9966,119);
INSERT INTO `ezisbn_group` VALUES ('Kyrgyz Republic',9967,120);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9968,121);
INSERT INTO `ezisbn_group` VALUES ('Uganda',9970,122);
INSERT INTO `ezisbn_group` VALUES ('Singapore',9971,123);
INSERT INTO `ezisbn_group` VALUES ('Peru',9972,124);
INSERT INTO `ezisbn_group` VALUES ('Tunisia',9973,125);
INSERT INTO `ezisbn_group` VALUES ('Uruguay',9974,126);
INSERT INTO `ezisbn_group` VALUES ('Moldova',9975,127);
INSERT INTO `ezisbn_group` VALUES ('Tanzania',9976,128);
INSERT INTO `ezisbn_group` VALUES ('Costa Rica',9977,129);
INSERT INTO `ezisbn_group` VALUES ('Ecuador',9978,130);
INSERT INTO `ezisbn_group` VALUES ('Iceland',9979,131);
INSERT INTO `ezisbn_group` VALUES ('Papua New Guinea',9980,132);
INSERT INTO `ezisbn_group` VALUES ('Morocco',9981,133);
INSERT INTO `ezisbn_group` VALUES ('Zambia',9982,134);
INSERT INTO `ezisbn_group` VALUES ('Gambia',9983,135);
INSERT INTO `ezisbn_group` VALUES ('Latvia',9984,136);
INSERT INTO `ezisbn_group` VALUES ('Estonia',9985,137);
INSERT INTO `ezisbn_group` VALUES ('Lithuania',9986,138);
INSERT INTO `ezisbn_group` VALUES ('Tanzania',9987,139);
INSERT INTO `ezisbn_group` VALUES ('Ghana',9988,140);
INSERT INTO `ezisbn_group` VALUES ('Macedonia',9989,141);
INSERT INTO `ezisbn_group` VALUES ('Bahrain',99901,142);
INSERT INTO `ezisbn_group` VALUES ('Gabon',99902,143);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',99903,144);
INSERT INTO `ezisbn_group` VALUES ('Netherlands Antilles and Aruba',99904,145);
INSERT INTO `ezisbn_group` VALUES ('Bolivia',99905,146);
INSERT INTO `ezisbn_group` VALUES ('Kuwait',99906,147);
INSERT INTO `ezisbn_group` VALUES ('Malawi',99908,148);
INSERT INTO `ezisbn_group` VALUES ('Malta',99909,149);
INSERT INTO `ezisbn_group` VALUES ('Sierra Leone',99910,150);
INSERT INTO `ezisbn_group` VALUES ('Lesotho',99911,151);
INSERT INTO `ezisbn_group` VALUES ('Botswana',99912,152);
INSERT INTO `ezisbn_group` VALUES ('Andorra',99913,153);
INSERT INTO `ezisbn_group` VALUES ('Suriname',99914,154);
INSERT INTO `ezisbn_group` VALUES ('Maldives',99915,155);
INSERT INTO `ezisbn_group` VALUES ('Namibia',99916,156);
INSERT INTO `ezisbn_group` VALUES ('Brunei Darussalam',99917,157);
INSERT INTO `ezisbn_group` VALUES ('Faroe Islands',99918,158);
INSERT INTO `ezisbn_group` VALUES ('Benin',99919,159);
INSERT INTO `ezisbn_group` VALUES ('Andorra',99920,160);
INSERT INTO `ezisbn_group` VALUES ('Qatar',99921,161);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',99922,162);
INSERT INTO `ezisbn_group` VALUES ('El Salvador',99923,163);
INSERT INTO `ezisbn_group` VALUES ('Nicaragua',99924,164);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99925,165);
INSERT INTO `ezisbn_group` VALUES ('Honduras',99926,166);
INSERT INTO `ezisbn_group` VALUES ('Albania',99927,167);
INSERT INTO `ezisbn_group` VALUES ('Georgia',99928,168);
INSERT INTO `ezisbn_group` VALUES ('Mongolia',99929,169);
INSERT INTO `ezisbn_group` VALUES ('Armenia',99930,170);
INSERT INTO `ezisbn_group` VALUES ('Seychelles',99931,171);
INSERT INTO `ezisbn_group` VALUES ('Malta',99932,172);
INSERT INTO `ezisbn_group` VALUES ('Nepal',99933,173);
INSERT INTO `ezisbn_group` VALUES ('Dominican Republic',99934,174);
INSERT INTO `ezisbn_group` VALUES ('Haiti',99935,175);
INSERT INTO `ezisbn_group` VALUES ('Bhutan',99936,176);
INSERT INTO `ezisbn_group` VALUES ('Macau',99937,177);
INSERT INTO `ezisbn_group` VALUES ('Srpska, Republic of',99938,178);
INSERT INTO `ezisbn_group` VALUES ('Guatemala',99939,179);
INSERT INTO `ezisbn_group` VALUES ('Georgia',99940,180);
INSERT INTO `ezisbn_group` VALUES ('Armenia',99941,181);
INSERT INTO `ezisbn_group` VALUES ('Sudan',99942,182);
INSERT INTO `ezisbn_group` VALUES ('Albania',99943,183);
INSERT INTO `ezisbn_group` VALUES ('Ethiopia',99944,184);
INSERT INTO `ezisbn_group` VALUES ('Namibia',99945,185);
INSERT INTO `ezisbn_group` VALUES ('Nepal',99946,186);
INSERT INTO `ezisbn_group` VALUES ('Tajikistan',99947,187);
INSERT INTO `ezisbn_group` VALUES ('Eritrea',99948,188);
INSERT INTO `ezisbn_group` VALUES ('Mauritius',99949,189);
INSERT INTO `ezisbn_group` VALUES ('Cambodia',99950,190);
INSERT INTO `ezisbn_group` VALUES ('Congo',99951,191);
INSERT INTO `ezisbn_group` VALUES ('Mali',99952,192);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99953,193);
INSERT INTO `ezisbn_group` VALUES ('Bolivia',99954,194);
INSERT INTO `ezisbn_group` VALUES ('Srpska, Republic of',99955,195);
INSERT INTO `ezisbn_group` VALUES ('Albania',99956,196);
INSERT INTO `ezisbn_group` VALUES ('Malta',99957,197);
INSERT INTO `ezisbn_group` VALUES ('Bahrain',99958,198);
INSERT INTO `ezisbn_group` VALUES ('Luxembourg',99959,199);
INSERT INTO `ezisbn_group` VALUES ('Malawi',99960,200);
INSERT INTO `ezisbn_group` VALUES ('El Salvador',99961,201);
INSERT INTO `ezisbn_group` VALUES ('Mongolia',99962,202);
INSERT INTO `ezisbn_group` VALUES ('Cambodia',99963,203);
INSERT INTO `ezisbn_group` VALUES ('Nicaragua',99964,204);
INSERT INTO `ezisbn_group` VALUES ('Macau',99965,205);
INSERT INTO `ezisbn_group` VALUES ('Kuwait',99966,206);
INSERT INTO `ezisbn_group` VALUES ('Paraguay',99967,207);
INSERT INTO `ezisbn_group` VALUES ('Botswana',99968,208);
INSERT INTO `ezisbn_group` VALUES ('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999);
INSERT INTO `ezisbn_group_range` VALUES (60000,'600',3,'649',2,64999);
INSERT INTO `ezisbn_group_range` VALUES (70000,'7',1,'7',3,79999);
INSERT INTO `ezisbn_group_range` VALUES (80000,'80',2,'94',4,94999);
INSERT INTO `ezisbn_group_range` VALUES (95000,'950',3,'989',5,98999);
INSERT INTO `ezisbn_group_range` VALUES (99000,'9900',4,'9989',6,99899);
INSERT INTO `ezisbn_group_range` VALUES (99900,'99900',5,'99999',7,99999);
INSERT INTO `ezisbn_group_range` VALUES (10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,2,1,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,3,1,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,4,1,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,5,1,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,6,1,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,7,2,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,8,2,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,9,2,'4000',4,'5499',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,10,2,'55000',5,'86979',86979);
INSERT INTO `ezisbn_registrant_range` VALUES (86980,11,2,'869800',6,'998999',99899);
INSERT INTO `ezisbn_registrant_range` VALUES (99900,12,2,'9990000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,13,3,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,14,3,'200',3,'349',34999);
INSERT INTO `ezisbn_registrant_range` VALUES (35000,15,3,'35000',5,'39999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,16,3,'400',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,17,3,'7000',4,'8399',83999);
INSERT INTO `ezisbn_registrant_range` VALUES (84000,18,3,'84000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,19,3,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,20,3,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,21,4,'00',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,22,4,'030',3,'033',3399);
INSERT INTO `ezisbn_registrant_range` VALUES (3400,23,4,'0340',4,'0369',3699);
INSERT INTO `ezisbn_registrant_range` VALUES (3700,24,4,'03700',5,'03999',3999);
INSERT INTO `ezisbn_registrant_range` VALUES (4000,25,4,'04',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,26,4,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,27,4,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,28,4,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,29,4,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,30,4,'9500000',7,'9539999',95399);
INSERT INTO `ezisbn_registrant_range` VALUES (95400,31,4,'95400',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,32,4,'9700000',7,'9899999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,33,4,'99000',5,'99499',99499);
INSERT INTO `ezisbn_registrant_range` VALUES (99500,34,4,'99500',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,35,5,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,36,5,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,37,5,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,38,5,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,39,5,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,40,5,'9500000',7,'9999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,41,6,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,42,6,'200',3,'420',42099);
INSERT INTO `ezisbn_registrant_range` VALUES (42100,43,6,'4210',4,'4299',42999);
INSERT INTO `ezisbn_registrant_range` VALUES (43000,44,6,'430',3,'430',43099);
INSERT INTO `ezisbn_registrant_range` VALUES (43100,45,6,'4310',4,'4399',43999);
INSERT INTO `ezisbn_registrant_range` VALUES (44000,46,6,'440',3,'440',44099);
INSERT INTO `ezisbn_registrant_range` VALUES (44100,47,6,'4410',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,48,6,'450',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,49,6,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,50,6,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,51,6,'900000',6,'909999',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,52,6,'91000',5,'91999',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,53,6,'9200',4,'9299',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,54,6,'93000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,55,6,'9500000',7,'9500999',95009);
INSERT INTO `ezisbn_registrant_range` VALUES (95010,56,6,'9501',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,57,6,'98000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,58,6,'9900000',7,'9909999',99099);
INSERT INTO `ezisbn_registrant_range` VALUES (99100,59,6,'9910',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,60,7,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,61,7,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,62,7,'5000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,63,7,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,64,8,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,65,8,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,66,8,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,67,8,'80000',5,'84999',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,68,8,'85',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,69,9,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,70,9,'200',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,71,9,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,72,9,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,73,10,'00',2,'04',4999);
INSERT INTO `ezisbn_registrant_range` VALUES (5000,74,10,'05',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,75,10,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,76,10,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,77,10,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,78,11,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,79,11,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,80,11,'900',3,'979',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,81,11,'9800',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,82,12,'01',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,83,12,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,84,12,'4000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,85,12,'60000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,86,12,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,87,13,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,88,13,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,89,13,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,90,13,'8000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,91,13,'92000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,92,14,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,93,14,'400',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,94,14,'7500',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,95,14,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,96,15,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,97,15,'10',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,98,15,'200',3,'449',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,99,15,'4500',4,'6499',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (65000,100,15,'65000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,101,15,'7',1,'9',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,102,16,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,103,16,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,104,16,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,105,16,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,106,18,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,107,18,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,108,18,'4000',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,109,18,'45000',5,'49999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,110,18,'50',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,111,19,'0',1,'9',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,112,20,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,113,20,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,114,20,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,115,20,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,116,21,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,117,21,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,118,21,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,119,21,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,120,22,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,121,22,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,122,22,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,123,22,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,124,23,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,125,23,'500',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,126,23,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,127,23,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,128,24,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,129,24,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,130,24,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,131,24,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,132,24,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,133,25,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,134,25,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,135,25,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,136,25,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,137,25,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,138,26,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,139,26,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,140,26,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,141,26,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,142,26,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,143,27,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,144,27,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,145,27,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,146,27,'90000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,147,27,'990000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,148,28,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,149,28,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,150,28,'60000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,151,28,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,152,28,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,153,28,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,154,29,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,155,29,'15000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,156,29,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,157,29,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,158,29,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,159,29,'9000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,160,29,'920000',6,'923999',92399);
INSERT INTO `ezisbn_registrant_range` VALUES (92400,161,29,'92400',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,162,29,'930000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,163,29,'95000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,164,29,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,165,30,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,166,30,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,167,30,'60000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,168,30,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,169,30,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,170,30,'900000',6,'979999',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,171,30,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,172,31,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,173,31,'300',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,174,31,'6000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,175,31,'80000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,176,31,'900000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,177,32,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,178,32,'400',3,'649',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,179,32,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,180,32,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,181,32,'970000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,182,33,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,183,33,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,184,33,'6000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,185,33,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,186,33,'900000',6,'949999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,187,33,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,188,34,'00',2,'24',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,189,34,'250',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,190,34,'5500',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,191,34,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,192,34,'950000',6,'969999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,193,34,'97000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,194,34,'990',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,195,35,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,196,35,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,197,35,'5000',4,'6999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,198,35,'70000',5,'79999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,199,35,'800000',6,'849999',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,200,35,'8500',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,201,35,'90',2,'90',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,202,35,'910000',6,'939999',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,203,35,'94',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,204,35,'950000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,205,36,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,206,36,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,207,36,'500',3,'649',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,208,36,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,209,36,'85000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,210,36,'970000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,211,37,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,212,37,'60',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,213,37,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,214,37,'9000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,215,37,'95000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,216,37,'990000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,217,38,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,218,38,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,219,38,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,220,38,'80000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,221,38,'950000',6,'999999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,222,39,'000',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,223,39,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,224,39,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,225,40,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,226,40,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,227,40,'9000',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,228,40,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,229,41,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,230,41,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,231,41,'550',3,'889',88999);
INSERT INTO `ezisbn_registrant_range` VALUES (89000,232,41,'8900',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,233,41,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,234,42,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,235,42,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,236,42,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,237,42,'60',2,'65',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,238,42,'6600',4,'6699',66999);
INSERT INTO `ezisbn_registrant_range` VALUES (67000,239,42,'67000',5,'69999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,240,42,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,241,42,'80',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,242,42,'9500',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,243,42,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,244,43,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,245,43,'10',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,246,43,'150',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,247,43,'55000',5,'59999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,248,43,'6000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,249,43,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,250,44,'00',2,'28',28999);
INSERT INTO `ezisbn_registrant_range` VALUES (29000,251,44,'2900',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,252,44,'300',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,253,44,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,254,44,'90000',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,255,44,'9300',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,256,45,'0000',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,257,45,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,258,45,'50000',5,'54999',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,259,45,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,260,45,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,261,45,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,262,46,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,263,46,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,264,46,'7000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,265,47,'00',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,266,47,'0300',4,'0499',4999);
INSERT INTO `ezisbn_registrant_range` VALUES (5000,267,47,'05',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,268,47,'2000',4,'2099',20999);
INSERT INTO `ezisbn_registrant_range` VALUES (21000,269,47,'21',2,'27',27999);
INSERT INTO `ezisbn_registrant_range` VALUES (28000,270,47,'28000',5,'30999',30999);
INSERT INTO `ezisbn_registrant_range` VALUES (31000,271,47,'31',2,'43',43999);
INSERT INTO `ezisbn_registrant_range` VALUES (44000,272,47,'440',3,'819',81999);
INSERT INTO `ezisbn_registrant_range` VALUES (82000,273,47,'8200',4,'9699',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,274,47,'97000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,275,48,'00',2,'56',56999);
INSERT INTO `ezisbn_registrant_range` VALUES (57000,276,48,'57000',5,'59999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,277,48,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,278,48,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,279,48,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,280,49,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,281,49,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,282,49,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,283,49,'85000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,284,50,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,285,50,'200',3,'659',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,286,50,'6600',4,'6899',68999);
INSERT INTO `ezisbn_registrant_range` VALUES (69000,287,50,'690',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,288,50,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,289,50,'85000',5,'92999',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,290,50,'93',2,'93',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,291,50,'9400',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,292,50,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,293,51,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,294,51,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,295,51,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,296,51,'90000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,297,52,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,298,52,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,299,52,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,300,52,'85000',5,'86999',86999);
INSERT INTO `ezisbn_registrant_range` VALUES (87000,301,52,'8700',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,302,52,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,303,53,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,304,53,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,305,53,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,306,53,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,307,53,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,308,54,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,309,54,'150',3,'249',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,310,54,'2500',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,311,54,'300',3,'549',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,312,54,'5500',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,313,54,'90000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,314,54,'970',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,315,54,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,316,55,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,317,55,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,318,55,'7000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,319,55,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,320,56,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,321,56,'1500',4,'1699',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,322,56,'170',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,323,56,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,324,56,'300',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,325,56,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,326,56,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,327,57,'00',2,'00',999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,328,57,'0100',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,329,57,'10000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,330,57,'300',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,331,57,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,332,57,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,333,57,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,334,57,'9900',4,'9989',99899);
INSERT INTO `ezisbn_registrant_range` VALUES (99900,335,57,'99900',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,336,58,'01',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,337,58,'400',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,338,58,'5000',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,339,58,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,340,58,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,341,59,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,342,59,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,343,59,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,344,59,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,345,60,'01',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,346,60,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,347,60,'9000',4,'9099',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,348,60,'91000',5,'96999',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,349,60,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,350,61,'000',3,'015',1599);
INSERT INTO `ezisbn_registrant_range` VALUES (1600,351,61,'0160',4,'0199',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,352,61,'02',2,'02',2999);
INSERT INTO `ezisbn_registrant_range` VALUES (3000,353,61,'0300',4,'0599',5999);
INSERT INTO `ezisbn_registrant_range` VALUES (6000,354,61,'06',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,355,61,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,356,61,'500',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,357,61,'8500',4,'9099',90999);
INSERT INTO `ezisbn_registrant_range` VALUES (91000,358,61,'91000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,359,61,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,360,62,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,361,62,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,362,62,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,363,62,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,364,62,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,365,63,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,366,63,'100',3,'169',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,367,63,'1700',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,368,63,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,369,63,'550',3,'759',75999);
INSERT INTO `ezisbn_registrant_range` VALUES (76000,370,63,'7600',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,371,63,'85000',5,'88999',88999);
INSERT INTO `ezisbn_registrant_range` VALUES (89000,372,63,'8900',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,373,63,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,374,64,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,375,64,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,376,64,'7000',4,'8499',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,377,64,'85000',5,'89999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,378,64,'90000',5,'94999',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,379,64,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,380,65,'00000',5,'01999',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,381,65,'02',2,'24',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,382,65,'250',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,383,65,'6000',4,'9199',91999);
INSERT INTO `ezisbn_registrant_range` VALUES (92000,384,65,'92000',5,'98999',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,385,65,'990',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,386,66,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,387,66,'40',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,388,66,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,389,66,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,390,66,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,391,67,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,392,67,'200',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,393,67,'5000',4,'6999',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,394,67,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,395,68,'000',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,396,68,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,397,68,'30000',5,'79999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,398,68,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,399,68,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,400,69,'000',3,'099',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,401,69,'1000',4,'1499',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,402,69,'15000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,403,69,'20',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,404,69,'3000',4,'3999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,405,69,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,406,69,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,407,69,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,408,70,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,409,70,'200',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,410,70,'6000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,411,71,'00',2,'11',11999);
INSERT INTO `ezisbn_registrant_range` VALUES (12000,412,71,'1200',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,413,71,'200',3,'289',28999);
INSERT INTO `ezisbn_registrant_range` VALUES (29000,414,71,'2900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,415,72,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,416,72,'100',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,417,72,'70',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,418,72,'9000',4,'9799',97999);
INSERT INTO `ezisbn_registrant_range` VALUES (98000,419,72,'98000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,420,73,'00',2,'01',1999);
INSERT INTO `ezisbn_registrant_range` VALUES (2000,421,73,'020',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,422,73,'2000',4,'3999',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,423,73,'40000',5,'44999',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,424,73,'45',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,425,73,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,426,73,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,427,73,'9000',4,'9899',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,428,73,'99000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,429,74,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,430,74,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,431,74,'8000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,432,74,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,433,75,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,434,75,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,435,75,'6000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,436,75,'90000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,437,76,'00',2,'11',11999);
INSERT INTO `ezisbn_registrant_range` VALUES (12000,438,76,'120',3,'559',55999);
INSERT INTO `ezisbn_registrant_range` VALUES (56000,439,76,'5600',4,'7999',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,440,76,'80000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,441,77,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,442,77,'1000',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,443,77,'20000',5,'29999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,444,77,'30',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,445,77,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,446,77,'9000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,447,77,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,448,78,'00',2,'14',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,449,78,'15000',5,'16999',16999);
INSERT INTO `ezisbn_registrant_range` VALUES (17000,450,78,'17000',5,'19999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,451,78,'200',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,452,78,'8000',4,'9699',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,453,78,'97000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,454,79,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,455,79,'20',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,456,79,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,457,79,'8000',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,458,79,'95000',5,'99999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,459,80,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,460,80,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,461,80,'4000',4,'4999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,462,81,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,463,81,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,464,81,'4000',4,'4999',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,465,82,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,466,82,'40',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,467,82,'550',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,468,82,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,469,83,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,470,83,'500',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,471,83,'9400',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,472,84,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,473,84,'300',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,474,84,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,475,85,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,476,85,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,477,85,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,478,86,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,479,86,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,480,86,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,481,86,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,482,87,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,483,87,'10',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,484,87,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,485,87,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,486,88,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,487,88,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,488,88,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,489,88,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,490,89,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,491,89,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,492,89,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,493,89,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,494,90,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,495,90,'30',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,496,90,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,497,90,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,498,91,'00',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,499,91,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,500,91,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,501,92,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,502,92,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,503,92,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,504,92,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,505,93,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,506,93,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,507,93,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,508,93,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,509,94,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,510,94,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,511,94,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,512,94,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,513,95,'00',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,514,95,'900',3,'984',98499);
INSERT INTO `ezisbn_registrant_range` VALUES (98500,515,95,'9850',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,516,96,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,517,96,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,518,96,'4000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,519,97,'0000',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,520,97,'100',3,'499',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,521,97,'5000',4,'5999',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,522,97,'60',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,523,97,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,524,97,'80',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,525,97,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,526,98,'00',2,'00',999);
INSERT INTO `ezisbn_registrant_range` VALUES (1000,527,98,'010',3,'079',7999);
INSERT INTO `ezisbn_registrant_range` VALUES (8000,528,98,'08',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,529,98,'400',3,'569',56999);
INSERT INTO `ezisbn_registrant_range` VALUES (57000,530,98,'57',2,'57',57999);
INSERT INTO `ezisbn_registrant_range` VALUES (58000,531,98,'580',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,532,98,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,533,99,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,534,99,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,535,99,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,536,99,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,537,100,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,538,100,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,539,100,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,540,101,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,541,101,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,542,101,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,543,102,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,544,102,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,545,102,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,546,102,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,547,103,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,548,103,'300',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,549,103,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,550,104,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,551,104,'400',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,552,104,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,553,105,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,554,105,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,555,105,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,556,105,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,557,106,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,558,106,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,559,106,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,560,106,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,561,106,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,562,107,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,563,107,'20',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,564,107,'400',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,565,107,'8000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,566,108,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,567,108,'400',3,'929',92999);
INSERT INTO `ezisbn_registrant_range` VALUES (93000,568,108,'9300',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,569,109,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,570,109,'10',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,571,109,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,572,109,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,573,110,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,574,110,'400',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,575,110,'70',2,'84',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,576,110,'8500',4,'8799',87999);
INSERT INTO `ezisbn_registrant_range` VALUES (88000,577,110,'88',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,578,111,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,579,111,'10',2,'18',18999);
INSERT INTO `ezisbn_registrant_range` VALUES (19000,580,111,'1900',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,581,111,'20',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,582,111,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,583,111,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,584,112,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,585,112,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,586,112,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,587,112,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,588,113,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,589,113,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,590,113,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,591,114,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,592,114,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,593,114,'700',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,594,114,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,595,115,'00',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,596,115,'5500',4,'5599',55999);
INSERT INTO `ezisbn_registrant_range` VALUES (56000,597,115,'56',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,598,115,'600',3,'849',84999);
INSERT INTO `ezisbn_registrant_range` VALUES (85000,599,115,'8500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,600,116,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,601,116,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,602,116,'550',3,'734',73499);
INSERT INTO `ezisbn_registrant_range` VALUES (73500,603,116,'7350',4,'7499',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,604,116,'7500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,605,117,'0',1,'6',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,606,117,'70',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,607,117,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,608,118,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,609,118,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,610,118,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,611,119,'000',3,'149',14999);
INSERT INTO `ezisbn_registrant_range` VALUES (15000,612,119,'1500',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,613,119,'20',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,614,119,'7000',4,'7499',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,615,119,'750',3,'959',95999);
INSERT INTO `ezisbn_registrant_range` VALUES (96000,616,119,'9600',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,617,120,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,618,120,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,619,120,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,620,121,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,621,121,'500',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,622,121,'9400',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,623,122,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,624,122,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,625,122,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,626,123,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,627,123,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,628,123,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,629,123,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,630,124,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,631,124,'1',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,632,124,'200',3,'249',24999);
INSERT INTO `ezisbn_registrant_range` VALUES (25000,633,124,'2500',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,634,124,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,635,124,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,636,124,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,637,125,'00',2,'05',5999);
INSERT INTO `ezisbn_registrant_range` VALUES (6000,638,125,'060',3,'089',8999);
INSERT INTO `ezisbn_registrant_range` VALUES (9000,639,125,'0900',4,'0999',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,640,125,'10',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,641,125,'700',3,'969',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,642,125,'9700',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,643,126,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,644,126,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,645,126,'550',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,646,126,'7500',4,'9499',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,647,126,'95',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,648,127,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,649,127,'100',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,650,127,'4000',4,'4499',44999);
INSERT INTO `ezisbn_registrant_range` VALUES (45000,651,127,'45',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,652,127,'900',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,653,127,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,654,128,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,655,128,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,656,128,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,657,128,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,658,129,'00',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,659,129,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,660,129,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,661,130,'00',2,'29',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,662,130,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,663,130,'40',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,664,130,'950',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,665,130,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,666,131,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,667,131,'50',2,'64',64999);
INSERT INTO `ezisbn_registrant_range` VALUES (65000,668,131,'650',3,'659',65999);
INSERT INTO `ezisbn_registrant_range` VALUES (66000,669,131,'66',2,'75',75999);
INSERT INTO `ezisbn_registrant_range` VALUES (76000,670,131,'760',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,671,131,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,672,132,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,673,132,'40',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,674,132,'900',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,675,132,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,676,133,'00',2,'09',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,677,133,'100',3,'159',15999);
INSERT INTO `ezisbn_registrant_range` VALUES (16000,678,133,'1600',4,'1999',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,679,133,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,680,133,'800',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,681,133,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,682,134,'00',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,683,134,'800',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,684,134,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,685,135,'80',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,686,135,'950',3,'989',98999);
INSERT INTO `ezisbn_registrant_range` VALUES (99000,687,135,'9900',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,688,136,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,689,136,'500',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,690,136,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,691,137,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,692,137,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,693,137,'800',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,694,137,'9000',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,695,138,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,696,138,'400',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,697,138,'9000',4,'9399',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,698,138,'940',3,'969',96999);
INSERT INTO `ezisbn_registrant_range` VALUES (97000,699,138,'97',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,700,139,'00',2,'39',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,701,139,'400',3,'879',87999);
INSERT INTO `ezisbn_registrant_range` VALUES (88000,702,139,'8800',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,703,140,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,704,140,'30',2,'54',54999);
INSERT INTO `ezisbn_registrant_range` VALUES (55000,705,140,'550',3,'749',74999);
INSERT INTO `ezisbn_registrant_range` VALUES (75000,706,140,'7500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,707,141,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,708,141,'100',3,'199',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,709,141,'2000',4,'2999',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,710,141,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,711,141,'600',3,'949',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,712,141,'9500',4,'9999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,713,142,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,714,142,'500',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,715,142,'80',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,716,144,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,717,144,'20',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,718,144,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,719,145,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,720,145,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,721,145,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,722,146,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,723,146,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,724,146,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,725,147,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,726,147,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,727,147,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,728,147,'70',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,729,147,'90',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,730,147,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,731,148,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,732,148,'10',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,733,148,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,734,149,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,735,149,'40',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,736,149,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,737,150,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,738,150,'30',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,739,150,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,740,151,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,741,151,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,742,152,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,743,152,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,744,152,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,745,152,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,746,153,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,747,153,'30',2,'35',35999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,748,153,'600',3,'604',60499);
INSERT INTO `ezisbn_registrant_range` VALUES (0,749,154,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,750,154,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,751,154,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,752,155,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,753,155,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,754,155,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,755,156,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,756,156,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,757,156,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,758,157,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,759,157,'30',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,760,157,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,761,158,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,762,158,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,763,158,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,764,159,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,765,159,'300',3,'399',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,766,159,'40',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,767,159,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,768,160,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,769,160,'50',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,770,160,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,771,161,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,772,161,'20',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,773,161,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,774,161,'8',1,'8',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,775,161,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,776,162,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,777,162,'40',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,778,162,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,779,163,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,780,163,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,781,163,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,782,164,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,783,164,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,784,164,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,785,165,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,786,165,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,787,165,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,788,166,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,789,166,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,790,166,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,791,167,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,792,167,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,793,167,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,794,168,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,795,168,'10',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,796,168,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,797,169,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,798,169,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,799,169,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,800,170,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,801,170,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,802,170,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,803,171,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,804,171,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,805,171,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,806,172,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,807,172,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,808,172,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,809,172,'7',1,'7',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,810,172,'80',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,811,173,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,812,173,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,813,173,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,814,174,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,815,174,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,816,174,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,817,175,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,818,175,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,819,175,'600',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,820,175,'7',1,'8',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,821,175,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,822,176,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,823,176,'10',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,824,176,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,825,177,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,826,177,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,827,177,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,828,178,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,829,178,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,830,178,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,831,178,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,832,179,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,833,179,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,834,179,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,835,180,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,836,180,'10',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,837,180,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,838,181,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,839,181,'30',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,840,181,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,841,182,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,842,182,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,843,182,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,844,183,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,845,183,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,846,183,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,847,184,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,848,184,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,849,184,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,850,185,'0',1,'5',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,851,185,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,852,185,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,853,186,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,854,186,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,855,186,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,856,187,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,857,187,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,858,187,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,859,188,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,860,188,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,861,188,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,862,189,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,863,189,'20',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,864,189,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,865,190,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,866,190,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,867,190,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,868,192,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,869,192,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,870,192,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,871,193,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,872,193,'30',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,873,193,'800',3,'939',93999);
INSERT INTO `ezisbn_registrant_range` VALUES (94000,874,193,'94',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,875,194,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,876,194,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,877,194,'700',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,878,195,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,879,195,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,880,195,'600',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,881,195,'80',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,882,195,'90',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,883,196,'00',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,884,196,'600',3,'859',85999);
INSERT INTO `ezisbn_registrant_range` VALUES (86000,885,196,'86',2,'99',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,886,197,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,887,197,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,888,197,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,889,198,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,890,198,'50',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,891,198,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,892,199,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,893,199,'30',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,894,199,'600',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,895,200,'0',1,'0',9999);
INSERT INTO `ezisbn_registrant_range` VALUES (10000,896,200,'10',2,'94',94999);
INSERT INTO `ezisbn_registrant_range` VALUES (95000,897,200,'950',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,898,201,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,899,201,'40',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,900,201,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,901,202,'0',1,'4',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,902,202,'50',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,903,202,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,904,203,'00',2,'49',49999);
INSERT INTO `ezisbn_registrant_range` VALUES (50000,905,203,'500',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,906,204,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,907,204,'20',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,908,204,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,909,205,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,910,205,'40',2,'79',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (80000,911,205,'800',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,912,206,'0',1,'2',29999);
INSERT INTO `ezisbn_registrant_range` VALUES (30000,913,206,'30',2,'69',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,914,206,'700',3,'799',79999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,915,207,'0',1,'1',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,916,207,'20',2,'59',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,917,207,'600',3,'899',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,918,208,'0',1,'3',39999);
INSERT INTO `ezisbn_registrant_range` VALUES (40000,919,208,'400',3,'599',59999);
INSERT INTO `ezisbn_registrant_range` VALUES (60000,920,208,'60',2,'89',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,921,208,'900',3,'999',99999);
INSERT INTO `ezisbn_registrant_range` VALUES (0,922,209,'00',2,'19',19999);
INSERT INTO `ezisbn_registrant_range` VALUES (20000,923,209,'200',3,'699',69999);
INSERT INTO `ezisbn_registrant_range` VALUES (70000,924,209,'7000',4,'8999',89999);
INSERT INTO `ezisbn_registrant_range` VALUES (90000,925,209,'90000',5,'97599',97599);
INSERT INTO `ezisbn_registrant_range` VALUES (97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
INSERT INTO `ezkeyword` VALUES (16,1,'Castor');
INSERT INTO `ezkeyword` VALUES (16,2,'automate');
INSERT INTO `ezkeyword` VALUES (16,3,'deliver');
INSERT INTO `ezkeyword` VALUES (16,4,'create');
INSERT INTO `ezkeyword` VALUES (16,5,'Optimize');
INSERT INTO `ezkeyword` VALUES (16,6,'e-commerce');
INSERT INTO `ezkeyword` VALUES (16,7,'ez publish');
INSERT INTO `ezkeyword` VALUES (21,8,'phone');
INSERT INTO `ezkeyword` VALUES (21,9,'tech');
INSERT INTO `ezkeyword` VALUES (16,10,'Shopping New York');
INSERT INTO `ezkeyword` VALUES (26,11,'Logo');
INSERT INTO `ezkeyword` VALUES (18,12,'Blog Post');
INSERT INTO `ezkeyword` VALUES (18,13,'Social');
INSERT INTO `ezkeyword` VALUES (18,14,'eZ Publish');
INSERT INTO `ezkeyword` VALUES (18,15,'cxm');
INSERT INTO `ezkeyword` VALUES (18,16,'landing page');
INSERT INTO `ezkeyword` VALUES (27,17,'castor');
INSERT INTO `ezkeyword` VALUES (38,18,'castor');
INSERT INTO `ezkeyword` VALUES (38,19,'ez mountains');
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
INSERT INTO `ezkeyword_attribute_link` VALUES (1,1,280);
INSERT INTO `ezkeyword_attribute_link` VALUES (4,1,292);
INSERT INTO `ezkeyword_attribute_link` VALUES (6,1,304);
INSERT INTO `ezkeyword_attribute_link` VALUES (8,1,316);
INSERT INTO `ezkeyword_attribute_link` VALUES (2,2,280);
INSERT INTO `ezkeyword_attribute_link` VALUES (3,3,292);
INSERT INTO `ezkeyword_attribute_link` VALUES (5,4,304);
INSERT INTO `ezkeyword_attribute_link` VALUES (7,5,316);
INSERT INTO `ezkeyword_attribute_link` VALUES (9,6,328);
INSERT INTO `ezkeyword_attribute_link` VALUES (10,7,328);
INSERT INTO `ezkeyword_attribute_link` VALUES (11,8,345);
INSERT INTO `ezkeyword_attribute_link` VALUES (12,9,345);
INSERT INTO `ezkeyword_attribute_link` VALUES (13,10,428);
INSERT INTO `ezkeyword_attribute_link` VALUES (14,11,443);
INSERT INTO `ezkeyword_attribute_link` VALUES (15,12,460);
INSERT INTO `ezkeyword_attribute_link` VALUES (16,13,460);
INSERT INTO `ezkeyword_attribute_link` VALUES (17,14,460);
INSERT INTO `ezkeyword_attribute_link` VALUES (18,15,460);
INSERT INTO `ezkeyword_attribute_link` VALUES (19,16,469);
INSERT INTO `ezkeyword_attribute_link` VALUES (20,17,539);
INSERT INTO `ezkeyword_attribute_link` VALUES (21,18,619);
INSERT INTO `ezkeyword_attribute_link` VALUES (22,19,619);
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
INSERT INTO `ezm_block` VALUES ('1a72c0bc9faa36b5e20be733fc8c8807','865346aabbcc48a9839274cc554868be','Mixed Content',59,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('1e0260ecfb7f0d281c17447791584041','865346aabbcc48a9839274cc554868be','Gallery',59,'',0,'Gallery','',0,0,0);
INSERT INTO `ezm_block` VALUES ('2e6db295bcd100bae0dfd9411d9a53c1','f742abffba08fc849b6e80dec769a74c','Main Items',59,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('32e704f1bc3d785eee7e742c081d5beb','c5ce576877ab71afb7c143ea3276db4f','Main Features',61,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('3bb6f2370e6640145cce2c39cac1128e','f742abffba08fc849b6e80dec769a74c','White Paper',59,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('4c3e0180ec19775b3dea5794dd12312a','f742abffba08fc849b6e80dec769a74c','News',59,'',0,'FeedReader','',0,0,0);
INSERT INTO `ezm_block` VALUES ('53d83f8bd8ee4307eb23cc46dc29c145','f742abffba08fc849b6e80dec769a74c','Selected Video',59,'',0,'Video','',0,0,0);
INSERT INTO `ezm_block` VALUES ('639b9f037115d1ef4269713fdb7b6c71','fe8088a104581ea7faa6c00fe743f072','',61,'',0,'Campaign','',0,0,0);
INSERT INTO `ezm_block` VALUES ('6c72d9153b703a8598bd2760e4d0dccb','f742abffba08fc849b6e80dec769a74c','Tags',59,'',0,'TagCloud','',0,0,0);
INSERT INTO `ezm_block` VALUES ('7838c8283e8647f754569ab99419a727','6669bce3079221f326d4eb4121447fd9','',74,'',0,'Video','',0,0,0);
INSERT INTO `ezm_block` VALUES ('7cf0aae050d80f40f00ef4eb2295d0cb','c5ce576877ab71afb7c143ea3276db4f','Highlighted Feature',61,'',0,'HighlightedItem','',0,0,0);
INSERT INTO `ezm_block` VALUES ('96a998b9f2d0cfba849c27209dc582e9','fe8088a104581ea7faa6c00fe743f072','',61,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('a74a80887661109e0c87d0ad912ce09c','1b6149311bf4ece4717e6fff905e148c','',74,'',0,'ContentGrid','',0,0,0);
INSERT INTO `ezm_block` VALUES ('b185f6579a346b728f3a6e344500c9fb','865346aabbcc48a9839274cc554868be','Main Story',59,'',0,'Campaign','',0,0,0);
INSERT INTO `ezm_block` VALUES ('e9f6cd9b25adb89f87efcb06d8a3c324','6669bce3079221f326d4eb4121447fd9','Products',74,'',0,'ContentGrid','',0,0,0);
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
INSERT INTO `ezm_pool` VALUES ('1a72c0bc9faa36b5e20be733fc8c8807',67,69,0,1362053845,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1a72c0bc9faa36b5e20be733fc8c8807',68,70,2,1362053862,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1a72c0bc9faa36b5e20be733fc8c8807',69,71,3,1362053845,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1a72c0bc9faa36b5e20be733fc8c8807',70,72,1,1362053845,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',99,101,6,1366370872,1366370896,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',100,102,5,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',101,103,2,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',102,104,0,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',103,105,3,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',104,106,4,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',105,107,7,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('1e0260ecfb7f0d281c17447791584041',106,108,1,1362053913,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('2e6db295bcd100bae0dfd9411d9a53c1',74,76,1,1362054175,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('2e6db295bcd100bae0dfd9411d9a53c1',77,79,2,1362054175,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('32e704f1bc3d785eee7e742c081d5beb',68,70,0,1362054612,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('32e704f1bc3d785eee7e742c081d5beb',70,72,1,1362054605,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('3bb6f2370e6640145cce2c39cac1128e',92,94,1,1366370807,1366370896,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('53d83f8bd8ee4307eb23cc46dc29c145',107,109,1,1366370824,1366370896,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('639b9f037115d1ef4269713fdb7b6c71',71,73,1,1362054638,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('7838c8283e8647f754569ab99419a727',107,109,1,1366371213,1366371218,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('7cf0aae050d80f40f00ef4eb2295d0cb',69,71,1,1362054573,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('96a998b9f2d0cfba849c27209dc582e9',62,64,1,1362054687,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('96a998b9f2d0cfba849c27209dc582e9',63,65,2,1362054701,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('96a998b9f2d0cfba849c27209dc582e9',64,66,3,1362054719,1362054730,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('96a998b9f2d0cfba849c27209dc582e9',65,67,4,1362054732,1362054751,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('a74a80887661109e0c87d0ad912ce09c',79,81,1,1362054999,1362055156,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('a74a80887661109e0c87d0ad912ce09c',80,82,2,1362055014,1362055156,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('a74a80887661109e0c87d0ad912ce09c',81,83,3,1362055054,1362055156,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('a74a80887661109e0c87d0ad912ce09c',82,84,4,1362055085,1362055156,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('b185f6579a346b728f3a6e344500c9fb',71,73,1,1362053798,1362054365,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('e9f6cd9b25adb89f87efcb06d8a3c324',76,78,1,1362055123,1362055156,0,0,NULL);
INSERT INTO `ezm_pool` VALUES ('e9f6cd9b25adb89f87efcb06d8a3c324',77,79,2,1362055132,1362055156,0,0,NULL);
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (42,1,0,5,1,2,5,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (10,2,-1,6,1,2,44,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (4,1,0,7,1,2,1,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (12,1,0,8,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (13,1,0,9,1,2,5,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (41,1,0,11,1,2,1,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (45,1,-1,16,1,2,1,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (49,1,0,27,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (50,1,0,28,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (51,1,0,29,1,2,43,'','0',9,1,0,0);
INSERT INTO `eznode_assignment` VALUES (52,1,0,30,1,2,48,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (56,1,0,34,1,2,1,'','0',2,0,0,0);
INSERT INTO `eznode_assignment` VALUES (54,2,-1,39,1,2,58,'','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (57,1,0,43,1,2,2,'07cdfd23373b17c6b337251c22b7ea57','0',8,1,0,0);
INSERT INTO `eznode_assignment` VALUES (58,1,0,44,1,2,2,'86bf306624668ee9b8b979b0d56f7e0d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (59,1,0,45,1,2,2,'a056661abf6a4c778ca3a642797ae5e3','0',1,1,-12,0);
INSERT INTO `eznode_assignment` VALUES (60,1,0,46,1,2,61,'0dc12932089bea012bf35c1417b0aa2a','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (61,1,0,47,1,2,61,'016830043439eddf2956a14d3192fc09','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (62,1,0,48,1,2,63,'a2304f8b1c6a2a363e7055aa16b2d555','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (63,1,0,49,1,2,63,'0382aaa1f4fb90e8cf01cc77406e88b0','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (64,1,0,50,1,2,63,'b9b95382aaa102120ca724dc96fb5892','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (65,1,0,51,1,2,63,'0240c72d729c2412817a1c252e51eb1a','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (66,1,0,52,1,2,61,'595c35359a2d37e2dba89eb8dba4ce93','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (67,1,0,53,1,2,68,'e1b2a7e5f3a4368e666c4cd6a3810552','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (68,1,0,54,1,2,68,'0379665e0367a771802c95a1a755679e','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (69,1,0,55,1,2,68,'fd2168050d72bcfe92b1250586a8a87f','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (70,1,0,56,1,2,68,'cbd26486e64e79b91e7b4cc4ca6a7f87','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (71,1,0,57,1,2,68,'80536ae793c16e51018c632b9c90ff25','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (72,1,0,58,1,2,2,'d70f1694905d7c5df8e7a57628d5f223','0',1,1,-8,0);
INSERT INTO `eznode_assignment` VALUES (73,1,0,59,1,2,74,'c07971827e6e6cdbb9ab4e65a1ca7634','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (74,1,0,60,1,2,75,'a1db085c4b30f728a063da72b4cf077d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (75,1,0,61,1,2,75,'f46d1041283c096b3b31f02feb126e40','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (76,1,0,62,1,2,75,'698c1afa581bff910aa28ee5722e8ef3','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (77,1,0,63,1,2,75,'e5ae437d5696f19ffd9f9d412405eff9','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (78,1,0,64,1,2,74,'a655946daa57223381420cf5d93dfed2','0',2,1,0,0);
INSERT INTO `eznode_assignment` VALUES (79,1,0,65,1,2,80,'2cbc5d102c426831314f67530588def2','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (80,1,0,66,1,2,80,'d0348df851326b0bb8bcd885d1ca9c11','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (81,1,0,67,1,2,80,'11e34e72be29920e4abcdc0d4f2347d3','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (82,1,0,68,1,2,80,'23a8950df34d7f7d2fdf1b50ee4b2eb5','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (83,1,0,69,1,2,84,'4c87fd389f9f30995f8f21c6ba708630','0',2,0,0,0);
INSERT INTO `eznode_assignment` VALUES (84,1,0,70,1,2,2,'49dfabb2e1a632ae1f95fdeb79f4a92e','0',1,1,-6,0);
INSERT INTO `eznode_assignment` VALUES (85,1,0,71,1,2,86,'a6748f3cbe4bbc163e532c03ad28d0d0','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (86,1,0,72,1,2,86,'d59d9ae9190c7f4919beea16da748910','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (87,1,0,73,1,2,86,'deab6d56548e30311d6c5ca9b8676160','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (88,1,0,74,1,2,2,'0d05ff0c44f63901d8a1c0fbc5abc884','0',1,1,-4,0);
INSERT INTO `eznode_assignment` VALUES (89,1,0,75,1,2,90,'c0125304ac852abc3b7abe57f5ecbf21','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (90,1,0,76,1,2,91,'d573d6c76b2a4e88799a76167d66ccad','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (91,1,0,77,1,2,90,'510dcc113607e92399a8486d1e2c9a3f','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (92,1,0,78,1,2,2,'3e49b9fe4c95366cb590d3beb32a5838','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (93,1,0,79,1,2,94,'0ad294a85c89e0fbfd227fd8c71c9a9d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (94,1,0,80,1,2,2,'1e14d4e6b05a5af714297bfca4676fa1','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (95,1,0,81,1,2,52,'f14be944ca09935f1eedcfe54a246b62','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (96,1,0,82,1,2,51,'3682049fd7c0ef33c2461d8a999fad0f','0',2,0,0,0);
INSERT INTO `eznode_assignment` VALUES (97,1,0,83,1,2,51,'acf9aa4a0c03f43fa7d16a1ab21bd490','0',2,0,0,0);
INSERT INTO `eznode_assignment` VALUES (98,1,0,84,1,2,51,'59f7ea490ee77a4acd70ac009b2445ea','0',2,0,2,0);
INSERT INTO `eznode_assignment` VALUES (99,1,0,85,1,2,51,'b98b62e53cd88cc6687ecec7d1c07270','0',2,0,3,0);
INSERT INTO `eznode_assignment` VALUES (100,1,0,86,1,2,51,'9ce7495dd08002ee08a8fc3f3ab00a84','0',2,0,6,0);
INSERT INTO `eznode_assignment` VALUES (101,1,0,87,1,2,51,'f7d8939033eead11427e7e369ef4807f','0',2,0,8,0);
INSERT INTO `eznode_assignment` VALUES (102,1,0,88,1,2,51,'022374e0cb9ef8992a51d3b0d5ec2a0d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (103,1,0,89,1,2,51,'7ce6d078414726c00c48e1f0bacd1a0c','0',2,0,7,0);
INSERT INTO `eznode_assignment` VALUES (104,1,0,90,1,2,51,'94e2e3c2495efe083fe10f2648a4682f','0',2,0,4,0);
INSERT INTO `eznode_assignment` VALUES (105,1,0,91,1,2,51,'1d9e63828d750d13adb2be56b09369b4','0',2,0,1,0);
INSERT INTO `eznode_assignment` VALUES (106,1,0,92,1,2,51,'48151b12d35885c7d8d7123be5713b06','0',2,0,4,0);
INSERT INTO `eznode_assignment` VALUES (107,1,0,93,1,2,53,'270b39b7e7b53cf8dcbd9fc0eaf3b636','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (108,1,0,94,1,2,2,'12d24b1557425698ff9db34850d1847d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (109,1,0,95,1,2,110,'0dfb0702eef69260c27714a82a20298d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (110,1,0,96,1,2,110,'e24fbf24b197e3c24d31daa44ce96610','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (111,1,0,97,1,2,110,'2bc9ea252667b11a8b5e5fac8a729cde','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (112,1,0,98,1,2,110,'cf8f17f78ab4389214f90751d1bdfbb9','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (113,1,0,99,1,2,110,'c5e6bd34d3909e153e3c7d515989ec0a','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (114,1,0,100,1,2,110,'a2c302d12e7626c5f0214f383938e977','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (115,1,0,101,1,2,110,'8ef8377f6f21011dbfd2be75d0b8a5ea','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (116,1,0,102,1,2,110,'d97f5298b335507192c0768e2d56f786','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (117,1,0,103,1,2,110,'5dd5394bbec6fb6c7f4a9940bb2d63fc','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (14,4,-1,104,1,2,13,'e5161a99f733200b9ed4e80f9c16187b','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (118,1,0,105,1,2,5,'17ef40be9cbfb895791ba0c4a082e30d','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (119,1,0,106,1,2,5,'b91f2a7ad6af843314ca0ba0ebbfaeb9','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (120,1,0,107,1,2,121,'0e48391aa541cfd13b01fa0575c99568','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (11,2,-1,108,1,2,5,'602dcf84765e56b7f999eaafd3821dd3','0',1,1,0,0);
INSERT INTO `eznode_assignment` VALUES (121,1,0,109,1,2,12,'c37dc29ef81264a02e39352aee720ec8','0',1,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1);
INSERT INTO `ezorder_status` VALUES (2,1,'Processing',2);
INSERT INTO `ezorder_status` VALUES (3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
INSERT INTO `ezpackage` VALUES (2,1472204172,'ezwt_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (3,1472204173,'ezstarrating_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (4,1472204174,'ezgmaplocation_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (5,1472204175,'ezflow_extension','5.3-0');
INSERT INTO `ezpackage` VALUES (6,1472204176,'ezdemo_extension','5.4-0');
INSERT INTO `ezpackage` VALUES (7,1472204177,'ezdemo_classes','5.4-0');
INSERT INTO `ezpackage` VALUES (8,1472204187,'ezdemo_democontent','5.4-0');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`),
  KEY `ezpolicy_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2);
INSERT INTO `ezpolicy` VALUES ('login',319,'user',0,3);
INSERT INTO `ezpolicy` VALUES ('read',328,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('pdf',329,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('*',330,'ezoe',0,3);
INSERT INTO `ezpolicy` VALUES ('*',332,'ezoe',0,3);
INSERT INTO `ezpolicy` VALUES ('feed',333,'rss',0,1);
INSERT INTO `ezpolicy` VALUES ('login',334,'user',0,1);
INSERT INTO `ezpolicy` VALUES ('login',335,'user',0,1);
INSERT INTO `ezpolicy` VALUES ('read',336,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('read',337,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('view_embed',338,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('view_embed',339,'content',0,1);
INSERT INTO `ezpolicy` VALUES ('create',340,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',341,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',342,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',343,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',344,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('create',345,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('use',346,'websitetoolbar',0,3);
INSERT INTO `ezpolicy` VALUES ('edit',347,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('read',348,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('use',349,'notification',0,3);
INSERT INTO `ezpolicy` VALUES ('manage_locations',350,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('*',351,'ezodf',0,3);
INSERT INTO `ezpolicy` VALUES ('*',352,'ezflow',0,3);
INSERT INTO `ezpolicy` VALUES ('*',353,'ezajax',0,3);
INSERT INTO `ezpolicy` VALUES ('diff',354,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('versionread',355,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('versionremove',356,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('remove',357,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('translate',358,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('feed',359,'rss',0,3);
INSERT INTO `ezpolicy` VALUES ('bookmark',360,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('pendinglist',361,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('dashboard',362,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('view_embed',363,'content',0,3);
INSERT INTO `ezpolicy` VALUES ('read',364,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',365,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',366,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('create',367,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('edit',368,'content',0,4);
INSERT INTO `ezpolicy` VALUES ('selfedit',369,'user',0,4);
INSERT INTO `ezpolicy` VALUES ('use',370,'notification',0,4);
INSERT INTO `ezpolicy` VALUES ('create',371,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('create',372,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('create',373,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('edit',374,'content',0,5);
INSERT INTO `ezpolicy` VALUES ('selfedit',375,'user',0,5);
INSERT INTO `ezpolicy` VALUES ('use',376,'notification',0,5);
INSERT INTO `ezpolicy` VALUES ('password',377,'user',0,5);
INSERT INTO `ezpolicy` VALUES ('call',378,'ezjscore',0,5);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328);
INSERT INTO `ezpolicy_limitation` VALUES (252,'Section',329);
INSERT INTO `ezpolicy_limitation` VALUES (254,'SiteAccess',334);
INSERT INTO `ezpolicy_limitation` VALUES (255,'SiteAccess',335);
INSERT INTO `ezpolicy_limitation` VALUES (256,'Class',336);
INSERT INTO `ezpolicy_limitation` VALUES (257,'Section',336);
INSERT INTO `ezpolicy_limitation` VALUES (258,'Section',337);
INSERT INTO `ezpolicy_limitation` VALUES (259,'Section',338);
INSERT INTO `ezpolicy_limitation` VALUES (260,'Class',339);
INSERT INTO `ezpolicy_limitation` VALUES (261,'Section',339);
INSERT INTO `ezpolicy_limitation` VALUES (262,'Class',340);
INSERT INTO `ezpolicy_limitation` VALUES (263,'ParentClass',340);
INSERT INTO `ezpolicy_limitation` VALUES (264,'Class',341);
INSERT INTO `ezpolicy_limitation` VALUES (265,'ParentClass',341);
INSERT INTO `ezpolicy_limitation` VALUES (266,'Class',342);
INSERT INTO `ezpolicy_limitation` VALUES (267,'ParentClass',342);
INSERT INTO `ezpolicy_limitation` VALUES (268,'Class',343);
INSERT INTO `ezpolicy_limitation` VALUES (269,'ParentClass',343);
INSERT INTO `ezpolicy_limitation` VALUES (270,'Class',344);
INSERT INTO `ezpolicy_limitation` VALUES (271,'ParentClass',344);
INSERT INTO `ezpolicy_limitation` VALUES (272,'Class',345);
INSERT INTO `ezpolicy_limitation` VALUES (273,'ParentClass',345);
INSERT INTO `ezpolicy_limitation` VALUES (274,'Class',346);
INSERT INTO `ezpolicy_limitation` VALUES (275,'Section',348);
INSERT INTO `ezpolicy_limitation` VALUES (276,'Section',364);
INSERT INTO `ezpolicy_limitation` VALUES (277,'Class',365);
INSERT INTO `ezpolicy_limitation` VALUES (278,'Section',365);
INSERT INTO `ezpolicy_limitation` VALUES (279,'ParentClass',365);
INSERT INTO `ezpolicy_limitation` VALUES (280,'Class',366);
INSERT INTO `ezpolicy_limitation` VALUES (281,'Section',366);
INSERT INTO `ezpolicy_limitation` VALUES (282,'ParentClass',366);
INSERT INTO `ezpolicy_limitation` VALUES (283,'Class',367);
INSERT INTO `ezpolicy_limitation` VALUES (284,'Section',367);
INSERT INTO `ezpolicy_limitation` VALUES (285,'ParentClass',367);
INSERT INTO `ezpolicy_limitation` VALUES (286,'Class',368);
INSERT INTO `ezpolicy_limitation` VALUES (287,'Section',368);
INSERT INTO `ezpolicy_limitation` VALUES (288,'Owner',368);
INSERT INTO `ezpolicy_limitation` VALUES (289,'Class',371);
INSERT INTO `ezpolicy_limitation` VALUES (290,'Section',371);
INSERT INTO `ezpolicy_limitation` VALUES (291,'ParentClass',371);
INSERT INTO `ezpolicy_limitation` VALUES (292,'Class',372);
INSERT INTO `ezpolicy_limitation` VALUES (293,'Section',372);
INSERT INTO `ezpolicy_limitation` VALUES (294,'ParentClass',372);
INSERT INTO `ezpolicy_limitation` VALUES (295,'Class',373);
INSERT INTO `ezpolicy_limitation` VALUES (296,'Section',373);
INSERT INTO `ezpolicy_limitation` VALUES (297,'ParentClass',373);
INSERT INTO `ezpolicy_limitation` VALUES (298,'Class',374);
INSERT INTO `ezpolicy_limitation` VALUES (299,'Section',374);
INSERT INTO `ezpolicy_limitation` VALUES (300,'Owner',374);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (478,252,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (480,254,'3513185298');
INSERT INTO `ezpolicy_limitation_value` VALUES (481,255,'2582995467');
INSERT INTO `ezpolicy_limitation_value` VALUES (482,256,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (483,256,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (484,256,'37');
INSERT INTO `ezpolicy_limitation_value` VALUES (485,256,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (486,257,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (487,258,'7');
INSERT INTO `ezpolicy_limitation_value` VALUES (488,259,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (489,260,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (490,260,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (491,260,'37');
INSERT INTO `ezpolicy_limitation_value` VALUES (492,260,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (493,261,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (494,262,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (495,262,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (496,262,'26');
INSERT INTO `ezpolicy_limitation_value` VALUES (497,262,'21');
INSERT INTO `ezpolicy_limitation_value` VALUES (498,262,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (499,262,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (500,262,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (501,262,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (502,262,'25');
INSERT INTO `ezpolicy_limitation_value` VALUES (503,262,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (504,262,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (505,262,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (506,262,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (507,262,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (508,262,'35');
INSERT INTO `ezpolicy_limitation_value` VALUES (509,262,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (510,263,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (511,264,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (512,265,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (513,266,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (514,267,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (515,268,'33');
INSERT INTO `ezpolicy_limitation_value` VALUES (516,269,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (517,270,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (518,271,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (519,272,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (520,272,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (521,272,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (522,272,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (523,272,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (524,272,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (525,272,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (526,272,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (527,273,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (528,274,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (529,274,'28');
INSERT INTO `ezpolicy_limitation_value` VALUES (530,274,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (531,274,'17');
INSERT INTO `ezpolicy_limitation_value` VALUES (532,274,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (533,274,'21');
INSERT INTO `ezpolicy_limitation_value` VALUES (534,274,'22');
INSERT INTO `ezpolicy_limitation_value` VALUES (535,274,'23');
INSERT INTO `ezpolicy_limitation_value` VALUES (536,274,'24');
INSERT INTO `ezpolicy_limitation_value` VALUES (537,274,'25');
INSERT INTO `ezpolicy_limitation_value` VALUES (538,274,'27');
INSERT INTO `ezpolicy_limitation_value` VALUES (539,274,'29');
INSERT INTO `ezpolicy_limitation_value` VALUES (540,274,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (541,274,'33');
INSERT INTO `ezpolicy_limitation_value` VALUES (542,274,'34');
INSERT INTO `ezpolicy_limitation_value` VALUES (543,274,'36');
INSERT INTO `ezpolicy_limitation_value` VALUES (544,275,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (545,275,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (546,275,'3');
INSERT INTO `ezpolicy_limitation_value` VALUES (547,276,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (548,277,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (549,278,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (550,279,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (551,280,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (552,281,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (553,282,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (554,283,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (555,284,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (556,285,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (557,286,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (558,286,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (559,286,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (560,287,'6');
INSERT INTO `ezpolicy_limitation_value` VALUES (561,288,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (562,289,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (563,290,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (564,291,'30');
INSERT INTO `ezpolicy_limitation_value` VALUES (565,292,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (566,293,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (567,294,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (568,295,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (569,296,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (570,297,'16');
INSERT INTO `ezpolicy_limitation_value` VALUES (571,297,'18');
INSERT INTO `ezpolicy_limitation_value` VALUES (572,298,'13');
INSERT INTO `ezpolicy_limitation_value` VALUES (573,298,'31');
INSERT INTO `ezpolicy_limitation_value` VALUES (574,298,'32');
INSERT INTO `ezpolicy_limitation_value` VALUES (575,299,'1');
INSERT INTO `ezpolicy_limitation_value` VALUES (576,300,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0);
INSERT INTO `ezrole` VALUES (2,0,'Administrator','*',0);
INSERT INTO `ezrole` VALUES (3,0,'Editor','',0);
INSERT INTO `ezrole` VALUES (4,0,'Partner',NULL,0);
INSERT INTO `ezrole` VALUES (5,0,'Member',NULL,0);
INSERT INTO `ezrole` VALUES (6,0,'Subscriber',NULL,0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1472204188,14,'',1,0,1,1472204188,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
INSERT INTO `ezrss_export_item` VALUES ('',16,'intro','',1,1,139,1,0,'title');
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart');
INSERT INTO `ezsection` VALUES (2,'users','','Users','ezusernavigationpart');
INSERT INTO `ezsection` VALUES (3,'media','','Media','ezmedianavigationpart');
INSERT INTO `ezsection` VALUES (4,'setup','','Setup','ezsetupnavigationpart');
INSERT INTO `ezsection` VALUES (5,'design','','Design','ezvisualnavigationpart');
INSERT INTO `ezsection` VALUES (6,'','','Restricted','ezcontentnavigationpart');
INSERT INTO `ezsection` VALUES (7,'','','Premium content','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezdemo','2.0');
INSERT INTO `ezsite_data` VALUES ('ezfind_site_id','c1e19de8a04898c6fe8d04cc42c20596');
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1');
INSERT INTO `ezsite_data` VALUES ('ezpublish-version','5.90.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1082368571,8,1,0,1082368571,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no');
INSERT INTO `ezurl` VALUES (1472204178,23,1,0,1472204178,'a99e0cbe4aa82974daa427a121c1bd32','http://ez.no/About-eZ/Contact-Us');
INSERT INTO `ezurl` VALUES (1472204178,24,1,0,1472204178,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no');
INSERT INTO `ezurl` VALUES (1472204178,25,1,0,1472204178,'ba55ac8a1ebe1cd6eedbb5fc073feb4e','http://doc.ez.no');
INSERT INTO `ezurl` VALUES (1472204178,26,1,0,1472204178,'aaea21dc8d911e7b5dbcde30028e5232','https://twitter.com/eZSystems');
INSERT INTO `ezurl` VALUES (1472204178,27,1,0,1472204178,'ec8180e4dbb06b25b58150922546d389','http://www.facebook.com/eZPublishEnterprise');
INSERT INTO `ezurl` VALUES (1472204178,28,1,0,1472204178,'f010a7745c13a177f06df0afadb91ed9','https://www.linkedin.com/company/ez-systems');
INSERT INTO `ezurl` VALUES (1472204178,29,1,0,1472204178,'5e4edc0469a80872c6d1155725231d7b','http://doc.ez.no/Tutorials/Developing-eZ-Publish-extensions');
INSERT INTO `ezurl` VALUES (1472204178,30,1,0,1472204178,'d9ade3653cd9072da08834b2ec893457','http://doc.ez.no/Tutorials/Building-mobile-browser-and-hybrid-applications-with-eZ-Publish');
INSERT INTO `ezurl` VALUES (1472204179,31,1,0,1472204179,'ddefdee73d6d8108510290804f481790','http://doc.ez.no/eZ-Publish/User-manual/4.6/The-administration-interface');
INSERT INTO `ezurl` VALUES (1472204179,32,1,0,1472204179,'03b44c74805d6552bab24dd297d2654d','http://doc.ez.no/eZ-Publish/User-manual/4.6/Daily-tasks');
INSERT INTO `ezurl` VALUES (1472204179,33,1,0,1472204179,'50218469dc48332c4d0cd64097c2194a','http://doc.ez.no/content/download/22884/95262/version/4/file/ezwebin_userguide-1.3.pdf');
INSERT INTO `ezurl` VALUES (1472204179,34,1,0,1472204179,'adb2ff0588a2f6e26d532a27c39da9ef','http://doc.ez.no/eZ-Publish/Technical-manual/4.6/Concepts-and-basics');
INSERT INTO `ezurl` VALUES (1472204179,35,1,0,1472204179,'d38018510827e031a420eb16d52dba54','http://doc.ez.no/eZ-Publish/Technical-manual/4.6/Templates/Template-basics');
INSERT INTO `ezurl` VALUES (1472204179,36,1,0,1472204179,'1dd53a33fc75fa93f4f43c258176d636','http://doc.ez.no/eZ-Publish/Technical-manual/4.5/Features/Rest-API');
INSERT INTO `ezurl` VALUES (1472204179,37,1,0,1472204179,'3a7665995284aa8e59b6226b710271e3','http://ez.no/Products/Demos-Videos/eZ-Publish-Multichannel-Content-Management-Video-Tutorial');
INSERT INTO `ezurl` VALUES (1472204179,38,1,0,1472204179,'979693c53f31cefbbc706ab0770134f6','http://ez.no/Products/Demos-Videos/eZ-Flow-Video-Tutorial');
INSERT INTO `ezurl` VALUES (1472204179,39,1,0,1472204179,'d0907aebf174927c3a0ed9bfbfbc239d','http://ez.no/Products/Demos-Videos');
INSERT INTO `ezurl` VALUES (1472204181,40,1,0,1472204181,'f694a287acab4eb141d316cf9d96b36b','http://creativecommons.org/licenses/by-sa/2.0/deed.en');
INSERT INTO `ezurl` VALUES (1472204181,41,1,0,1472204181,'2f2c9d2fc8649b3cc7ad1e154a05ec11','https://plus.google.com/114649176555802716836/posts');
INSERT INTO `ezurl` VALUES (1472204181,42,1,0,1472204181,'952e32d8861ac38b51f367c3f6d76194','http://ez.no/Services/Training-Courses/Essential-Training');
INSERT INTO `ezurl` VALUES (1472204181,43,1,0,1472204181,'bae3fc3e4f9e22f1c4465459cc904f0a','http://ez.no/Services/Training-Courses/Special-Topics-Training');
INSERT INTO `ezurl` VALUES (1472204181,44,1,0,1472204181,'6032ad655ccf343bcccd576ffa7a1d6c','http://ez.no/Services/Training-Courses/Update-Training');
INSERT INTO `ezurl` VALUES (1472204181,45,1,0,1472204181,'4cdd082fec70b67e57523987ff194b4b','http://ez.no/Services/Training-Courses/Custom-Training');
INSERT INTO `ezurl` VALUES (1472204181,46,1,0,1472204181,'19c00ff1d1bc75a7d35b84df65c20577','http://ez.no/Services/Training-Courses/eZ-Partner-Training');
INSERT INTO `ezurl` VALUES (1472204181,47,1,0,1472204181,'4fd6abc915d892f24973fe892daabfeb','http://ez.no/Services/Training-Courses/Online-Certification');
INSERT INTO `ezurl` VALUES (1472204182,48,1,0,1472204182,'f43e3b1fc8f0e748e9d2f42dcb1ac7a9','http://www.qhphotography.com');
INSERT INTO `ezurl` VALUES (1472204184,49,1,0,1472204184,'ef0b8d5dab81b538ed29a8879dab6c8a','http://creativecommons.org/licenses/by-nc-nd/2.0/');
INSERT INTO `ezurl` VALUES (1472204184,50,1,0,1472204184,'bc330793dacda04c6161b77d1e1c19e0','http://www.flickr.com/photos/fwp/');
INSERT INTO `ezurl` VALUES (1472204184,51,1,0,1472204184,'d1463fe99cb655587a960fcbc2b20e84','http://www.flickr.com/photos/samatflickr/');
INSERT INTO `ezurl` VALUES (1472204184,52,1,0,1472204184,'806960a497f842b22386f98018f97bce','http://en.wikipedia.org/wiki/en:Creative_Commons');
INSERT INTO `ezurl` VALUES (1472204184,53,1,0,1472204184,'e4e92b789e649981b047c0e36d3c0233','http://creativecommons.org/licenses/by-sa/2.5/deed.en');
INSERT INTO `ezurl` VALUES (1472204185,54,1,0,1472204185,'b1c3c441aeffbcec2a643e997000877e','http://en.wikipedia.org/wiki/Mount_Fuji');
INSERT INTO `ezurl` VALUES (1472204185,55,1,0,1472204185,'61d825dc1b841be5781ea084d0367124','http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License');
INSERT INTO `ezurl` VALUES (1472204185,56,1,0,1472204185,'91cfa7abd04b5dec916eb6725a9f5af1','http://en.wikipedia.org/wiki/Matterhorn');
INSERT INTO `ezurl` VALUES (1472204185,57,1,0,1472204185,'424b6e79df09e9f640461ed22bcfdb1a','http://en.wikipedia.org/wiki/Annapurna');
INSERT INTO `ezurl` VALUES (1472204185,58,1,0,1472204185,'92c1b8022aabff64c1d85ce8fff609ae','http://en.wikipedia.org/wiki/Mount_Etna');
INSERT INTO `ezurl` VALUES (1472204186,59,1,0,1472204186,'e20689e8656b6fb0f38273efd6aff42c','http://en.wikipedia.org/wiki/Mount_Kilimanjaro');
INSERT INTO `ezurl` VALUES (1472204186,60,1,0,1472204186,'c91a40d4c58e3b28ef4d1881b10e6b7c','http://en.wikipedia.org/wiki/Stetind');
INSERT INTO `ezurl` VALUES (1472204186,61,1,0,1472204186,'ee663d63422fd88127ea2ca95df62eab','http://en.wikipedia.org/wiki/Aconcagua');
INSERT INTO `ezurl` VALUES (1472204186,62,1,0,1472204186,'af20e4e0fbd05039e30ea6a9ccd126cc','http://en.wikipedia.org/wiki/Mont_Ventoux');
INSERT INTO `ezurl` VALUES (1472204186,63,1,0,1472204186,'f4836fc33a248bd22ab05b54d329e475','http://en.wikipedia.org/wiki/Castor_(mountain)');
INSERT INTO `ezurl` VALUES (1472204186,64,1,0,1472204186,'135c8e493ce5d5bac04aac6d1d36769f','http://commons.wikimedia.org/wiki/File:Castore_per_la_cresta_sudorientale.JPG');
INSERT INTO `ezurl` VALUES (1472204187,65,1,0,1472204187,'9b492048041e95b32de08bafc86d759b','/content/view/sitemap/2');
INSERT INTO `ezurl` VALUES (1472204187,66,1,0,1472204187,'c86bcb109d8e70f9db65c803baafd550','/content/view/tagcloud/2');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (190,1,23);
INSERT INTO `ezurl_object_link` VALUES (191,1,8);
INSERT INTO `ezurl_object_link` VALUES (191,1,24);
INSERT INTO `ezurl_object_link` VALUES (191,1,25);
INSERT INTO `ezurl_object_link` VALUES (191,1,26);
INSERT INTO `ezurl_object_link` VALUES (191,1,27);
INSERT INTO `ezurl_object_link` VALUES (191,1,28);
INSERT INTO `ezurl_object_link` VALUES (218,1,29);
INSERT INTO `ezurl_object_link` VALUES (218,1,30);
INSERT INTO `ezurl_object_link` VALUES (230,1,31);
INSERT INTO `ezurl_object_link` VALUES (230,1,32);
INSERT INTO `ezurl_object_link` VALUES (230,1,33);
INSERT INTO `ezurl_object_link` VALUES (242,1,34);
INSERT INTO `ezurl_object_link` VALUES (242,1,35);
INSERT INTO `ezurl_object_link` VALUES (242,1,36);
INSERT INTO `ezurl_object_link` VALUES (254,1,37);
INSERT INTO `ezurl_object_link` VALUES (254,1,38);
INSERT INTO `ezurl_object_link` VALUES (254,1,39);
INSERT INTO `ezurl_object_link` VALUES (320,1,8);
INSERT INTO `ezurl_object_link` VALUES (320,1,25);
INSERT INTO `ezurl_object_link` VALUES (320,1,24);
INSERT INTO `ezurl_object_link` VALUES (387,1,40);
INSERT INTO `ezurl_object_link` VALUES (399,1,41);
INSERT INTO `ezurl_object_link` VALUES (408,1,42);
INSERT INTO `ezurl_object_link` VALUES (408,1,43);
INSERT INTO `ezurl_object_link` VALUES (408,1,44);
INSERT INTO `ezurl_object_link` VALUES (408,1,45);
INSERT INTO `ezurl_object_link` VALUES (408,1,46);
INSERT INTO `ezurl_object_link` VALUES (408,1,47);
INSERT INTO `ezurl_object_link` VALUES (411,1,41);
INSERT INTO `ezurl_object_link` VALUES (423,1,48);
INSERT INTO `ezurl_object_link` VALUES (516,1,49);
INSERT INTO `ezurl_object_link` VALUES (516,1,50);
INSERT INTO `ezurl_object_link` VALUES (521,1,49);
INSERT INTO `ezurl_object_link` VALUES (521,1,51);
INSERT INTO `ezurl_object_link` VALUES (546,1,52);
INSERT INTO `ezurl_object_link` VALUES (546,1,53);
INSERT INTO `ezurl_object_link` VALUES (568,1,54);
INSERT INTO `ezurl_object_link` VALUES (568,1,55);
INSERT INTO `ezurl_object_link` VALUES (574,1,56);
INSERT INTO `ezurl_object_link` VALUES (574,1,55);
INSERT INTO `ezurl_object_link` VALUES (580,1,57);
INSERT INTO `ezurl_object_link` VALUES (580,1,55);
INSERT INTO `ezurl_object_link` VALUES (586,1,58);
INSERT INTO `ezurl_object_link` VALUES (586,1,55);
INSERT INTO `ezurl_object_link` VALUES (592,1,59);
INSERT INTO `ezurl_object_link` VALUES (592,1,55);
INSERT INTO `ezurl_object_link` VALUES (598,1,60);
INSERT INTO `ezurl_object_link` VALUES (598,1,55);
INSERT INTO `ezurl_object_link` VALUES (604,1,61);
INSERT INTO `ezurl_object_link` VALUES (604,1,55);
INSERT INTO `ezurl_object_link` VALUES (610,1,62);
INSERT INTO `ezurl_object_link` VALUES (610,1,55);
INSERT INTO `ezurl_object_link` VALUES (616,1,63);
INSERT INTO `ezurl_object_link` VALUES (616,1,55);
INSERT INTO `ezurl_object_link` VALUES (616,1,64);
INSERT INTO `ezurl_object_link` VALUES (621,2,65);
INSERT INTO `ezurl_object_link` VALUES (622,2,66);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e','');
INSERT INTO `ezurlalias` VALUES ('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts');
INSERT INTO `ezurlalias` VALUES ('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors');
INSERT INTO `ezurlalias` VALUES ('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user');
INSERT INTO `ezurlalias` VALUES ('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media');
INSERT INTO `ezurlalias` VALUES ('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users');
INSERT INTO `ezurlalias` VALUES ('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user');
INSERT INTO `ezurlalias` VALUES ('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup');
INSERT INTO `ezurlalias` VALUES ('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner');
INSERT INTO `ezurlalias` VALUES ('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images');
INSERT INTO `ezurlalias` VALUES ('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files');
INSERT INTO `ezurlalias` VALUES ('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
INSERT INTO `ezurlalias` VALUES ('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings');
INSERT INTO `ezurlalias` VALUES ('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish');
INSERT INTO `ezurlalias` VALUES ('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` bigint(20) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:96','eznode',1,75,0,1,2,75,0,'Contact-Us','03f2197d47a602c679c5f667e3482855');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:59','eznode',1,99,0,0,3,38,0,'Home','106a6c241b8797f52e1e77317b96a201');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:90','eznode',1,69,0,1,2,69,0,'Blog','126ac9f6149081eb0e97c2e939eaad52');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:110','eznode',1,89,0,1,2,89,0,'eZ-Mountains','21b162475917e8f4d64accd570dc74db');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:60','eznode',1,39,0,1,2,39,0,'footer','251d164643533a527361dbe1a7b9235d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:86','eznode',1,65,0,1,3,65,0,'Partner','7454739e907f5595ae61d84b8547f574');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:94','eznode',1,73,0,1,2,73,0,'Discover-eZ-Publish-5','8ae970323a421f365cb781e2b33e6fc1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:61','eznode',1,40,0,1,2,40,0,'Getting-Started','8e0aab8c77d7ef1b836d9c16e5c062b3');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:74','eznode',1,53,0,1,2,53,0,'Shopping','b2fe440cb7a0b127f1a90ffea296313b');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:120','eznode',1,100,0,1,3,100,2,'Partners','7896f8fa69398c56d86a65357615c41f');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:121','eznode',1,101,0,1,3,101,2,'Subscribers','aae7b662c59641bfa43e91a5d7a53ef8');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,103,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:123','eznode',1,104,0,1,3,104,4,'Member-User','4484765b49c40b5a8b31e549ec066866');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401');
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:101','eznode',1,80,0,1,2,80,18,'mount-Annapurna','0ce9b36f06667a34df5bf127e35a457a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:103','eznode',1,82,0,1,2,82,18,'mount-Ventoux','124a30291ad8268fd445b0bc129984ae');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:104','eznode',1,83,0,1,2,83,18,'mount-Castor','269add6d2392943168798d0d5b3aaaa4');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:100','eznode',1,79,0,1,2,79,18,'mount-Matterhorn','481994193fd580fe94077817382944bb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:98','eznode',1,77,0,1,2,77,18,'Screen-Shot-2013-01-31-at-8.17.26-PM','6564e100739a479cc8a7a1f545a76297');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:105','eznode',1,84,0,1,2,84,18,'mount-Kilimanjaro','7f1a5ee9b4f42f738e711d0dfd99a0b9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:107','eznode',1,86,0,1,2,86,18,'mount-Fuji','a10140d615dcdfac297d15659fd07b31');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:102','eznode',1,81,0,1,2,81,18,'mount-Stadda','bb12da93a0abdf31ee48cee9d2580125');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:106','eznode',1,85,0,1,2,85,18,'mount-Etna','c7d8508546026f4b71c4ec2d393d38d1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:108','eznode',1,87,0,1,2,87,18,'mount-Aconcagua','d8e7ba0f5db5427a4a6869d47695be41');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:99','eznode',1,78,0,1,2,78,18,'funel','f541dac65b3f948fa1b58949bd8e1365');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:97','eznode',1,76,0,1,2,76,19,'eZ-Publish-5-Platform-Whitepaper','6f5dc11fc0322fd03f2cc9c479c84a7a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:109','eznode',1,88,0,1,2,88,20,'eZ-Publish-Optimize','025ab3932dd4741219d47769c0e9d431');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:68','eznode',1,47,0,1,3,47,40,'Selected-Features','197256f14648d27642d64ab618613c4e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:62','eznode',1,41,0,1,2,41,40,'Feedback','3965207478e6a58f7c87af5d49a0c165');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:63','eznode',1,42,0,1,3,42,40,'Resources','55b558c7ef820e6e00e5993b9e55d93b');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:64','eznode',1,43,0,1,2,43,42,'eZ-Publish-Tutorials','43bb1d506e2a244290e95e03843894d1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:65','eznode',1,44,0,1,2,44,42,'eZ-User-Documentation','61820a0015331399f05d581bac9d04a4');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:67','eznode',1,46,0,1,2,46,42,'Demos-and-Videos','9f5cb051d7b49a5c7d8f58da44110db2');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:66','eznode',1,45,0,1,2,45,42,'Technical-Documentation','a88b529c26f1a12d5bcc60d3d6aee5e4');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:73','eznode',1,52,0,1,2,52,47,'Getting-Started-with-eZ-Publish-Platform','259d1e373d8c425301dd1982ce90f53d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:70','eznode',1,49,0,1,2,49,47,'Deliver','45a691469b881972e148c724f4619e9a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:71','eznode',1,50,0,1,2,50,47,'Create','76ea0bebb3c22822b4f0dd9c9fd021c5');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:72','eznode',1,51,0,1,2,51,47,'Optimize','c14f7a753888287112058264fa40b72d');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:69','eznode',1,48,0,1,2,48,47,'Automate','e7fdc80c0728d856260f92fde10af019');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:80','eznode',1,59,0,1,3,59,53,'Services','10cd395cf71c18328c863c08e78f3fd0');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:75','eznode',1,54,0,1,3,54,53,'Products','86024cad1e83101d97359d7351051156');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:77','eznode',1,56,0,1,2,56,54,'eZ-Publish-Samsung-Galaxy-SIII-Case','022fc90e6913c5baf7f4996bc0228f98');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:79','eznode',1,58,0,1,2,58,54,'eZ-Publish-Man-jacket','26a3863cb73507cb035907dd1580f63e');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:78','eznode',1,57,0,1,2,57,54,'eZ-Publish-Community-Mug','74d84fbd0fe788fb7b53322a66819744');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:76','eznode',1,55,0,1,2,55,54,'eZ-Publish-Community-iPhone-4-Case','b53dd202dd947022c1b53f685400d0e4');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:81','eznode',1,60,0,1,2,60,59,'Support-Maintenance','19637fa5ec8d9e1543d83ae356e7c830');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:83','eznode',1,62,0,1,2,62,59,'Training-Services','6861edf1eaaabfd0ff654cee5577725a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:84','eznode',1,63,0,1,2,63,59,'eZ-Publish-Enterprise-Service','915a82ca00159ce5903c1ff90a4e72cd');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:82','eznode',1,61,0,1,2,61,59,'Professional-Services','bc963587a3d3aee4579026199046175c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:85','eznode',1,64,0,1,2,64,63,'squares','192ba166b3957ab1020e9a72ea1b40ed');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:87','eznode',1,66,0,1,2,66,65,'eZ-Logo-Black','09bdfac0f15891b51baba1b5a3715787');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:88','eznode',1,67,0,1,2,67,65,'eZ-Logo-White','4c08fe903e2cc4865c2a6a8e43d11e76');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:89','eznode',1,68,0,1,3,68,65,'Logos','e9b447ef566a6fffd70d2496c9ca03c1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:93','eznode',1,72,0,1,2,72,69,'It-s-helping-me-optimizing-my-business','33b4050f61d2d09a50137ce45cbc1bda');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:91','eznode',1,70,0,1,2,70,69,'This-will-be-our-magic-recipe','9d5d2e9755abd5a17cfbd95d0fad5d89');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:92','eznode',1,71,0,1,2,71,70,'Gallery','2767cc3ede7592a47bd6657e3799565c');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:95','eznode',1,74,0,1,2,74,73,'Download-your-White-Paper-here','c9ff8fb87ca63862d1dae7851eb1e008');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:113','eznode',1,92,0,1,2,92,89,'Mount-Annapurna','0ce9b36f06667a34df5bf127e35a457a');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:118','eznode',1,97,0,1,2,97,89,'Mount-Ventoux','124a30291ad8268fd445b0bc129984ae');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:119','eznode',1,98,0,1,2,98,89,'Mount-Castor','269add6d2392943168798d0d5b3aaaa4');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:112','eznode',1,91,0,1,2,91,89,'Mount-Matterhorn','481994193fd580fe94077817382944bb');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:115','eznode',1,94,0,1,2,94,89,'Mount-Kilimanjaro','7f1a5ee9b4f42f738e711d0dfd99a0b9');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:111','eznode',1,90,0,1,2,90,89,'Mount-Fuji','a10140d615dcdfac297d15659fd07b31');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:116','eznode',1,95,0,1,2,95,89,'Mount-Stadda','bb12da93a0abdf31ee48cee9d2580125');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:114','eznode',1,93,0,1,2,93,89,'Mount-Etna','c7d8508546026f4b71c4ec2d393d38d1');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:117','eznode',1,96,0,1,2,96,89,'Mount-Aconcagua','d8e7ba0f5db5427a4a6869d47695be41');
INSERT INTO `ezurlalias_ml` VALUES ('eznode:122','eznode',1,102,0,1,3,102,101,'Subscriber-User','4e13268c9c12ee5af700d73f22f25ee3');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1);
INSERT INTO `ezurlalias_ml_incr` VALUES (2);
INSERT INTO `ezurlalias_ml_incr` VALUES (3);
INSERT INTO `ezurlalias_ml_incr` VALUES (4);
INSERT INTO `ezurlalias_ml_incr` VALUES (5);
INSERT INTO `ezurlalias_ml_incr` VALUES (6);
INSERT INTO `ezurlalias_ml_incr` VALUES (7);
INSERT INTO `ezurlalias_ml_incr` VALUES (8);
INSERT INTO `ezurlalias_ml_incr` VALUES (9);
INSERT INTO `ezurlalias_ml_incr` VALUES (10);
INSERT INTO `ezurlalias_ml_incr` VALUES (11);
INSERT INTO `ezurlalias_ml_incr` VALUES (12);
INSERT INTO `ezurlalias_ml_incr` VALUES (13);
INSERT INTO `ezurlalias_ml_incr` VALUES (14);
INSERT INTO `ezurlalias_ml_incr` VALUES (15);
INSERT INTO `ezurlalias_ml_incr` VALUES (16);
INSERT INTO `ezurlalias_ml_incr` VALUES (17);
INSERT INTO `ezurlalias_ml_incr` VALUES (18);
INSERT INTO `ezurlalias_ml_incr` VALUES (19);
INSERT INTO `ezurlalias_ml_incr` VALUES (20);
INSERT INTO `ezurlalias_ml_incr` VALUES (21);
INSERT INTO `ezurlalias_ml_incr` VALUES (22);
INSERT INTO `ezurlalias_ml_incr` VALUES (24);
INSERT INTO `ezurlalias_ml_incr` VALUES (25);
INSERT INTO `ezurlalias_ml_incr` VALUES (26);
INSERT INTO `ezurlalias_ml_incr` VALUES (27);
INSERT INTO `ezurlalias_ml_incr` VALUES (28);
INSERT INTO `ezurlalias_ml_incr` VALUES (29);
INSERT INTO `ezurlalias_ml_incr` VALUES (30);
INSERT INTO `ezurlalias_ml_incr` VALUES (31);
INSERT INTO `ezurlalias_ml_incr` VALUES (32);
INSERT INTO `ezurlalias_ml_incr` VALUES (33);
INSERT INTO `ezurlalias_ml_incr` VALUES (34);
INSERT INTO `ezurlalias_ml_incr` VALUES (35);
INSERT INTO `ezurlalias_ml_incr` VALUES (36);
INSERT INTO `ezurlalias_ml_incr` VALUES (37);
INSERT INTO `ezurlalias_ml_incr` VALUES (38);
INSERT INTO `ezurlalias_ml_incr` VALUES (39);
INSERT INTO `ezurlalias_ml_incr` VALUES (40);
INSERT INTO `ezurlalias_ml_incr` VALUES (41);
INSERT INTO `ezurlalias_ml_incr` VALUES (42);
INSERT INTO `ezurlalias_ml_incr` VALUES (43);
INSERT INTO `ezurlalias_ml_incr` VALUES (44);
INSERT INTO `ezurlalias_ml_incr` VALUES (45);
INSERT INTO `ezurlalias_ml_incr` VALUES (46);
INSERT INTO `ezurlalias_ml_incr` VALUES (47);
INSERT INTO `ezurlalias_ml_incr` VALUES (48);
INSERT INTO `ezurlalias_ml_incr` VALUES (49);
INSERT INTO `ezurlalias_ml_incr` VALUES (50);
INSERT INTO `ezurlalias_ml_incr` VALUES (51);
INSERT INTO `ezurlalias_ml_incr` VALUES (52);
INSERT INTO `ezurlalias_ml_incr` VALUES (53);
INSERT INTO `ezurlalias_ml_incr` VALUES (54);
INSERT INTO `ezurlalias_ml_incr` VALUES (55);
INSERT INTO `ezurlalias_ml_incr` VALUES (56);
INSERT INTO `ezurlalias_ml_incr` VALUES (57);
INSERT INTO `ezurlalias_ml_incr` VALUES (58);
INSERT INTO `ezurlalias_ml_incr` VALUES (59);
INSERT INTO `ezurlalias_ml_incr` VALUES (60);
INSERT INTO `ezurlalias_ml_incr` VALUES (61);
INSERT INTO `ezurlalias_ml_incr` VALUES (62);
INSERT INTO `ezurlalias_ml_incr` VALUES (63);
INSERT INTO `ezurlalias_ml_incr` VALUES (64);
INSERT INTO `ezurlalias_ml_incr` VALUES (65);
INSERT INTO `ezurlalias_ml_incr` VALUES (66);
INSERT INTO `ezurlalias_ml_incr` VALUES (67);
INSERT INTO `ezurlalias_ml_incr` VALUES (68);
INSERT INTO `ezurlalias_ml_incr` VALUES (69);
INSERT INTO `ezurlalias_ml_incr` VALUES (70);
INSERT INTO `ezurlalias_ml_incr` VALUES (71);
INSERT INTO `ezurlalias_ml_incr` VALUES (72);
INSERT INTO `ezurlalias_ml_incr` VALUES (73);
INSERT INTO `ezurlalias_ml_incr` VALUES (74);
INSERT INTO `ezurlalias_ml_incr` VALUES (75);
INSERT INTO `ezurlalias_ml_incr` VALUES (76);
INSERT INTO `ezurlalias_ml_incr` VALUES (77);
INSERT INTO `ezurlalias_ml_incr` VALUES (78);
INSERT INTO `ezurlalias_ml_incr` VALUES (79);
INSERT INTO `ezurlalias_ml_incr` VALUES (80);
INSERT INTO `ezurlalias_ml_incr` VALUES (81);
INSERT INTO `ezurlalias_ml_incr` VALUES (82);
INSERT INTO `ezurlalias_ml_incr` VALUES (83);
INSERT INTO `ezurlalias_ml_incr` VALUES (84);
INSERT INTO `ezurlalias_ml_incr` VALUES (85);
INSERT INTO `ezurlalias_ml_incr` VALUES (86);
INSERT INTO `ezurlalias_ml_incr` VALUES (87);
INSERT INTO `ezurlalias_ml_incr` VALUES (88);
INSERT INTO `ezurlalias_ml_incr` VALUES (89);
INSERT INTO `ezurlalias_ml_incr` VALUES (90);
INSERT INTO `ezurlalias_ml_incr` VALUES (91);
INSERT INTO `ezurlalias_ml_incr` VALUES (92);
INSERT INTO `ezurlalias_ml_incr` VALUES (93);
INSERT INTO `ezurlalias_ml_incr` VALUES (94);
INSERT INTO `ezurlalias_ml_incr` VALUES (95);
INSERT INTO `ezurlalias_ml_incr` VALUES (96);
INSERT INTO `ezurlalias_ml_incr` VALUES (97);
INSERT INTO `ezurlalias_ml_incr` VALUES (98);
INSERT INTO `ezurlalias_ml_incr` VALUES (99);
INSERT INTO `ezurlalias_ml_incr` VALUES (100);
INSERT INTO `ezurlalias_ml_incr` VALUES (101);
INSERT INTO `ezurlalias_ml_incr` VALUES (102);
INSERT INTO `ezurlalias_ml_incr` VALUES (103);
INSERT INTO `ezurlalias_ml_incr` VALUES (104);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2);
INSERT INTO `ezuser` VALUES (14,'ggiunta@kaliop.com','admin','c78e3b0f3d9244ed8c6d1c29464bdff9',2);
INSERT INTO `ezuser` VALUES (120,'subscriber@ez.no','subscriber','aff687ebeaa4f54c53707b7918041662',2);
INSERT INTO `ezuser` VALUES (121,'member@ez.no','member','61c4aed984adf5eb50a90802959d60e8',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2);
INSERT INTO `ezuser_role` VALUES (11,28,'','',1);
INSERT INTO `ezuser_role` VALUES (42,31,'','',1);
INSERT INTO `ezuser_role` VALUES (13,32,'Subtree','/1/2/',3);
INSERT INTO `ezuser_role` VALUES (13,33,'Subtree','/1/43/',3);
INSERT INTO `ezuser_role` VALUES (11,34,'','',5);
INSERT INTO `ezuser_role` VALUES (118,35,'','',4);
INSERT INTO `ezuser_role` VALUES (118,36,'','',5);
INSERT INTO `ezuser_role` VALUES (118,37,'','',1);
INSERT INTO `ezuser_role` VALUES (119,38,'','',6);
INSERT INTO `ezuser_role` VALUES (119,39,'','',1);
INSERT INTO `ezuser_role` VALUES (13,40,'','',5);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10);
INSERT INTO `ezuser_setting` VALUES (1,10,14);
INSERT INTO `ezuser_setting` VALUES (1,0,120);
INSERT INTO `ezuser_setting` VALUES (1,0,121);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaliop_migrations`
--

DROP TABLE IF EXISTS `kaliop_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaliop_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `execution_date` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `execution_error` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`migration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaliop_migrations`
--

LOCK TABLES `kaliop_migrations` WRITE;
/*!40000 ALTER TABLE `kaliop_migrations` DISABLE KEYS */;
INSERT INTO `kaliop_migrations` VALUES ('20100101000200_MigrateV1ToV2.php','/var/www/site/vendor/kaliop/ezmigrationbundle/MigrationVersions/20100101000200_MigrateV1ToV2.php','fb7c0f094ddb60ff484a8e17e7c58314',1472170855,2,NULL);
/*!40000 ALTER TABLE `kaliop_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
