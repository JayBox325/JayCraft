-- MySQL dump 10.13  Distrib 5.7.26, for osx10.9 (x86_64)
--
-- Host: localhost    Database: jaycraft
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `craft_assetindexdata`
--

DROP TABLE IF EXISTS `craft_assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  KEY `craft_assetindexdata_volumeId_idx` (`volumeId`),
  CONSTRAINT `craft_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_assets`
--

DROP TABLE IF EXISTS `craft_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assets_filename_folderId_idx` (`filename`,`folderId`),
  KEY `craft_assets_folderId_idx` (`folderId`),
  KEY `craft_assets_volumeId_idx` (`volumeId`),
  KEY `craft_assets_uploaderId_fk` (`uploaderId`),
  CONSTRAINT `craft_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assets_uploaderId_fk` FOREIGN KEY (`uploaderId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_assettransformindex`
--

DROP TABLE IF EXISTS `craft_assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_assettransforms`
--

DROP TABLE IF EXISTS `craft_assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransforms_name_idx` (`name`),
  KEY `craft_assettransforms_handle_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_categories`
--

DROP TABLE IF EXISTS `craft_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_idx` (`groupId`),
  KEY `craft_categories_parentId_fk` (`parentId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_categorygroups`
--

DROP TABLE IF EXISTS `craft_categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categorygroups_name_idx` (`name`),
  KEY `craft_categorygroups_handle_idx` (`handle`),
  KEY `craft_categorygroups_structureId_idx` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_categorygroups_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_categorygroups_sites`
--

DROP TABLE IF EXISTS `craft_categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  KEY `craft_categorygroups_sites_siteId_idx` (`siteId`),
  CONSTRAINT `craft_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_changedattributes`
--

DROP TABLE IF EXISTS `craft_changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `craft_changedattributes_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  KEY `craft_changedattributes_siteId_fk` (`siteId`),
  KEY `craft_changedattributes_userId_fk` (`userId`),
  CONSTRAINT `craft_changedattributes_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_changedattributes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_changedattributes_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_changedfields`
--

DROP TABLE IF EXISTS `craft_changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `craft_changedfields_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  KEY `craft_changedfields_siteId_fk` (`siteId`),
  KEY `craft_changedfields_fieldId_fk` (`fieldId`),
  KEY `craft_changedfields_userId_fk` (`userId`),
  CONSTRAINT `craft_changedfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_changedfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_changedfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_changedfields_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_content`
--

DROP TABLE IF EXISTS `craft_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_altText` text,
  `field_quote` text,
  `field_testimonialName` text,
  `field_role` text,
  `field_pageDescription` text,
  `field_pageSeo` text,
  `field_tags` text,
  `field_contactPhone` text,
  `field_contactEmail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_content_siteId_idx` (`siteId`),
  KEY `craft_content_title_idx` (`title`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_cpnav_layout`
--

DROP TABLE IF EXISTS `craft_cpnav_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_cpnav_navigation`
--

DROP TABLE IF EXISTS `craft_cpnav_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `prevLabel` varchar(255) DEFAULT NULL,
  `currLabel` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT '0',
  `prevUrl` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `customIcon` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `newWindow` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_cpnav_navigation_layoutId_idx` (`layoutId`),
  CONSTRAINT `craft_cpnav_navigation_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_cpnav_layout` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_cpnav_pending_navigations`
--

DROP TABLE IF EXISTS `craft_cpnav_pending_navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_pending_navigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginNavItem` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_craftidtokens`
--

DROP TABLE IF EXISTS `craft_craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_craftidtokens_userId_fk` (`userId`),
  CONSTRAINT `craft_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_deprecationerrors`
--

DROP TABLE IF EXISTS `craft_deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_drafts`
--

DROP TABLE IF EXISTS `craft_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_drafts_creatorId_fk` (`creatorId`),
  KEY `craft_drafts_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_elementindexsettings`
--

DROP TABLE IF EXISTS `craft_elementindexsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_elements`
--

DROP TABLE IF EXISTS `craft_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_elements_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  KEY `craft_elements_draftId_fk` (`draftId`),
  KEY `craft_elements_revisionId_fk` (`revisionId`),
  KEY `craft_elements_archived_dateDeleted_draftId_revisionId_idx` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  CONSTRAINT `craft_elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `craft_drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `craft_revisions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_elements_sites`
--

DROP TABLE IF EXISTS `craft_elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_elements_sites_siteId_idx` (`siteId`),
  KEY `craft_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  KEY `craft_elements_sites_enabled_idx` (`enabled`),
  KEY `craft_elements_sites_uri_siteId_idx` (`uri`,`siteId`),
  CONSTRAINT `craft_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_entries`
--

DROP TABLE IF EXISTS `craft_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_idx` (`authorId`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_parentId_fk` (`parentId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_entrytypes`
--

DROP TABLE IF EXISTS `craft_entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  KEY `craft_entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_idx` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_entrytypes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_fieldgroups`
--

DROP TABLE IF EXISTS `craft_fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldgroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_fieldlayoutfields`
--

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_idx` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_idx` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_fieldlayouts`
--

DROP TABLE IF EXISTS `craft_fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_fieldlayouttabs`
--

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elements` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_idx` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_fields`
--

DROP TABLE IF EXISTS `craft_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fields_groupId_idx` (`groupId`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_handle_context_idx` (`handle`,`context`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_globalsets`
--

DROP TABLE IF EXISTS `craft_globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_globalsets_name_idx` (`name`),
  KEY `craft_globalsets_handle_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_gqlschemas`
--

DROP TABLE IF EXISTS `craft_gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_gqlschemas_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_gqltokens`
--

DROP TABLE IF EXISTS `craft_gqltokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_gqltokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_gqltokens_schemaId_fk` (`schemaId`),
  CONSTRAINT `craft_gqltokens_schemaId_fk` FOREIGN KEY (`schemaId`) REFERENCES `craft_gqlschemas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_info`
--

DROP TABLE IF EXISTS `craft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixblocks`
--

DROP TABLE IF EXISTS `craft_matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixblocktypes`
--

DROP TABLE IF EXISTS `craft_matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocktypes_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_matrixblocktypes_name_fieldId_idx` (`name`,`fieldId`),
  KEY `craft_matrixblocktypes_handle_fieldId_idx` (`handle`,`fieldId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixcontent_mainmenu`
--

DROP TABLE IF EXISTS `craft_matrixcontent_mainmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_mainmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_menuItem_rename` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_mainmenu_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_mainmenu_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_mainmenu_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_mainmenu_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixcontent_pagecomponents`
--

DROP TABLE IF EXISTS `craft_matrixcontent_pagecomponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_pagecomponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_body_body` text,
  `field_images_description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_pagecomponents_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_pagecomponents_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_pagecomponents_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_pagecomponents_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixcontent_socialaccounts`
--

DROP TABLE IF EXISTS `craft_matrixcontent_socialaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_socialaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_account_accountUrl` varchar(255) DEFAULT NULL,
  `field_account_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_socialaccounts_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_socialaccounts_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_socialaccounts_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_socialaccounts_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_matrixcontent_utilitymenu`
--

DROP TABLE IF EXISTS `craft_matrixcontent_utilitymenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_utilitymenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_menuItem_rename` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_utilitymenu_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_utilitymenu_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_utilitymenu_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_utilitymenu_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_migrations`
--

DROP TABLE IF EXISTS `craft_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_track_name_unq_idx` (`track`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_plugins`
--

DROP TABLE IF EXISTS `craft_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_plugins_handle_unq_idx` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_projectconfig`
--

DROP TABLE IF EXISTS `craft_projectconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_queue`
--

DROP TABLE IF EXISTS `craft_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) unsigned NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`),
  KEY `craft_queue_channel_fail_timeUpdated_timePushed_idx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  KEY `craft_queue_channel_fail_timeUpdated_delay_idx` (`channel`,`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_relations`
--

DROP TABLE IF EXISTS `craft_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `craft_relations_sourceId_idx` (`sourceId`),
  KEY `craft_relations_targetId_idx` (`targetId`),
  KEY `craft_relations_sourceSiteId_idx` (`sourceSiteId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_resourcepaths`
--

DROP TABLE IF EXISTS `craft_resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_revisions`
--

DROP TABLE IF EXISTS `craft_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  KEY `craft_revisions_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_searchindex`
--

DROP TABLE IF EXISTS `craft_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sections`
--

DROP TABLE IF EXISTS `craft_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sections_handle_idx` (`handle`),
  KEY `craft_sections_name_idx` (`name`),
  KEY `craft_sections_structureId_idx` (`structureId`),
  KEY `craft_sections_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sections_sites`
--

DROP TABLE IF EXISTS `craft_sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  KEY `craft_sections_sites_siteId_idx` (`siteId`),
  CONSTRAINT `craft_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_seo_redirects`
--

DROP TABLE IF EXISTS `craft_seo_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seo_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `type` enum('301','302') NOT NULL,
  `siteId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_seo_sitemap`
--

DROP TABLE IF EXISTS `craft_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seo_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` enum('sections','categories','customUrls') NOT NULL,
  `url` varchar(255) NOT NULL,
  `frequency` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL,
  `priority` float NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sequences`
--

DROP TABLE IF EXISTS `craft_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sessions`
--

DROP TABLE IF EXISTS `craft_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_idx` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_shunnedmessages`
--

DROP TABLE IF EXISTS `craft_shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sitegroups`
--

DROP TABLE IF EXISTS `craft_sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sitegroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_sites`
--

DROP TABLE IF EXISTS `craft_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sites_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_sites_handle_idx` (`handle`),
  KEY `craft_sites_sortOrder_idx` (`sortOrder`),
  KEY `craft_sites_groupId_fk` (`groupId`),
  CONSTRAINT `craft_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_snitch_collisions`
--

DROP TABLE IF EXISTS `craft_snitch_collisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_snitch_collisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snitchId` int(11) NOT NULL,
  `snitchType` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `whenEntered` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_snitch_collisions_userId_fk` (`userId`),
  CONSTRAINT `craft_snitch_collisions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_stc_3_accordions`
--

DROP TABLE IF EXISTS `craft_stc_3_accordions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_stc_3_accordions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_heading` text,
  `field_body` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_stc_3_accordions_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_stc_3_accordions_siteId_idx` (`siteId`),
  CONSTRAINT `craft_craft_stc_3_accordions_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_craft_stc_3_accordions_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_structureelements`
--

DROP TABLE IF EXISTS `craft_structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_idx` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_structures`
--

DROP TABLE IF EXISTS `craft_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_structures_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_supertableblocks`
--

DROP TABLE IF EXISTS `craft_supertableblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocks_ownerId_idx` (`ownerId`),
  KEY `craft_supertableblocks_fieldId_idx` (`fieldId`),
  KEY `craft_supertableblocks_typeId_idx` (`typeId`),
  KEY `craft_supertableblocks_sortOrder_idx` (`sortOrder`),
  CONSTRAINT `craft_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_supertableblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_supertableblocktypes`
--

DROP TABLE IF EXISTS `craft_supertableblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocktypes_fieldId_idx` (`fieldId`),
  KEY `craft_supertableblocktypes_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `craft_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_systemmessages`
--

DROP TABLE IF EXISTS `craft_systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemmessages_key_language_unq_idx` (`key`,`language`),
  KEY `craft_systemmessages_language_idx` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_taggroups`
--

DROP TABLE IF EXISTS `craft_taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_taggroups_name_idx` (`name`),
  KEY `craft_taggroups_handle_idx` (`handle`),
  KEY `craft_taggroups_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_tags`
--

DROP TABLE IF EXISTS `craft_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_templatecacheelements`
--

DROP TABLE IF EXISTS `craft_templatecacheelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_idx` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_idx` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_templatecachequeries`
--

DROP TABLE IF EXISTS `craft_templatecachequeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecachequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachequeries_cacheId_idx` (`cacheId`),
  KEY `craft_templatecachequeries_type_idx` (`type`),
  CONSTRAINT `craft_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_templatecaches`
--

DROP TABLE IF EXISTS `craft_templatecaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  KEY `craft_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  KEY `craft_templatecaches_siteId_idx` (`siteId`),
  CONSTRAINT `craft_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_tokens`
--

DROP TABLE IF EXISTS `craft_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_usergroups`
--

DROP TABLE IF EXISTS `craft_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_usergroups_handle_idx` (`handle`),
  KEY `craft_usergroups_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_usergroups_users`
--

DROP TABLE IF EXISTS `craft_usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_idx` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_userpermissions`
--

DROP TABLE IF EXISTS `craft_userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_userpermissions_usergroups`
--

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_idx` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_userpermissions_users`
--

DROP TABLE IF EXISTS `craft_userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_idx` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_userpreferences`
--

DROP TABLE IF EXISTS `craft_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `craft_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_users`
--

DROP TABLE IF EXISTS `craft_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_email_idx` (`email`),
  KEY `craft_users_username_idx` (`username`),
  KEY `craft_users_photoId_fk` (`photoId`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_volumefolders`
--

DROP TABLE IF EXISTS `craft_volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  KEY `craft_volumefolders_parentId_idx` (`parentId`),
  KEY `craft_volumefolders_volumeId_idx` (`volumeId`),
  CONSTRAINT `craft_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_volumes`
--

DROP TABLE IF EXISTS `craft_volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_volumes_name_idx` (`name`),
  KEY `craft_volumes_handle_idx` (`handle`),
  KEY `craft_volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_volumes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craft_widgets`
--

DROP TABLE IF EXISTS `craft_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_idx` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'jaycraft'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 10:38:16
-- MySQL dump 10.13  Distrib 5.7.26, for osx10.9 (x86_64)
--
-- Host: localhost    Database: jaycraft
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_assets`
--

LOCK TABLES `craft_assets` WRITE;
/*!40000 ALTER TABLE `craft_assets` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_assets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_categorygroups_sites`
--

LOCK TABLES `craft_categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_sites` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_changedattributes`
--

LOCK TABLES `craft_changedattributes` WRITE;
/*!40000 ALTER TABLE `craft_changedattributes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_changedattributes` VALUES (3,1,'fieldLayoutId','2020-09-18 22:57:10',0,1),(18,1,'title','2020-09-18 22:52:03',0,1);
/*!40000 ALTER TABLE `craft_changedattributes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_changedfields`
--

LOCK TABLES `craft_changedfields` WRITE;
/*!40000 ALTER TABLE `craft_changedfields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_changedfields` VALUES (3,1,5,'2020-09-18 22:57:10',0,1),(3,1,18,'2020-09-18 22:57:10',0,1),(13,1,5,'2020-09-18 22:51:46',0,1),(13,1,18,'2020-09-18 23:01:36',0,1),(18,1,11,'2020-09-18 22:52:03',0,1),(18,1,12,'2020-09-18 22:36:45',0,1),(18,1,13,'2020-09-18 22:36:45',0,1);
/*!40000 ALTER TABLE `craft_changedfields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_content` VALUES (1,1,1,NULL,'2019-11-11 14:08:20','2020-09-14 07:54:30','5e9b98ff-1d0a-45b4-b611-cd2a33ceaa1c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,1,'Homepage','2019-11-11 15:37:40','2020-09-18 22:57:10','67b2cdf1-6511-4761-a47b-6b3bcfd30a97',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,1,'Homepage','2019-11-11 15:37:40','2019-11-11 15:37:40','2584d5c9-9371-4126-9275-d8c69032880c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,1,NULL,'2020-09-13 20:58:27','2020-09-20 09:17:42','11eeebaf-c6c5-47ff-b778-7e90ba621d93',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(6,6,1,'Components','2020-09-18 22:10:05','2020-09-18 22:10:19','6fbc3d0d-fc32-4242-8102-ecf1b21116ba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,13,1,'Components Playground','2020-09-18 22:18:22','2020-09-18 23:02:28','f9d1263d-27ea-4a65-8a49-0fe205e39c98',NULL,NULL,NULL,NULL,'<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p>',NULL,NULL,NULL,NULL),(9,15,1,'Components Playground','2020-09-18 22:18:22','2020-09-18 22:18:22','50521e84-5967-487c-b2b0-921ae13f6b69',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,18,1,'Esse id exercitation et consequat labore nisi no...','2020-09-18 22:36:16','2020-09-18 22:52:03','e7dced22-98bb-4f33-8aa4-aeaf04726c7b',NULL,'\n<p>Esse id exercitation et consequat labore nisi non <strong>aliquip velit </strong>\nveniam reprehenderit aliqua. Do consectetur excepteur <em>voluptate </em>\nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n','John Doe','CraftCMS Tester',NULL,NULL,NULL,NULL,NULL),(12,19,1,'<p>This is a lovely quote from a client. How nice!...','2020-09-18 22:36:16','2020-09-18 22:36:16','e23e942f-58ca-4fa6-8195-88091c4fca58',NULL,'<p>This is a lovely quote from a client. How nice!</p>','John Doe','CraftCMS Tester',NULL,NULL,NULL,NULL,NULL),(13,24,1,'Components Playground','2020-09-18 22:51:46','2020-09-18 22:51:46','25c59fce-5b30-44a5-87ca-13574e80c3d9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,30,1,'\r\nEsse id exercitation et consequat labore nisi no...','2020-09-18 22:52:03','2020-09-18 22:52:03','f6931d1a-6d66-4c22-850a-f407d6916b13',NULL,'\n<p>Esse id exercitation et consequat labore nisi non <strong>aliquip velit </strong>\nveniam reprehenderit aliqua. Do consectetur excepteur <em>voluptate </em>\nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n','John Doe','CraftCMS Tester',NULL,NULL,NULL,NULL,NULL),(15,31,1,'Components Playground','2020-09-18 22:52:43','2020-09-18 22:52:43','39e6fe11-438b-4b24-9bb8-74fc39b733fd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,37,1,'Components Playground','2020-09-18 23:01:30','2020-09-18 23:01:30','69f6b437-cb5b-4b93-9335-caa872c1a958',NULL,NULL,NULL,NULL,'<p>Elit consequat velit culpa cillum velit quis incididunt do dolore </p>\n<p>voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam </p>\n<p>esse.</p>','{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"<p>Elit consequat velit culpa cillum velit quis incididunt do dolore </p>\\r\\n<p>voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam </p>\\r\\n<p>esse.</p>\"},\"facebook\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"<p>Elit consequat velit culpa cillum velit quis incididunt do dolore </p>\\r\\n<p>voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam </p>\\r\\n<p>esse.</p>\"}},\"advanced\":{\"robots\":[],\"canonical\":null}}',NULL,NULL,NULL),(17,43,1,'Components Playground','2020-09-18 23:01:36','2020-09-18 23:01:36','1705f0bc-9475-465d-9844-727083e2280c',NULL,NULL,NULL,NULL,'<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p>','{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p>\"},\"facebook\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p>\"}},\"advanced\":{\"robots\":[],\"canonical\":null}}',NULL,NULL,NULL),(18,49,1,'Components Playground','2020-09-18 23:02:28','2020-09-18 23:02:28','2934be91-daaa-4ff6-b019-94c227cd62fe',NULL,NULL,NULL,NULL,'<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p>','{\"titleRaw\":[],\"descriptionRaw\":\"\",\"keywords\":[],\"score\":\"neutral\",\"social\":{\"twitter\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.\"},\"facebook\":{\"handle\":null,\"title\":\"Components Playground - JayCraft\",\"imageId\":null,\"description\":\"Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.\"}},\"advanced\":{\"robots\":[],\"canonical\":null}}',NULL,NULL,NULL);
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_cpnav_layout`
--

LOCK TABLES `craft_cpnav_layout` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_layout` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_cpnav_layout` VALUES (1,'Default',1,NULL,1,'2019-11-11 16:42:42','2020-09-13 20:58:25','eaecba95-0830-4740-9f54-bd68ef3c6896');
/*!40000 ALTER TABLE `craft_cpnav_layout` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_cpnav_navigation`
--

LOCK TABLES `craft_cpnav_navigation` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_navigation` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_cpnav_navigation` VALUES (1,1,'dashboard','Dashboard','Dashboard',1,1,'dashboard','dashboard','gauge',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:11','4535f7ad-0882-4ec2-866e-b5ec95a4c25c'),(2,1,'entries','Entries','Content',1,2,'entries','entries','section',NULL,'0',0,'2019-11-11 16:42:42','2020-09-18 22:28:15','fc473cae-426d-43ca-9d6d-d6485a1cd989'),(3,1,'tags','Tags','Tags',1,6,'tags','tags','tags',NULL,'0',0,'2019-11-11 16:42:42','2020-09-18 22:30:21','b187d8a1-9db4-41ce-8812-d3a45747272d'),(5,1,'seo','SEO','SEO',1,5,'seo','seo','globe',NULL,'0',0,'2019-11-11 16:42:42','2020-09-18 22:28:51','922826c0-96c6-449c-919b-74fea6d21ebd'),(6,1,'utilities','Utilities','Utilities',1,9,'utilities','utilities','tool',NULL,'0',0,'2019-11-11 16:42:42','2020-09-14 08:09:36','2c1139f5-70e3-4e70-ae29-b22083214363'),(7,1,'settings','Settings','Settings',1,8,'settings','settings','settings',NULL,'0',0,'2019-11-11 16:42:42','2020-09-14 08:10:07','465e36a1-3559-4f34-b839-245fb9e6d1f6'),(8,1,'plugin-store','Plugin Store','Plugin Store',1,10,'plugin-store','plugin-store','plugin',NULL,'0',0,'2019-11-11 16:42:42','2020-09-14 08:09:36','3a400182-e8ba-46ca-9d2e-854b9d0ade77'),(10,1,'siteDetails','Site details','Site details',1,4,'globals','globals','edit',NULL,'manual',0,'2020-09-13 21:30:02','2020-09-18 22:30:11','293ba1dc-10c8-45cc-9a1b-5798d3fc3993'),(11,1,'assets','Assets','Assets',1,3,'assets','assets','assets',NULL,'',0,'2020-09-14 08:08:31','2020-09-14 08:09:27','6c7233e4-b924-43a1-a4a6-6a34128eff82'),(12,1,'divider','Divider','Config',1,7,NULL,NULL,NULL,NULL,'divider',0,'2020-09-14 08:09:31','2020-09-14 08:11:02','1ac14732-8dfb-49d5-ad93-3f59a412d9b7');
/*!40000 ALTER TABLE `craft_cpnav_navigation` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_cpnav_pending_navigations`
--

LOCK TABLES `craft_cpnav_pending_navigations` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_pending_navigations` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_cpnav_pending_navigations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_craftidtokens`
--

LOCK TABLES `craft_craftidtokens` WRITE;
/*!40000 ALTER TABLE `craft_craftidtokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_deprecationerrors`
--

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_drafts`
--

LOCK TABLES `craft_drafts` WRITE;
/*!40000 ALTER TABLE `craft_drafts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_drafts` VALUES (1,NULL,1,'First draft','',0,NULL),(3,NULL,1,'First draft',NULL,0,NULL);
/*!40000 ALTER TABLE `craft_drafts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_elementindexsettings`
--

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_elementindexsettings` VALUES (1,'craft\\elements\\Entry','{\"sourceOrder\":[[\"key\",\"*\"],[\"heading\",\"Site\"],[\"key\",\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],[\"key\",\"section:b6dcff48-9906-46af-add1-70d94f8fa406\"],[\"heading\",\"\"],[\"key\",\"section:a69bd831-e1ab-4132-84fd-d36a262b6a46\"]],\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"type\",\"3\":\"postDate\",\"4\":\"link\"}},\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\":{\"tableAttributes\":{\"1\":\"type\",\"2\":\"link\"}},\"section:b6dcff48-9906-46af-add1-70d94f8fa406\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"link\"}},\"section:a69bd831-e1ab-4132-84fd-d36a262b6a46\":{\"tableAttributes\":{\"1\":\"field:12\",\"2\":\"field:13\"}}}}','2020-09-18 22:52:11','2020-09-18 22:52:11','97129d9e-354d-4b88-8dfb-95256d6d275c'),(2,'ether\\tagManager\\elements\\Tag','{\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"group\"}}}}','2020-09-19 11:22:02','2020-09-19 11:22:02','04a71ecf-4ff5-4a82-9579-eed139672532');
/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_elements`
--

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_elements` VALUES (1,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2019-11-11 14:08:20','2020-09-14 07:54:30',NULL,'acd97fb0-d20d-4ccb-a137-17698687e2d1'),(3,NULL,NULL,13,'craft\\elements\\Entry',1,0,'2019-11-11 15:37:40','2019-11-11 15:37:40',NULL,'f0b246f6-bb7c-49d4-a766-a79cdd8bf0e3'),(4,NULL,1,NULL,'craft\\elements\\Entry',1,0,'2019-11-11 15:37:40','2019-11-11 15:37:40',NULL,'2e6bddce-abeb-40e0-88d2-9adb4340d5ea'),(5,NULL,NULL,2,'craft\\elements\\GlobalSet',1,0,'2020-09-13 20:58:27','2020-09-20 09:17:42',NULL,'1e844348-5f0b-45bb-832f-4f9f9cf83e41'),(6,1,NULL,5,'craft\\elements\\Entry',1,0,'2020-09-18 22:10:05','2020-09-18 22:10:19',NULL,'c48819fe-ec80-4ee6-81ab-c1486469d9b1'),(7,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:10:11','2020-09-18 22:10:11','2020-09-18 22:10:13','20edf285-5e53-4efb-98b3-206bfd08a66d'),(8,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:10:13','2020-09-18 22:10:13','2020-09-18 22:10:17','65d7ce43-fc27-49a2-b7f9-b178dbc64bdc'),(9,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:10:17','2020-09-18 22:10:17','2020-09-18 22:10:20','69e9ceaf-6523-46b8-9678-a8721a6f650a'),(10,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:10:19','2020-09-18 22:10:19',NULL,'46b426ce-eab7-491d-909a-eaa3e10ef871'),(13,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2020-09-18 22:18:22','2020-09-18 23:02:28',NULL,'83a73dcf-f025-460f-98c0-c11cc7f2db29'),(14,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:18:22','2020-09-18 22:51:46',NULL,'367a3769-e426-4a6d-ae1a-f527379d7ccb'),(15,NULL,2,5,'craft\\elements\\Entry',1,0,'2020-09-18 22:18:22','2020-09-18 22:18:22',NULL,'8383d097-aa95-40c1-8156-47c50316f8bf'),(16,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:18:22','2020-09-18 22:18:22',NULL,'151c9530-ff32-4e6f-8e10-4c1eb9a6127e'),(18,NULL,NULL,9,'craft\\elements\\Entry',1,0,'2020-09-18 22:36:16','2020-09-18 22:52:03',NULL,'526d2e67-6dfd-4070-bb03-79b4acf0e6b5'),(19,NULL,3,9,'craft\\elements\\Entry',1,0,'2020-09-18 22:36:16','2020-09-18 22:36:16',NULL,'034b4dea-93b6-4b5f-8813-ebcb845581e1'),(20,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'da1f6c51-89ee-404c-a343-b689a3af6f1d'),(21,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'1382603b-37b4-4a4f-939d-415a6a543ff2'),(22,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'b79dad01-9c2a-4611-b3df-f8821562ca8c'),(23,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'6a61e6ad-330d-4b7b-a2c5-7dd75cbf92b3'),(24,NULL,4,5,'craft\\elements\\Entry',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'370f9a4d-2c33-4d08-98bc-358906d0c9db'),(25,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'3926fb99-8391-45de-9d3c-234beec670c5'),(26,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'ead77f71-3833-44c0-9833-2ff62c58d1a7'),(27,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'0d904117-20de-4474-95a6-98b4ee8f9f22'),(28,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'bdb69f08-cf24-4e28-bc6b-6ac49ce5b448'),(29,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:51:46','2020-09-18 22:51:46',NULL,'70fd9f96-6c20-4753-a4b6-da9877166fcc'),(30,NULL,5,9,'craft\\elements\\Entry',1,0,'2020-09-18 22:52:03','2020-09-18 22:52:03',NULL,'c40ee06b-49d9-4ac3-92ec-f0b04da3d81d'),(31,NULL,6,5,'craft\\elements\\Entry',1,0,'2020-09-18 22:52:42','2020-09-18 22:52:42',NULL,'1fb19b94-eaec-44a7-b8df-05df8b4cea0e'),(32,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:52:43','2020-09-18 22:51:46',NULL,'2e96ea76-e8e4-406a-8ced-c669e1afabc5'),(33,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:52:43','2020-09-18 22:51:46',NULL,'55411828-4fdb-4d2c-8441-70fcf4ba56bc'),(34,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:52:43','2020-09-18 22:51:46',NULL,'add0b1de-1ebc-444d-8ca0-372d99b9a3c4'),(35,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 22:52:43','2020-09-18 22:51:46',NULL,'7b114428-9316-47c2-9ee1-0036510a3900'),(36,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 22:52:43','2020-09-18 22:51:46',NULL,'8fbee195-41e4-4666-8097-c00c4e6d7cfb'),(37,NULL,7,5,'craft\\elements\\Entry',1,0,'2020-09-18 23:01:30','2020-09-18 23:01:30',NULL,'2ee105af-9c1a-492e-a291-2d66e4b192bd'),(38,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:30','2020-09-18 22:51:46',NULL,'175d7d21-99aa-499e-855b-55d4660f9e72'),(39,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:30','2020-09-18 22:51:46',NULL,'89e1afe4-2bbb-491f-84f4-a6e7385333d5'),(40,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:01:30','2020-09-18 22:51:46',NULL,'ce4844cc-7471-44d2-80c3-0816635c4b33'),(41,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:01:30','2020-09-18 22:51:46',NULL,'bd06344f-5f6c-4ac0-866c-f702d96891f1'),(42,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:30','2020-09-18 22:51:46',NULL,'57da497a-87d1-4ff3-a7c3-ea1f1a478a9d'),(43,NULL,8,5,'craft\\elements\\Entry',1,0,'2020-09-18 23:01:36','2020-09-18 23:01:36',NULL,'1759343a-65e6-42d8-a37b-383fb3ab0301'),(44,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:36','2020-09-18 22:51:46',NULL,'c2482eef-4b25-4deb-ac29-bbd5314948fe'),(45,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:36','2020-09-18 22:51:46',NULL,'91744994-4876-4a87-8549-0865a3c817d8'),(46,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:01:36','2020-09-18 22:51:46',NULL,'5001784c-621a-46c2-a43b-25847e9df774'),(47,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:01:36','2020-09-18 22:51:46',NULL,'a992a70f-82c9-4f82-ae2e-88b42994dc70'),(48,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:01:36','2020-09-18 22:51:46',NULL,'5d8dae63-46f4-4358-9afc-754b009a8e81'),(49,NULL,9,5,'craft\\elements\\Entry',1,0,'2020-09-18 23:02:28','2020-09-18 23:02:28',NULL,'1eb6395b-d536-4b12-ac06-a008cbda6617'),(50,NULL,NULL,4,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:02:28','2020-09-18 22:51:46',NULL,'53b85770-6831-4776-98a6-5aba50d1e880'),(51,NULL,NULL,6,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:02:28','2020-09-18 22:51:46',NULL,'926ce935-6ac3-4614-9e18-11d27a032e20'),(52,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:02:28','2020-09-18 22:51:46',NULL,'e465fa25-6c1e-4fcb-8805-453f1d1571e8'),(53,NULL,NULL,7,'verbb\\supertable\\elements\\SuperTableBlockElement',1,0,'2020-09-18 23:02:28','2020-09-18 22:51:46',NULL,'5c36d74a-4bc0-4f27-9171-0139bbf089bf'),(54,NULL,NULL,8,'craft\\elements\\MatrixBlock',1,0,'2020-09-18 23:02:28','2020-09-18 22:51:46',NULL,'2e938616-a64a-48bf-8264-434282547030'),(55,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2020-09-19 14:52:52','2020-09-20 09:17:42',NULL,'4acf5b72-817f-418c-bee5-61ae2aaf2f45'),(56,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2020-09-19 14:52:52','2020-09-20 09:17:42',NULL,'898ac008-f1c9-4251-ac45-a3846b6a5b04');
/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_elements_sites`
--

LOCK TABLES `craft_elements_sites` WRITE;
/*!40000 ALTER TABLE `craft_elements_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_elements_sites` VALUES (1,1,1,NULL,NULL,1,'2019-11-11 14:08:20','2019-11-11 14:08:20','0d38a93d-72a6-4a22-8b4b-b85911eea105'),(3,3,1,'__home__','__home__',1,'2019-11-11 15:37:40','2019-11-11 15:37:41','cbd24c0e-bf96-4342-a627-004d1fe7453e'),(4,4,1,'__home__','__home__',1,'2019-11-11 15:37:40','2019-11-11 15:37:40','84479acc-0ee6-4b82-b25f-0802cd6cee99'),(5,5,1,NULL,NULL,1,'2020-09-13 20:58:27','2020-09-13 20:58:27','7ebabc6c-e9de-44eb-9f32-c3c8f2cb4605'),(6,6,1,'components','components',1,'2020-09-18 22:10:05','2020-09-18 22:10:09','bd7cfead-4926-4712-aa93-181577c45876'),(7,7,1,NULL,NULL,1,'2020-09-18 22:10:11','2020-09-18 22:10:11','32d7aa7d-32d0-4155-b810-c305959d49c7'),(8,8,1,NULL,NULL,1,'2020-09-18 22:10:13','2020-09-18 22:10:13','95600da2-b2bc-4cb9-b9f5-8b7735f9d161'),(9,9,1,NULL,NULL,1,'2020-09-18 22:10:17','2020-09-18 22:10:17','1e77ce37-cf9c-4662-beaa-a71e8677e8c7'),(10,10,1,NULL,NULL,1,'2020-09-18 22:10:19','2020-09-18 22:10:19','f829c45e-02fe-4cf1-b09d-177f30f6a5bc'),(13,13,1,'components-playground','components-playground',1,'2020-09-18 22:18:22','2020-09-18 22:18:23','0f26ec71-cb90-443c-81c5-1482f0acf9c8'),(14,14,1,NULL,NULL,1,'2020-09-18 22:18:22','2020-09-18 22:18:22','180ac502-4c93-41af-a086-db1c206d2a56'),(15,15,1,'components-playground','components-playground',1,'2020-09-18 22:18:22','2020-09-18 22:18:22','0d746fc0-3eae-43eb-8060-2e756cd45afd'),(16,16,1,NULL,NULL,1,'2020-09-18 22:18:22','2020-09-18 22:18:22','3ee41093-8eb5-4aaf-9f5b-77697fc521a9'),(18,18,1,'this-is-a-lovely-quote-from-a-client-how-nice',NULL,1,'2020-09-18 22:36:16','2020-09-18 22:36:16','2ff2990e-cead-47ff-9e7f-adc71eab6b0b'),(19,19,1,'this-is-a-lovely-quote-from-a-client-how-nice',NULL,1,'2020-09-18 22:36:16','2020-09-18 22:36:16','aba1ab2c-646c-4a30-9b89-7dc7ffffc3f3'),(20,20,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','217e8669-b448-48e0-9d6b-9179cdb65a57'),(21,21,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','8cb0164d-5064-4bee-bac7-68dd3c6735fc'),(22,22,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','167929ba-5671-469a-9b6a-e522897b862c'),(23,23,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','6929aacc-b0a7-43af-a019-a6fd470ac494'),(24,24,1,'components-playground','components-playground',1,'2020-09-18 22:51:46','2020-09-18 22:51:46','0a9b89ba-9e66-4fe0-85bd-41cf6821a1f0'),(25,25,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','6802e5a5-1a4a-456c-8a1d-2959ef64dfe9'),(26,26,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','c695bfff-5e06-46f5-831a-f810cbbc9f51'),(27,27,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','46879ff4-fd09-4100-9dda-177a77213db2'),(28,28,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','8856c3c9-7975-4e3f-925e-90d2e1817d16'),(29,29,1,NULL,NULL,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','1bc1b5fc-b8e9-4bdb-829b-fd61ad3acc4b'),(30,30,1,'this-is-a-lovely-quote-from-a-client-how-nice',NULL,1,'2020-09-18 22:52:03','2020-09-18 22:52:03','a6d77f2a-6e51-4124-b80d-dc21bbd72944'),(31,31,1,'components-playground','components-playground',1,'2020-09-18 22:52:43','2020-09-18 22:52:43','3b54d5ba-f018-47a2-8487-b3cf2cca9c85'),(32,32,1,NULL,NULL,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','60c21192-354d-428e-a537-06e0bab5fc9a'),(33,33,1,NULL,NULL,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','20d7de3b-80ed-47cc-a671-69da07acc66b'),(34,34,1,NULL,NULL,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','fa6e4e5c-32f7-41a4-9385-5b795efc92e9'),(35,35,1,NULL,NULL,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','ae4aef23-1c61-4b50-b0cf-d62250936007'),(36,36,1,NULL,NULL,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','56971ade-0d5f-4a36-9a58-180495397e6f'),(37,37,1,'components-playground','components-playground',1,'2020-09-18 23:01:30','2020-09-18 23:01:30','53ac9b2d-0ae3-41fe-a124-d893730bb659'),(38,38,1,NULL,NULL,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','dc2969ef-082c-47d4-83d9-bfb604f45011'),(39,39,1,NULL,NULL,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','35dd9741-9762-4aa0-ac1f-cf59df57eb3b'),(40,40,1,NULL,NULL,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','e350e349-2aa9-40e5-9f4d-1c1795b31229'),(41,41,1,NULL,NULL,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','7d8e6d31-d516-4ce7-a02d-b173b875c02e'),(42,42,1,NULL,NULL,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','cc5887e4-2906-4716-aa6f-63f6b1080a53'),(43,43,1,'components-playground','components-playground',1,'2020-09-18 23:01:36','2020-09-18 23:01:36','8fa95f3a-c6c3-4363-92ef-d279b30feaea'),(44,44,1,NULL,NULL,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','c0c7d70c-44b1-4ce0-ab9c-078dd9f60880'),(45,45,1,NULL,NULL,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','a276f6c3-b8ae-4803-823e-a485dac51f4e'),(46,46,1,NULL,NULL,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','683d5965-ef74-401a-8091-d39911eb23df'),(47,47,1,NULL,NULL,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','0eeb4a15-2103-42aa-a314-bd285c1e0b57'),(48,48,1,NULL,NULL,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','9eea30d8-bb69-4137-ba5b-9fc98abb747d'),(49,49,1,'components-playground','components-playground',1,'2020-09-18 23:02:28','2020-09-18 23:02:28','12d41d76-2b46-4a0a-8888-a3f3f133a074'),(50,50,1,NULL,NULL,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','868c6d71-0041-4629-98ad-1b6da431858b'),(51,51,1,NULL,NULL,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','c160b3e2-2ff9-4433-80a0-d5bcbddb063f'),(52,52,1,NULL,NULL,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','0763f00e-cd58-41e6-8011-e11be145cc4d'),(53,53,1,NULL,NULL,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','de037b38-ca61-4e19-a5ed-3fd3170a2a21'),(54,54,1,NULL,NULL,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','d2acc1f3-1049-49c3-857e-7c46e87abbb8'),(55,55,1,NULL,NULL,1,'2020-09-19 14:52:52','2020-09-19 14:52:52','aba7bee5-bb0b-4c4e-aa4e-baef660ed2dc'),(56,56,1,NULL,NULL,1,'2020-09-19 14:52:52','2020-09-19 14:52:52','1da10f57-4a8e-4c46-b8ea-99c0919d1f09');
/*!40000 ALTER TABLE `craft_elements_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_entries`
--

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_entries` VALUES (3,1,NULL,2,1,'2019-11-11 15:37:00',NULL,NULL,'2019-11-11 15:37:40','2019-11-11 15:37:40','579222c2-0d78-4dc7-b271-12c656a37d46'),(4,1,NULL,2,1,'2019-11-11 15:37:00',NULL,NULL,'2019-11-11 15:37:40','2019-11-11 15:37:40','6263aa08-8f7e-4ef3-82c0-b55c74c62405'),(6,1,NULL,1,1,'2020-09-18 22:10:00',NULL,NULL,'2020-09-18 22:10:05','2020-09-18 22:10:05','68b1889e-330f-44d6-b15f-e214804f5886'),(13,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 22:18:22','2020-09-18 22:18:22','3f65cb9f-d514-4aa1-8587-24a291253497'),(15,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 22:18:22','2020-09-18 22:18:22','dd007be1-503c-44c5-ba1c-edebeca68e65'),(18,3,NULL,4,1,'2020-09-18 22:35:00',NULL,NULL,'2020-09-18 22:36:16','2020-09-18 22:36:16','83e3da3a-882b-40bd-8be5-05284f944f12'),(19,3,NULL,4,1,'2020-09-18 22:35:00',NULL,NULL,'2020-09-18 22:36:16','2020-09-18 22:36:16','f09f4dfa-4289-495b-92f1-2a97d6a1f4bd'),(24,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','733cc4f0-8e19-4dd8-928d-ef5d01cf4534'),(30,3,NULL,4,1,'2020-09-18 22:35:00',NULL,NULL,'2020-09-18 22:52:03','2020-09-18 22:52:03','a1b96c21-66e4-4bf6-afd5-6e2483ee3bea'),(31,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','12ce8b6e-c9ff-48d4-aac2-fc22201247a6'),(37,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','162eab8e-9580-4306-b034-2f1faea0a77b'),(43,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','c607e482-6636-4f47-a259-1b42d613d143'),(49,1,NULL,1,1,'2020-09-18 22:17:00',NULL,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','4397ce44-6f8d-4b57-8d73-f6bb8d2297f5');
/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_entrytypes`
--

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_entrytypes` VALUES (1,1,5,'Standard content','standardContent',1,'site',NULL,NULL,1,'2019-11-11 14:12:21','2020-09-18 22:09:56',NULL,'bcd353ce-367b-47be-853c-bf1f11d42dc0'),(2,1,13,'Homepage','homepage',1,'site',NULL,NULL,2,'2019-11-11 14:12:56','2020-09-18 22:57:08',NULL,'4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7'),(3,2,20,'News','news',1,'site',NULL,NULL,1,'2019-11-11 15:36:42','2020-09-19 12:48:28',NULL,'7e581873-0901-4b52-bc16-187532c325c6'),(4,3,9,'Testimonial','testimonial',0,'site',NULL,'{{ quote|length > 50 ? quote|striptags|slice(0, 50) ~ \'...\' : quote|striptags }}',1,'2020-09-18 22:27:02','2020-09-18 22:36:44',NULL,'d82b49ab-5de4-418b-9e09-c06bd0c6a494');
/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_fieldgroups`
--

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_fieldgroups` VALUES (1,'Globals','2019-11-11 14:08:20','2020-09-13 20:59:15','9d0976d6-6ff8-4790-9e75-5bb37d331d19'),(2,'Assets','2020-09-14 08:12:15','2020-09-14 08:12:15','792988f8-7d15-4596-8171-84de845b5608'),(3,'Content','2020-09-18 22:05:09','2020-09-18 22:05:09','be866704-e9e5-489a-94b0-c7763eec7317');
/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_fieldlayoutfields` VALUES (7,1,4,3,1,0,'2020-09-13 21:01:17','2020-09-13 21:01:17','b8bac71d-c1f2-4f76-88bc-c7db0f00ddb0'),(8,1,4,2,1,1,'2020-09-13 21:01:17','2020-09-13 21:01:17','8732f952-928b-4d8c-bdbf-c5b363b133d1'),(37,9,28,11,0,1,'2020-09-18 22:36:44','2020-09-18 22:36:44','99b63e2a-3d33-47cd-a8db-222f5ea76058'),(38,9,28,12,0,2,'2020-09-18 22:36:44','2020-09-18 22:36:44','232fcc5c-a64a-49b9-a056-298331c36a0e'),(39,9,28,13,0,3,'2020-09-18 22:36:44','2020-09-18 22:36:44','8f680e91-ea16-4d5d-a106-a26484d9f9d8'),(88,13,67,5,0,1,'2020-09-18 22:57:08','2020-09-18 22:57:08','af72c5a3-04fb-40ee-b844-33cfa25cf49d'),(89,13,68,18,0,0,'2020-09-18 22:57:08','2020-09-18 22:57:08','bd93d268-49b9-4aef-9585-642a4f6ebff0'),(118,3,98,4,1,1,'2020-09-19 11:16:27','2020-09-19 11:16:27','2d5ac3d4-7f0b-4747-bd82-3ed1b4a2c260'),(141,16,120,4,1,1,'2020-09-19 11:20:57','2020-09-19 11:20:57','f4710e0c-7369-4a26-8581-d8af32c47e8f'),(144,20,126,5,1,1,'2020-09-19 12:48:28','2020-09-19 12:48:28','130a9aa0-c6ff-4fc5-a402-e940cc1af43b'),(145,20,127,18,0,0,'2020-09-19 12:48:28','2020-09-19 12:48:28','bc791376-8121-42ef-aae8-661003fd66d4'),(146,20,128,19,0,0,'2020-09-19 12:48:28','2020-09-19 12:48:28','5cf4126e-6a88-47eb-ac3e-aad48e2e8630'),(147,5,129,5,1,1,'2020-09-19 12:49:15','2020-09-19 12:49:15','63d35335-88f1-4670-99d1-6153491c62cb'),(148,5,130,18,0,0,'2020-09-19 12:49:15','2020-09-19 12:49:15','ee64c43b-f07a-4d22-b7ad-3c464804f649'),(149,5,131,19,0,0,'2020-09-19 12:49:15','2020-09-19 12:49:15','540d5a6f-6273-4191-9f1c-a97a5af98552'),(150,7,132,8,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','2b76965d-40f0-4551-8c91-97acef1a0e18'),(151,7,132,9,1,1,'2020-09-19 12:49:52','2020-09-19 12:49:52','760f34ee-1317-466d-b793-e4ea156b03c3'),(152,6,133,7,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','71f4abf3-08aa-4f04-bfe5-92d9663fb60b'),(153,4,134,6,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','351ad247-c2de-472f-afe6-ab58dc5ebbb0'),(154,8,135,10,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','357b127c-f3b7-4782-aaf0-987ae41bd4a4'),(155,10,136,14,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','0ee55216-4eae-4afc-a08c-9ef8a4fb93a0'),(156,10,136,23,0,1,'2020-09-19 12:49:52','2020-09-19 12:49:52','7a56ba73-971e-463a-a709-32a7ee7f946e'),(157,11,137,15,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','01f11ccf-fa55-48eb-8f0e-6b75be0af9c6'),(158,11,137,16,0,1,'2020-09-19 12:49:52','2020-09-19 12:49:52','54f9f350-2379-45fd-9a8a-1f23be162eea'),(159,11,137,21,0,2,'2020-09-19 12:49:52','2020-09-19 12:49:52','a76b777a-80d1-4535-a143-1fe93031618a'),(160,12,138,17,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','9d13e840-6d0a-44b8-aee3-71fc704ff7ed'),(161,14,139,20,1,0,'2020-09-19 12:49:52','2020-09-19 12:49:52','64de87e7-6e04-4c34-a5f0-43fcceb1396d'),(168,21,143,28,1,0,'2020-09-19 20:49:11','2020-09-19 20:49:11','ffd7bdaf-cd6a-4885-8362-30dd5a9ec559'),(169,21,143,27,0,1,'2020-09-19 20:49:11','2020-09-19 20:49:11','883887e2-0d39-425c-9cce-8a679611ac33'),(172,2,145,29,0,0,'2020-09-19 20:57:48','2020-09-19 20:57:48','bbbf86a1-5eb9-4a07-93f4-afc9992e75e5'),(173,2,145,26,0,1,'2020-09-19 20:57:48','2020-09-19 20:57:48','2167ac38-ba42-4fcc-8b4e-fa57acce9ba2'),(174,2,146,25,0,0,'2020-09-19 20:57:48','2020-09-19 20:57:48','00c84bef-c3e9-4598-be13-fade9b5a8116'),(175,2,146,24,0,1,'2020-09-19 20:57:48','2020-09-19 20:57:48','aa232017-0950-41db-9f63-46076042ca8c'),(176,2,147,1,0,0,'2020-09-19 20:57:48','2020-09-19 20:57:48','2e034632-42d3-40b6-a8f5-f10562944d75'),(177,2,147,22,0,1,'2020-09-19 20:57:48','2020-09-19 20:57:48','73f136c3-ce94-440b-98ae-7d7ae65e7af9'),(178,22,148,30,1,0,'2020-09-20 09:15:15','2020-09-20 09:15:15','60773adf-0c26-40e1-910e-f926455af1d0'),(179,22,148,31,0,1,'2020-09-20 09:15:15','2020-09-20 09:15:15','d642bfeb-7193-43ae-b285-7c94f86b630a');
/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_fieldlayouts`
--

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_fieldlayouts` VALUES (1,'craft\\elements\\MatrixBlock','2020-09-13 21:00:42','2020-09-13 21:00:42',NULL,'87f55719-a8b5-4049-a529-246f86e3c86c'),(2,'craft\\elements\\GlobalSet','2020-09-13 21:01:31','2020-09-13 21:01:31',NULL,'8762c3d1-6cfc-4a3a-9590-3e15f33414e7'),(3,'craft\\elements\\Asset','2020-09-14 08:08:30','2020-09-14 08:08:30','2020-09-19 11:21:16','3f6879be-9c33-4de6-b8bb-ad22d1cb9abb'),(4,'craft\\elements\\MatrixBlock','2020-09-18 22:09:42','2020-09-18 22:09:42',NULL,'e61f8fbc-bd21-4a76-961f-3e14b6b432eb'),(5,'craft\\elements\\Entry','2020-09-18 22:09:56','2020-09-18 22:09:56',NULL,'a0754d49-f7b1-4b97-a267-f594af39a360'),(6,'craft\\elements\\MatrixBlock','2020-09-18 22:25:36','2020-09-18 22:25:36',NULL,'79798186-af3d-4f7d-9b37-62d7eceb2adf'),(7,'verbb\\supertable\\elements\\SuperTableBlockElement','2020-09-18 22:26:48','2020-09-18 22:26:48',NULL,'0e5757c1-b1e8-4754-b00e-d0f77bb47449'),(8,'craft\\elements\\MatrixBlock','2020-09-18 22:26:48','2020-09-18 22:26:48',NULL,'bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24'),(9,'craft\\elements\\Entry','2020-09-18 22:27:02','2020-09-18 22:27:02',NULL,'7a219a51-c790-425d-bc44-b45644449f70'),(10,'craft\\elements\\MatrixBlock','2020-09-18 22:39:18','2020-09-18 22:39:18',NULL,'d0e70e63-9251-4b8e-8944-f31af538c0e1'),(11,'craft\\elements\\MatrixBlock','2020-09-18 22:41:44','2020-09-18 22:41:44',NULL,'9db008b5-5d2f-4947-a621-566114dc4116'),(12,'craft\\elements\\MatrixBlock','2020-09-18 22:42:46','2020-09-18 22:42:46',NULL,'9784d67b-9217-4a82-8f71-1492976e4790'),(13,'craft\\elements\\Entry','2020-09-18 22:57:08','2020-09-18 22:57:08',NULL,'1a664073-2c8f-4679-94c3-f125c62aac3e'),(14,'craft\\elements\\MatrixBlock','2020-09-19 11:10:03','2020-09-19 11:10:03',NULL,'24d10f0a-7220-46c7-98d2-4c0818d07dbe'),(15,'craft\\elements\\Asset','2020-09-19 11:12:02','2020-09-19 11:12:02',NULL,'b2d91614-8e48-4d38-b024-d18f5c77ef09'),(16,'craft\\elements\\Asset','2020-09-19 11:12:39','2020-09-19 11:12:39',NULL,'887e33da-703c-497e-b41b-9e0d5c698243'),(17,'craft\\elements\\Asset','2020-09-19 11:13:22','2020-09-19 11:13:22',NULL,'8091885d-62d5-4e3e-b6a1-fbcd8133bebd'),(18,'craft\\elements\\Asset','2020-09-19 11:15:05','2020-09-19 11:15:05',NULL,'f0e978c1-1f16-45e0-b813-d205095fd302'),(19,'craft\\elements\\Asset','2020-09-19 11:21:39','2020-09-19 11:21:39',NULL,'2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b'),(20,'craft\\elements\\Entry','2020-09-19 12:48:28','2020-09-19 12:48:28',NULL,'d6c92853-2151-43f6-bde4-c6d430617786'),(21,'craft\\elements\\MatrixBlock','2020-09-19 20:48:52','2020-09-19 20:48:52',NULL,'80334c73-dfcf-4981-addc-d15f5cd7cba6'),(22,'craft\\elements\\MatrixBlock','2020-09-19 20:50:24','2020-09-19 20:50:24',NULL,'77357e29-d8f9-4383-b3b2-ead5fe80866d');
/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_fieldlayouttabs` VALUES (4,1,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"d29ea3e7-f083-4acc-a14f-9bd7e8d5edec\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"5e90386a-ba13-4916-b959-28901b19935f\"}]',1,'2020-09-13 21:01:17','2020-09-13 21:01:17','acd30582-ad1f-4ec0-affa-94d9ba0de593'),(28,9,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"39f8cfcf-152c-4306-b6ed-6d6493366cde\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"d16e6c1e-b44e-4cf8-aae2-6fa250b73706\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"39a3b015-426d-4a46-9c15-8676081b5a00\"}]',1,'2020-09-18 22:36:44','2020-09-18 22:36:44','6dd33435-e0dc-4d53-bb7c-5b1499ff7fff'),(67,13,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"}]',1,'2020-09-18 22:57:08','2020-09-18 22:57:08','75c321b3-badd-423a-a481-1847ec8aebbd'),(68,13,'Options','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"65332953-fec0-4f58-b96d-8297c3994640\"}]',2,'2020-09-18 22:57:08','2020-09-18 22:57:08','160642d2-d3dd-48ff-b0a8-8674e885af6d'),(98,3,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"0136bb82-6130-48c6-88cc-015d69da6199\"}]',1,'2020-09-19 11:16:27','2020-09-19 11:16:27','210c3237-cae4-46cf-bef8-9638966739ca'),(119,15,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2020-09-19 11:20:46','2020-09-19 11:20:46','6642cc8d-59c1-4126-95e6-8b55dcfe162e'),(120,16,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"0136bb82-6130-48c6-88cc-015d69da6199\"}]',1,'2020-09-19 11:20:57','2020-09-19 11:20:57','459e2d34-bc2d-4d06-87ec-f89bc16f8863'),(121,17,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2020-09-19 11:21:01','2020-09-19 11:21:01','7a8d2a52-6281-4686-aba3-e7da3fbe432a'),(122,18,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2020-09-19 11:21:05','2020-09-19 11:21:05','dc2599dc-53f8-43a9-bb60-3350e2bd58b1'),(123,19,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2020-09-19 11:21:39','2020-09-19 11:21:39','c9188d84-641b-46bb-9ad9-1f309a540d83'),(126,20,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"}]',1,'2020-09-19 12:48:28','2020-09-19 12:48:28','91f4b99b-4fd3-4355-b04a-c8aef5a5da5e'),(127,20,'Options','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"65332953-fec0-4f58-b96d-8297c3994640\"}]',2,'2020-09-19 12:48:28','2020-09-19 12:48:28','1bed4f7a-5a59-4854-9fb6-2ac0b5aa61d1'),(128,20,'SEO','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7fdd5aee-0781-486e-810f-9af57a6cd8ce\"}]',3,'2020-09-19 12:48:28','2020-09-19 12:48:28','3ae3e802-7abe-4394-abfe-7de3782273aa'),(129,5,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"}]',1,'2020-09-19 12:49:15','2020-09-19 12:49:15','de5535bf-3c98-43a1-9c5a-cae5079f2dd2'),(130,5,'Options','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"65332953-fec0-4f58-b96d-8297c3994640\"}]',2,'2020-09-19 12:49:15','2020-09-19 12:49:15','341159ad-9067-4454-ae0c-e946ae07a768'),(131,5,'SEO','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7fdd5aee-0781-486e-810f-9af57a6cd8ce\"}]',3,'2020-09-19 12:49:15','2020-09-19 12:49:15','a8a032cb-ab1b-4ddc-a57c-b4ee0707c3ae'),(132,7,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"1156f455-4e06-4ae7-9644-b41dfc286ac1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"1c00e1f6-a02c-4db7-b8db-22f55c91a4d2\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','7d17dd01-4fa5-45c7-8872-83c47835f2e7'),(133,6,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','82b70e55-a639-4e6b-a6c5-76404f708e2e'),(134,4,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"7d585825-db60-49fb-a08c-a267e26750a8\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','ba357864-9c4c-43e9-9adf-621dd3e33a80'),(135,8,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"b62350b6-c1a3-4da2-b568-927ce13fdfae\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','f1e345ba-11e0-4e08-afa5-64b33f3a4a83'),(136,10,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"16dcf610-573a-409e-b404-c4aafe8ea764\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"19d67a4c-90d7-4ae3-a367-e59f631af8d7\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','3387f0c1-8778-40e7-bda5-34332ea8e94d'),(137,11,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":50,\"fieldUid\":\"d5d7809c-23f4-4811-aac0-88ea44885cf1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"bbaa68dc-df36-42aa-a667-b5ee4f79fd6a\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','75d3eb9d-6cbf-40dc-a441-1f604e704481'),(138,12,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"d569c65b-2978-43ee-bbe9-724c8b6823d8\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','1364139b-e4a1-49a4-8db2-dece84344867'),(139,14,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"a8d65c69-c832-4301-902e-712b8221762f\"}]',1,'2020-09-19 12:49:52','2020-09-19 12:49:52','c79c1636-4f47-4f85-ab0e-bafe08f97473'),(143,21,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"c1c97c2a-a7cd-4751-bbb2-4d66a1e72294\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"81072bba-d351-4fb8-904b-dbe43b2eb1e8\"}]',1,'2020-09-19 20:49:11','2020-09-19 20:49:11','72e14329-bb37-4ce2-a70f-d8306c965aed'),(145,2,'Menus','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"37791995-fc9d-4977-9057-ad800dd1b735\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"639079df-d2e2-40b6-b2a2-2b528a89ec4e\"}]',1,'2020-09-19 20:57:48','2020-09-19 20:57:48','7e77610d-ab65-4f6e-ba9a-80a82d4a623a'),(146,2,'Business details','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"fb3be2e2-4f29-4954-867d-c4ab5dc55a9c\"}]',2,'2020-09-19 20:57:48','2020-09-19 20:57:48','93bedbf6-0cf7-41a5-aa40-b650628ea9a1'),(147,2,'Social media','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"4caee081-e90b-4ece-8d4a-8d67ab5b2928\"}]',3,'2020-09-19 20:57:48','2020-09-19 20:57:48','c96fa41b-ec09-4b8a-82f1-459e1da3721e'),(148,22,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"6d85fef4-37dc-4f7f-9262-4313c67f0860\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7b2d3a28-340a-4a61-b2e5-f55aea8a2595\"}]',1,'2020-09-20 09:15:15','2020-09-20 09:15:15','bf6bc567-a96c-4080-91ba-d7a39e6b7c55');
/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_fields`
--

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_fields` VALUES (1,1,'Social accounts','socialAccounts','global','Add social media accounts',0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_socialaccounts}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}','2020-09-13 21:00:41','2020-09-13 21:01:03','c32ae7fc-8956-4f92-a0c3-9d6560441ccd'),(2,NULL,'Account URL','accountUrl','matrixBlockType:99af3330-1bfc-43d0-a72c-fa1bb49f2328','Paste your account\'s full URL.',0,'none',NULL,'craft\\fields\\Url','{\"maxLength\":\"255\",\"placeholder\":\"\"}','2020-09-13 21:00:42','2020-09-13 21:00:42','5e90386a-ba13-4916-b959-28901b19935f'),(3,NULL,'Account','account','matrixBlockType:99af3330-1bfc-43d0-a72c-fa1bb49f2328','Select which account you\'d like to add.',0,'none',NULL,'craft\\fields\\Dropdown','{\"optgroups\":true,\"options\":[{\"label\":\"Instagram\",\"value\":\"instagram\",\"default\":\"\"},{\"label\":\"Facebook\",\"value\":\"facebook\",\"default\":\"\"},{\"label\":\"LinkedIn\",\"value\":\"linkedin\",\"default\":\"\"},{\"label\":\"Pinterest\",\"value\":\"pinterest\",\"default\":\"\"},{\"label\":\"Twitter\",\"value\":\"twitter\",\"default\":\"\"},{\"label\":\"YouTube\",\"value\":\"youtube\",\"default\":\"\"}]}','2020-09-13 21:00:42','2020-09-13 21:00:42','d29ea3e7-f083-4acc-a14f-9bd7e8d5edec'),(4,2,'Alt text','altText','global','Image alternative text. Describe the image, don\'t name it. e.g. \"Two people talking over a laptop\"',1,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-14 08:12:59','2020-09-14 08:12:59','0136bb82-6130-48c6-88cc-015d69da6199'),(5,3,'Page components','pageComponents','global','Build your page with these elements.',1,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_pagecomponents}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}','2020-09-18 22:09:42','2020-09-18 22:32:19','989f6b5c-82cf-4a15-aa85-fe9b821cee4b'),(6,NULL,'Body','body','matrixBlockType:9cb9df85-b6be-4d7a-aead-d945ae98a3bd','',0,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Standard.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2020-09-18 22:09:42','2020-09-18 22:19:14','7d585825-db60-49fb-a08c-a267e26750a8'),(7,NULL,'Accordions','accordions','matrixBlockType:09d9d59b-b42f-410e-985b-2a5442f37f3f','Add multiple accordions.',0,'site',NULL,'verbb\\supertable\\fields\\SuperTableField','{\"columns\":{\"1156f455-4e06-4ae7-9644-b41dfc286ac1\":{\"width\":\"\"},\"1c00e1f6-a02c-4db7-b8db-22f55c91a4d2\":{\"width\":\"\"}},\"contentTable\":\"{{%stc_3_accordions}}\",\"fieldLayout\":\"row\",\"maxRows\":\"\",\"minRows\":\"\",\"placeholderKey\":null,\"propagationMethod\":\"all\",\"selectionLabel\":\"\",\"staticField\":\"\"}','2020-09-18 22:25:36','2020-09-18 22:32:19','a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec'),(8,NULL,'Heading','heading','superTableBlockType:ebe29a60-6556-4cc8-9b8e-49e11b5d5921','',1,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-18 22:26:48','2020-09-18 22:26:48','1156f455-4e06-4ae7-9644-b41dfc286ac1'),(9,NULL,'Body','body','superTableBlockType:ebe29a60-6556-4cc8-9b8e-49e11b5d5921','',1,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Standard.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2020-09-18 22:26:48','2020-09-18 22:26:48','1c00e1f6-a02c-4db7-b8db-22f55c91a4d2'),(10,NULL,'Testimonial','testimonial','matrixBlockType:7377fb26-3cff-499d-9470-d196abc5f049','Select a testimonial',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"Add a testimonial\",\"showSiteMenu\":true,\"source\":null,\"sources\":[\"section:a69bd831-e1ab-4132-84fd-d36a262b6a46\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2020-09-18 22:26:48','2020-09-18 22:38:08','b62350b6-c1a3-4da2-b568-927ce13fdfae'),(11,3,'Quote','quote','global','Note: do not add speech marks, these are handled in the template.',1,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Simple.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2020-09-18 22:30:58','2020-09-18 22:37:19','39f8cfcf-152c-4306-b6ed-6d6493366cde'),(12,3,'Name','testimonialName','global','Who is this testimonial from?',1,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-18 22:31:20','2020-09-18 22:32:32','d16e6c1e-b44e-4cf8-aae2-6fa250b73706'),(13,3,'Role','role','global','What is their position to make their testimonial relevant?',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-18 22:32:05','2020-09-18 22:32:05','39a3b015-426d-4a46-9c15-8676081b5a00'),(14,NULL,'Images','images','matrixBlockType:c3308227-9abe-4262-9b0a-ce782692ae77','Limit of eight.',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"8\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add an image\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-18 22:39:18','2020-09-19 11:17:59','16dcf610-573a-409e-b404-c4aafe8ea764'),(15,NULL,'MP4','mp4','matrixBlockType:509bddad-7391-49e8-8e95-734bb97c6f37','Upload an MP4 video file.',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":[\"video\"],\"defaultUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add an MP4 file\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-18 22:41:44','2020-09-19 11:17:59','d5d7809c-23f4-4811-aac0-88ea44885cf1'),(16,NULL,'WebM','webm','matrixBlockType:509bddad-7391-49e8-8e95-734bb97c6f37','Upload a WebM video file.',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":[\"video\"],\"defaultUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add a WebM file\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-18 22:41:44','2020-09-19 12:49:52','fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a'),(17,NULL,'External video','externalVideo','matrixBlockType:86c871b7-5067-4489-9782-858bcb6e530a','Upload a video from YouTube or Vimeo.',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":[\"json\",\"video\"],\"defaultUploadLocationSource\":\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Embed a video\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-18 22:42:46','2020-09-19 11:17:59','d569c65b-2978-43ee-bbe9-724c8b6823d8'),(18,3,'Page description','pageDescription','global','',1,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Simple.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2020-09-18 22:56:31','2020-09-19 11:40:06','65332953-fec0-4f58-b96d-8297c3994640'),(19,3,'Page SEO','pageSeo','global','',0,'none',NULL,'ether\\seo\\fields\\SeoField','{\"description\":\"{pageDescription|striptags}\",\"hideSocial\":\"\",\"robots\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"socialImage\":\"\",\"suffixAsPrefix\":null,\"title\":[{\"key\":\"1\",\"locked\":\"0\",\"template\":\"{title}\"},{\"key\":\"2\",\"locked\":\"1\",\"template\":\" - {{ siteName }}\"}],\"titleSuffix\":null}','2020-09-18 23:00:50','2020-09-18 23:01:58','7fdd5aee-0781-486e-810f-9af57a6cd8ce'),(20,NULL,'Audio','audio','matrixBlockType:cb6bce8b-a201-4cf8-a17a-7bf7729ba35d','Upload an audio file.',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":[\"audio\"],\"defaultUploadLocationSource\":\"volume:d9c51571-b4e8-40c9-abaf-dab181ce75bf\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add an audio file\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:d9c51571-b4e8-40c9-abaf-dab181ce75bf\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-19 11:10:03','2020-09-19 12:49:52','a8d65c69-c832-4301-902e-712b8221762f'),(21,NULL,'Poster image','posterImage','matrixBlockType:509bddad-7391-49e8-8e95-734bb97c6f37','',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"Add an image\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2020-09-19 11:18:51','2020-09-19 12:49:52','bbaa68dc-df36-42aa-a667-b5ee4f79fd6a'),(22,1,'Tags','tags','global','Hashtags included in any Twitter, Facebook or LinkedIn share features.',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-19 11:29:22','2020-09-19 11:29:22','4caee081-e90b-4ece-8d4a-8d67ab5b2928'),(23,NULL,'Description','description','matrixBlockType:c3308227-9abe-4262-9b0a-ce782692ae77','Describe this image/these images.',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-19 12:49:52','2020-09-19 12:49:52','19d67a4c-90d7-4ae3-a367-e59f631af8d7'),(24,1,'Contact phone','contactPhone','global','',1,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-19 20:43:19','2020-09-19 20:46:10','fb3be2e2-4f29-4954-867d-c4ab5dc55a9c'),(25,1,'Contact email','contactEmail','global','',1,'none',NULL,'craft\\fields\\Email','{\"placeholder\":\"\"}','2020-09-19 20:43:32','2020-09-19 20:46:04','4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906'),(26,1,'Utility menu','utilityMenu','global','List of pages to show in the footer, such as legal pages.',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"6\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":[\"section:b6dcff48-9906-46af-add1-70d94f8fa406\",\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2020-09-19 20:48:51','2020-09-20 09:16:14','639079df-d2e2-40b6-b2a2-2b528a89ec4e'),(27,NULL,'Rename','rename','matrixBlockType:c71aed7a-246a-4bc4-8dcd-515b5061c19b','If the menu requires a custom title.',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-19 20:48:52','2020-09-19 20:48:52','81072bba-d351-4fb8-904b-dbe43b2eb1e8'),(28,NULL,'Entry','entry','matrixBlockType:c71aed7a-246a-4bc4-8dcd-515b5061c19b','Select the page to list in the menu.',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":[\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2020-09-19 20:48:52','2020-09-19 20:48:52','c1c97c2a-a7cd-4751-bbb2-4d66a1e72294'),(29,1,'Main menu','mainMenu','global','List of pages to show in the main site navigation. Maximum of seven for user experience purposes. If a menu is not set, the pages from \"Site\" will display.',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"7\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":[\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2020-09-19 20:50:24','2020-09-20 09:15:56','37791995-fc9d-4977-9057-ad800dd1b735'),(30,NULL,'Entry','entry','matrixBlockType:4849af96-fd87-43af-95d9-d4879454573f','Select the page to list in the menu.',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":[\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2020-09-19 20:50:24','2020-09-19 20:50:24','6d85fef4-37dc-4f7f-9262-4313c67f0860'),(31,NULL,'Rename','rename','matrixBlockType:4849af96-fd87-43af-95d9-d4879454573f','If the menu item requires a custom title.',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}','2020-09-19 20:50:24','2020-09-19 20:50:24','7b2d3a28-340a-4a61-b2e5-f55aea8a2595');
/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_globalsets`
--

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_globalsets` VALUES (5,'Site details','siteDetails',2,'2020-09-13 20:58:27','2020-09-13 21:01:31','1e844348-5f0b-45bb-832f-4f9f9cf83e41');
/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_gqlschemas`
--

LOCK TABLES `craft_gqlschemas` WRITE;
/*!40000 ALTER TABLE `craft_gqlschemas` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_gqltokens`
--

LOCK TABLES `craft_gqltokens` WRITE;
/*!40000 ALTER TABLE `craft_gqltokens` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_gqltokens` VALUES (1,'Public Token','__PUBLIC__',0,NULL,NULL,NULL,'2020-09-13 20:56:53','2020-09-13 20:56:53','da665815-5799-4c58-b474-75eb5c11468c');
/*!40000 ALTER TABLE `craft_gqltokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_info`
--

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_info` VALUES (1,'3.5.11.1','3.5.13',0,'dntskxrutmuf','nsslahjbxdau','2019-11-11 14:08:20','2020-09-20 09:16:14','1d4d6615-1374-477c-9f8d-61cfb45b0f0f');
/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixblocks`
--

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_matrixblocks` VALUES (7,6,5,2,1,0,'2020-09-18 22:10:11','2020-09-18 22:10:11','e7687420-951e-40fc-a118-92c55ca2e485'),(8,6,5,2,1,0,'2020-09-18 22:10:13','2020-09-18 22:10:13','e4cbe360-335b-433c-beeb-4d8057651f5e'),(9,6,5,2,1,0,'2020-09-18 22:10:17','2020-09-18 22:10:17','222305e4-0b75-4417-a791-707cbdcd50f6'),(10,6,5,2,1,NULL,'2020-09-18 22:10:20','2020-09-18 22:10:20','7d6d5d66-2d5f-4729-9a17-d38eb9dbb67e'),(14,13,5,2,1,NULL,'2020-09-18 22:18:22','2020-09-18 22:18:22','eda732fc-170c-471b-8590-c53a69c8f61c'),(16,15,5,2,1,NULL,'2020-09-18 22:18:22','2020-09-18 22:18:22','e2c6dfd6-4153-459c-93d5-6502d8af24cb'),(20,13,5,3,2,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','15f2c777-c8a2-4be6-9561-d558aae75779'),(23,13,5,4,3,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','61b7741c-e846-4668-9434-586922f6839d'),(25,24,5,2,1,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','adc41d98-0f95-4afe-a1c2-56536f26dc28'),(26,24,5,3,2,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','54af2f3e-8596-4f4c-a768-a15289512d5a'),(29,24,5,4,3,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','577dc043-ef4c-4d39-b8cc-052932d455b1'),(32,31,5,2,1,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','7a3412c1-54bb-4db1-aac0-d46e3b1433ec'),(33,31,5,3,2,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','6fe7c0fd-44ae-414a-b6a2-2636b0187116'),(36,31,5,4,3,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','bce2042b-5788-4871-9a21-eed6d66d6e5c'),(38,37,5,2,1,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','a471bdc3-22a0-43c1-ab7e-636e4c13f94a'),(39,37,5,3,2,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','811847e3-eeef-4e2e-96ec-c5bba76b8fe3'),(42,37,5,4,3,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','a0ef9ffd-d7e0-404e-81ae-9013a23865a4'),(44,43,5,2,1,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','9d98ff3f-043b-4184-b0ac-db688fc4ceef'),(45,43,5,3,2,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','93a517eb-f1d1-468c-909c-3c9dd17c75d2'),(48,43,5,4,3,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','bddbe2e2-7d75-4ca3-984d-54273679ea3a'),(50,49,5,2,1,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','bdd32984-92eb-44fb-8c7c-5a2f4f7e1052'),(51,49,5,3,2,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','86eab9f5-9dde-47d8-8c0d-c7f118c00dcb'),(54,49,5,4,3,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','cc34fdde-642c-48d9-a3fb-c951aaa73558'),(55,5,1,1,1,NULL,'2020-09-19 14:52:52','2020-09-19 14:52:52','4960d761-394a-4417-a3f9-f8a4609915a2'),(56,5,1,1,2,NULL,'2020-09-19 14:52:52','2020-09-19 14:52:52','4b2981a8-98cd-4415-a82a-aad211779baa');
/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixblocktypes`
--

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_matrixblocktypes` VALUES (1,1,1,'Account','account',1,'2020-09-13 21:00:42','2020-09-13 21:00:42','99af3330-1bfc-43d0-a72c-fa1bb49f2328'),(2,5,4,'Body','body',2,'2020-09-18 22:09:42','2020-09-18 22:39:18','9cb9df85-b6be-4d7a-aead-d945ae98a3bd'),(3,5,6,'Accordions','accordions',1,'2020-09-18 22:25:36','2020-09-18 22:39:17','09d9d59b-b42f-410e-985b-2a5442f37f3f'),(4,5,8,'Testimonial','testimonial',3,'2020-09-18 22:26:48','2020-09-18 22:26:48','7377fb26-3cff-499d-9470-d196abc5f049'),(5,5,10,'Images','images',4,'2020-09-18 22:39:18','2020-09-18 22:39:18','c3308227-9abe-4262-9b0a-ce782692ae77'),(6,5,11,'Video','video',5,'2020-09-18 22:41:44','2020-09-18 22:41:44','509bddad-7391-49e8-8e95-734bb97c6f37'),(7,5,12,'External video','externalVideo',6,'2020-09-18 22:42:46','2020-09-18 22:42:46','86c871b7-5067-4489-9782-858bcb6e530a'),(8,5,14,'Audio','audio',7,'2020-09-19 11:10:03','2020-09-19 11:10:03','cb6bce8b-a201-4cf8-a17a-7bf7729ba35d'),(9,26,21,'Menu item','menuItem',1,'2020-09-19 20:48:52','2020-09-19 20:48:52','c71aed7a-246a-4bc4-8dcd-515b5061c19b'),(10,29,22,'Menu item','menuItem',1,'2020-09-19 20:50:24','2020-09-19 20:50:24','4849af96-fd87-43af-95d9-d4879454573f');
/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixcontent_mainmenu`
--

LOCK TABLES `craft_matrixcontent_mainmenu` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_mainmenu` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_matrixcontent_mainmenu` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixcontent_pagecomponents`
--

LOCK TABLES `craft_matrixcontent_pagecomponents` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_pagecomponents` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_matrixcontent_pagecomponents` VALUES (1,7,1,'2020-09-18 22:10:11','2020-09-18 22:10:11','e807d495-dbc5-4afc-9987-a0a515273b0f',NULL,NULL),(2,8,1,'2020-09-18 22:10:13','2020-09-18 22:10:13','e37debd6-a02b-43a5-b7d7-ba6f6e71d9df','<p>A </p>',NULL),(3,9,1,'2020-09-18 22:10:17','2020-09-18 22:10:17','435dfd00-f134-464e-98a9-53be54b5f38d','<p>A page to show off all </p>',NULL),(4,10,1,'2020-09-18 22:10:20','2020-09-18 22:10:20','9355069c-21a9-421f-a65d-7f71f256eae0','<p>A page to show off all the components available.</p>',NULL),(6,14,1,'2020-09-18 22:18:22','2020-09-18 22:51:46','53b00de4-9a66-4240-bb63-7d6a22fbb402','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(7,16,1,'2020-09-18 22:18:22','2020-09-18 22:18:22','019007b9-4b10-4c17-ad7c-4d496a9027fb','<p>This is the body</p>',NULL),(8,20,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','267e63c7-98e7-45d3-96d0-3cb170063ccd',NULL,NULL),(9,23,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','a8d78338-7d41-41d1-b296-fa1f4e054f96',NULL,NULL),(10,25,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','7a837737-e79c-4ebc-bdb9-ac9a5d8d2b4f','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(11,26,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','8981e8ac-b09b-4d9b-8b1d-d2f1cb242dc9',NULL,NULL),(12,29,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','844e43b7-f056-469c-801d-0d8560b6d273',NULL,NULL),(13,32,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','2b2392f2-d6a5-46df-858b-f6cc03ed91b0','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(14,33,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','cfb085d6-c54d-4869-8aed-af317317024b',NULL,NULL),(15,36,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','df616ca0-d870-4f8f-9e29-d01307be0dce',NULL,NULL),(16,38,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','f5bec4a5-c9f0-4d82-a337-fd1e5b71e08c','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(17,39,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','82c87926-d328-493d-bc7b-ac43282e2346',NULL,NULL),(18,42,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','c97b1ead-c626-46a5-a0b2-60ef7e7db1ed',NULL,NULL),(19,44,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','bfb22a6c-28f5-46aa-91f1-cf2b20559add','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(20,45,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','fe91a0bf-0850-460b-a035-387d6d4f3208',NULL,NULL),(21,48,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','374ef983-e391-4968-81af-76c08f2d4546',NULL,NULL),(22,50,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','c579656f-7812-427f-b5a6-a7c80bcf8957','<p>Non minim non aute ipsum minim ipsum. <strong>Exercitation</strong> commodo <em>ullamco</em> proident dolor consectetur sit. <a href=\"{entry:3@1:url||https://local.jaycraft.com/}\">Dolor eiusmod</a> est minim qui sit id.</p><ol><li>Id duis aliqua quis esse qui sunt mollit.</li><li>Laborum sunt mollit minim esse sint dolor pariatur do excepteur excepteur ipsum consequat cillum.</li><li>Velit nostrud ipsum proident elit nostrud ex non dolore non ullamco nulla.</li><li>Ullamco pariatur ea qui et adipisicing id.</li></ol><h3>Heading</h3>\n<p>Elit consequat velit culpa cillum velit quis incididunt do dolore voluptate. Cupidatat et eu voluptate consequat cillum occaecat veniam esse.</p><ul><li>Voluptate id ut eu irure ex ipsum incididunt ad officia sint aliqua pariatur aliquip dolore.</li><li>Aliquip id Lorem enim elit duis occaecat pariatur labore nulla ipsum.</li><li>Id cillum non aliquip id.</li><li>Non sint consequat duis excepteur fugiat amet.</li></ul><h4>Subheading</h4>\n<p>Esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua. Do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu.</p><blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>',NULL),(23,51,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','5d6c6f54-a1f6-4429-9475-ec9229dbd4f3',NULL,NULL),(24,54,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','7f92cc30-c060-44d3-9569-7d9433ab9c21',NULL,NULL);
/*!40000 ALTER TABLE `craft_matrixcontent_pagecomponents` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixcontent_socialaccounts`
--

LOCK TABLES `craft_matrixcontent_socialaccounts` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_socialaccounts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_matrixcontent_socialaccounts` VALUES (1,55,1,'2020-09-19 14:52:52','2020-09-20 09:17:42','4bb95863-9273-4c62-8e37-477f11ef3727','https://instagram.com','instagram'),(2,56,1,'2020-09-19 14:52:52','2020-09-20 09:17:42','af270a97-9fd5-45bc-8b7d-05649b634fe9','https://facebook.com','facebook');
/*!40000 ALTER TABLE `craft_matrixcontent_socialaccounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_matrixcontent_utilitymenu`
--

LOCK TABLES `craft_matrixcontent_utilitymenu` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_utilitymenu` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_matrixcontent_utilitymenu` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_migrations`
--

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_migrations` VALUES (1,'craft','Install','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','162bc375-8680-4f95-9e33-3e25e256cb92'),(2,'craft','m150403_183908_migrations_table_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3984d017-57d7-48c0-9566-b626ae30c652'),(3,'craft','m150403_184247_plugins_table_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d1a4569d-a34f-4cbd-958a-a389bfd06d94'),(4,'craft','m150403_184533_field_version','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b48c86c5-821b-4694-a272-f2a0d5c4a582'),(5,'craft','m150403_184729_type_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','09500259-0408-4df3-8a20-ca4499e0c41b'),(6,'craft','m150403_185142_volumes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1812f1c1-b569-42a4-8772-ea84d0e44d98'),(7,'craft','m150428_231346_userpreferences','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3125ec2f-b5fe-41ef-b2d2-aac80a045bbd'),(8,'craft','m150519_150900_fieldversion_conversion','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','677c7664-14f8-4609-8ab8-353044a69a20'),(9,'craft','m150617_213829_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4675e591-a8c0-4181-84c0-9e9a9c3ff0f0'),(10,'craft','m150721_124739_templatecachequeries','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','25af9d61-d1ad-4c6a-90c1-dcc3134f5e57'),(11,'craft','m150724_140822_adjust_quality_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c8c9154b-247e-4958-ad36-78dbd7bba160'),(12,'craft','m150815_133521_last_login_attempt_ip','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1775d367-b670-45ff-bf08-d0b4ecffc761'),(13,'craft','m151002_095935_volume_cache_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e7db89f4-fac5-4bd1-b615-a2fcf7f1fc30'),(14,'craft','m151005_142750_volume_s3_storage_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','83e795e1-5d74-4928-aeb8-cbb3628c0f12'),(15,'craft','m151016_133600_delete_asset_thumbnails','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','40f9c527-abd4-4101-96bf-282062a6af2c'),(16,'craft','m151209_000000_move_logo','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e73b466b-8d46-48d9-85fa-458647c972bc'),(17,'craft','m151211_000000_rename_fileId_to_assetId','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ffa16c1d-2da3-4dd0-8115-545dd50c4662'),(18,'craft','m151215_000000_rename_asset_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ae7f0b86-ab06-4d48-974c-56bf64595a27'),(19,'craft','m160707_000001_rename_richtext_assetsource_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7b6fcbc7-6889-4f9b-8841-726d07cf2453'),(20,'craft','m160708_185142_volume_hasUrls_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ce74d71f-e46f-4882-85da-091aca2667fd'),(21,'craft','m160714_000000_increase_max_asset_filesize','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c69d460e-c756-4727-8b91-f723aef5833e'),(22,'craft','m160727_194637_column_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','20d39cad-c5c2-484f-b4a1-60d970f970aa'),(23,'craft','m160804_110002_userphotos_to_assets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bb7addf3-100e-4f9a-bac2-ea0f2f981078'),(24,'craft','m160807_144858_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b391b83c-6321-4c10-a4e2-7ae634eea7d5'),(25,'craft','m160829_000000_pending_user_content_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','de8f8099-0666-441f-8a8b-f9202b3081b3'),(26,'craft','m160830_000000_asset_index_uri_increase','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c337c118-fa1e-4fa0-980a-cbf8f0bd5bdd'),(27,'craft','m160912_230520_require_entry_type_id','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','16244f29-8e0a-4c03-8005-ad517ea53b74'),(28,'craft','m160913_134730_require_matrix_block_type_id','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','760e3014-7296-4fff-94e7-a6ad1b813bdf'),(29,'craft','m160920_174553_matrixblocks_owner_site_id_nullable','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9f5be653-5f1f-47a6-8e3a-dc3caca6e08d'),(30,'craft','m160920_231045_usergroup_handle_title_unique','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b0b6059c-0891-4dd3-93cb-0343eac831d5'),(31,'craft','m160925_113941_route_uri_parts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','34382cb0-417a-405c-9859-880da61a279e'),(32,'craft','m161006_205918_schemaVersion_not_null','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7153adff-da02-4d35-bdc6-a0d482559fd4'),(33,'craft','m161007_130653_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e851d981-61c5-4187-a95f-23c0aa986d6f'),(34,'craft','m161013_175052_newParentId','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d87e1e51-6923-46c4-87a9-9393c96ad112'),(35,'craft','m161021_102916_fix_recent_entries_widgets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1f8fa00d-4039-4086-b816-3959a48039fb'),(36,'craft','m161021_182140_rename_get_help_widget','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b4e39987-3a25-4ca9-ab6f-5e568db982d6'),(37,'craft','m161025_000000_fix_char_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e3e880cb-fc5d-4158-8275-a7a0e075cd13'),(38,'craft','m161029_124145_email_message_languages','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','aab5443f-af55-49b3-a13b-12f16e103b28'),(39,'craft','m161108_000000_new_version_format','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b62f3f7b-55ec-4db8-8741-d722b3b26888'),(40,'craft','m161109_000000_index_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3aad327d-2c79-46ea-a49f-ee3567b5ce93'),(41,'craft','m161122_185500_no_craft_app','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7c725efd-f187-4557-8ded-14dc81248ceb'),(42,'craft','m161125_150752_clear_urlmanager_cache','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1534ab3d-e317-4756-b3d1-fa9dfe1ff73d'),(43,'craft','m161220_000000_volumes_hasurl_notnull','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ed533cad-6271-4c87-93b8-6fac2ed0530d'),(44,'craft','m170114_161144_udates_permission','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','41816e20-4d0f-4395-b099-e0c2802532f4'),(45,'craft','m170120_000000_schema_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e04f1cb1-a3e4-4602-9da2-597db09a6e42'),(46,'craft','m170126_000000_assets_focal_point','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','609ab274-4a31-42ba-8ea0-14e4ba2c2a95'),(47,'craft','m170206_142126_system_name','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e1e1deb2-0ff9-4a24-8955-2ce8726ac117'),(48,'craft','m170217_044740_category_branch_limits','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','62b2e5d5-1435-4e82-9917-38b99ffe3554'),(49,'craft','m170217_120224_asset_indexing_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','2559dcbe-e9de-45ff-a12e-0c9af6f9ea5b'),(50,'craft','m170223_224012_plain_text_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ad3ac3dc-295f-4c33-b55f-f9cb555f7a25'),(51,'craft','m170227_120814_focal_point_percentage','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7ce24853-84fd-49c2-be18-9d5706a2ab45'),(52,'craft','m170228_171113_system_messages','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c7775628-dc27-45ef-a6b8-75ea10833048'),(53,'craft','m170303_140500_asset_field_source_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b8eec7a8-576a-4530-b505-1737346fd85e'),(54,'craft','m170306_150500_asset_temporary_uploads','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6b8fe0df-0fc1-4470-ae47-3ce2398fcd02'),(55,'craft','m170523_190652_element_field_layout_ids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','75683753-7a66-4c85-9849-6fbf16545823'),(56,'craft','m170612_000000_route_index_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8ccc477e-12fb-4032-9ac1-389a9db388cb'),(57,'craft','m170621_195237_format_plugin_handles','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0c1c21aa-77d1-42a6-9a46-7d1b48bf85bf'),(58,'craft','m170630_161027_deprecation_line_nullable','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','075007a3-6af0-42b2-aa13-177b5334efd6'),(59,'craft','m170630_161028_deprecation_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','66966911-a1c9-4dcb-bf9f-1ba4e6cc3347'),(60,'craft','m170703_181539_plugins_table_tweaks','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','98323a12-dd56-4728-9f88-2ade45135fc2'),(61,'craft','m170704_134916_sites_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','eafa49db-d93c-45d0-bb62-f691143edf2d'),(62,'craft','m170706_183216_rename_sequences','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6cf65d61-52be-4e86-8c4f-4a3e14e7c6fe'),(63,'craft','m170707_094758_delete_compiled_traits','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','575e8df1-4ccc-481b-90c0-c2408c729d7e'),(64,'craft','m170731_190138_drop_asset_packagist','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e1123598-901c-4eaa-87dd-3cd1d27831d7'),(65,'craft','m170810_201318_create_queue_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','08e54b19-ce87-425c-b5be-2d04f3b85f65'),(66,'craft','m170816_133741_delete_compiled_behaviors','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0a79aa86-4028-4f8e-8728-1a41214ed442'),(67,'craft','m170903_192801_longblob_for_queue_jobs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c21c2259-4420-4071-b337-f7471308e5ed'),(68,'craft','m170914_204621_asset_cache_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','233b95c4-07ad-46bc-a9cc-372a6ed9c974'),(69,'craft','m171011_214115_site_groups','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4cab93cf-a82e-471d-ace9-cf6b6946f33e'),(70,'craft','m171012_151440_primary_site','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f46f5914-1e01-48aa-8b14-a4cdf147076d'),(71,'craft','m171013_142500_transform_interlace','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b4b3104d-f0d3-4094-a57f-596f92629e43'),(72,'craft','m171016_092553_drop_position_select','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d606a24b-0d84-49e1-a8e7-bb1d7e1777af'),(73,'craft','m171016_221244_less_strict_translation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a93c0fe9-8e27-4c3e-8e8d-a35c922e4228'),(74,'craft','m171107_000000_assign_group_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','16d9ca66-577a-48b5-bf8e-29defb1272d1'),(75,'craft','m171117_000001_templatecache_index_tune','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8bd8bf22-9f3a-4ac6-9ce2-f98c2de5bd64'),(76,'craft','m171126_105927_disabled_plugins','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','22bee72d-770e-48e5-9786-3cdc278f51e9'),(77,'craft','m171130_214407_craftidtokens_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','438fd8da-88e1-453b-b2ad-7b0f3cba1802'),(78,'craft','m171202_004225_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e3778022-9b14-47a2-bb1f-3fc590eac9c1'),(79,'craft','m171204_000001_templatecache_index_tune_deux','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0006ec48-57b8-48a9-bf7d-56d88a9d616d'),(80,'craft','m171205_130908_remove_craftidtokens_refreshtoken_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0d740e95-297a-436e-b58a-ce412f46d90e'),(81,'craft','m171218_143135_longtext_query_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3f673c3f-a614-4974-87a3-8cb6ea8f64b9'),(82,'craft','m171231_055546_environment_variables_to_aliases','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','22dba57b-0000-4b6d-a289-0b3f4203dd36'),(83,'craft','m180113_153740_drop_users_archived_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','65ac9875-1d76-4831-af86-f908f861e982'),(84,'craft','m180122_213433_propagate_entries_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9e69c1a7-090b-40d3-9e93-b857b91d2528'),(85,'craft','m180124_230459_fix_propagate_entries_values','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4aacddd9-b936-4ca9-8a43-eaebc2211ace'),(86,'craft','m180128_235202_set_tag_slugs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','086d7bc5-aa76-4b50-b4b5-3a650cbbe01e'),(87,'craft','m180202_185551_fix_focal_points','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c6c75aa4-3cd7-44eb-94f3-7c3e567a6307'),(88,'craft','m180217_172123_tiny_ints','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d7efa069-ed0f-419a-a5f0-4309e2007adf'),(89,'craft','m180321_233505_small_ints','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','33a08649-1e70-40fc-ab56-9a92fc947a94'),(90,'craft','m180328_115523_new_license_key_statuses','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7cfed1b5-b329-4cc7-b041-cceb44dcb372'),(91,'craft','m180404_182320_edition_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','26714007-08ac-4909-8c52-127acd0983cc'),(92,'craft','m180411_102218_fix_db_routes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3bc9bca8-2f6f-4f5a-b2c0-690affb3ba13'),(93,'craft','m180416_205628_resourcepaths_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','97e96056-ea70-4ee8-8486-117af67b07fc'),(94,'craft','m180418_205713_widget_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ef7670f5-4a7e-4f6a-9320-893d58f76090'),(95,'craft','m180425_203349_searchable_fields','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b7bfc396-9c11-402a-839d-1ee01f3e60dd'),(96,'craft','m180516_153000_uids_in_field_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9ddf9543-d396-46a3-9759-5625c6cbe4e6'),(97,'craft','m180517_173000_user_photo_volume_to_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0b7da992-2c71-4ff5-be68-b9d1bebc8b10'),(98,'craft','m180518_173000_permissions_to_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','69a3a0cd-d375-488b-951a-5580ca5cb137'),(99,'craft','m180520_173000_matrix_context_to_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','47e0a9a3-e84e-48fb-aa19-600ab7ec40a9'),(100,'craft','m180521_173000_initial_yml_and_snapshot','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bf643b9b-7d10-4ede-9708-54bc81015d56'),(101,'craft','m180731_162030_soft_delete_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d6ec5749-8398-4683-9794-713dc8be4a23'),(102,'craft','m180810_214427_soft_delete_field_layouts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ec63b21e-6f5b-4039-baab-648787333b78'),(103,'craft','m180810_214439_soft_delete_elements','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f74a7824-3faf-4896-af9b-7814f25e5bdb'),(104,'craft','m180824_193422_case_sensitivity_fixes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0797bbde-55cf-4b5c-a26b-bf82db6d4f94'),(105,'craft','m180901_151639_fix_matrixcontent_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d60d0b4e-0e8c-48aa-865b-aa01131f8ec4'),(106,'craft','m180904_112109_permission_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4ea749b4-02d4-4e1a-b981-1c23dbb7f937'),(107,'craft','m180910_142030_soft_delete_sitegroups','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f821b7da-86dd-44ee-b89e-3a0b967965fa'),(108,'craft','m181011_160000_soft_delete_asset_support','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','13017e2c-2aac-4022-87d3-6c81df19ff9b'),(109,'craft','m181016_183648_set_default_user_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6fd1c59d-7feb-48a4-b3d1-424814978d8d'),(110,'craft','m181017_225222_system_config_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8e8ea695-918c-4d97-9c7f-63d3495f7596'),(111,'craft','m181018_222343_drop_userpermissions_from_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a7d94ed6-b1b3-47b4-b162-c5522c8ef77e'),(112,'craft','m181029_130000_add_transforms_routes_to_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','98e2d06a-dcdb-467f-a87a-9c62625972d5'),(113,'craft','m181112_203955_sequences_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8c1bd5d5-f665-4aaf-a135-da2db47dcbcb'),(114,'craft','m181121_001712_cleanup_field_configs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bc3d0ab0-0d8b-445a-ba27-9e9bc2761337'),(115,'craft','m181128_193942_fix_project_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e4bda4c3-f0b8-4b5b-b1e3-735023a8e4f3'),(116,'craft','m181130_143040_fix_schema_version','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1e579023-b006-48f2-83ce-967dac7b584a'),(117,'craft','m181211_143040_fix_entry_type_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3f400000-d760-4275-b105-c90944b141bf'),(118,'craft','m181213_102500_config_map_aliases','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f6e5a54e-3da3-4eb4-bc47-b83ed4b18c8f'),(119,'craft','m181217_153000_fix_structure_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e822dbd0-adc6-44d4-8315-c02be9251c50'),(120,'craft','m190104_152725_store_licensed_plugin_editions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4ac7de81-1506-48db-a863-083d4784dcb9'),(121,'craft','m190108_110000_cleanup_project_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','693861ff-f0c4-4eff-894c-4fae361a15b4'),(122,'craft','m190108_113000_asset_field_setting_change','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bb21fc39-9d30-4179-b1b1-466f78cb04d9'),(123,'craft','m190109_172845_fix_colspan','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','fb13d9c2-b49f-4061-a6a4-2121d2fe3009'),(124,'craft','m190110_150000_prune_nonexisting_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','709d6acb-67d5-4450-9592-ca8251ea6297'),(125,'craft','m190110_214819_soft_delete_volumes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f1814f1f-ffc9-4db2-ad31-16712b917483'),(126,'craft','m190112_124737_fix_user_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1ef52dc4-0ca3-4ed5-85f4-99889b3913dd'),(127,'craft','m190112_131225_fix_field_layouts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8c16e4c8-7108-4e52-bc93-7bc2ad1aa846'),(128,'craft','m190112_201010_more_soft_deletes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e15a8828-6112-45de-b4fd-87edf2241a8e'),(129,'craft','m190114_143000_more_asset_field_setting_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','909fa671-54d4-46ee-86c9-335baacd9a48'),(130,'craft','m190121_120000_rich_text_config_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','925dcae4-b9f6-4548-b04f-eff5d8d1f3de'),(131,'craft','m190125_191628_fix_email_transport_password','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6a0f9bf3-3f24-43c1-9dbf-746126d8425a'),(132,'craft','m190128_181422_cleanup_volume_folders','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','68161464-72da-4f2c-a1bb-e820a9842f75'),(133,'craft','m190205_140000_fix_asset_soft_delete_index','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d3799297-64fb-45dc-ad14-9f5639bd68e3'),(134,'craft','m190208_140000_reset_project_config_mapping','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','487ec1a2-d46f-4c4e-8bc7-14c6a94658b3'),(135,'craft','m190218_143000_element_index_settings_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','de64eec9-a6e0-4612-bf37-0ed8f8877ec5'),(136,'craft','m190312_152740_element_revisions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','fa15f615-6cb1-43ed-9b47-b354c8e47978'),(137,'craft','m190327_235137_propagation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ff8171be-e178-45cc-8ea9-6830f4651891'),(138,'craft','m190401_223843_drop_old_indexes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d8590c5f-3ae4-424f-9c07-e225eb74652d'),(139,'craft','m190416_014525_drop_unique_global_indexes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','137d1c11-ebc9-4527-a2c3-fac2a580db89'),(140,'craft','m190417_085010_add_image_editor_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f034b209-ea1a-4c35-ab8d-92963fae1493'),(141,'craft','m190502_122019_store_default_user_group_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','45674913-1811-4081-ac1c-583503304f18'),(142,'craft','m190504_150349_preview_targets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b9dd3988-3fae-4be5-9f55-27f17087d47e'),(143,'craft','m190516_184711_job_progress_label','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d828f3fd-d28b-40a9-9957-bb8f1c1797ba'),(144,'craft','m190523_190303_optional_revision_creators','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bf8f28f6-fdc0-46a1-a070-56264fa8a007'),(145,'craft','m190529_204501_fix_duplicate_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f037d1d5-76bc-4235-9f36-fe004d48b282'),(146,'craft','m190605_223807_unsaved_drafts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d2b0f21c-bf8b-4851-bd6e-3fe9434f4339'),(147,'craft','m190607_230042_entry_revision_error_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','569b13da-0ade-4998-8d18-4e718dc8d872'),(148,'craft','m190608_033429_drop_elements_uid_idx','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8cb4f5c7-8c58-447d-992f-f8780f87da26'),(149,'craft','m190617_164400_add_gqlschemas_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4e9e295e-68c9-4833-82d9-86f2976e0635'),(150,'craft','m190624_234204_matrix_propagation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a64d4a4d-311e-4f2e-8152-424d939f01bc'),(151,'craft','m190711_153020_drop_snapshots','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4bafc4a2-b117-43f5-83ea-46490247ec3b'),(152,'craft','m190712_195914_no_draft_revisions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','118718b7-b3c5-47fd-b98b-87971ec8fb14'),(153,'craft','m190723_140314_fix_preview_targets_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','2e61ba0e-3502-4930-a372-f33d76161730'),(154,'craft','m190820_003519_flush_compiled_templates','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e9032e85-733e-48e1-8a40-6d6fe6e25006'),(155,'craft','m190823_020339_optional_draft_creators','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e867cbe4-ea78-4575-a0e5-37dc540971bc'),(156,'plugin:seo','Install','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','0368f196-b32e-4083-8e32-31878c2a3972'),(157,'plugin:seo','m180906_152947_add_site_id_to_redirects','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','d012b106-2139-44d8-b574-5e93535979cd'),(158,'plugin:seo','m190114_152300_upgrade_to_new_data_format','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','f75df05e-13e4-4b72-860e-25e0d6cb4968'),(160,'plugin:redactor','m180430_204710_remove_old_plugins','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','be04b79c-31f3-4372-83e1-43a2676ba2ee'),(161,'plugin:redactor','Install','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','ccec9120-f08c-4757-83b7-4fac874fe487'),(162,'plugin:redactor','m190225_003922_split_cleanup_html_settings','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','685445e6-cfcd-4cf1-bf32-355b234e955f'),(165,'plugin:snitch','Install','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','ebbbfb49-27c6-4556-a925-6f3daf35f294'),(166,'plugin:snitch','m190408_195351_support_multiple_types','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','89f901a9-ed34-4e9d-8bd8-fbe086ff5e43'),(167,'plugin:cp-nav','Install','2019-11-11 16:42:36','2019-11-11 16:42:36','2019-11-11 16:42:36','0723642b-0928-4b24-832f-7bfc657f2095'),(168,'craft','m180521_172900_project_config_table','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','0f3736d4-a068-40bc-b471-14370397643d'),(169,'craft','m190913_152146_update_preview_targets','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','41a48492-e64b-43bb-99ee-53a4acdf7115'),(170,'craft','m191107_122000_add_gql_project_config_support','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','d8a36287-346e-4370-a6cc-c8bd622e5880'),(171,'craft','m191204_085100_pack_savable_component_settings','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','acf533f9-06ae-4cdd-9642-a9ea0f13e576'),(172,'craft','m191206_001148_change_tracking','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','bc997e02-b419-494d-9c2e-d6b73917e445'),(173,'craft','m191216_191635_asset_upload_tracking','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','26f937a0-0897-414f-8c8d-768913f608af'),(174,'craft','m191222_002848_peer_asset_permissions','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','1f280ec8-3b52-420f-8d19-66003d11bb99'),(175,'craft','m200127_172522_queue_channels','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','3ed4758a-4ca6-4a36-acbb-b1ce6122fbe1'),(176,'craft','m200211_175048_truncate_element_query_cache','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','f1b3680a-01dd-4444-a462-acee2e7b607f'),(177,'craft','m200213_172522_new_elements_index','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','626a9d1d-ae30-4344-b30f-db891cd69939'),(178,'craft','m200228_195211_long_deprecation_messages','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','fee42910-83e2-44c1-b229-7e0d220f6b4b'),(179,'craft','m200306_054652_disabled_sites','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','e9628f67-6deb-441b-bad1-7284add071e4'),(180,'craft','m200522_191453_clear_template_caches','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','22edbf03-2fc0-4522-ac2a-e46346d8578f'),(181,'craft','m200606_231117_migration_tracks','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','6005d0a7-bf38-4ed8-9dc7-13cc4a7274ab'),(182,'craft','m200619_215137_title_translation_method','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','a918d481-0077-49fc-9bcf-e71a7933aa8a'),(183,'craft','m200620_005028_user_group_descriptions','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','2071f9d6-fea1-406b-af3a-207b293e08ad'),(184,'craft','m200620_230205_field_layout_changes','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','7490ed7d-f1f3-4bc6-bd56-30d073c1e402'),(185,'craft','m200625_131100_move_entrytypes_to_top_project_config','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','58e75be8-d88a-486d-8c8e-743698222be1'),(186,'craft','m200629_112700_remove_project_config_legacy_files','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','5c598af2-234c-44b3-81e4-a1af42b13e71'),(187,'craft','m200630_183000_drop_configmap','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','5b788a20-49d4-4e89-89b0-a08a1a898967'),(188,'craft','m200715_113400_transform_index_error_flag','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','36b2d83d-4d48-4687-a8d1-06390aadc70b'),(189,'craft','m200716_110900_replace_file_asset_permissions','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','9fd165a2-14cd-410b-bdec-0a2142e29e00'),(190,'craft','m200716_153800_public_token_settings_in_project_config','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','07df0963-0515-48eb-be1f-6487cf231826'),(191,'craft','m200720_175543_drop_unique_constraints','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','7ba7e062-d1aa-4c35-9bad-b8abd76a5758'),(192,'craft','m200825_051217_project_config_version','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','3ae93f11-39f9-4321-945e-3f60e3b19b0b'),(193,'plugin:cookie-consent-banner','m190902_000000_migrate_settings_to_uid','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','c0f0c469-6e65-4a45-94b3-2a40b52d3c11'),(194,'plugin:cp-nav','m200101_000000_craft3','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','101c18a7-bbdd-4dbb-b73e-8ad519ad4a2f'),(195,'plugin:cp-nav','m200113_000000_add_pending_navigation_table','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','ee19467e-201a-4f46-96ef-4c7259196c81'),(196,'plugin:cp-nav','m200119_000000_add_type','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','a5541f08-b3eb-482b-ad95-a6fa32b377eb'),(197,'plugin:cp-nav','m200119_000000_permissions_uid','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','103b5119-e332-48ea-ac90-d74fcce84b72'),(198,'plugin:cp-nav','m200120_000000_project_config','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','b6ea8c75-ed4e-45c5-af4d-dd267f1258f3'),(199,'plugin:cp-nav','m200316_000000_multi_hash','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','2b4a2ba2-177d-42a4-ac47-3196b2588181'),(200,'plugin:cp-nav','m200812_000000_fix_layoutid','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','1f4a5a3a-96e3-430d-b54f-6f5d591a3f45'),(201,'plugin:cp-nav','m200812_100000_layout_sortorder','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','af3ec102-13fd-44c4-8b08-fd91789a09a7'),(203,'plugin:seo','m200518_110721_add_order_to_redirects','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','21866c3f-a4dd-458a-a613-88e2521e3d6c'),(204,'plugin:super-table','Install','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','b9d7f6d9-80cb-4416-9e7d-7e7346cc2c63'),(205,'plugin:super-table','m180210_000000_migrate_content_tables','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','0ab750c6-1c8f-4f8c-af1c-b61c2fbba3e2'),(206,'plugin:super-table','m180211_000000_type_columns','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','cdc4426e-b01e-4643-820c-1bab4a179b1f'),(207,'plugin:super-table','m180219_000000_sites','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','fe598775-fe35-416f-aecd-ab8c27893e76'),(208,'plugin:super-table','m180220_000000_fix_context','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','93802085-a38e-4f39-8031-a3cf404ef774'),(209,'plugin:super-table','m190117_000000_soft_deletes','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','77a0d98e-dd91-41e7-9f82-8e5202b39b72'),(210,'plugin:super-table','m190117_000001_context_to_uids','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','6c8d9c3d-d1f1-49ce-8fb2-3e24737d4beb'),(211,'plugin:super-table','m190120_000000_fix_supertablecontent_tables','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','0ac991f8-4529-4761-8327-f5f58e7e28f1'),(212,'plugin:super-table','m190131_000000_fix_supertable_missing_fields','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','c116859b-4686-46dc-b542-f4a946b118de'),(213,'plugin:super-table','m190227_100000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','6f91381b-6ce8-4311-ac6d-15b7024c71e4'),(214,'plugin:super-table','m190511_100000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','666b950d-24be-4ea1-88f0-0db28e5f9c25'),(215,'plugin:super-table','m190520_000000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','53aa7162-651f-42db-8b5c-35d9c098f2ec'),(216,'plugin:super-table','m190714_000000_propagation_method','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','e1fdcdaf-f6f5-4d7e-bfff-d9f26bc09525'),(217,'plugin:super-table','m191127_000000_fix_width','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','fc885995-f316-4057-b07f-480f40534fb7');
/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_plugins`
--

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_plugins` VALUES (1,'seo','3.6.6','3.1.1','unknown',NULL,'2019-11-11 16:00:45','2019-11-11 16:00:45','2020-09-19 11:22:20','c5c2c651-f56b-40fc-8510-f639bf005d7f'),(2,'cookie-consent-banner','1.2.7','1.0.1','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','6fa3f3f9-e43d-4d9d-a52e-fdab1c0a44f7'),(6,'matrixmate','1.2.7','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','26ea30b5-8250-4334-9a69-5ea7122c65f2'),(7,'redactor','2.7.4','2.3.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','4dc21750-9d96-4c48-a51a-2a6919839cd4'),(9,'similar','1.0.6','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','633cc7f8-4ad5-4eca-bd35-9e6e51d80421'),(10,'slug-alert','1.0.0.1','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:42:13','1dffb566-9a89-4e2c-b7f5-102c24eaac6f'),(11,'snitch','3.0.2','2.1.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','331a8521-83bf-4d21-aa4a-36f299dbf8b4'),(14,'tag-manager','1.0.7','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','37e4f306-0cce-43ea-9666-637e066f6d62'),(15,'typedlinkfield','1.0.23','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','d208fcee-df14-4f9a-8a6b-627b5b4295aa'),(16,'typogrify','1.1.18','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-19 11:22:20','ad9c1738-84b8-43c0-925f-34142c6ccd47'),(17,'cp-nav','3.0.13.1','2.0.7','unknown',NULL,'2019-11-11 16:42:36','2019-11-11 16:42:36','2020-09-19 11:22:20','1a6693fa-31e3-4f00-878c-b97444bdeb62'),(18,'cp-field-inspect','1.2.2','1.0.0','unknown',NULL,'2019-11-11 16:42:36','2019-11-11 16:42:36','2020-09-19 11:22:20','16446398-0d58-4abe-ab39-d713a318bc81'),(19,'super-table','2.6.2','2.2.1','unknown',NULL,'2020-09-13 21:32:25','2020-09-13 21:32:25','2020-09-19 11:22:20','1116b7b9-389d-4fa7-b6f9-8778d559dde2'),(21,'embeddedassets','2.3.4','1.0.0','unknown',NULL,'2020-09-18 22:43:23','2020-09-18 22:43:23','2020-09-19 11:22:20','36a986d8-3497-4dbf-81fe-faf4af7d42bd'),(22,'colour-swatches','1.3.3','1.0.0','unknown',NULL,'2020-09-18 22:56:06','2020-09-18 22:56:06','2020-09-19 11:22:20','a5493d5c-5aaa-4612-87c5-e407c6640bd9');
/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_projectconfig`
--

LOCK TABLES `craft_projectconfig` WRITE;
/*!40000 ALTER TABLE `craft_projectconfig` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_projectconfig` VALUES ('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.isDefault','\"1\"'),('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.name','\"Default\"'),('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.permissions','null'),('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.sortOrder','1'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.currLabel','\"Config\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.customIcon','null'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.enabled','\"1\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.handle','\"divider\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.icon','null'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.newWindow','false'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.order','\"7\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.prevLabel','\"Divider\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.prevUrl','null'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.type','\"divider\"'),('cp-nav.navigations.1ac14732-8dfb-49d5-ad93-3f59a412d9b7.url','null'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.currLabel','\"Site details\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.customIcon','null'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.enabled','\"1\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.handle','\"siteDetails\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.icon','\"edit\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.newWindow','false'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.order','\"4\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.prevLabel','\"Site details\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.prevUrl','\"globals\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.type','\"manual\"'),('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.url','\"globals\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.currLabel','\"Utilities\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.customIcon','null'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.enabled','\"1\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.handle','\"utilities\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.icon','\"tool\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.newWindow','\"0\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.order','9'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.prevLabel','\"Utilities\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.prevUrl','\"utilities\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.type','\"0\"'),('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.url','\"utilities\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.currLabel','\"Plugin Store\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.customIcon','null'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.enabled','\"1\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.handle','\"plugin-store\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.icon','\"plugin\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.newWindow','\"0\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.order','10'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.prevLabel','\"Plugin Store\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.prevUrl','\"plugin-store\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.type','\"0\"'),('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.url','\"plugin-store\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.currLabel','\"Dashboard\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.customIcon','null'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.enabled','\"1\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.handle','\"dashboard\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.icon','\"gauge\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.newWindow','\"0\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.order','1'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.prevLabel','\"Dashboard\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.prevUrl','\"dashboard\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.type','\"0\"'),('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.url','\"dashboard\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.currLabel','\"Settings\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.customIcon','null'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.enabled','\"1\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.handle','\"settings\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.icon','\"settings\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.newWindow','\"0\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.order','8'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.prevLabel','\"Settings\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.prevUrl','\"settings\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.type','\"0\"'),('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.url','\"settings\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.currLabel','\"Assets\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.customIcon','null'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.enabled','\"1\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.handle','\"assets\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.icon','\"assets\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.newWindow','\"0\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.order','3'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.prevLabel','\"Assets\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.prevUrl','\"assets\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.type','\"\"'),('cp-nav.navigations.6c7233e4-b924-43a1-a4a6-6a34128eff82.url','\"assets\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.currLabel','\"SEO\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.customIcon','null'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.enabled','\"1\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.handle','\"seo\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.icon','\"globe\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.newWindow','false'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.order','\"5\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.prevLabel','\"SEO\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.prevUrl','\"seo\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.type','\"0\"'),('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.url','\"seo\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.currLabel','\"Tags\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.customIcon','null'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.enabled','\"1\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.handle','\"tags\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.icon','\"tags\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.newWindow','false'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.order','\"6\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.prevLabel','\"Tags\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.prevUrl','\"tags\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.type','\"0\"'),('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.url','\"tags\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.currLabel','\"Content\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.customIcon','null'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.enabled','\"1\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.handle','\"entries\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.icon','\"section\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.newWindow','false'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.order','\"2\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.prevLabel','\"Entries\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.prevUrl','\"entries\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.type','\"0\"'),('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.url','\"entries\"'),('dateModified','1600593374'),('email.fromEmail','\"hello@jaycollett.co\"'),('email.fromName','\"JayCraft\"'),('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.autocapitalize','true'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.autocomplete','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.autocorrect','true'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.class','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.disabled','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.id','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.instructions','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.label','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.max','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.min','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.name','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.orientation','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.placeholder','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.readonly','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.requirable','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.size','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.step','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.tip','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.title','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.warning','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.0.width','100'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.fieldUid','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.instructions','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.label','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.required','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.tip','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.warning','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.elements.1.width','100'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.name','\"Content\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.0.sortOrder','1'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.fieldUid','\"65332953-fec0-4f58-b96d-8297c3994640\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.instructions','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.label','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.required','false'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.tip','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.warning','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.elements.0.width','100'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.name','\"Options\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.fieldLayouts.1a664073-2c8f-4679-94c3-f125c62aac3e.tabs.1.sortOrder','2'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.handle','\"homepage\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.hasTitleField','true'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.name','\"Homepage\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.section','\"3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.sortOrder','2'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.titleFormat','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.titleTranslationKeyFormat','null'),('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.titleTranslationMethod','\"site\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.autocapitalize','true'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.autocomplete','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.autocorrect','true'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.class','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.disabled','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.id','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.instructions','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.label','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.max','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.min','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.name','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.orientation','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.placeholder','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.readonly','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.requirable','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.size','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.step','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.tip','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.title','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.warning','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.0.width','100'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.fieldUid','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.instructions','\"\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.label','\"\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.required','\"1\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.tip','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.warning','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.elements.1.width','100'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.name','\"Content\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.0.sortOrder','1'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.fieldUid','\"65332953-fec0-4f58-b96d-8297c3994640\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.instructions','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.label','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.required','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.tip','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.warning','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.elements.0.width','100'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.name','\"Options\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.1.sortOrder','2'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.fieldUid','\"7fdd5aee-0781-486e-810f-9af57a6cd8ce\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.instructions','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.label','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.required','false'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.tip','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.warning','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.elements.0.width','100'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.name','\"SEO\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.fieldLayouts.d6c92853-2151-43f6-bde4-c6d430617786.tabs.2.sortOrder','3'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.handle','\"news\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.hasTitleField','true'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.name','\"News\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.section','\"b6dcff48-9906-46af-add1-70d94f8fa406\"'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.sortOrder','1'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.titleFormat','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.titleTranslationKeyFormat','null'),('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.titleTranslationMethod','\"site\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.autocapitalize','true'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.autocomplete','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.autocorrect','true'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.class','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.disabled','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.id','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.instructions','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.label','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.max','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.min','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.name','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.orientation','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.placeholder','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.readonly','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.requirable','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.size','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.step','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.tip','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.title','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.warning','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.0.width','100'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.fieldUid','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.instructions','\"\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.label','\"\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.required','\"1\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.tip','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.warning','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.elements.1.width','100'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.name','\"Content\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.0.sortOrder','1'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.fieldUid','\"65332953-fec0-4f58-b96d-8297c3994640\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.instructions','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.label','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.required','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.tip','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.warning','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.elements.0.width','100'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.name','\"Options\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.1.sortOrder','2'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.fieldUid','\"7fdd5aee-0781-486e-810f-9af57a6cd8ce\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.instructions','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.label','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.required','false'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.tip','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.warning','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.elements.0.width','100'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.name','\"SEO\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.fieldLayouts.a0754d49-f7b1-4b97-a267-f594af39a360.tabs.2.sortOrder','3'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.handle','\"standardContent\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.hasTitleField','true'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.name','\"Standard content\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.section','\"3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.sortOrder','1'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.titleFormat','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.titleTranslationKeyFormat','null'),('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.titleTranslationMethod','\"site\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.autocapitalize','true'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.autocomplete','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.autocorrect','true'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.class','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.disabled','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.id','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.instructions','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.label','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.max','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.min','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.name','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.orientation','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.placeholder','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.readonly','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.requirable','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.size','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.step','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.tip','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.title','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.warning','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.0.width','100'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.fieldUid','\"39f8cfcf-152c-4306-b6ed-6d6493366cde\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.instructions','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.label','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.required','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.tip','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.warning','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.1.width','100'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.fieldUid','\"d16e6c1e-b44e-4cf8-aae2-6fa250b73706\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.instructions','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.label','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.required','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.tip','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.warning','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.2.width','50'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.fieldUid','\"39a3b015-426d-4a46-9c15-8676081b5a00\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.instructions','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.label','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.required','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.tip','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.warning','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.elements.3.width','50'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.name','\"Content\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.fieldLayouts.7a219a51-c790-425d-bc44-b45644449f70.tabs.0.sortOrder','1'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.handle','\"testimonial\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.hasTitleField','false'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.name','\"Testimonial\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.section','\"a69bd831-e1ab-4132-84fd-d36a262b6a46\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.sortOrder','1'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.titleFormat','\"{{ quote|length > 50 ? quote|striptags|slice(0, 50) ~ \'...\' : quote|striptags }}\"'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.titleTranslationKeyFormat','null'),('entryTypes.d82b49ab-5de4-418b-9e09-c06bd0c6a494.titleTranslationMethod','\"site\"'),('fieldGroups.792988f8-7d15-4596-8171-84de845b5608.name','\"Assets\"'),('fieldGroups.9d0976d6-6ff8-4790-9e75-5bb37d331d19.name','\"Globals\"'),('fieldGroups.be866704-e9e5-489a-94b0-c7763eec7317.name','\"Content\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.contentColumnType','\"text\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.fieldGroup','\"792988f8-7d15-4596-8171-84de845b5608\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.handle','\"altText\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.instructions','\"Image alternative text. Describe the image, don\'t name it. e.g. \\\"Two people talking over a laptop\\\"\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.name','\"Alt text\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.searchable','true'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.byteLimit','null'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.charLimit','null'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.code','\"\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.columnType','null'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.initialRows','\"4\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.multiline','\"\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.placeholder','\"\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.settings.uiMode','\"normal\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.translationKeyFormat','null'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.translationMethod','\"none\"'),('fields.0136bb82-6130-48c6-88cc-015d69da6199.type','\"craft\\\\fields\\\\PlainText\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.contentColumnType','\"string\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.handle','\"mainMenu\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.instructions','\"List of pages to show in the main site navigation. Maximum of seven for user experience purposes. If a menu is not set, the pages from \\\"Site\\\" will display.\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.name','\"Main menu\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.searchable','false'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.allowSelfRelations','false'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.limit','\"7\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.localizeRelations','false'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.selectionLabel','\"\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.showSiteMenu','true'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.source','null'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.sources.0','\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.targetSiteId','null'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.validateRelatedElements','false'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.settings.viewMode','null'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.translationKeyFormat','null'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.translationMethod','\"site\"'),('fields.37791995-fc9d-4977-9057-ad800dd1b735.type','\"craft\\\\fields\\\\Entries\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.contentColumnType','\"text\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.handle','\"role\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.instructions','\"What is their position to make their testimonial relevant?\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.name','\"Role\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.searchable','false'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.byteLimit','null'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.charLimit','null'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.code','\"\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.columnType','null'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.initialRows','\"4\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.multiline','\"\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.placeholder','\"\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.settings.uiMode','\"normal\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.translationKeyFormat','null'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.translationMethod','\"none\"'),('fields.39a3b015-426d-4a46-9c15-8676081b5a00.type','\"craft\\\\fields\\\\PlainText\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.contentColumnType','\"text\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.handle','\"quote\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.instructions','\"Note: do not add speech marks, these are handled in the template.\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.name','\"Quote\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.searchable','true'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.availableTransforms','\"*\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.availableVolumes','\"\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.cleanupHtml','true'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.columnType','\"text\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.configSelectionMode','\"choose\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.defaultTransform','\"\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.manualConfig','\"\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.purifierConfig','\"\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.purifyHtml','\"1\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.redactorConfig','\"Simple.json\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.removeEmptyTags','\"1\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.removeInlineStyles','\"1\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.removeNbsp','\"1\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.showHtmlButtonForNonAdmins','\"\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.showUnpermittedFiles','false'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.showUnpermittedVolumes','false'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.settings.uiMode','\"enlarged\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.translationKeyFormat','null'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.translationMethod','\"none\"'),('fields.39f8cfcf-152c-4306-b6ed-6d6493366cde.type','\"craft\\\\redactor\\\\Field\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.contentColumnType','\"string\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.handle','\"contactEmail\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.instructions','\"\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.name','\"Contact email\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.searchable','true'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.settings.placeholder','\"\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.translationKeyFormat','null'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.translationMethod','\"none\"'),('fields.4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906.type','\"craft\\\\fields\\\\Email\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.contentColumnType','\"text\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.handle','\"tags\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.instructions','\"Hashtags included in any Twitter, Facebook or LinkedIn share features.\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.name','\"Tags\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.searchable','false'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.byteLimit','null'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.charLimit','null'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.code','\"\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.columnType','null'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.initialRows','\"4\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.multiline','\"\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.placeholder','\"\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.settings.uiMode','\"normal\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.translationKeyFormat','null'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.translationMethod','\"none\"'),('fields.4caee081-e90b-4ece-8d4a-8d67ab5b2928.type','\"craft\\\\fields\\\\PlainText\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.contentColumnType','\"string\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.handle','\"utilityMenu\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.instructions','\"List of pages to show in the footer, such as legal pages.\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.name','\"Utility menu\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.searchable','false'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.allowSelfRelations','false'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.limit','\"6\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.localizeRelations','false'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.selectionLabel','\"\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.showSiteMenu','true'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.source','null'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.sources.0','\"section:b6dcff48-9906-46af-add1-70d94f8fa406\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.sources.1','\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.targetSiteId','null'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.validateRelatedElements','false'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.settings.viewMode','null'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.translationKeyFormat','null'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.translationMethod','\"site\"'),('fields.639079df-d2e2-40b6-b2a2-2b528a89ec4e.type','\"craft\\\\fields\\\\Entries\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.contentColumnType','\"text\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.handle','\"pageDescription\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.instructions','\"\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.name','\"Page description\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.searchable','true'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.availableTransforms','\"*\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.availableVolumes','\"*\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.cleanupHtml','true'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.columnType','\"text\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.configSelectionMode','\"choose\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.defaultTransform','\"\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.manualConfig','\"\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.purifierConfig','\"\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.purifyHtml','\"1\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.redactorConfig','\"Simple.json\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.removeEmptyTags','\"1\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.removeInlineStyles','\"1\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.removeNbsp','\"1\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.showHtmlButtonForNonAdmins','\"\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.showUnpermittedFiles','false'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.showUnpermittedVolumes','false'),('fields.65332953-fec0-4f58-b96d-8297c3994640.settings.uiMode','\"enlarged\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.translationKeyFormat','null'),('fields.65332953-fec0-4f58-b96d-8297c3994640.translationMethod','\"none\"'),('fields.65332953-fec0-4f58-b96d-8297c3994640.type','\"craft\\\\redactor\\\\Field\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.contentColumnType','\"text\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.handle','\"pageSeo\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.instructions','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.name','\"Page SEO\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.searchable','false'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.description','\"{pageDescription|striptags}\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.hideSocial','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.0','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.1','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.2','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.3','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.4','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.robots.5','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.socialImage','\"\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.suffixAsPrefix','null'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.0.0','\"key\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.0.1','\"1\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.1.0','\"locked\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.1.1','\"0\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.2.0','\"template\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.0.__assoc__.2.1','\"{title}\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.0.0','\"key\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.0.1','\"2\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.1.0','\"locked\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.1.1','\"1\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.2.0','\"template\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.title.1.__assoc__.2.1','\" - {{ siteName }}\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.settings.titleSuffix','null'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.translationKeyFormat','null'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.translationMethod','\"none\"'),('fields.7fdd5aee-0781-486e-810f-9af57a6cd8ce.type','\"ether\\\\seo\\\\fields\\\\SeoField\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.contentColumnType','\"string\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.handle','\"pageComponents\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.instructions','\"Build your page with these elements.\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.name','\"Page components\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.searchable','true'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.settings.contentTable','\"{{%matrixcontent_pagecomponents}}\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.settings.maxBlocks','\"\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.settings.minBlocks','\"\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.settings.propagationMethod','\"all\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.translationKeyFormat','null'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.translationMethod','\"site\"'),('fields.989f6b5c-82cf-4a15-aa85-fe9b821cee4b.type','\"craft\\\\fields\\\\Matrix\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.contentColumnType','\"string\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.handle','\"socialAccounts\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.instructions','\"Add social media accounts\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.name','\"Social accounts\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.searchable','false'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.contentTable','\"{{%matrixcontent_socialaccounts}}\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.maxBlocks','\"\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.minBlocks','\"\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.propagationMethod','\"all\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.translationKeyFormat','null'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.translationMethod','\"site\"'),('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.type','\"craft\\\\fields\\\\Matrix\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.contentColumnType','\"text\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.fieldGroup','\"be866704-e9e5-489a-94b0-c7763eec7317\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.handle','\"testimonialName\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.instructions','\"Who is this testimonial from?\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.name','\"Name\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.searchable','true'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.byteLimit','null'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.charLimit','null'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.code','\"\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.columnType','null'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.initialRows','\"4\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.multiline','\"\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.placeholder','\"\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.settings.uiMode','\"normal\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.translationKeyFormat','null'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.translationMethod','\"none\"'),('fields.d16e6c1e-b44e-4cf8-aae2-6fa250b73706.type','\"craft\\\\fields\\\\PlainText\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.contentColumnType','\"text\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.handle','\"contactPhone\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.instructions','\"\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.name','\"Contact phone\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.searchable','true'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.byteLimit','null'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.charLimit','null'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.code','\"\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.columnType','null'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.initialRows','\"4\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.multiline','\"\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.placeholder','\"\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.settings.uiMode','\"normal\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.translationKeyFormat','null'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.translationMethod','\"none\"'),('fields.fb3be2e2-4f29-4954-867d-c4ab5dc55a9c.type','\"craft\\\\fields\\\\PlainText\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.fieldUid','\"37791995-fc9d-4977-9057-ad800dd1b735\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.width','50'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.fieldUid','\"639079df-d2e2-40b6-b2a2-2b528a89ec4e\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.1.width','50'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.name','\"Menus\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.sortOrder','1'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.fieldUid','\"4a8ef1e9-0d62-4ea2-b094-f78aa2d8b906\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.0.width','100'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.fieldUid','\"fb3be2e2-4f29-4954-867d-c4ab5dc55a9c\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.elements.1.width','100'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.name','\"Business details\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.1.sortOrder','2'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.fieldUid','\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.0.width','100'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.fieldUid','\"4caee081-e90b-4ece-8d4a-8d67ab5b2928\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.instructions','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.label','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.required','false'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.tip','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.warning','null'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.elements.1.width','100'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.name','\"Social media\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.2.sortOrder','3'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.handle','\"siteDetails\"'),('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.name','\"Site details\"'),('graphql.publicToken.enabled','false'),('graphql.publicToken.expiryDate','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.fieldUid','\"a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.label','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.required','true'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.tip','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.warning','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.elements.0.width','100'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.name','\"Content\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fieldLayouts.79798186-af3d-4f7d-9b37-62d7eceb2adf.tabs.0.sortOrder','1'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.contentColumnType','\"string\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.fieldGroup','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.handle','\"accordions\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.instructions','\"Add multiple accordions.\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.name','\"Accordions\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.searchable','false'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.0.0','\"1156f455-4e06-4ae7-9644-b41dfc286ac1\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.0.1.__assoc__.0.0','\"width\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.0.1.__assoc__.0.1','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.1.0','\"1c00e1f6-a02c-4db7-b8db-22f55c91a4d2\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.1.1.__assoc__.0.0','\"width\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.columns.__assoc__.1.1.__assoc__.0.1','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.contentTable','\"{{%stc_3_accordions}}\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.fieldLayout','\"row\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.maxRows','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.minRows','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.placeholderKey','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.propagationMethod','\"all\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.selectionLabel','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.settings.staticField','\"\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.translationKeyFormat','null'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.translationMethod','\"site\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.fields.a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec.type','\"verbb\\\\supertable\\\\fields\\\\SuperTableField\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.handle','\"accordions\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.name','\"Accordions\"'),('matrixBlockTypes.09d9d59b-b42f-410e-985b-2a5442f37f3f.sortOrder','1'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.field','\"37791995-fc9d-4977-9057-ad800dd1b735\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.fieldUid','\"6d85fef4-37dc-4f7f-9262-4313c67f0860\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.label','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.required','true'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.tip','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.warning','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.0.width','100'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.fieldUid','\"7b2d3a28-340a-4a61-b2e5-f55aea8a2595\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.label','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.required','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.tip','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.warning','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.elements.1.width','100'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.name','\"Content\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fieldLayouts.77357e29-d8f9-4383-b3b2-ead5fe80866d.tabs.0.sortOrder','1'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.contentColumnType','\"string\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.fieldGroup','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.handle','\"entry\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.instructions','\"Select the page to list in the menu.\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.name','\"Entry\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.searchable','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.allowSelfRelations','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.limit','\"1\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.localizeRelations','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.selectionLabel','\"\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.showSiteMenu','true'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.source','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.sources.0','\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.targetSiteId','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.validateRelatedElements','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.settings.viewMode','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.translationKeyFormat','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.translationMethod','\"site\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.6d85fef4-37dc-4f7f-9262-4313c67f0860.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.contentColumnType','\"text\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.fieldGroup','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.handle','\"rename\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.instructions','\"If the menu item requires a custom title.\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.name','\"Rename\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.searchable','false'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.byteLimit','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.charLimit','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.code','\"\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.columnType','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.initialRows','\"4\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.multiline','\"\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.placeholder','\"\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.settings.uiMode','\"normal\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.translationKeyFormat','null'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.translationMethod','\"none\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.fields.7b2d3a28-340a-4a61-b2e5-f55aea8a2595.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.handle','\"menuItem\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.name','\"Menu item\"'),('matrixBlockTypes.4849af96-fd87-43af-95d9-d4879454573f.sortOrder','1'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.fieldUid','\"d5d7809c-23f4-4811-aac0-88ea44885cf1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.label','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.required','true'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.tip','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.warning','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.0.width','50'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.fieldUid','\"fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.label','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.required','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.tip','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.warning','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.1.width','50'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.fieldUid','\"bbaa68dc-df36-42aa-a667-b5ee4f79fd6a\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.instructions','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.label','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.required','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.tip','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.warning','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.elements.2.width','100'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.name','\"Content\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fieldLayouts.9db008b5-5d2f-4947-a621-566114dc4116.tabs.0.sortOrder','1'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.contentColumnType','\"string\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.fieldGroup','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.handle','\"posterImage\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.instructions','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.name','\"Poster image\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.searchable','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.allowedKinds','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.allowSelfRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.defaultUploadLocationSource','\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.limit','\"1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.localizeRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.previewMode','\"full\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.restrictFiles','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.selectionLabel','\"Add an image\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.showSiteMenu','true'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.showUnpermittedFiles','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.singleUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.source','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.sources.0','\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.targetSiteId','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.useSingleFolder','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.validateRelatedElements','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.settings.viewMode','\"list\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.translationKeyFormat','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.translationMethod','\"site\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.bbaa68dc-df36-42aa-a667-b5ee4f79fd6a.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.contentColumnType','\"string\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.fieldGroup','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.handle','\"mp4\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.instructions','\"Upload an MP4 video file.\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.name','\"MP4\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.searchable','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.allowedKinds.0','\"video\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.allowSelfRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.defaultUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.limit','\"1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.localizeRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.previewMode','\"full\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.restrictFiles','\"1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.selectionLabel','\"Add an MP4 file\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.showSiteMenu','true'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.showUnpermittedFiles','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.singleUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.source','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.sources.0','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.targetSiteId','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.useSingleFolder','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.validateRelatedElements','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.settings.viewMode','\"list\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.translationKeyFormat','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.translationMethod','\"site\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.d5d7809c-23f4-4811-aac0-88ea44885cf1.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.contentColumnType','\"string\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.fieldGroup','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.handle','\"webm\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.instructions','\"Upload a WebM video file.\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.name','\"WebM\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.searchable','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.allowedKinds.0','\"video\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.allowSelfRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.defaultUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.limit','\"1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.localizeRelations','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.previewMode','\"full\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.restrictFiles','\"1\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.selectionLabel','\"Add a WebM file\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.showSiteMenu','true'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.showUnpermittedFiles','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.singleUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.source','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.sources.0','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.targetSiteId','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.useSingleFolder','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.validateRelatedElements','false'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.settings.viewMode','\"list\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.translationKeyFormat','null'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.translationMethod','\"site\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.fields.fb9a7b57-e9d1-46d4-b1ee-aa8038caa57a.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.handle','\"video\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.name','\"Video\"'),('matrixBlockTypes.509bddad-7391-49e8-8e95-734bb97c6f37.sortOrder','5'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.fieldUid','\"b62350b6-c1a3-4da2-b568-927ce13fdfae\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.label','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.required','true'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.tip','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.warning','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.elements.0.width','100'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.name','\"Content\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fieldLayouts.bbfa4e3a-e2eb-453b-8ca4-5f8fc81c0c24.tabs.0.sortOrder','1'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.contentColumnType','\"string\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.fieldGroup','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.handle','\"testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.instructions','\"Select a testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.name','\"Testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.searchable','false'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.allowSelfRelations','false'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.limit','\"1\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.localizeRelations','false'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.selectionLabel','\"Add a testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.showSiteMenu','true'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.source','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.sources.0','\"section:a69bd831-e1ab-4132-84fd-d36a262b6a46\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.targetSiteId','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.validateRelatedElements','false'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.settings.viewMode','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.translationKeyFormat','null'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.translationMethod','\"site\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.fields.b62350b6-c1a3-4da2-b568-927ce13fdfae.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.handle','\"testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.name','\"Testimonial\"'),('matrixBlockTypes.7377fb26-3cff-499d-9470-d196abc5f049.sortOrder','3'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.fieldUid','\"d569c65b-2978-43ee-bbe9-724c8b6823d8\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.label','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.required','true'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.tip','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.warning','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.elements.0.width','100'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.name','\"Content\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fieldLayouts.9784d67b-9217-4a82-8f71-1492976e4790.tabs.0.sortOrder','1'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.contentColumnType','\"string\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.fieldGroup','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.handle','\"externalVideo\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.instructions','\"Upload a video from YouTube or Vimeo.\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.name','\"External video\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.searchable','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.allowedKinds.0','\"json\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.allowedKinds.1','\"video\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.allowSelfRelations','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.defaultUploadLocationSource','\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.limit','\"1\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.localizeRelations','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.previewMode','\"full\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.restrictFiles','\"1\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.selectionLabel','\"Embed a video\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.showSiteMenu','true'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.showUnpermittedFiles','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.singleUploadLocationSource','\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.source','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.sources.0','\"volume:81307dab-347a-4fb8-b528-45b18ed7d0e0\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.targetSiteId','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.useSingleFolder','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.validateRelatedElements','false'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.settings.viewMode','\"list\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.translationKeyFormat','null'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.translationMethod','\"site\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.fields.d569c65b-2978-43ee-bbe9-724c8b6823d8.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.handle','\"externalVideo\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.name','\"External video\"'),('matrixBlockTypes.86c871b7-5067-4489-9782-858bcb6e530a.sortOrder','6'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.field','\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.fieldUid','\"d29ea3e7-f083-4acc-a14f-9bd7e8d5edec\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.label','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.required','true'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.tip','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.warning','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.width','100'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.fieldUid','\"5e90386a-ba13-4916-b959-28901b19935f\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.label','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.required','true'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.tip','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.warning','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.width','100'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.name','\"Content\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.sortOrder','1'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.contentColumnType','\"string(255)\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.fieldGroup','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.handle','\"accountUrl\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.instructions','\"Paste your account\'s full URL.\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.name','\"Account URL\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.searchable','false'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.settings.maxLength','\"255\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.settings.placeholder','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.translationKeyFormat','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.translationMethod','\"none\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.type','\"craft\\\\fields\\\\Url\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.contentColumnType','\"string\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.fieldGroup','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.handle','\"account\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.instructions','\"Select which account you\'d like to add.\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.name','\"Account\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.searchable','false'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.optgroups','true'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.0.1','\"Instagram\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.1.1','\"instagram\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.0.1','\"Facebook\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.1.1','\"facebook\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.0.1','\"LinkedIn\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.1.1','\"linkedin\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.0.1','\"Pinterest\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.1.1','\"pinterest\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.0.1','\"Twitter\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.1.1','\"twitter\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.0.0','\"label\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.0.1','\"YouTube\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.1.0','\"value\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.1.1','\"youtube\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.2.0','\"default\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.2.1','\"\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.translationKeyFormat','null'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.translationMethod','\"none\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.type','\"craft\\\\fields\\\\Dropdown\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.handle','\"account\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.name','\"Account\"'),('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.sortOrder','1'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.fieldUid','\"7d585825-db60-49fb-a08c-a267e26750a8\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.label','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.required','true'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.tip','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.warning','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.elements.0.width','100'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.name','\"Content\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fieldLayouts.e61f8fbc-bd21-4a76-961f-3e14b6b432eb.tabs.0.sortOrder','1'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.contentColumnType','\"text\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.fieldGroup','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.handle','\"body\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.instructions','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.name','\"Body\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.searchable','false'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.availableTransforms','\"*\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.availableVolumes','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.cleanupHtml','true'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.columnType','\"text\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.configSelectionMode','\"choose\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.defaultTransform','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.manualConfig','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.purifierConfig','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.purifyHtml','\"1\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.redactorConfig','\"Standard.json\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.removeEmptyTags','\"1\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.removeInlineStyles','\"1\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.removeNbsp','\"1\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.showHtmlButtonForNonAdmins','\"\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.showUnpermittedFiles','false'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.settings.uiMode','\"enlarged\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.translationKeyFormat','null'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.translationMethod','\"none\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.fields.7d585825-db60-49fb-a08c-a267e26750a8.type','\"craft\\\\redactor\\\\Field\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.handle','\"body\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.name','\"Body\"'),('matrixBlockTypes.9cb9df85-b6be-4d7a-aead-d945ae98a3bd.sortOrder','2'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.fieldUid','\"16dcf610-573a-409e-b404-c4aafe8ea764\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.label','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.required','true'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.tip','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.warning','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.0.width','100'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.fieldUid','\"19d67a4c-90d7-4ae3-a367-e59f631af8d7\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.label','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.required','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.tip','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.warning','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.elements.1.width','100'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.name','\"Content\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fieldLayouts.d0e70e63-9251-4b8e-8944-f31af538c0e1.tabs.0.sortOrder','1'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.contentColumnType','\"string\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.fieldGroup','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.handle','\"images\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.instructions','\"Limit of eight.\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.name','\"Images\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.searchable','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.allowedKinds.0','\"image\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.allowSelfRelations','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.defaultUploadLocationSource','\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.limit','\"8\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.localizeRelations','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.previewMode','\"full\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.restrictFiles','\"1\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.selectionLabel','\"Add an image\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.showSiteMenu','true'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.showUnpermittedFiles','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.singleUploadLocationSource','\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.source','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.sources.0','\"volume:85402e79-b5f4-49d2-b19b-4210804143c7\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.targetSiteId','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.useSingleFolder','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.validateRelatedElements','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.settings.viewMode','\"list\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.translationKeyFormat','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.translationMethod','\"site\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.16dcf610-573a-409e-b404-c4aafe8ea764.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.contentColumnType','\"text\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.fieldGroup','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.handle','\"description\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.instructions','\"Describe this image/these images.\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.name','\"Description\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.searchable','false'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.byteLimit','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.charLimit','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.code','\"\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.columnType','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.initialRows','\"4\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.multiline','\"\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.placeholder','\"\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.settings.uiMode','\"normal\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.translationKeyFormat','null'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.translationMethod','\"none\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.fields.19d67a4c-90d7-4ae3-a367-e59f631af8d7.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.handle','\"images\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.name','\"Images\"'),('matrixBlockTypes.c3308227-9abe-4262-9b0a-ce782692ae77.sortOrder','4'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.field','\"639079df-d2e2-40b6-b2a2-2b528a89ec4e\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.fieldUid','\"c1c97c2a-a7cd-4751-bbb2-4d66a1e72294\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.label','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.required','true'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.tip','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.warning','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.0.width','100'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.fieldUid','\"81072bba-d351-4fb8-904b-dbe43b2eb1e8\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.label','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.required','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.tip','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.warning','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.elements.1.width','100'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.name','\"Content\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fieldLayouts.80334c73-dfcf-4981-addc-d15f5cd7cba6.tabs.0.sortOrder','1'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.contentColumnType','\"text\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.fieldGroup','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.handle','\"rename\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.instructions','\"If the menu requires a custom title.\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.name','\"Rename\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.searchable','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.byteLimit','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.charLimit','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.code','\"\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.columnType','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.initialRows','\"4\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.multiline','\"\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.placeholder','\"\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.settings.uiMode','\"normal\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.translationKeyFormat','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.translationMethod','\"none\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.81072bba-d351-4fb8-904b-dbe43b2eb1e8.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.contentColumnType','\"string\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.fieldGroup','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.handle','\"entry\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.instructions','\"Select the page to list in the menu.\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.name','\"Entry\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.searchable','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.allowSelfRelations','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.limit','\"1\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.localizeRelations','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.selectionLabel','\"\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.showSiteMenu','true'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.source','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.sources.0','\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.targetSiteId','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.validateRelatedElements','false'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.settings.viewMode','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.translationKeyFormat','null'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.translationMethod','\"site\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.fields.c1c97c2a-a7cd-4751-bbb2-4d66a1e72294.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.handle','\"menuItem\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.name','\"Menu item\"'),('matrixBlockTypes.c71aed7a-246a-4bc4-8dcd-515b5061c19b.sortOrder','1'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.field','\"989f6b5c-82cf-4a15-aa85-fe9b821cee4b\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.fieldUid','\"a8d65c69-c832-4301-902e-712b8221762f\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.label','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.required','true'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.tip','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.warning','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.elements.0.width','100'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.name','\"Content\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fieldLayouts.24d10f0a-7220-46c7-98d2-4c0818d07dbe.tabs.0.sortOrder','1'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.contentColumnType','\"string\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.fieldGroup','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.handle','\"audio\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.instructions','\"Upload an audio file.\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.name','\"Audio\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.searchable','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.allowedKinds.0','\"audio\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.allowSelfRelations','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.defaultUploadLocationSource','\"volume:d9c51571-b4e8-40c9-abaf-dab181ce75bf\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.limit','\"1\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.localizeRelations','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.previewMode','\"full\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.restrictFiles','\"1\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.selectionLabel','\"Add an audio file\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.showSiteMenu','true'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.showUnpermittedFiles','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.singleUploadLocationSource','\"volume:696a96fe-981a-49b3-8947-b85b4ec0dc06\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.source','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.sources.0','\"volume:d9c51571-b4e8-40c9-abaf-dab181ce75bf\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.targetSiteId','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.useSingleFolder','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.validateRelatedElements','false'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.settings.viewMode','\"list\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.translationKeyFormat','null'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.translationMethod','\"site\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.fields.a8d65c69-c832-4301-902e-712b8221762f.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.handle','\"audio\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.name','\"Audio\"'),('matrixBlockTypes.cb6bce8b-a201-4cf8-a17a-7bf7729ba35d.sortOrder','7'),('plugins.colour-swatches.edition','\"standard\"'),('plugins.colour-swatches.enabled','true'),('plugins.colour-swatches.schemaVersion','\"1.0.0\"'),('plugins.cookie-consent-banner.edition','\"standard\"'),('plugins.cookie-consent-banner.enabled','true'),('plugins.cookie-consent-banner.schemaVersion','\"1.0.1\"'),('plugins.cookie-consent-banner.settings.allow','\"Allow cookies\"'),('plugins.cookie-consent-banner.settings.async_js','\"\"'),('plugins.cookie-consent-banner.settings.auto_inject','\"1\"'),('plugins.cookie-consent-banner.settings.decline','\"Decline\"'),('plugins.cookie-consent-banner.settings.defer_js','\"\"'),('plugins.cookie-consent-banner.settings.disable_in_live_preview','\"1\"'),('plugins.cookie-consent-banner.settings.dismiss','\"Accept\"'),('plugins.cookie-consent-banner.settings.dismiss_on_scroll','\"0\"'),('plugins.cookie-consent-banner.settings.dismiss_on_timeout','\"0\"'),('plugins.cookie-consent-banner.settings.excluded_categories','null'),('plugins.cookie-consent-banner.settings.excluded_entry_types','null'),('plugins.cookie-consent-banner.settings.expiry_days','\"365\"'),('plugins.cookie-consent-banner.settings.honour_do_not_track_header','\"\"'),('plugins.cookie-consent-banner.settings.layout','\"classic\"'),('plugins.cookie-consent-banner.settings.learn','\"Learn More\"'),('plugins.cookie-consent-banner.settings.learn_more_link','\"http://cookiesandyou.com/\"'),('plugins.cookie-consent-banner.settings.message','\"This website uses cookies to ensure you get the best experience on our website.\"'),('plugins.cookie-consent-banner.settings.palette','\"whitegreen\"'),('plugins.cookie-consent-banner.settings.palette_banner','\"#efefef\"'),('plugins.cookie-consent-banner.settings.palette_banner_text','\"#404040\"'),('plugins.cookie-consent-banner.settings.palette_button','\"#8ec760\"'),('plugins.cookie-consent-banner.settings.palette_button_text','\"#ffffff\"'),('plugins.cookie-consent-banner.settings.palette_left_button_bg','\"#8ec760\"'),('plugins.cookie-consent-banner.settings.palette_left_button_text','\"#ffffff\"'),('plugins.cookie-consent-banner.settings.palette_link','\"#ffffff\"'),('plugins.cookie-consent-banner.settings.position','\"bottom-left\"'),('plugins.cookie-consent-banner.settings.preload_css','\"\"'),('plugins.cookie-consent-banner.settings.revokable','\"\"'),('plugins.cookie-consent-banner.settings.secure_only','\"\"'),('plugins.cookie-consent-banner.settings.target','\"_blank\"'),('plugins.cookie-consent-banner.settings.type','\"info\"'),('plugins.cp-field-inspect.edition','\"standard\"'),('plugins.cp-field-inspect.enabled','true'),('plugins.cp-field-inspect.schemaVersion','\"1.0.0\"'),('plugins.cp-nav.edition','\"standard\"'),('plugins.cp-nav.enabled','true'),('plugins.cp-nav.schemaVersion','\"2.0.7\"'),('plugins.cp-nav.settings.originalNavHash.__assoc__.0.0','\"acd97fb0-d20d-4ccb-a137-17698687e2d1\"'),('plugins.cp-nav.settings.originalNavHash.__assoc__.0.1','\"W3sibGFiZWwiOiJEYXNoYm9hcmQiLCJ1cmwiOiJkYXNoYm9hcmQiLCJmb250SWNvbiI6ImdhdWdlIn0seyJsYWJlbCI6IkVudHJpZXMiLCJ1cmwiOiJlbnRyaWVzIiwiZm9udEljb24iOiJzZWN0aW9uIn0seyJsYWJlbCI6Ikdsb2JhbHMiLCJ1cmwiOiJnbG9iYWxzIiwiZm9udEljb24iOiJnbG9iZSJ9LHsibGFiZWwiOiJUYWdzIiwidXJsIjoidGFncyIsImljb24iOiIvVXNlcnMvamF5Y29sbGV0dC9TaXRlcy9qYXljb2xsZXR0L2pheWNyYWZ0L3ZlbmRvci9ldGhlci90YWdzL3NyYy9pY29uLW1hc2suc3ZnIiwiaWQiOiJ0YWctbWFuYWdlciJ9LHsibGFiZWwiOiJBc3NldHMiLCJ1cmwiOiJhc3NldHMiLCJmb250SWNvbiI6ImFzc2V0cyJ9LHsibGFiZWwiOiJTRU8iLCJ1cmwiOiJzZW8iLCJpY29uIjoiL1VzZXJzL2pheWNvbGxldHQvU2l0ZXMvamF5Y29sbGV0dC9qYXljcmFmdC92ZW5kb3IvZXRoZXIvc2VvL3NyYy9pY29uLW1hc2suc3ZnIiwic3VibmF2Ijp7ImRhc2hib2FyZCI6eyJsYWJlbCI6IkRhc2hib2FyZCIsInVybCI6InNlbyJ9LCJzaXRlbWFwIjp7ImxhYmVsIjoiU2l0ZW1hcCIsInVybCI6InNlby9zaXRlbWFwIn0sInJlZGlyZWN0cyI6eyJsYWJlbCI6IlJlZGlyZWN0cyIsInVybCI6InNlby9yZWRpcmVjdHMifSwic2V0dGluZ3MiOnsibGFiZWwiOiJTZXR0aW5ncyIsInVybCI6InNlby9zZXR0aW5ncyJ9fX0seyJ1cmwiOiJ1dGlsaXRpZXMiLCJsYWJlbCI6IlV0aWxpdGllcyIsImZvbnRJY29uIjoidG9vbCIsImJhZGdlQ291bnQiOjB9LHsidXJsIjoic2V0dGluZ3MiLCJsYWJlbCI6IlNldHRpbmdzIiwiZm9udEljb24iOiJzZXR0aW5ncyJ9LHsidXJsIjoicGx1Z2luLXN0b3JlIiwibGFiZWwiOiJQbHVnaW4gU3RvcmUiLCJmb250SWNvbiI6InBsdWdpbiJ9XQ==\"'),('plugins.embeddedassets.edition','\"standard\"'),('plugins.embeddedassets.enabled','true'),('plugins.embeddedassets.schemaVersion','\"1.0.0\"'),('plugins.matrixmate.edition','\"standard\"'),('plugins.matrixmate.enabled','true'),('plugins.matrixmate.schemaVersion','\"1.0.0\"'),('plugins.redactor.edition','\"standard\"'),('plugins.redactor.enabled','true'),('plugins.redactor.schemaVersion','\"2.3.0\"'),('plugins.seo.edition','\"standard\"'),('plugins.seo.enabled','true'),('plugins.seo.schemaVersion','\"3.1.1\"'),('plugins.seo.settings.description','\"{pageDescription|striptags}\"'),('plugins.seo.settings.facebookAppId','\"\"'),('plugins.seo.settings.metaTemplate','\"\"'),('plugins.seo.settings.removeAlternateUrls','\"\"'),('plugins.seo.settings.robots.0','\"\"'),('plugins.seo.settings.robots.1','\"\"'),('plugins.seo.settings.robots.2','\"\"'),('plugins.seo.settings.robots.3','\"\"'),('plugins.seo.settings.robots.4','\"\"'),('plugins.seo.settings.robots.5','\"\"'),('plugins.seo.settings.robotsTxt','\"{# Sitemap URL #}\\r\\nSitemap: {{ url(seo.sitemapName ~ \'.xml\') }}\\r\\n\\r\\n{# Disallows #}\\r\\n{% if craft.app.config.env != \'production\' %}\\r\\n\\r\\n{# Disallow access to everything when NOT in production #}\\r\\nUser-agent: *\\r\\nDisallow: /\\r\\n\\r\\n{% else %}\\r\\n\\r\\n{# Disallow access to cpresources/ when live #}\\r\\nUser-agent: *\\r\\nDisallow: /cpresources/\\r\\n\\r\\n{% endif %}\"'),('plugins.seo.settings.sitemapLimit','\"1000\"'),('plugins.seo.settings.sitemapName','\"sitemap\"'),('plugins.seo.settings.socialImage','\"\"'),('plugins.seo.settings.title.0.__assoc__.0.0','\"key\"'),('plugins.seo.settings.title.0.__assoc__.0.1','\"1\"'),('plugins.seo.settings.title.0.__assoc__.1.0','\"locked\"'),('plugins.seo.settings.title.0.__assoc__.1.1','\"0\"'),('plugins.seo.settings.title.0.__assoc__.2.0','\"template\"'),('plugins.seo.settings.title.0.__assoc__.2.1','\"{title}\"'),('plugins.seo.settings.title.1.__assoc__.0.0','\"key\"'),('plugins.seo.settings.title.1.__assoc__.0.1','\"2\"'),('plugins.seo.settings.title.1.__assoc__.1.0','\"locked\"'),('plugins.seo.settings.title.1.__assoc__.1.1','\"1\"'),('plugins.seo.settings.title.1.__assoc__.2.0','\"template\"'),('plugins.seo.settings.title.1.__assoc__.2.1','\" - {{ siteName }}\"'),('plugins.seo.settings.titleSuffix','null'),('plugins.seo.settings.twitterHandle','\"\"'),('plugins.similar.edition','\"standard\"'),('plugins.similar.enabled','true'),('plugins.similar.schemaVersion','\"1.0.0\"'),('plugins.slug-alert.edition','\"standard\"'),('plugins.slug-alert.enabled','true'),('plugins.slug-alert.schemaVersion','\"1.0.0\"'),('plugins.slug-alert.settings.alertMessage','\"Changing a slug can have a potentially negative effect on your site\'s SEO and any bookmarked links. Create a redirect after changing a slug, or don\'t change the slug at all.\"'),('plugins.slug-alert.settings.pluginIsActive','\"1\"'),('plugins.snitch.edition','\"standard\"'),('plugins.snitch.enabled','true'),('plugins.snitch.schemaVersion','\"2.1.0\"'),('plugins.super-table.edition','\"standard\"'),('plugins.super-table.enabled','true'),('plugins.super-table.schemaVersion','\"2.2.1\"'),('plugins.tag-manager.edition','\"standard\"'),('plugins.tag-manager.enabled','true'),('plugins.tag-manager.schemaVersion','\"1.0.0\"'),('plugins.typedlinkfield.edition','\"standard\"'),('plugins.typedlinkfield.enabled','true'),('plugins.typedlinkfield.schemaVersion','\"1.0.0\"'),('plugins.typogrify.edition','\"standard\"'),('plugins.typogrify.enabled','true'),('plugins.typogrify.schemaVersion','\"1.0.0\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.enableVersioning','true'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.handle','\"site\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.name','\"Site\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.propagationMethod','\"all\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.enabledByDefault','true'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.template','\"site/_index\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.uriFormat','\"{parent.uri}/{slug}\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.structure.maxLevels','null'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.structure.uid','\"634a6d92-d705-4817-8b55-789eb7701252\"'),('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.type','\"structure\"'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.enableVersioning','true'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.handle','\"testimonials\"'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.name','\"Testimonials\"'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.propagationMethod','\"all\"'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.enabledByDefault','true'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','false'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.template','null'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.uriFormat','null'),('sections.a69bd831-e1ab-4132-84fd-d36a262b6a46.type','\"channel\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.enableVersioning','true'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.handle','\"news\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.name','\"News\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.previewTargets.0.label','\"Primary entry page\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.previewTargets.0.urlFormat','\"{url}\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.propagationMethod','\"all\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.enabledByDefault','true'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.template','\"/pages\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.uriFormat','\"news/{slug}\"'),('sections.b6dcff48-9906-46af-add1-70d94f8fa406.type','\"channel\"'),('siteGroups.0029cea0-a61a-4d4c-a01a-bdf995fd1393.name','\"JayCraft\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.baseUrl','\"$DEFAULT_SITE_URL\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.handle','\"default\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.language','\"en-GB\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.name','\"JayCraft\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.primary','true'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.siteGroup','\"0029cea0-a61a-4d4c-a01a-bdf995fd1393\"'),('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.sortOrder','1'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.field','\"a9fff5e5-b6e0-478d-82b6-0f6e7c7221ec\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.fieldUid','\"1156f455-4e06-4ae7-9644-b41dfc286ac1\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.instructions','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.label','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.required','true'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.tip','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.warning','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.0.width','100'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.fieldUid','\"1c00e1f6-a02c-4db7-b8db-22f55c91a4d2\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.instructions','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.label','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.required','true'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.tip','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.warning','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.elements.1.width','100'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.name','\"Content\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fieldLayouts.0e5757c1-b1e8-4754-b00e-d0f77bb47449.tabs.0.sortOrder','1'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.contentColumnType','\"text\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.fieldGroup','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.handle','\"heading\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.instructions','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.name','\"Heading\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.searchable','true'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.byteLimit','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.charLimit','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.code','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.columnType','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.initialRows','\"4\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.multiline','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.placeholder','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.settings.uiMode','\"normal\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.translationKeyFormat','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.translationMethod','\"none\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1156f455-4e06-4ae7-9644-b41dfc286ac1.type','\"craft\\\\fields\\\\PlainText\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.contentColumnType','\"text\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.fieldGroup','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.handle','\"body\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.instructions','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.name','\"Body\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.searchable','true'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.availableTransforms','\"*\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.availableVolumes','\"*\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.cleanupHtml','true'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.columnType','\"text\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.configSelectionMode','\"choose\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.defaultTransform','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.manualConfig','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.purifierConfig','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.purifyHtml','\"1\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.redactorConfig','\"Standard.json\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.removeEmptyTags','\"1\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.removeInlineStyles','\"1\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.removeNbsp','\"1\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.showHtmlButtonForNonAdmins','\"\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.showUnpermittedFiles','false'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.showUnpermittedVolumes','false'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.settings.uiMode','\"enlarged\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.translationKeyFormat','null'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.translationMethod','\"none\"'),('superTableBlockTypes.ebe29a60-6556-4cc8-9b8e-49e11b5d5921.fields.1c00e1f6-a02c-4db7-b8db-22f55c91a4d2.type','\"craft\\\\redactor\\\\Field\"'),('system.edition','\"solo\"'),('system.live','true'),('system.name','\"JayCraft\"'),('system.schemaVersion','\"3.5.13\"'),('system.timeZone','\"America/Los_Angeles\"'),('users.allowPublicRegistration','false'),('users.defaultGroup','null'),('users.photoSubpath','\"\"'),('users.photoVolumeUid','null'),('users.requireEmailVerification','true'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.autocapitalize','true'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.autocomplete','false'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.autocorrect','true'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.class','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.disabled','false'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.id','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.instructions','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.label','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.max','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.min','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.name','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.orientation','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.placeholder','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.readonly','false'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.requirable','false'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.size','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.step','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.tip','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.title','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.warning','null'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.elements.0.width','100'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.name','\"Content\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.fieldLayouts.2f2bbf20-1bce-4885-bd97-2a58dd5d8e8b.tabs.0.sortOrder','1'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.handle','\"documents\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.hasUrls','true'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.name','\"Documents\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.settings.path','\"@webroot/uploads/documents\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.sortOrder','6'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.type','\"craft\\\\volumes\\\\Local\"'),('volumes.027869ee-8e4f-4d06-bda5-18576335be6c.url','\"$ASSET_BASE_URL/documents\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.autocapitalize','true'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.autocomplete','false'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.autocorrect','true'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.class','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.disabled','false'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.id','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.instructions','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.label','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.max','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.min','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.name','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.orientation','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.placeholder','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.readonly','false'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.requirable','false'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.size','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.step','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.tip','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.title','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.warning','null'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.elements.0.width','100'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.name','\"Content\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.fieldLayouts.b2d91614-8e48-4d38-b024-d18f5c77ef09.tabs.0.sortOrder','1'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.handle','\"video\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.hasUrls','true'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.name','\"Video\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.settings.path','\"@webroot/uploads/video\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.sortOrder','2'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.type','\"craft\\\\volumes\\\\Local\"'),('volumes.696a96fe-981a-49b3-8947-b85b4ec0dc06.url','\"$ASSET_BASE_URL/video\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.autocapitalize','true'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.autocomplete','false'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.autocorrect','true'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.class','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.disabled','false'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.id','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.instructions','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.label','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.max','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.min','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.name','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.orientation','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.placeholder','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.readonly','false'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.requirable','false'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.size','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.step','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.tip','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.title','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.warning','null'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.elements.0.width','100'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.name','\"Content\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.fieldLayouts.8091885d-62d5-4e3e-b6a1-fbcd8133bebd.tabs.0.sortOrder','1'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.handle','\"embed\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.hasUrls','true'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.name','\"Embed\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.settings.path','\"@webroot/uploads/embed\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.sortOrder','4'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.type','\"craft\\\\volumes\\\\Local\"'),('volumes.81307dab-347a-4fb8-b528-45b18ed7d0e0.url','\"$ASSET_BASE_URL/embed\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.autocapitalize','true'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.autocomplete','false'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.autocorrect','true'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.class','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.disabled','false'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.id','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.instructions','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.label','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.max','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.min','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.name','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.orientation','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.placeholder','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.readonly','false'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.requirable','false'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.size','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.step','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.tip','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.title','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.warning','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.0.width','100'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.fieldUid','\"0136bb82-6130-48c6-88cc-015d69da6199\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.instructions','\"\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.label','\"\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.required','\"1\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.tip','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.warning','null'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.elements.1.width','100'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.name','\"Content\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.fieldLayouts.887e33da-703c-497e-b41b-9e0d5c698243.tabs.0.sortOrder','1'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.handle','\"image\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.hasUrls','true'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.name','\"Image\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.settings.path','\"@webroot/uploads/image\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.sortOrder','3'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.type','\"craft\\\\volumes\\\\Local\"'),('volumes.85402e79-b5f4-49d2-b19b-4210804143c7.url','\"$ASSET_BASE_URL/image\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.autocapitalize','true'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.autocomplete','false'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.autocorrect','true'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.class','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.disabled','false'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.id','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.instructions','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.label','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.max','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.min','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.name','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.orientation','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.placeholder','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.readonly','false'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.requirable','false'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.size','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.step','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.tip','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.title','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.warning','null'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.elements.0.width','100'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.name','\"Content\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.fieldLayouts.f0e978c1-1f16-45e0-b813-d205095fd302.tabs.0.sortOrder','1'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.handle','\"audio\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.hasUrls','true'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.name','\"Audio\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.settings.path','\"@webroot/uploads/audio\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.sortOrder','5'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.type','\"craft\\\\volumes\\\\Local\"'),('volumes.d9c51571-b4e8-40c9-abaf-dab181ce75bf.url','\"$ASSET_BASE_URL/audio\"');
/*!40000 ALTER TABLE `craft_projectconfig` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_queue`
--

LOCK TABLES `craft_queue` WRITE;
/*!40000 ALTER TABLE `craft_queue` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_queue` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_relations`
--

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_relations` VALUES (1,10,23,NULL,18,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','304ef041-9173-44a3-8e21-6118b3fedcdc'),(2,10,29,NULL,18,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','91b58214-e81d-45c0-a0be-e5fd8ae00302'),(3,10,36,NULL,18,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','8f65afdf-7ef5-4f1a-aea3-c4c84c856519'),(4,10,42,NULL,18,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','6f0e1cc0-b3ae-4395-8a4f-dcdaa6ae8549'),(5,10,48,NULL,18,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','b0975a23-fcc8-4dd3-b969-c9515a63ef75'),(6,10,54,NULL,18,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','d20fd312-5d99-4212-8773-b1f8fce0ca3e'),(7,29,5,NULL,3,1,'2020-09-20 09:16:31','2020-09-20 09:16:31','f3940848-0fba-482c-8d55-43a8c097a542'),(9,26,5,NULL,13,1,'2020-09-20 09:16:31','2020-09-20 09:16:31','c30cf836-650b-4e61-b501-1d8638dd4cec'),(10,29,5,NULL,13,2,'2020-09-20 09:17:42','2020-09-20 09:17:42','2645a6c3-90b6-4e5f-91de-2b4ad5e12229');
/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_resourcepaths`
--

LOCK TABLES `craft_resourcepaths` WRITE;
/*!40000 ALTER TABLE `craft_resourcepaths` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_resourcepaths` VALUES ('10a82bd0','@app/web/assets/edituser/dist'),('11ca06f8','@app/web/assets/updates/dist'),('1332e934','@craft/web/assets/cp/dist'),('151dcc7d','@lib/selectize'),('15b2be2','@craft/web/assets/cp/dist'),('1666d12a','@craft/web/assets/fieldsettings/dist'),('16e3dfad','@craft/redactor/assets/redactor-plugins/dist/fullscreen'),('18034672','@lib/garnishjs'),('1b25f273','@craft/web/assets/updateswidget/dist'),('1ed7a9b7','@lib/datepicker-i18n'),('1f7188f7','@lib/xregexp'),('203947ee','@lib/prismjs'),('208ed082','@lib/timepicker'),('21b329bd','@app/web/assets/matrix/dist'),('2233a7e6','@marionnewlevant/snitch/assetbundles/snitch/dist'),('22bbdffe','@app/web/assets/editsection/dist'),('22bf4d67','@lib/jquery-touch-events'),('251b71a5','@lib/picturefill'),('256395db','@craft/web/assets/matrix/dist'),('259fb01d','@craft/web/assets/recententries/dist'),('26e35f53','@app/web/assets/admintable/dist'),('2787bffd','@verbb/supertable/resources/dist'),('288414c6','@app/web/assets/plugins/dist'),('2bbe51f4','@lib/d3'),('2c5cf642','@craft/web/assets/updater/dist'),('2c96052d','@ether/seo/web/assets'),('2db841a2','@craft/web/assets/utilities/dist'),('2e6bb87e','@craft/redactor/assets/field/dist'),('2e910b89','@app/web/assets/editentry/dist'),('30d21d28','@app/web/assets/editsection/dist'),('31504f4c','@lib/iframe-resizer'),('32e71254','@lib/timepicker'),('3aedd610','@app/web/assets/plugins/dist'),('3df3705b','@lib/fileupload'),('4163e1f9','@lib/picturefill'),('44f640de','@lib/timepicker'),('46c34fa2','@app/web/assets/editsection/dist'),('46c7dd3b','@lib/jquery-touch-events'),('47411dc6','@lib/iframe-resizer'),('4ae99bd5','@app/web/assets/editentry/dist'),('4aea374','@craft/web/assets/admintable/dist'),('4be222d1','@lib/fileupload'),('4cfc849a','@app/web/assets/plugins/dist'),('4f05ec27','@vaersaagod/matrixmate/assetbundles/matrixmate/dist'),('4fc6c1a8','@lib/d3'),('50f20dd9','@app/web/assets/admintable/dist'),('530a232f','@lib/picturefill'),('538ee297','@craft/web/assets/recententries/dist'),('54ae1fed','@lib/jquery-touch-events'),('54bba051','@anubarak/relabel/resources'),('56281564','@lib/prismjs'),('57a27b37','@app/web/assets/matrix/dist'),('58805903','@app/web/assets/editentry/dist'),('598be007','@lib/fileupload'),('5c82305b','@app/web/assets/sites/dist'),('5daf037e','@lib/d3'),('604a0d0b','@verbb/base/resources/dist'),('607783a0','@craft/web/assets/fieldsettings/dist'),('67db5472','@app/web/assets/updates/dist'),('68c6fb3d','@lib/datepicker-i18n'),('693d0210','@lib/fabric'),('6a4f59d5','@app/web/assets/dashboard/dist'),('6d34a0f9','@craft/web/assets/updateswidget/dist'),('6e1214f8','@lib/garnishjs'),('71655c21','@lib/selectize'),('72bff1fe','@craft/web/assets/admintable/dist'),('749440e0','@appicons'),('7740eab','@lib/selectize'),('774a7968','@craft/web/assets/cp/dist'),('78269b03','@app/web/assets/dashboard/dist'),('7ad3c9b5','@anubarak/relabel/resources'),('7b0918ab','@lib/xregexp'),('7b54c0c6','@lib/fabric'),('7b91092b','@craft/web/assets/fields/dist'),('7c7bd62e','@lib/garnishjs'),('7e314915','@craft/web/assets/pluginstore/dist'),('7f41b54d','@app/web/assets/fields/dist'),('7f6ae8b5','@spicyweb/embeddedassets/resources'),('80867370','@lib/jquery-ui'),('8201b9f','@craft/web/assets/pluginstore/dist'),('839c393e','@craft/web/assets/feed/dist'),('8427debb','@app/web/assets/craftsupport/dist'),('85eb9814','@app/web/assets/matrixsettings/dist'),('8621e6d7','@lib/element-resize-detector'),('86dfa9cb','@craft/web/assets/pluginstoreoauth/dist'),('8889e293','@app/web/assets/updater/dist'),('8a513339','@lib/axios'),('8ab5727a','@app/web/assets/updateswidget/dist'),('8cce4d7f','@craft/web/assets/dashboard/dist'),('92efb1a6','@lib/jquery-ui'),('9304ae13','@craft/web/assets/matrixsettings/dist'),('950e7c7','@app/web/assets/fields/dist'),('959f93f5','@app/web/assets/fieldsettings/dist'),('964e1c6d','@app/web/assets/craftsupport/dist'),('98dcb0ac','@app/web/assets/updateswidget/dist'),('9ae02045','@app/web/assets/updater/dist'),('9e38c2c1','@craft/web/assets/plugins/dist'),('a0139864','@app/web/assets/pluginstore/dist'),('a16be8e','@marionnewlevant/snitch/assetbundles/snitch/dist'),('a41915b7','@lib/jquery.payment'),('a666f2c2','@app/web/assets/recententries/dist'),('a66bab0b','@app/web/assets/tablesettings/dist'),('a7ba904c','@lib/vue'),('a9421799','@app/web/assets/cp/dist'),('a9b14d22','@bower/jquery/dist'),('a9e46e79','@verbb/cpnav/resources/dist'),('ab4eb4e7','@verbb/cpnav/assetbundles/cpnav/dist'),('ac688f7f','@craft/web/assets/editentry/dist'),('ad7c02e7','@app/web/assets/login/dist'),('af41c554','@app/web/assets/utilities/dist'),('b27a5ab2','@app/web/assets/pluginstore/dist'),('b34da383','@craft/web/assets/deprecationerrors/dist'),('b40f3014','@app/web/assets/recententries/dist'),('b83eba5f','@lib/velocity'),('bb2bd54f','@app/web/assets/cp/dist'),('bb6793e7','@craft/redactor/assets/redactor/dist'),('bc89047a','@craft/web/assets/craftsupport/dist'),('bf15c031','@app/web/assets/login/dist'),('c00f71fc','@craft/web/assets/dbbackup/dist'),('c06185eb','@lib/jquery.payment'),('c2309ef1','@app/web/assets/feed/dist'),('c29ee13d','@craft/web/assets/login/dist'),('ca9856f0','@craft/web/assets/craftsupport/dist'),('cb395508','@app/web/assets/utilities/dist'),('cbe6b61','@lib/datepicker-i18n'),('cd3a87c5','@app/web/assets/cp/dist'),('cdc9dd7e','@bower/jquery/dist'),('ce2fe8d5','@lib/velocity'),('d0595c27','@app/web/assets/feed/dist'),('d07af981','@app/web/assets/tablesettings/dist'),('d184a21','@lib/xregexp'),('d1abc2c6','@lib/vue'),('d208473d','@lib/jquery.payment'),('d2f07895','@adigital/cookieconsentbanner/assetbundles/cookieconsentbanner/dist'),('d45924c','@lib/fabric'),('d5cbc59','@anubarak/relabel/resources'),('d602caee','@app/web/assets/pluginstore/dist'),('d805ba1','@craft/web/assets/fields/dist'),('d95097de','@app/web/assets/utilities/dist'),('dc462a03','@lib/velocity'),('dfa01fa8','@bower/jquery/dist'),('e259768b','@lib/element-resize-detector'),('e38ec17f','@app/web/assets/fieldsettings/dist'),('e515fc99','@craft/web/assets/matrixsettings/dist'),('e829904b','@craft/web/assets/plugins/dist'),('f030b45d','@lib/element-resize-detector'),('f3ef9e73','@ether/tagManager/web/assets'),('f3faca9e','@app/web/assets/matrixsettings/dist'),('f5e31c86','@lib'),('f69721fa','@lib/jquery-ui'),('f8380b81','@richhayler/stretch/resources'),('f8407ab6','@mmikkel/cpfieldinspect/resources'),('fadf1ff5','@craft/web/assets/dashboard/dist'),('fc4061b3','@lib/axios'),('fe98b019','@app/web/assets/updater/dist');
/*!40000 ALTER TABLE `craft_resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_revisions`
--

LOCK TABLES `craft_revisions` WRITE;
/*!40000 ALTER TABLE `craft_revisions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_revisions` VALUES (1,3,1,1,NULL),(2,13,1,1,NULL),(3,18,1,1,NULL),(4,13,1,2,''),(5,18,1,2,''),(6,13,1,3,''),(7,13,1,4,''),(8,13,1,5,''),(9,13,1,6,'');
/*!40000 ALTER TABLE `craft_revisions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_searchindex`
--

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_searchindex` VALUES (1,'email',0,1,' hello jaycollett co '),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'firstname',0,1,''),(1,'username',0,1,' admin '),(3,'slug',0,1,' home '),(3,'title',0,1,' homepage '),(5,'slug',0,1,''),(1,'slug',0,1,''),(13,'title',0,1,' components playground '),(14,'slug',0,1,''),(18,'slug',0,1,' this is a lovely quote from a client how nice '),(18,'title',0,1,' esse id exercitation et consequat labore nisi no '),(18,'field',12,1,' john doe '),(21,'slug',0,1,''),(21,'field',8,1,' velit culpa cillum velit quis incididunt '),(21,'field',9,1,' ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident lorem eu enim esse id duis qui irure duis incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum lorem consectetur '),(22,'slug',0,1,''),(22,'field',8,1,' esse id duis qui irure duis '),(22,'field',9,1,' esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu enim sunt tempor magna fugiat quis ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident lorem eu enim esse id duis qui irure duis incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum lorem consectetur '),(20,'slug',0,1,''),(23,'slug',0,1,''),(13,'field',5,1,''),(18,'field',11,1,' esse id exercitation et consequat labore nisi non aliquip velit veniam reprehenderit aliqua do consectetur excepteur voluptate excepteur labore magna voluptate ex sunt consectetur aliquip eu '),(13,'slug',0,1,' components playground '),(55,'slug',0,1,''),(56,'slug',0,1,''),(5,'field',25,1,''),(5,'field',24,1,'');
/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sections`
--

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_sections` VALUES (1,1,'Site','site','structure',1,'all',NULL,'2019-11-11 14:12:21','2020-09-14 07:55:55',NULL,'3a95c5ae-691b-45a9-af63-804ec4f32d8f'),(2,NULL,'News','news','channel',1,'all','[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\"}]','2019-11-11 15:36:42','2020-09-13 20:56:51',NULL,'b6dcff48-9906-46af-add1-70d94f8fa406'),(3,NULL,'Testimonials','testimonials','channel',1,'all',NULL,'2020-09-18 22:27:01','2020-09-18 22:27:01',NULL,'a69bd831-e1ab-4132-84fd-d36a262b6a46');
/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sections_sites`
--

LOCK TABLES `craft_sections_sites` WRITE;
/*!40000 ALTER TABLE `craft_sections_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_sections_sites` VALUES (1,1,1,1,'{parent.uri}/{slug}','site/_index',1,'2019-11-11 14:12:21','2020-09-14 07:56:56','9391f39a-b4f5-4f00-8044-b6e1bfff855b'),(2,2,1,1,'news/{slug}','/pages',1,'2019-11-11 15:36:42','2019-11-11 15:36:42','4b89516d-cc27-4ac3-923a-40e89f390597'),(3,3,1,0,NULL,NULL,1,'2020-09-18 22:27:01','2020-09-18 22:27:01','4fe2dff9-12ea-495f-beab-acc6822b9ec9');
/*!40000 ALTER TABLE `craft_sections_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_seo_redirects`
--

LOCK TABLES `craft_seo_redirects` WRITE;
/*!40000 ALTER TABLE `craft_seo_redirects` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_seo_redirects` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_seo_sitemap`
--

LOCK TABLES `craft_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `craft_seo_sitemap` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_seo_sitemap` VALUES (1,'sections','2','weekly',0.5,1,'2020-09-14 07:59:39','2020-09-14 07:59:39','43963025-ef5e-465f-97ea-dc324fa41d7e'),(2,'sections','1','weekly',0.5,1,'2020-09-14 07:59:39','2020-09-14 07:59:39','d7d41233-932f-4783-84e3-aec7aa8f984e'),(3,'customUrls','','weekly',0.5,1,'2020-09-14 07:59:39','2020-09-14 07:59:39','440e5584-0df9-4e66-b56a-29de7fc6366f');
/*!40000 ALTER TABLE `craft_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sequences`
--

LOCK TABLES `craft_sequences` WRITE;
/*!40000 ALTER TABLE `craft_sequences` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_sequences` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sessions`
--

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_sessions` VALUES (3,1,'rnOhZs0qIVvbq8lpe7ycVX0zUdbgAQ247BZ1RpGOcGsoOZBojeAnM5Ki8Biy9hn3Q3mw2EVTEQqaNtiKY3YAtwu-ET4stieWjIOg','2020-09-14 07:54:33','2020-09-14 08:13:24','94635fbb-9a11-4f72-b0ce-6355c6005d6f'),(4,1,'G55BR2PToWMnxZHpQsW9-WAbFFWJy_q_5amaTUf_lUrmU2mSbweqEXCeEul_16ybaTBG4Y-JUl0Yq8s-htOTx231h5DIlBQn0Lu2','2020-09-15 23:17:05','2020-09-15 23:18:16','c41570ae-dd95-4a33-bdfd-a79ec1230979'),(5,1,'7EMa8mQbFhDTxDqU6pb4rcLNtlQh9wreQeXZWLJSygGQzhCpFOlKszYBTyQGZgxDjkx20C8wG-iAgXH7n1H0p0j6ZsQ3eCN-9Mo0','2020-09-18 22:04:49','2020-09-18 22:04:50','12240a2a-4df9-42b4-a5cc-2d576d5641f3'),(6,1,'qw1eDFB8ppphAT34BJcJUJ0k1d4VdIA-5kpmhdJ3Mq6pLf04aYuXmPOgMFgjbi8C-CnR9W4z8PsQjg16B35wDNjxVAq5PBKxxx6h','2020-09-20 09:10:02','2020-09-20 09:38:16','95741061-34db-4136-9c5e-cb771c901a53');
/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_shunnedmessages`
--

LOCK TABLES `craft_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `craft_shunnedmessages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sitegroups`
--

LOCK TABLES `craft_sitegroups` WRITE;
/*!40000 ALTER TABLE `craft_sitegroups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_sitegroups` VALUES (1,'JayCraft','2019-11-11 14:08:20','2019-11-11 14:08:20',NULL,'0029cea0-a61a-4d4c-a01a-bdf995fd1393');
/*!40000 ALTER TABLE `craft_sitegroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_sites`
--

LOCK TABLES `craft_sites` WRITE;
/*!40000 ALTER TABLE `craft_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_sites` VALUES (1,1,1,1,'JayCraft','default','en-GB',1,'$DEFAULT_SITE_URL',1,'2019-11-11 14:08:20','2019-11-11 14:08:20',NULL,'f1e03893-0fd0-4d36-87b3-4269d461b769');
/*!40000 ALTER TABLE `craft_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_snitch_collisions`
--

LOCK TABLES `craft_snitch_collisions` WRITE;
/*!40000 ALTER TABLE `craft_snitch_collisions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_snitch_collisions` VALUES (53,5,'element',1,'2020-09-20 09:38:11','2020-09-20 09:16:19','2020-09-20 09:38:11','ab78dee6-f0a0-45ef-a2ba-3e893694b4ef');
/*!40000 ALTER TABLE `craft_snitch_collisions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_stc_3_accordions`
--

LOCK TABLES `craft_stc_3_accordions` WRITE;
/*!40000 ALTER TABLE `craft_stc_3_accordions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_stc_3_accordions` VALUES (1,21,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','9bb8a05f-718d-475d-9f33-e12a452c28cc','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(2,22,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','204599cf-93dd-4e4f-aa5b-dd72536252d1','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(3,27,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','d8a623ae-98a9-410c-b386-1227260f03a6','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(4,28,1,'2020-09-18 22:51:46','2020-09-18 22:51:46','744b8e91-d59d-4e53-8293-1c77abc6029e','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(5,34,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','822d6418-b01d-4570-b5b8-d1547c5edeb6','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(6,35,1,'2020-09-18 22:52:43','2020-09-18 22:52:43','a26a24d3-7b92-439b-8b45-70017d1a44c1','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(7,40,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','656b4edb-5a5b-4159-8d17-2ef3d96dcb0d','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(8,41,1,'2020-09-18 23:01:30','2020-09-18 23:01:30','ce47e46a-6bd9-41af-8e8d-dde898bd2ba8','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(9,46,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','9f5491ca-055e-471c-924b-270e4ee55300','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(10,47,1,'2020-09-18 23:01:36','2020-09-18 23:01:36','42356360-67f7-4a7c-95d2-66ee27099f78','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(11,52,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','743d4d15-8c9e-4159-b8d6-cfce0ec5d5f9','Velit culpa cillum velit quis incididunt','<p>Ullamco cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem eu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco magna adipisicing excepteur excepteur laborum Lorem consectetur.</p>'),(12,53,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','099a4b2f-ea53-4c7d-98e8-33f923f3da5a','Esse id duis qui irure duis','<p>Esse id exercitation et consequat labore nisi non aliquip velit \nveniam reprehenderit aliqua. Do consectetur excepteur voluptate \nexcepteur labore magna voluptate ex sunt consectetur aliquip eu.</p>\n<blockquote>Enim sunt tempor magna fugiat quis.</blockquote>\n<p>Ullamco\n cupidatat nostrud eiusmod aute do fugiat nostrud dolor proident Lorem \neu enim. Esse id duis qui irure duis. Incididunt qui occaecat ullamco \nmagna adipisicing excepteur excepteur laborum Lorem consectetur.</p>');
/*!40000 ALTER TABLE `craft_stc_3_accordions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_structureelements`
--

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_structureelements` VALUES (1,1,NULL,1,1,22,0,'2019-11-11 15:37:32','2020-09-18 23:02:28','957cd1da-64c2-41a0-b36a-ec3b095deb46'),(3,1,3,1,2,3,1,'2019-11-11 15:37:40','2019-11-11 15:37:40','bb95065a-aad1-47f5-a3bc-6128feaf9aaa'),(4,1,4,1,4,5,1,'2019-11-11 15:37:40','2019-11-11 15:37:40','5436dd3e-8b91-464d-b20c-a8b8373dcf26'),(5,1,6,1,6,7,1,'2020-09-18 22:10:05','2020-09-18 22:10:05','df2c24e9-881c-41fa-8f92-1a8eac189b17'),(7,1,13,1,8,9,1,'2020-09-18 22:18:22','2020-09-18 22:18:22','af4c6ce0-b22a-43ec-a15a-2e955fe008ca'),(8,1,15,1,20,21,1,'2020-09-18 22:18:22','2020-09-18 23:02:28','89898d67-4238-4c87-b50e-f2a3398bda7d'),(9,1,24,1,18,19,1,'2020-09-18 22:51:46','2020-09-18 23:02:28','c4fe1517-7629-4c1d-a754-940506c1d0a3'),(10,1,31,1,16,17,1,'2020-09-18 22:52:43','2020-09-18 23:02:28','49d4b7a7-9992-4698-956f-d1308426c69f'),(11,1,37,1,14,15,1,'2020-09-18 23:01:30','2020-09-18 23:02:28','fd52080f-701f-4d4d-beb2-c084aa1f5102'),(12,1,43,1,12,13,1,'2020-09-18 23:01:36','2020-09-18 23:02:28','408291a5-e6fb-4e73-9098-b063374b6011'),(13,1,49,1,10,11,1,'2020-09-18 23:02:28','2020-09-18 23:02:28','5649e43b-b606-4256-8e6f-fb96ea6ae2d9');
/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_structures`
--

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_structures` VALUES (1,NULL,'2019-11-11 14:12:21','2019-11-11 14:12:21',NULL,'634a6d92-d705-4817-8b55-789eb7701252');
/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_supertableblocks`
--

LOCK TABLES `craft_supertableblocks` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocks` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_supertableblocks` VALUES (21,20,7,1,1,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','fabf2264-ec8f-4f29-8f8c-f440d94cd145'),(22,20,7,1,2,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','7de351e3-2654-435f-ac74-b38ef91f9ed6'),(27,26,7,1,1,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','2ea97d83-f837-4fe5-b9c3-06b52b4aed0a'),(28,26,7,1,2,NULL,'2020-09-18 22:51:46','2020-09-18 22:51:46','eec894c9-9f3a-41c7-a97b-5f900a3e8e63'),(34,33,7,1,1,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','39f139a2-6ac1-4945-89b6-7e4317438e7e'),(35,33,7,1,2,NULL,'2020-09-18 22:52:43','2020-09-18 22:52:43','338c9e9d-0c20-4bec-b582-2342b139d4eb'),(40,39,7,1,1,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','213f47c1-d405-4e75-82e0-89c4434da97c'),(41,39,7,1,2,NULL,'2020-09-18 23:01:30','2020-09-18 23:01:30','e87c9c78-2a6f-4e0a-9e9b-8e2314372bd8'),(46,45,7,1,1,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','460e0a0c-cec7-4393-b4c8-9dd6e3a2178a'),(47,45,7,1,2,NULL,'2020-09-18 23:01:36','2020-09-18 23:01:36','9f866992-5e62-4588-970c-1fc44ae36cd3'),(52,51,7,1,1,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','9df94665-390e-4499-9cf9-a7946ead5fd5'),(53,51,7,1,2,NULL,'2020-09-18 23:02:28','2020-09-18 23:02:28','eb4c4974-ae78-4d26-a749-513547a3c79b');
/*!40000 ALTER TABLE `craft_supertableblocks` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_supertableblocktypes`
--

LOCK TABLES `craft_supertableblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocktypes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_supertableblocktypes` VALUES (1,7,7,'2020-09-18 22:26:48','2020-09-18 22:26:48','ebe29a60-6556-4cc8-9b8e-49e11b5d5921');
/*!40000 ALTER TABLE `craft_supertableblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_systemmessages`
--

LOCK TABLES `craft_systemmessages` WRITE;
/*!40000 ALTER TABLE `craft_systemmessages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_systemmessages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_taggroups`
--

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_tags`
--

LOCK TABLES `craft_tags` WRITE;
/*!40000 ALTER TABLE `craft_tags` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_tags` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_templatecacheelements`
--

LOCK TABLES `craft_templatecacheelements` WRITE;
/*!40000 ALTER TABLE `craft_templatecacheelements` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_templatecachequeries`
--

LOCK TABLES `craft_templatecachequeries` WRITE;
/*!40000 ALTER TABLE `craft_templatecachequeries` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_templatecachequeries` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_templatecaches`
--

LOCK TABLES `craft_templatecaches` WRITE;
/*!40000 ALTER TABLE `craft_templatecaches` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_templatecaches` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_tokens`
--

LOCK TABLES `craft_tokens` WRITE;
/*!40000 ALTER TABLE `craft_tokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_tokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_usergroups`
--

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_usergroups_users`
--

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_userpermissions`
--

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_userpermissions_users`
--

LOCK TABLES `craft_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_users` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_userpreferences`
--

LOCK TABLES `craft_userpreferences` WRITE;
/*!40000 ALTER TABLE `craft_userpreferences` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_userpreferences` VALUES (1,'{\"language\":\"en-GB\",\"locale\":null,\"weekStartDay\":\"1\",\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');
/*!40000 ALTER TABLE `craft_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_users`
--

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_users` VALUES (1,'admin',NULL,'','','hello@jaycollett.co','$2y$13$jmiGWUX.y7f2J01PMkxC/OVcfjfbNEwN4zuQQuabZJEmmru.PEI3.',1,0,0,0,'2020-09-20 09:10:02',NULL,NULL,NULL,'2020-09-15 23:16:42',NULL,1,NULL,NULL,NULL,0,'2020-09-14 07:54:33','2019-11-11 14:08:20','2020-09-20 09:10:02','a2815700-ac37-4ebe-ab86-d0525c46f20b');
/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_volumefolders`
--

LOCK TABLES `craft_volumefolders` WRITE;
/*!40000 ALTER TABLE `craft_volumefolders` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_volumefolders` VALUES (1,NULL,NULL,'Temporary source',NULL,'2019-11-11 16:46:03','2019-11-11 16:46:03','f767c50f-8930-408c-9648-ec116ee7e131'),(2,1,NULL,'user_1','user_1/','2019-11-11 16:46:03','2019-11-11 16:46:03','520e1d3e-b75e-4c71-bc96-c68cad29e0c5'),(3,NULL,1,'Uploads','','2020-09-14 08:08:30','2020-09-19 11:16:27','30ae2c8e-290f-49fa-8d53-6ddad6b06ab9'),(4,3,1,'embedded','embedded/','2020-09-18 22:47:51','2020-09-18 22:47:51','f0b12a64-6fd7-4e49-80d9-d9b24b11acec'),(5,NULL,2,'Video','','2020-09-19 11:12:02','2020-09-19 11:15:45','52d5a3b3-b45c-4f33-bbdc-e917b00155fe'),(6,NULL,3,'Image','','2020-09-19 11:12:39','2020-09-19 11:16:02','27f63c1b-3855-4781-9ebf-19da543564af'),(7,NULL,4,'Embed','','2020-09-19 11:13:22','2020-09-19 11:16:50','e9dd9867-a48f-4a87-99fe-39ac17159b80'),(8,NULL,5,'Audio','','2020-09-19 11:15:05','2020-09-19 11:15:05','a72af079-f2e6-47ee-a0a1-6863408ead78'),(9,NULL,6,'Documents','','2020-09-19 11:21:39','2020-09-19 11:21:39','c4f3686f-cf46-4999-a708-10363b85c89d');
/*!40000 ALTER TABLE `craft_volumefolders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_volumes`
--

LOCK TABLES `craft_volumes` WRITE;
/*!40000 ALTER TABLE `craft_volumes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_volumes` VALUES (1,3,'Uploads','uploads','craft\\volumes\\Local',1,'$ASSET_BASE_URL','{\"path\":\"@webroot/uploads\"}',1,'2020-09-14 08:08:30','2020-09-19 11:16:27','2020-09-19 11:21:16','25e8c49e-de76-4f02-b0f2-4412c37bdad4'),(2,15,'Video','video','craft\\volumes\\Local',1,'$ASSET_BASE_URL/video','{\"path\":\"@webroot/uploads/video\"}',2,'2020-09-19 11:12:02','2020-09-19 11:16:35',NULL,'696a96fe-981a-49b3-8947-b85b4ec0dc06'),(3,16,'Image','image','craft\\volumes\\Local',1,'$ASSET_BASE_URL/image','{\"path\":\"@webroot/uploads/image\"}',3,'2020-09-19 11:12:39','2020-09-19 11:16:02',NULL,'85402e79-b5f4-49d2-b19b-4210804143c7'),(4,17,'Embed','embed','craft\\volumes\\Local',1,'$ASSET_BASE_URL/embed','{\"path\":\"@webroot/uploads/embed\"}',4,'2020-09-19 11:13:22','2020-09-19 11:16:50',NULL,'81307dab-347a-4fb8-b528-45b18ed7d0e0'),(5,18,'Audio','audio','craft\\volumes\\Local',1,'$ASSET_BASE_URL/audio','{\"path\":\"@webroot/uploads/audio\"}',5,'2020-09-19 11:15:05','2020-09-19 11:15:05',NULL,'d9c51571-b4e8-40c9-abaf-dab181ce75bf'),(6,19,'Documents','documents','craft\\volumes\\Local',1,'$ASSET_BASE_URL/documents','{\"path\":\"@webroot/uploads/documents\"}',6,'2020-09-19 11:21:39','2020-09-19 11:21:39',NULL,'027869ee-8e4f-4d06-bda5-18576335be6c');
/*!40000 ALTER TABLE `craft_volumes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craft_widgets`
--

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `craft_widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','cba29b9c-707c-4776-8534-40989427e3f3'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','ad9b0c17-1765-406e-9e9a-c26af591f110'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','94cd5261-e144-4cb6-84e5-66fc3cf4452e'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','8737a4b0-c08a-4241-a8a5-3c549e51791f');
/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping routines for database 'jaycraft'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 10:38:16
