-- MySQL dump 10.13  Distrib 5.1.39, for unknown-linux-gnu (x86_64)
--
--   Database: kofeorg_testme
-- ------------------------------------------------------
-- Server version	5.1.39-community-log

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(63) NOT NULL,
  `AUTHOR` varchar(63) NOT NULL,
  `FILENAME` varchar(200) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `MD5SUM` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `OLD_gooddata_account`
--

DROP TABLE IF EXISTS `OLD_gooddata_account`;
/*!50001 DROP VIEW IF EXISTS `OLD_gooddata_account`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OLD_gooddata_account` (
  `id` bigint(20),
  `first_name` varchar(50),
  `last_name` varchar(100),
  `postal_code` varchar(25),
  `gender` varchar(255),
  `age` bigint(12),
  `date(created)` date,
  `domain` varchar(5),
  `link` varbinary(78)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash_type` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `dob_month` int(11) DEFAULT NULL,
  `dob_day` int(11) DEFAULT NULL,
  `dob_year` int(11) DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` float NOT NULL,
  `notification_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `account_settings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aboutMe` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `substatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee` bit(1) DEFAULT b'0',
  `facebook_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_token` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dma_id` int(11) DEFAULT NULL,
  `badges` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00',
  `share_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_token` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_token_secret` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_type` int(11) DEFAULT '0',
  `iPhone_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_notification_sent` bit(1) NOT NULL DEFAULT b'0',
  `tw_notification_sent` bit(1) NOT NULL DEFAULT b'0',
  `android_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foursquare_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_foursquare_update` datetime DEFAULT NULL,
  `last_facebook_update` datetime DEFAULT NULL,
  `foursquare_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  UNIQUE KEY `idx_secret_code` (`secret_code`),
  UNIQUE KEY `idx_fb_id` (`facebook_id`),
  UNIQUE KEY `idx_tw_id` (`tw_id`),
  UNIQUE KEY `idx_foursquare_id` (`foursquare_id`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`),
  KEY `idx_status` (`account_status`),
  KEY `idx_first_name` (`first_name`),
  KEY `idx_last_name` (`last_name`),
  KEY `idx_city` (`city`),
  KEY `idx_state` (`state`),
  KEY `idx_neighborhood_id` (`neighborhood_id`),
  KEY `idx_dob_month` (`dob_month`),
  KEY `idx_dob_day` (`dob_day`),
  KEY `idx_substatus` (`substatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_badges`
--

DROP TABLE IF EXISTS `account_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_badges` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `badge_id` bigint(20) NOT NULL,
  `acquired` bigint(20) DEFAULT '0',
  `business_id` bigint(20) DEFAULT '0',
  `active` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_badge_id` (`badge_id`),
  KEY `idx_business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_following`
--

DROP TABLE IF EXISTS `account_following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_following` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `following_id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `hidden` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_account_following` (`account_id`,`following_id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_following_id` (`following_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_properties`
--

DROP TABLE IF EXISTS `account_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_properties` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL DEFAULT '0',
  `properties` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_account_role` (`account_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `owner_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci DEFAULT 'City',
  `postal_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'US',
  `primary_flag` bit(1) NOT NULL,
  `address_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `altitude` float(12,0) DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `admin_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `owner_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `album_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_album` bit(1) NOT NULL,
  `profile_album` bit(1) NOT NULL,
  `visibility` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  `album_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_type` (`owner_type`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` bigint(20) NOT NULL,
  `app_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cert` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_app_key` (`app_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `badge_rules`
--

DROP TABLE IF EXISTS `badge_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badge_rules` (
  `id` bigint(20) NOT NULL,
  `rule_type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `rule_action` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `reminder_level` int(11) DEFAULT NULL,
  `reminder_text` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator_field` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on_date` bigint(20) DEFAULT NULL,
  `from_date` bigint(20) DEFAULT NULL,
  `to_date` bigint(20) DEFAULT NULL,
  `badge_id` bigint(20) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `created` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rule_type` (`rule_type`),
  KEY `idx_rule_action` (`rule_action`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badges` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  `created` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_badge_name` (`name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bizzy_sequence`
--

DROP TABLE IF EXISTS `bizzy_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bizzy_sequence` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next_val` bigint(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_id` bigint(20) DEFAULT NULL,
  `featured` bit(1) NOT NULL,
  `trusted` bit(1) NOT NULL,
  `business_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours_id` bigint(20) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` float NOT NULL,
  `notification_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_photo_id` bigint(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hours_string` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` datetime DEFAULT NULL,
  `profile_options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cloud_profile_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demo` bit(1) NOT NULL,
  `substatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_approve_customers` bit(1) NOT NULL DEFAULT b'0',
  `dma_id` int(11) DEFAULT NULL,
  `localeeze_id` bigint(20) DEFAULT NULL,
  `primary_category_id` bigint(20) DEFAULT NULL,
  `secondary_category_id` bigint(20) DEFAULT NULL,
  `tertiary_category_id` bigint(20) DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_chain_id` bigint(20) DEFAULT NULL,
  `cleaned` bit(1) NOT NULL DEFAULT b'0',
  `address_cleaned` bit(1) NOT NULL DEFAULT b'0',
  `not_duplicate` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foursquare_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_business_id` bigint(20) DEFAULT NULL,
  `url_slug` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_fs_update` date DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `facebook_business_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_facebook_update` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_secret_code` (`secret_code`),
  KEY `idx_name` (`name`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`),
  KEY `idx_status` (`business_status`),
  KEY `idx_activated` (`activated`),
  KEY `idx_demo` (`demo`),
  KEY `idx_city` (`city`),
  KEY `idx_state` (`state`),
  KEY `idx_neighborhood_id` (`neighborhood_id`),
  KEY `idx_postal_code` (`postal_code`),
  KEY `idx_localeeze_id` (`localeeze_id`),
  KEY `idx_primary_category_id` (`primary_category_id`),
  KEY `idx_secondary_category_id` (`secondary_category_id`),
  KEY `idx_tertiary_category_id` (`tertiary_category_id`),
  KEY `idx_google_id` (`google_id`),
  KEY `idx_business_chain_id` (`business_chain_id`),
  KEY `idx_cleaned` (`cleaned`),
  KEY `idx_address_cleaned` (`address_cleaned`),
  KEY `idx_foursquare_id` (`foursquare_id`),
  KEY `idx_last_fs_update` (`last_fs_update`),
  KEY `idx_facebook_business_id` (`facebook_business_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_categories`
--

DROP TABLE IF EXISTS `business_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_categories` (
  `id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `primary_category` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_chain`
--

DROP TABLE IF EXISTS `business_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_chain` (
  `localeeze_chain_id` bigint(20) NOT NULL DEFAULT '0',
  `chain_name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_localeeze_chain_id` (`localeeze_chain_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bz_email`
--

DROP TABLE IF EXISTS `bz_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bz_email` (
  `id` bigint(20) NOT NULL,
  `identifier` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `locale` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'us',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bz_page`
--

DROP TABLE IF EXISTS `bz_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bz_page` (
  `id` bigint(20) NOT NULL,
  `page_identifier` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_template_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_identifier` (`page_identifier`),
  KEY `page_identifier_idx` (`page_identifier`),
  KEY `idx_page_template_file` (`page_template_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bz_page_tip`
--

DROP TABLE IF EXISTS `bz_page_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bz_page_tip` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `position_in_queue` int(11) NOT NULL,
  `tip_text` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id_idx` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `identifier` bigint(20) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` bigint(20) NOT NULL,
  `keywords` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`),
  KEY `idx_parent` (`parent`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `recommendation_strength` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'e',
  `comment` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_facebook` bit(1) DEFAULT b'0',
  `share_twitter` bit(1) DEFAULT b'0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `share_bizzy` bit(1) DEFAULT b'0',
  `guestbook_comment_id` bigint(20) DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `source_platform` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_created` (`created`),
  KEY `idx_strength` (`recommendation_strength`),
  KEY `idx_business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkout_copy`
--

DROP TABLE IF EXISTS `checkout_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_copy` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL DEFAULT '0',
  `business_id` bigint(20) NOT NULL DEFAULT '0',
  `recommendation_strength` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_facebook` bit(1) DEFAULT b'0',
  `share_twitter` bit(1) DEFAULT b'0',
  `created` date DEFAULT NULL,
  `share_bizzy` bit(1) DEFAULT b'0',
  `guestbook_comment_id` bigint(20) DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `communication_business`
--

DROP TABLE IF EXISTS `communication_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_business` (
  `communication_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `sender_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` bit(1) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `note` varchar(8192) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dma_ids` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`communication_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_template` (`template`),
  KEY `idx_template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_code` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_state`
--

DROP TABLE IF EXISTS `country_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_state` (
  `id` bigint(20) NOT NULL,
  `state_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_state_code` (`state_code`),
  KEY `idx_country_code` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` bigint(20) NOT NULL,
  `document_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(4096) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  `sender_account_id` bigint(20) DEFAULT NULL,
  `recipient_account_id` bigint(20) DEFAULT NULL,
  `business_email_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_changed` datetime DEFAULT NULL,
  `body_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'TXT',
  PRIMARY KEY (`id`),
  KEY `idx_document_type` (`document_type`),
  KEY `idx_recipient_id` (`recipient_account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_sender_account` (`sender_account_id`),
  KEY `idx_business_email_status` (`business_email_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_switch`
--

DROP TABLE IF EXISTS `email_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_switch` (
  `id` bigint(20) NOT NULL,
  `email_type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_type` (`email_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_weekly_summary`
--

DROP TABLE IF EXISTS `email_weekly_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_weekly_summary` (
  `id` bigint(20) NOT NULL,
  `subject_text` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_text` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_text` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_text` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rec_category_id` bigint(20) DEFAULT NULL,
  `rec_image_url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  `last_modified` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_types` (
  `id` bigint(20) NOT NULL,
  `event_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `action_id` int(11) NOT NULL,
  `event_code` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `is_synchronous` bit(1) DEFAULT b'0',
  `points` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'0',
  `event_description` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facebook_category`
--

DROP TABLE IF EXISTS `facebook_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facebook_category` (
  `id` bigint(20) NOT NULL,
  `facebook_id` bigint(20) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `bizzy_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feed_item_action`
--

DROP TABLE IF EXISTS `feed_item_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_item_action` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `feed_item_id` bigint(20) NOT NULL,
  `feed_item_type` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `action_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `auto_generated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_feed_item` (`feed_item_id`,`feed_item_type`),
  KEY `idx_action_type` (`action_type`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feed_messages`
--

DROP TABLE IF EXISTS `feed_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_messages` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `action` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_response`
--

DROP TABLE IF EXISTS `feedback_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_response` (
  `id` bigint(20) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` bigint(20) NOT NULL,
  `response` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_handle` (`handle`),
  KEY `idx_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `album_id` bigint(20) NOT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mid_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ready` bit(1) NOT NULL,
  `errorType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error` bit(1) DEFAULT NULL,
  `original_height` int(11) DEFAULT '100',
  `original_width` int(11) DEFAULT '100',
  `account_id` bigint(20) DEFAULT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_album_id` (`album_id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `foursquare_category`
--

DROP TABLE IF EXISTS `foursquare_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foursquare_category` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `foursquare_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `bizzy_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `parent` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `foursquare_venue`
--

DROP TABLE IF EXISTS `foursquare_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foursquare_venue` (
  `id` bigint(20) NOT NULL,
  `foursquare_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8_unicode_ci,
  `tags` longtext COLLATE utf8_unicode_ci,
  `tips` longtext COLLATE utf8_unicode_ci,
  `photo_links` longtext COLLATE utf8_unicode_ci,
  `checkins` bigint(20) DEFAULT NULL,
  `user_count` bigint(20) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `last_modified` bigint(20) DEFAULT NULL,
  `last_refresh_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_foursquare_id` (`foursquare_id`),
  KEY `idx_created` (`created`),
  KEY `idx_last_modified` (`last_modified`),
  KEY `idx_last_refresh_date` (`last_refresh_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geographic_location`
--

DROP TABLE IF EXISTS `geographic_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geographic_location` (
  `id` bigint(20) NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daylight_saving_change` bit(1) DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `dma_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dma_id` int(11) DEFAULT NULL,
  `launch_date` datetime DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'DISABLED',
  `target_customers_count` int(11) DEFAULT '0',
  `alternative_dma_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_approved` (`approved`),
  KEY `idx_area_code` (`area_code`),
  KEY `idx_city` (`city`),
  KEY `idx_postal_code` (`postal_code`),
  KEY `idx_state` (`state`),
  KEY `idx_dma_id` (`dma_id`),
  KEY `idx_dma` (`dma_name`),
  KEY `idx_launch_date` (`launch_date`),
  KEY `idx_alter_dma_name` (`alternative_dma_name`),
  KEY `idx_status` (`status`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `gooddata_admin`
--

DROP TABLE IF EXISTS `gooddata_admin`;
/*!50001 DROP VIEW IF EXISTS `gooddata_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gooddata_admin` (
  `id` varbinary(20),
  `account_id` bigint(20),
  `business_id` bigint(20),
  `admin_role` varchar(255),
  `fake1` char(0),
  `fake2` char(0),
  `fake3` char(0),
  `fake4` char(0),
  `fake5` char(0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `gooddata_business`
--

DROP TABLE IF EXISTS `gooddata_business`;
/*!50001 DROP VIEW IF EXISTS `gooddata_business`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gooddata_business` (
  `id` bigint(20),
  `id2` bigint(20),
  `name` varchar(255),
  `business_status` varchar(255),
  `postal_code` varchar(25),
  `created` varbinary(10),
  `activated` varbinary(10),
  `owner_id` varbinary(20),
  `fake1` char(0),
  `fake2` char(0),
  `fake3` char(0),
  `fake4` char(0),
  `fake5` char(0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `gooddata_business_owner_info`
--

DROP TABLE IF EXISTS `gooddata_business_owner_info`;
/*!50001 DROP VIEW IF EXISTS `gooddata_business_owner_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gooddata_business_owner_info` (
  `id` bigint(20),
  `email` varchar(100),
  `first_name` varchar(50),
  `last_name` varchar(100),
  `postal_code` varchar(25),
  `fake1` char(0),
  `fake2` char(0),
  `fake3` char(0),
  `fake4` char(0),
  `fake5` char(0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `gooddata_location`
--

DROP TABLE IF EXISTS `gooddata_location`;
/*!50001 DROP VIEW IF EXISTS `gooddata_location`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gooddata_location` (
  `id` bigint(20),
  `postal_code` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `dma_name` varchar(255),
  `dma_id` bigint(20),
  `launch_date` varbinary(19),
  `status` varchar(30),
  `fake1` char(0),
  `fake2` char(0),
  `fake3` char(0),
  `fake4` char(0),
  `fake5` char(0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `guestbook_comment`
--

DROP TABLE IF EXISTS `guestbook_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook_comment` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `favorite` bit(1) NOT NULL,
  `hidden` bit(1) NOT NULL,
  `feedback` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NONE',
  `body` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'APPLICATION',
  `creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_account` (`account_id`),
  KEY `idx_business` (`business_id`),
  KEY `idx_parent` (`parent_id`),
  KEY `idx_favorite` (`favorite`),
  KEY `idx_hidden` (`hidden`),
  KEY `idx_creation` (`creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hours_of_operation`
--

DROP TABLE IF EXISTS `hours_of_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hours_of_operation` (
  `id` bigint(20) NOT NULL,
  `monday_early_from_hours` int(11) DEFAULT NULL,
  `monday_early_from_minutes` int(11) DEFAULT NULL,
  `monday_early_to_hours` int(11) DEFAULT NULL,
  `monday_early_to_minutes` int(11) DEFAULT NULL,
  `monday_late_from_hours` int(11) DEFAULT NULL,
  `monday_late_from_minutes` int(11) DEFAULT NULL,
  `monday_late_to_hours` int(11) DEFAULT NULL,
  `monday_late_to_minutes` int(11) DEFAULT NULL,
  `tuesday_early_from_hours` int(11) DEFAULT NULL,
  `tuesday_early_from_minutes` int(11) DEFAULT NULL,
  `tuesday_early_to_hours` int(11) DEFAULT NULL,
  `tuesday_early_to_minutes` int(11) DEFAULT NULL,
  `tuesday_late_from_hours` int(11) DEFAULT NULL,
  `tuesday_late_from_minutes` int(11) DEFAULT NULL,
  `tuesday_late_to_hours` int(11) DEFAULT NULL,
  `tuesday_late_to_minutes` int(11) DEFAULT NULL,
  `wednesday_early_from_hours` int(11) DEFAULT NULL,
  `wednesday_early_from_minutes` int(11) DEFAULT NULL,
  `wednesday_early_to_hours` int(11) DEFAULT NULL,
  `wednesday_early_to_minutes` int(11) DEFAULT NULL,
  `wednesday_late_from_hours` int(11) DEFAULT NULL,
  `wednesday_late_from_minutes` int(11) DEFAULT NULL,
  `wednesday_late_to_hours` int(11) DEFAULT NULL,
  `wednesday_late_to_minutes` int(11) DEFAULT NULL,
  `thursday_early_from_hours` int(11) DEFAULT NULL,
  `thursday_early_from_minutes` int(11) DEFAULT NULL,
  `thursday_early_to_hours` int(11) DEFAULT NULL,
  `thursday_early_to_minutes` int(11) DEFAULT NULL,
  `thursday_late_from_hours` int(11) DEFAULT NULL,
  `thursday_late_from_minutes` int(11) DEFAULT NULL,
  `thursday_late_to_hours` int(11) DEFAULT NULL,
  `thursday_late_to_minutes` int(11) DEFAULT NULL,
  `friday_early_from_hours` int(11) DEFAULT NULL,
  `friday_early_from_minutes` int(11) DEFAULT NULL,
  `friday_early_to_hours` int(11) DEFAULT NULL,
  `friday_early_to_minutes` int(11) DEFAULT NULL,
  `friday_late_from_hours` int(11) DEFAULT NULL,
  `friday_late_from_minutes` int(11) DEFAULT NULL,
  `friday_late_to_hours` int(11) DEFAULT NULL,
  `friday_late_to_minutes` int(11) DEFAULT NULL,
  `saturday_early_from_hours` int(11) DEFAULT NULL,
  `saturday_early_from_minutes` int(11) DEFAULT NULL,
  `saturday_early_to_hours` int(11) DEFAULT NULL,
  `saturday_early_to_minutes` int(11) DEFAULT NULL,
  `saturday_late_from_hours` int(11) DEFAULT NULL,
  `saturday_late_from_minutes` int(11) DEFAULT NULL,
  `saturday_late_to_hours` int(11) DEFAULT NULL,
  `saturday_late_to_minutes` int(11) DEFAULT NULL,
  `sunday_early_from_hours` int(11) DEFAULT NULL,
  `sunday_early_from_minutes` int(11) DEFAULT NULL,
  `sunday_early_to_hours` int(11) DEFAULT NULL,
  `sunday_early_to_minutes` int(11) DEFAULT NULL,
  `sunday_late_from_hours` int(11) DEFAULT NULL,
  `sunday_late_from_minutes` int(11) DEFAULT NULL,
  `sunday_late_to_hours` int(11) DEFAULT NULL,
  `sunday_late_to_minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imported_business`
--

DROP TABLE IF EXISTS `imported_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imported_business` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `foreign_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `import_source` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rated` tinyint(1) NOT NULL DEFAULT '0',
  `mayor` tinyint(1) DEFAULT '0',
  `number_of_checkins` int(11) DEFAULT '0',
  `like` tinyint(1) DEFAULT '0',
  `created` datetime NOT NULL,
  `last_checkin` datetime DEFAULT NULL,
  `liked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_foreign_id` (`foreign_id`(255)),
  KEY `idx_created` (`created`),
  KEY `idx_import_source` (`import_source`),
  KEY `idx_last_checkin` (`last_checkin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locations_search`
--

DROP TABLE IF EXISTS `locations_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations_search` (
  `id` bigint(20) NOT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accent_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `population` bigint(20) DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `zip` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geolocation_id` bigint(20) DEFAULT '0',
  UNIQUE KEY `idx_citystate` (`city`,`state`),
  KEY `idx_state` (`state`),
  KEY `idx_zip` (`zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `param`
--

DROP TABLE IF EXISTS `param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param` (
  `id` bigint(20) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fts` datetime NOT NULL,
  `tts` datetime NOT NULL,
  `val` varchar(4096) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `points` int(11) NOT NULL,
  `created` bigint(20) NOT NULL DEFAULT '0',
  `event_type` int(11) DEFAULT '0',
  `bigint_1` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_created` (`created`),
  KEY `idx_event_type` (`event_type`),
  KEY `idx_bigint_1` (`bigint_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend_business`
--

DROP TABLE IF EXISTS `recommend_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend_business` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  `account_type` bit(1) NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `strength` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'r',
  `business_chain_id` bigint(20) DEFAULT NULL,
  `current` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_main` (`account_id`,`business_id`),
  KEY `idx_account` (`account_id`),
  KEY `idx_business` (`business_id`),
  KEY `idx_strength` (`strength`),
  KEY `idx_business_chain_id` (`business_chain_id`),
  KEY `idx_account_type` (`account_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend_business_questions`
--

DROP TABLE IF EXISTS `recommend_business_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend_business_questions` (
  `id` bigint(20) NOT NULL,
  `recommendation_id` bigint(20) NOT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `tags` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_recommendation_id` (`recommendation_id`),
  KEY `idx_question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend_question`
--

DROP TABLE IF EXISTS `recommend_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend_question` (
  `id` bigint(20) NOT NULL,
  `type` varchar(2) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `next_step` int(11) DEFAULT NULL,
  `message_text` varchar(255) DEFAULT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `skip_text` varchar(255) DEFAULT NULL,
  `category_id1` bigint(20) DEFAULT NULL,
  `category_id2` bigint(20) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_active` (`active`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend_stats`
--

DROP TABLE IF EXISTS `recommend_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend_stats` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `step` int(11) DEFAULT NULL,
  `action_type` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_account` (`account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_action_type` (`action_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `res_account`
--

DROP TABLE IF EXISTS `res_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res_account` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash_type` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `dob_month` int(11) DEFAULT NULL,
  `dob_day` int(11) DEFAULT NULL,
  `dob_year` int(11) DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` float NOT NULL,
  `notification_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `account_settings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aboutMe` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `substatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee` bit(1) DEFAULT b'0',
  `facebook_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_token` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dma_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  UNIQUE KEY `idx_secret_code` (`secret_code`),
  UNIQUE KEY `idx_fb_id` (`facebook_id`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`),
  KEY `idx_status` (`account_status`),
  KEY `idx_first_name` (`first_name`),
  KEY `idx_last_name` (`last_name`),
  KEY `idx_city` (`city`),
  KEY `idx_state` (`state`),
  KEY `idx_neighborhood_id` (`neighborhood_id`),
  KEY `idx_dob_month` (`dob_month`),
  KEY `idx_dob_day` (`dob_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_permission`
--

DROP TABLE IF EXISTS `security_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_permission` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_role`
--

DROP TABLE IF EXISTS `security_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `realm` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_role_permission`
--

DROP TABLE IF EXISTS `security_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_perm` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seq_account_properties`
--

DROP TABLE IF EXISTS `seq_account_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_account_properties` (
  `next_val` bigint(20) NOT NULL,
  PRIMARY KEY (`next_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stage_business`
--

DROP TABLE IF EXISTS `stage_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_business` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_id` bigint(20) DEFAULT NULL,
  `featured` bit(1) NOT NULL,
  `trusted` bit(1) NOT NULL,
  `business_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours_id` bigint(20) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` float NOT NULL,
  `notification_preferences` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_photo_id` bigint(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hours_string` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` datetime DEFAULT NULL,
  `profile_options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cloud_profile_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demo` bit(1) NOT NULL,
  `substatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_approve_customers` bit(1) NOT NULL DEFAULT b'0',
  `dma_id` int(11) DEFAULT NULL,
  `localeeze_id` bigint(20) DEFAULT NULL,
  `primary_category_id` bigint(20) DEFAULT NULL,
  `secondary_category_id` bigint(20) DEFAULT NULL,
  `tertiary_category_id` bigint(20) DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_chain_id` bigint(20) DEFAULT NULL,
  `cleaned` bit(1) NOT NULL DEFAULT b'0',
  `address_cleaned` bit(1) NOT NULL DEFAULT b'0',
  `not_duplicate` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foursquare_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_business_id` bigint(20) DEFAULT NULL,
  `url_slug` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_fs_update` date DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `facebook_business_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_facebook_update` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_secret_code` (`secret_code`),
  KEY `idx_name` (`name`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`),
  KEY `idx_status` (`business_status`),
  KEY `idx_activated` (`activated`),
  KEY `idx_demo` (`demo`),
  KEY `idx_city` (`city`),
  KEY `idx_state` (`state`),
  KEY `idx_neighborhood_id` (`neighborhood_id`),
  KEY `idx_postal_code` (`postal_code`),
  KEY `idx_localeeze_id` (`localeeze_id`),
  KEY `idx_primary_category_id` (`primary_category_id`),
  KEY `idx_secondary_category_id` (`secondary_category_id`),
  KEY `idx_tertiary_category_id` (`tertiary_category_id`),
  KEY `idx_google_id` (`google_id`),
  KEY `idx_business_chain_id` (`business_chain_id`),
  KEY `idx_cleaned` (`cleaned`),
  KEY `idx_address_cleaned` (`address_cleaned`),
  KEY `idx_foursquare_id` (`foursquare_id`),
  KEY `idx_last_fs_update` (`last_fs_update`),
  KEY `idx_facebook_business_id` (`facebook_business_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tags_categories`
--

DROP TABLE IF EXISTS `tags_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_categories` (
  `tag` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `primary_category_id` bigint(20) NOT NULL,
  `secondary_category_id` bigint(20) DEFAULT NULL,
  `tertiary_category_id` bigint(20) DEFAULT NULL,
  KEY `idx_tag` (`tag`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `try_list`
--

DROP TABLE IF EXISTS `try_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `try_list` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `src_acct_id` bigint(20) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `action_type` int(11) DEFAULT NULL,
  `associated_comment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_account_business` (`account_id`,`business_id`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_business_id` (`business_id`),
  KEY `idx_object_id` (`object_id`),
  KEY `idx_object_type` (`object_type`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usa_cities`
--

DROP TABLE IF EXISTS `usa_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usa_cities` (
  `id` bigint(20) NOT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `accent_city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `population` bigint(20) DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `zip` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_city` (`city`,`state`,`latitude`,`longitude`),
  UNIQUE KEY `idx_citystate` (`city`,`state`),
  KEY `idx_coordinates` (`latitude`,`longitude`),
  KEY `idx_state` (`state`),
  KEY `idx_zip` (`zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity` (
  `id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `object_type` int(11) NOT NULL DEFAULT '0',
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) DEFAULT NULL,
  `root_id` bigint(20) NOT NULL DEFAULT '0',
  `like_count` bigint(20) NOT NULL DEFAULT '0',
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'xx',
  `created` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_actor` (`actor_id`),
  KEY `idx_action` (`action`),
  KEY `idx_object` (`object_id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_root_id` (`root_id`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id` bigint(20) NOT NULL,
  `durable_id` bigint(20) NOT NULL,
  `clazz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dura` (`durable_id`,`clazz`),
  KEY `idx_state` (`state`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_transitions`
--

DROP TABLE IF EXISTS `workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_transitions` (
  `workflow_id` bigint(20) NOT NULL,
  `dt` datetime NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `node_from` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `node_to` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`workflow_id`,`dt`,`account_id`,`node_from`,`node_to`,`no`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `OLD_gooddata_account`
--

/*!50001 DROP TABLE IF EXISTS `OLD_gooddata_account`*/;
/*!50001 DROP VIEW IF EXISTS `OLD_gooddata_account`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OLD_gooddata_account` AS select `account`.`id` AS `id`,`account`.`first_name` AS `first_name`,`account`.`last_name` AS `last_name`,`account`.`postal_code` AS `postal_code`,`account`.`gender` AS `gender`,(year(curdate()) - `account`.`dob_year`) AS `age`,cast(`account`.`created` as date) AS `date(created)`,if(((`account`.`email` like '%@bizzy-inc.com%') or (`account`.`email` like '%@bizzy.com%') or (`account`.`email` like 'bizzyqa%') or (`account`.`email` like 'bizzydemo%')),'bizzy','') AS `domain`,concat('[linku|http://berlin.bizzy-inc.com:9090/app/account/',`account`.`id`,'/feed]') AS `link` from `account` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gooddata_admin`
--

/*!50001 DROP TABLE IF EXISTS `gooddata_admin`*/;
/*!50001 DROP VIEW IF EXISTS `gooddata_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `gooddata_admin` AS select `admin`.`id` AS `id`,`admin`.`account_id` AS `account_id`,`admin`.`business_id` AS `business_id`,`admin`.`admin_role` AS `admin_role`,'' AS `fake1`,'' AS `fake2`,'' AS `fake3`,'' AS `fake4`,'' AS `fake5` from `admin` union select '' AS `0`,0 AS `0`,0 AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gooddata_business`
--

/*!50001 DROP TABLE IF EXISTS `gooddata_business`*/;
/*!50001 DROP VIEW IF EXISTS `gooddata_business`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `gooddata_business` AS select `business`.`id` AS `id`,`business`.`id` AS `id2`,`business`.`name` AS `name`,`business`.`business_status` AS `business_status`,`business`.`postal_code` AS `postal_code`,cast(`business`.`created` as date) AS `created`,cast(`business`.`activated` as date) AS `activated`,(select `admin`.`account_id` AS `account_id` from `admin` where (`admin`.`business_id` = `business`.`id`) limit 1) AS `owner_id`,'' AS `fake1`,'' AS `fake2`,'' AS `fake3`,'' AS `fake4`,'' AS `fake5` from `business` union select 0 AS `0`,0 AS `0`,'' AS `0`,'' AS `0`,94041 AS `94041`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gooddata_business_owner_info`
--

/*!50001 DROP TABLE IF EXISTS `gooddata_business_owner_info`*/;
/*!50001 DROP VIEW IF EXISTS `gooddata_business_owner_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `gooddata_business_owner_info` AS select `account`.`id` AS `id`,`account`.`email` AS `email`,`account`.`first_name` AS `first_name`,`account`.`last_name` AS `last_name`,`account`.`postal_code` AS `postal_code`,'' AS `fake1`,'' AS `fake2`,'' AS `fake3`,'' AS `fake4`,'' AS `fake5` from `account` where `account`.`id` in (select `admin`.`account_id` AS `account_id` from `admin`) union select 0 AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,75201 AS `75201`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0`,'' AS `0` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gooddata_location`
--

/*!50001 DROP TABLE IF EXISTS `gooddata_location`*/;
/*!50001 DROP VIEW IF EXISTS `gooddata_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `gooddata_location` AS select `geographic_location`.`id` AS `id`,`geographic_location`.`postal_code` AS `postal_code`,`geographic_location`.`city` AS `city`,`geographic_location`.`state` AS `state`,`geographic_location`.`dma_name` AS `dma_name`,`geographic_location`.`dma_id` AS `dma_id`,`geographic_location`.`launch_date` AS `launch_date`,`geographic_location`.`status` AS `status`,'' AS `fake1`,'' AS `fake2`,'' AS `fake3`,'' AS `fake4`,'' AS `fake5` from `geographic_location` union select 0 AS `id`,NULL AS `postal_code`,'' AS `city`,'' AS `state`,'None' AS `dma_name`,0 AS `dma_id`,'' AS `launch_date`,'' AS `status`,'' AS `fake1`,'' AS `fake2`,'' AS `fake3`,'' AS `fake4`,'' AS `fake5` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-23 13:59:57
