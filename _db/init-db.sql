# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.26)
# Database: jaycraft
# Generation Time: 2020-09-13 22:36:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table craft_assetindexdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetindexdata`;

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



# Dump of table craft_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assets`;

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



# Dump of table craft_assettransformindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransformindex`;

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



# Dump of table craft_assettransforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransforms`;

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



# Dump of table craft_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categories`;

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



# Dump of table craft_categorygroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups`;

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



# Dump of table craft_categorygroups_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups_sites`;

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



# Dump of table craft_changedattributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_changedattributes`;

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



# Dump of table craft_changedfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_changedfields`;

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



# Dump of table craft_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_content`;

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_content_siteId_idx` (`siteId`),
  KEY `craft_content_title_idx` (`title`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,1,NULL,'2019-11-11 14:08:20','2019-11-11 14:08:20','5e9b98ff-1d0a-45b4-b611-cd2a33ceaa1c'),
	(3,3,1,'Homepage','2019-11-11 15:37:40','2019-11-11 15:37:40','67b2cdf1-6511-4761-a47b-6b3bcfd30a97'),
	(4,4,1,'Homepage','2019-11-11 15:37:40','2019-11-11 15:37:40','2584d5c9-9371-4126-9275-d8c69032880c'),
	(5,5,1,NULL,'2020-09-13 20:58:27','2020-09-13 21:01:31','11eeebaf-c6c5-47ff-b778-7e90ba621d93');

/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_cpnav_layout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_cpnav_layout`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_cpnav_layout` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_layout` DISABLE KEYS */;

INSERT INTO `craft_cpnav_layout` (`id`, `name`, `isDefault`, `permissions`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Default',1,NULL,1,'2019-11-11 16:42:42','2020-09-13 20:58:25','eaecba95-0830-4740-9f54-bd68ef3c6896');

/*!40000 ALTER TABLE `craft_cpnav_layout` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_cpnav_navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_cpnav_navigation`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_cpnav_navigation` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_navigation` DISABLE KEYS */;

INSERT INTO `craft_cpnav_navigation` (`id`, `layoutId`, `handle`, `prevLabel`, `currLabel`, `enabled`, `order`, `prevUrl`, `url`, `icon`, `customIcon`, `type`, `newWindow`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'dashboard','Dashboard','Dashboard',1,1,'dashboard','dashboard','gauge',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:11','4535f7ad-0882-4ec2-866e-b5ec95a4c25c'),
	(2,1,'entries','Entries','Pages',1,2,'entries','entries','section',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:11','fc473cae-426d-43ca-9d6d-d6485a1cd989'),
	(3,1,'tags','Tags','Tags',1,3,'tags','tags','/Users/jaycollett/Sites/jaycollett/jaycraft/vendor/ether/tags/src/icon-mask.svg',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:11','b187d8a1-9db4-41ce-8812-d3a45747272d'),
	(5,1,'seo','SEO','SEO',1,4,'seo','seo','/Users/jaycollett/Sites/jaycollett/jaycraft/vendor/ether/seo/src/icon-mask.svg',NULL,'0',0,'2019-11-11 16:42:42','2019-11-11 16:42:42','922826c0-96c6-449c-919b-74fea6d21ebd'),
	(6,1,'utilities','Utilities','Utilities',1,7,'utilities','utilities','tool',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:33','2c1139f5-70e3-4e70-ae29-b22083214363'),
	(7,1,'settings','Settings','Settings',1,6,'settings','settings','settings',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:12','465e36a1-3559-4f34-b839-245fb9e6d1f6'),
	(8,1,'plugin-store','Plugin Store','Plugin Store',1,8,'plugin-store','plugin-store','plugin',NULL,'0',0,'2019-11-11 16:42:42','2020-09-13 21:30:35','3a400182-e8ba-46ca-9d2e-854b9d0ade77'),
	(10,1,'siteDetails','Site details','Site details',1,5,'globals','globals','globe',NULL,'manual',0,'2020-09-13 21:30:02','2020-09-13 21:30:11','293ba1dc-10c8-45cc-9a1b-5798d3fc3993');

/*!40000 ALTER TABLE `craft_cpnav_navigation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_cpnav_pending_navigations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_cpnav_pending_navigations`;

CREATE TABLE `craft_cpnav_pending_navigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginNavItem` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_craftidtokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_craftidtokens`;

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



# Dump of table craft_deprecationerrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_deprecationerrors`;

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



# Dump of table craft_drafts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_drafts`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_elementindexsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elementindexsettings`;

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'craft\\elements\\Entry','{\"sourceOrder\":[[\"key\",\"*\"],[\"heading\",\"Site\"],[\"key\",\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\"],[\"key\",\"section:b6dcff48-9906-46af-add1-70d94f8fa406\"]],\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"type\",\"3\":\"postDate\",\"4\":\"link\"}},\"section:3a95c5ae-691b-45a9-af63-804ec4f32d8f\":{\"tableAttributes\":{\"1\":\"type\",\"2\":\"link\"}},\"section:b6dcff48-9906-46af-add1-70d94f8fa406\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"link\"}}}}','2019-11-11 15:37:28','2019-11-11 15:37:28','e5416cea-112d-4e0c-9472-c73a523113a7');

/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;

INSERT INTO `craft_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2019-11-11 14:08:20','2019-11-11 14:08:20',NULL,'acd97fb0-d20d-4ccb-a137-17698687e2d1'),
	(3,NULL,NULL,NULL,'craft\\elements\\Entry',1,0,'2019-11-11 15:37:40','2019-11-11 15:37:40',NULL,'f0b246f6-bb7c-49d4-a766-a79cdd8bf0e3'),
	(4,NULL,1,NULL,'craft\\elements\\Entry',1,0,'2019-11-11 15:37:40','2019-11-11 15:37:40',NULL,'2e6bddce-abeb-40e0-88d2-9adb4340d5ea'),
	(5,NULL,NULL,2,'craft\\elements\\GlobalSet',1,0,'2020-09-13 20:58:27','2020-09-13 21:01:31',NULL,'1e844348-5f0b-45bb-832f-4f9f9cf83e41');

/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements_sites`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_elements_sites` WRITE;
/*!40000 ALTER TABLE `craft_elements_sites` DISABLE KEYS */;

INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,1,NULL,NULL,1,'2019-11-11 14:08:20','2019-11-11 14:08:20','0d38a93d-72a6-4a22-8b4b-b85911eea105'),
	(3,3,1,'__home__','__home__',1,'2019-11-11 15:37:40','2019-11-11 15:37:41','cbd24c0e-bf96-4342-a627-004d1fe7453e'),
	(4,4,1,'__home__','__home__',1,'2019-11-11 15:37:40','2019-11-11 15:37:40','84479acc-0ee6-4b82-b25f-0802cd6cee99'),
	(5,5,1,NULL,NULL,1,'2020-09-13 20:58:27','2020-09-13 20:58:27','7ebabc6c-e9de-44eb-9f32-c3c8f2cb4605');

/*!40000 ALTER TABLE `craft_elements_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entries`;

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

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;

INSERT INTO `craft_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,1,NULL,2,1,'2019-11-11 15:37:00',NULL,NULL,'2019-11-11 15:37:40','2019-11-11 15:37:40','579222c2-0d78-4dc7-b271-12c656a37d46'),
	(4,1,NULL,2,1,'2019-11-11 15:37:00',NULL,NULL,'2019-11-11 15:37:40','2019-11-11 15:37:40','6263aa08-8f7e-4ef3-82c0-b55c74c62405');

/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrytypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrytypes`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,1,NULL,'Standard content','standardContent',1,'site',NULL,'',1,'2019-11-11 14:12:21','2019-11-11 14:12:45',NULL,'bcd353ce-367b-47be-853c-bf1f11d42dc0'),
	(2,1,NULL,'Homepage','homepage',1,'site',NULL,'',2,'2019-11-11 14:12:56','2019-11-11 14:12:56',NULL,'4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7'),
	(3,2,NULL,'News','news',1,'site',NULL,NULL,1,'2019-11-11 15:36:42','2019-11-11 15:36:42',NULL,'7e581873-0901-4b52-bc16-187532c325c6');

/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldgroups`;

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldgroups_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Globals','2019-11-11 14:08:20','2020-09-13 20:59:15','9d0976d6-6ff8-4790-9e75-5bb37d331d19');

/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayoutfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(7,1,4,3,1,0,'2020-09-13 21:01:17','2020-09-13 21:01:17','b8bac71d-c1f2-4f76-88bc-c7db0f00ddb0'),
	(8,1,4,2,1,1,'2020-09-13 21:01:17','2020-09-13 21:01:17','8732f952-928b-4d8c-bdbf-c5b363b133d1'),
	(9,2,5,1,0,0,'2020-09-13 21:01:31','2020-09-13 21:01:31','4c11d0fb-6685-4553-8e55-47098e995a31');

/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouts`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,'craft\\elements\\MatrixBlock','2020-09-13 21:00:42','2020-09-13 21:00:42',NULL,'87f55719-a8b5-4049-a529-246f86e3c86c'),
	(2,'craft\\elements\\GlobalSet','2020-09-13 21:01:31','2020-09-13 21:01:31',NULL,'8762c3d1-6cfc-4a3a-9590-3e15f33414e7');

/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouttabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(4,1,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"d29ea3e7-f083-4acc-a14f-9bd7e8d5edec\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"5e90386a-ba13-4916-b959-28901b19935f\"}]',1,'2020-09-13 21:01:17','2020-09-13 21:01:17','acd30582-ad1f-4ec0-affa-94d9ba0de593'),
	(5,2,'Social','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"}]',1,'2020-09-13 21:01:31','2020-09-13 21:01:31','55b525e6-9154-4447-876c-14b79bac7a08');

/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fields`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'Social accounts','socialAccounts','global','Add social media accounts',0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_socialaccounts}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}','2020-09-13 21:00:41','2020-09-13 21:01:03','c32ae7fc-8956-4f92-a0c3-9d6560441ccd'),
	(2,NULL,'Account URL','accountUrl','matrixBlockType:99af3330-1bfc-43d0-a72c-fa1bb49f2328','Paste your account\'s full URL.',0,'none',NULL,'craft\\fields\\Url','{\"maxLength\":\"255\",\"placeholder\":\"\"}','2020-09-13 21:00:42','2020-09-13 21:00:42','5e90386a-ba13-4916-b959-28901b19935f'),
	(3,NULL,'Account','account','matrixBlockType:99af3330-1bfc-43d0-a72c-fa1bb49f2328','Select which account you\'d like to add.',0,'none',NULL,'craft\\fields\\Dropdown','{\"optgroups\":true,\"options\":[{\"label\":\"Instagram\",\"value\":\"instagram\",\"default\":\"\"},{\"label\":\"Facebook\",\"value\":\"facebook\",\"default\":\"\"},{\"label\":\"LinkedIn\",\"value\":\"linkedin\",\"default\":\"\"},{\"label\":\"Pinterest\",\"value\":\"pinterest\",\"default\":\"\"},{\"label\":\"Twitter\",\"value\":\"twitter\",\"default\":\"\"},{\"label\":\"YouTube\",\"value\":\"youtube\",\"default\":\"\"}]}','2020-09-13 21:00:42','2020-09-13 21:00:42','d29ea3e7-f083-4acc-a14f-9bd7e8d5edec');

/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_globalsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_globalsets`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(5,'Site details','siteDetails',2,'2020-09-13 20:58:27','2020-09-13 21:01:31','1e844348-5f0b-45bb-832f-4f9f9cf83e41');

/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_gqlschemas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_gqlschemas`;

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



# Dump of table craft_gqltokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_gqltokens`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_gqltokens` WRITE;
/*!40000 ALTER TABLE `craft_gqltokens` DISABLE KEYS */;

INSERT INTO `craft_gqltokens` (`id`, `name`, `accessToken`, `enabled`, `expiryDate`, `lastUsed`, `schemaId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Public Token','__PUBLIC__',0,NULL,NULL,NULL,'2020-09-13 20:56:53','2020-09-13 20:56:53','da665815-5799-4c58-b474-75eb5c11468c');

/*!40000 ALTER TABLE `craft_gqltokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_info`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'3.5.9','3.5.13',0,'jsmsfncvqwhm','vifzkbjjglgr','2019-11-11 14:08:20','2020-09-13 21:44:55','1d4d6615-1374-477c-9f8d-61cfb45b0f0f');

/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocks`;

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



# Dump of table craft_matrixblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocktypes`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,1,'Account','account',1,'2020-09-13 21:00:42','2020-09-13 21:00:42','99af3330-1bfc-43d0-a72c-fa1bb49f2328');

/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_socialaccounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_socialaccounts`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_migrations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;

INSERT INTO `craft_migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'craft','Install','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','162bc375-8680-4f95-9e33-3e25e256cb92'),
	(2,'craft','m150403_183908_migrations_table_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3984d017-57d7-48c0-9566-b626ae30c652'),
	(3,'craft','m150403_184247_plugins_table_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d1a4569d-a34f-4cbd-958a-a389bfd06d94'),
	(4,'craft','m150403_184533_field_version','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b48c86c5-821b-4694-a272-f2a0d5c4a582'),
	(5,'craft','m150403_184729_type_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','09500259-0408-4df3-8a20-ca4499e0c41b'),
	(6,'craft','m150403_185142_volumes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1812f1c1-b569-42a4-8772-ea84d0e44d98'),
	(7,'craft','m150428_231346_userpreferences','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3125ec2f-b5fe-41ef-b2d2-aac80a045bbd'),
	(8,'craft','m150519_150900_fieldversion_conversion','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','677c7664-14f8-4609-8ab8-353044a69a20'),
	(9,'craft','m150617_213829_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4675e591-a8c0-4181-84c0-9e9a9c3ff0f0'),
	(10,'craft','m150721_124739_templatecachequeries','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','25af9d61-d1ad-4c6a-90c1-dcc3134f5e57'),
	(11,'craft','m150724_140822_adjust_quality_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c8c9154b-247e-4958-ad36-78dbd7bba160'),
	(12,'craft','m150815_133521_last_login_attempt_ip','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1775d367-b670-45ff-bf08-d0b4ecffc761'),
	(13,'craft','m151002_095935_volume_cache_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e7db89f4-fac5-4bd1-b615-a2fcf7f1fc30'),
	(14,'craft','m151005_142750_volume_s3_storage_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','83e795e1-5d74-4928-aeb8-cbb3628c0f12'),
	(15,'craft','m151016_133600_delete_asset_thumbnails','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','40f9c527-abd4-4101-96bf-282062a6af2c'),
	(16,'craft','m151209_000000_move_logo','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e73b466b-8d46-48d9-85fa-458647c972bc'),
	(17,'craft','m151211_000000_rename_fileId_to_assetId','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ffa16c1d-2da3-4dd0-8115-545dd50c4662'),
	(18,'craft','m151215_000000_rename_asset_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ae7f0b86-ab06-4d48-974c-56bf64595a27'),
	(19,'craft','m160707_000001_rename_richtext_assetsource_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7b6fcbc7-6889-4f9b-8841-726d07cf2453'),
	(20,'craft','m160708_185142_volume_hasUrls_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ce74d71f-e46f-4882-85da-091aca2667fd'),
	(21,'craft','m160714_000000_increase_max_asset_filesize','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c69d460e-c756-4727-8b91-f723aef5833e'),
	(22,'craft','m160727_194637_column_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','20d39cad-c5c2-484f-b4a1-60d970f970aa'),
	(23,'craft','m160804_110002_userphotos_to_assets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bb7addf3-100e-4f9a-bac2-ea0f2f981078'),
	(24,'craft','m160807_144858_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b391b83c-6321-4c10-a4e2-7ae634eea7d5'),
	(25,'craft','m160829_000000_pending_user_content_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','de8f8099-0666-441f-8a8b-f9202b3081b3'),
	(26,'craft','m160830_000000_asset_index_uri_increase','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c337c118-fa1e-4fa0-980a-cbf8f0bd5bdd'),
	(27,'craft','m160912_230520_require_entry_type_id','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','16244f29-8e0a-4c03-8005-ad517ea53b74'),
	(28,'craft','m160913_134730_require_matrix_block_type_id','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','760e3014-7296-4fff-94e7-a6ad1b813bdf'),
	(29,'craft','m160920_174553_matrixblocks_owner_site_id_nullable','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9f5be653-5f1f-47a6-8e3a-dc3caca6e08d'),
	(30,'craft','m160920_231045_usergroup_handle_title_unique','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b0b6059c-0891-4dd3-93cb-0343eac831d5'),
	(31,'craft','m160925_113941_route_uri_parts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','34382cb0-417a-405c-9859-880da61a279e'),
	(32,'craft','m161006_205918_schemaVersion_not_null','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7153adff-da02-4d35-bdc6-a0d482559fd4'),
	(33,'craft','m161007_130653_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e851d981-61c5-4187-a95f-23c0aa986d6f'),
	(34,'craft','m161013_175052_newParentId','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d87e1e51-6923-46c4-87a9-9393c96ad112'),
	(35,'craft','m161021_102916_fix_recent_entries_widgets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1f8fa00d-4039-4086-b816-3959a48039fb'),
	(36,'craft','m161021_182140_rename_get_help_widget','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b4e39987-3a25-4ca9-ab6f-5e568db982d6'),
	(37,'craft','m161025_000000_fix_char_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e3e880cb-fc5d-4158-8275-a7a0e075cd13'),
	(38,'craft','m161029_124145_email_message_languages','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','aab5443f-af55-49b3-a13b-12f16e103b28'),
	(39,'craft','m161108_000000_new_version_format','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b62f3f7b-55ec-4db8-8741-d722b3b26888'),
	(40,'craft','m161109_000000_index_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3aad327d-2c79-46ea-a49f-ee3567b5ce93'),
	(41,'craft','m161122_185500_no_craft_app','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7c725efd-f187-4557-8ded-14dc81248ceb'),
	(42,'craft','m161125_150752_clear_urlmanager_cache','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1534ab3d-e317-4756-b3d1-fa9dfe1ff73d'),
	(43,'craft','m161220_000000_volumes_hasurl_notnull','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ed533cad-6271-4c87-93b8-6fac2ed0530d'),
	(44,'craft','m170114_161144_udates_permission','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','41816e20-4d0f-4395-b099-e0c2802532f4'),
	(45,'craft','m170120_000000_schema_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e04f1cb1-a3e4-4602-9da2-597db09a6e42'),
	(46,'craft','m170126_000000_assets_focal_point','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','609ab274-4a31-42ba-8ea0-14e4ba2c2a95'),
	(47,'craft','m170206_142126_system_name','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e1e1deb2-0ff9-4a24-8955-2ce8726ac117'),
	(48,'craft','m170217_044740_category_branch_limits','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','62b2e5d5-1435-4e82-9917-38b99ffe3554'),
	(49,'craft','m170217_120224_asset_indexing_columns','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','2559dcbe-e9de-45ff-a12e-0c9af6f9ea5b'),
	(50,'craft','m170223_224012_plain_text_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ad3ac3dc-295f-4c33-b55f-f9cb555f7a25'),
	(51,'craft','m170227_120814_focal_point_percentage','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7ce24853-84fd-49c2-be18-9d5706a2ab45'),
	(52,'craft','m170228_171113_system_messages','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c7775628-dc27-45ef-a6b8-75ea10833048'),
	(53,'craft','m170303_140500_asset_field_source_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b8eec7a8-576a-4530-b505-1737346fd85e'),
	(54,'craft','m170306_150500_asset_temporary_uploads','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6b8fe0df-0fc1-4470-ae47-3ce2398fcd02'),
	(55,'craft','m170523_190652_element_field_layout_ids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','75683753-7a66-4c85-9849-6fbf16545823'),
	(56,'craft','m170612_000000_route_index_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8ccc477e-12fb-4032-9ac1-389a9db388cb'),
	(57,'craft','m170621_195237_format_plugin_handles','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0c1c21aa-77d1-42a6-9a46-7d1b48bf85bf'),
	(58,'craft','m170630_161027_deprecation_line_nullable','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','075007a3-6af0-42b2-aa13-177b5334efd6'),
	(59,'craft','m170630_161028_deprecation_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','66966911-a1c9-4dcb-bf9f-1ba4e6cc3347'),
	(60,'craft','m170703_181539_plugins_table_tweaks','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','98323a12-dd56-4728-9f88-2ade45135fc2'),
	(61,'craft','m170704_134916_sites_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','eafa49db-d93c-45d0-bb62-f691143edf2d'),
	(62,'craft','m170706_183216_rename_sequences','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6cf65d61-52be-4e86-8c4f-4a3e14e7c6fe'),
	(63,'craft','m170707_094758_delete_compiled_traits','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','575e8df1-4ccc-481b-90c0-c2408c729d7e'),
	(64,'craft','m170731_190138_drop_asset_packagist','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e1123598-901c-4eaa-87dd-3cd1d27831d7'),
	(65,'craft','m170810_201318_create_queue_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','08e54b19-ce87-425c-b5be-2d04f3b85f65'),
	(66,'craft','m170816_133741_delete_compiled_behaviors','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0a79aa86-4028-4f8e-8728-1a41214ed442'),
	(67,'craft','m170903_192801_longblob_for_queue_jobs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c21c2259-4420-4071-b337-f7471308e5ed'),
	(68,'craft','m170914_204621_asset_cache_shuffle','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','233b95c4-07ad-46bc-a9cc-372a6ed9c974'),
	(69,'craft','m171011_214115_site_groups','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4cab93cf-a82e-471d-ace9-cf6b6946f33e'),
	(70,'craft','m171012_151440_primary_site','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f46f5914-1e01-48aa-8b14-a4cdf147076d'),
	(71,'craft','m171013_142500_transform_interlace','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b4b3104d-f0d3-4094-a57f-596f92629e43'),
	(72,'craft','m171016_092553_drop_position_select','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d606a24b-0d84-49e1-a8e7-bb1d7e1777af'),
	(73,'craft','m171016_221244_less_strict_translation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a93c0fe9-8e27-4c3e-8e8d-a35c922e4228'),
	(74,'craft','m171107_000000_assign_group_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','16d9ca66-577a-48b5-bf8e-29defb1272d1'),
	(75,'craft','m171117_000001_templatecache_index_tune','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8bd8bf22-9f3a-4ac6-9ce2-f98c2de5bd64'),
	(76,'craft','m171126_105927_disabled_plugins','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','22bee72d-770e-48e5-9786-3cdc278f51e9'),
	(77,'craft','m171130_214407_craftidtokens_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','438fd8da-88e1-453b-b2ad-7b0f3cba1802'),
	(78,'craft','m171202_004225_update_email_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e3778022-9b14-47a2-bb1f-3fc590eac9c1'),
	(79,'craft','m171204_000001_templatecache_index_tune_deux','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0006ec48-57b8-48a9-bf7d-56d88a9d616d'),
	(80,'craft','m171205_130908_remove_craftidtokens_refreshtoken_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0d740e95-297a-436e-b58a-ce412f46d90e'),
	(81,'craft','m171218_143135_longtext_query_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3f673c3f-a614-4974-87a3-8cb6ea8f64b9'),
	(82,'craft','m171231_055546_environment_variables_to_aliases','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','22dba57b-0000-4b6d-a289-0b3f4203dd36'),
	(83,'craft','m180113_153740_drop_users_archived_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','65ac9875-1d76-4831-af86-f908f861e982'),
	(84,'craft','m180122_213433_propagate_entries_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9e69c1a7-090b-40d3-9e93-b857b91d2528'),
	(85,'craft','m180124_230459_fix_propagate_entries_values','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4aacddd9-b936-4ca9-8a43-eaebc2211ace'),
	(86,'craft','m180128_235202_set_tag_slugs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','086d7bc5-aa76-4b50-b4b5-3a650cbbe01e'),
	(87,'craft','m180202_185551_fix_focal_points','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','c6c75aa4-3cd7-44eb-94f3-7c3e567a6307'),
	(88,'craft','m180217_172123_tiny_ints','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d7efa069-ed0f-419a-a5f0-4309e2007adf'),
	(89,'craft','m180321_233505_small_ints','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','33a08649-1e70-40fc-ab56-9a92fc947a94'),
	(90,'craft','m180328_115523_new_license_key_statuses','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','7cfed1b5-b329-4cc7-b041-cceb44dcb372'),
	(91,'craft','m180404_182320_edition_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','26714007-08ac-4909-8c52-127acd0983cc'),
	(92,'craft','m180411_102218_fix_db_routes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3bc9bca8-2f6f-4f5a-b2c0-690affb3ba13'),
	(93,'craft','m180416_205628_resourcepaths_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','97e96056-ea70-4ee8-8486-117af67b07fc'),
	(94,'craft','m180418_205713_widget_cleanup','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ef7670f5-4a7e-4f6a-9320-893d58f76090'),
	(95,'craft','m180425_203349_searchable_fields','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b7bfc396-9c11-402a-839d-1ee01f3e60dd'),
	(96,'craft','m180516_153000_uids_in_field_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','9ddf9543-d396-46a3-9759-5625c6cbe4e6'),
	(97,'craft','m180517_173000_user_photo_volume_to_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0b7da992-2c71-4ff5-be68-b9d1bebc8b10'),
	(98,'craft','m180518_173000_permissions_to_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','69a3a0cd-d375-488b-951a-5580ca5cb137'),
	(99,'craft','m180520_173000_matrix_context_to_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','47e0a9a3-e84e-48fb-aa19-600ab7ec40a9'),
	(100,'craft','m180521_173000_initial_yml_and_snapshot','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bf643b9b-7d10-4ede-9708-54bc81015d56'),
	(101,'craft','m180731_162030_soft_delete_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d6ec5749-8398-4683-9794-713dc8be4a23'),
	(102,'craft','m180810_214427_soft_delete_field_layouts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ec63b21e-6f5b-4039-baab-648787333b78'),
	(103,'craft','m180810_214439_soft_delete_elements','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f74a7824-3faf-4896-af9b-7814f25e5bdb'),
	(104,'craft','m180824_193422_case_sensitivity_fixes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','0797bbde-55cf-4b5c-a26b-bf82db6d4f94'),
	(105,'craft','m180901_151639_fix_matrixcontent_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d60d0b4e-0e8c-48aa-865b-aa01131f8ec4'),
	(106,'craft','m180904_112109_permission_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4ea749b4-02d4-4e1a-b981-1c23dbb7f937'),
	(107,'craft','m180910_142030_soft_delete_sitegroups','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f821b7da-86dd-44ee-b89e-3a0b967965fa'),
	(108,'craft','m181011_160000_soft_delete_asset_support','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','13017e2c-2aac-4022-87d3-6c81df19ff9b'),
	(109,'craft','m181016_183648_set_default_user_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6fd1c59d-7feb-48a4-b3d1-424814978d8d'),
	(110,'craft','m181017_225222_system_config_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8e8ea695-918c-4d97-9c7f-63d3495f7596'),
	(111,'craft','m181018_222343_drop_userpermissions_from_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a7d94ed6-b1b3-47b4-b162-c5522c8ef77e'),
	(112,'craft','m181029_130000_add_transforms_routes_to_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','98e2d06a-dcdb-467f-a87a-9c62625972d5'),
	(113,'craft','m181112_203955_sequences_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8c1bd5d5-f665-4aaf-a135-da2db47dcbcb'),
	(114,'craft','m181121_001712_cleanup_field_configs','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bc3d0ab0-0d8b-445a-ba27-9e9bc2761337'),
	(115,'craft','m181128_193942_fix_project_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e4bda4c3-f0b8-4b5b-b1e3-735023a8e4f3'),
	(116,'craft','m181130_143040_fix_schema_version','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1e579023-b006-48f2-83ce-967dac7b584a'),
	(117,'craft','m181211_143040_fix_entry_type_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','3f400000-d760-4275-b105-c90944b141bf'),
	(118,'craft','m181213_102500_config_map_aliases','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f6e5a54e-3da3-4eb4-bc47-b83ed4b18c8f'),
	(119,'craft','m181217_153000_fix_structure_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e822dbd0-adc6-44d4-8315-c02be9251c50'),
	(120,'craft','m190104_152725_store_licensed_plugin_editions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4ac7de81-1506-48db-a863-083d4784dcb9'),
	(121,'craft','m190108_110000_cleanup_project_config','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','693861ff-f0c4-4eff-894c-4fae361a15b4'),
	(122,'craft','m190108_113000_asset_field_setting_change','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bb21fc39-9d30-4179-b1b1-466f78cb04d9'),
	(123,'craft','m190109_172845_fix_colspan','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','fb13d9c2-b49f-4061-a6a4-2121d2fe3009'),
	(124,'craft','m190110_150000_prune_nonexisting_sites','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','709d6acb-67d5-4450-9592-ca8251ea6297'),
	(125,'craft','m190110_214819_soft_delete_volumes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f1814f1f-ffc9-4db2-ad31-16712b917483'),
	(126,'craft','m190112_124737_fix_user_settings','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','1ef52dc4-0ca3-4ed5-85f4-99889b3913dd'),
	(127,'craft','m190112_131225_fix_field_layouts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8c16e4c8-7108-4e52-bc93-7bc2ad1aa846'),
	(128,'craft','m190112_201010_more_soft_deletes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e15a8828-6112-45de-b4fd-87edf2241a8e'),
	(129,'craft','m190114_143000_more_asset_field_setting_changes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','909fa671-54d4-46ee-86c9-335baacd9a48'),
	(130,'craft','m190121_120000_rich_text_config_setting','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','925dcae4-b9f6-4548-b04f-eff5d8d1f3de'),
	(131,'craft','m190125_191628_fix_email_transport_password','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','6a0f9bf3-3f24-43c1-9dbf-746126d8425a'),
	(132,'craft','m190128_181422_cleanup_volume_folders','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','68161464-72da-4f2c-a1bb-e820a9842f75'),
	(133,'craft','m190205_140000_fix_asset_soft_delete_index','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d3799297-64fb-45dc-ad14-9f5639bd68e3'),
	(134,'craft','m190208_140000_reset_project_config_mapping','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','487ec1a2-d46f-4c4e-8bc7-14c6a94658b3'),
	(135,'craft','m190218_143000_element_index_settings_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','de64eec9-a6e0-4612-bf37-0ed8f8877ec5'),
	(136,'craft','m190312_152740_element_revisions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','fa15f615-6cb1-43ed-9b47-b354c8e47978'),
	(137,'craft','m190327_235137_propagation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','ff8171be-e178-45cc-8ea9-6830f4651891'),
	(138,'craft','m190401_223843_drop_old_indexes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d8590c5f-3ae4-424f-9c07-e225eb74652d'),
	(139,'craft','m190416_014525_drop_unique_global_indexes','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','137d1c11-ebc9-4527-a2c3-fac2a580db89'),
	(140,'craft','m190417_085010_add_image_editor_permissions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f034b209-ea1a-4c35-ab8d-92963fae1493'),
	(141,'craft','m190502_122019_store_default_user_group_uid','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','45674913-1811-4081-ac1c-583503304f18'),
	(142,'craft','m190504_150349_preview_targets','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','b9dd3988-3fae-4be5-9f55-27f17087d47e'),
	(143,'craft','m190516_184711_job_progress_label','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d828f3fd-d28b-40a9-9957-bb8f1c1797ba'),
	(144,'craft','m190523_190303_optional_revision_creators','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','bf8f28f6-fdc0-46a1-a070-56264fa8a007'),
	(145,'craft','m190529_204501_fix_duplicate_uids','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','f037d1d5-76bc-4235-9f36-fe004d48b282'),
	(146,'craft','m190605_223807_unsaved_drafts','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','d2b0f21c-bf8b-4851-bd6e-3fe9434f4339'),
	(147,'craft','m190607_230042_entry_revision_error_tables','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','569b13da-0ade-4998-8d18-4e718dc8d872'),
	(148,'craft','m190608_033429_drop_elements_uid_idx','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','8cb4f5c7-8c58-447d-992f-f8780f87da26'),
	(149,'craft','m190617_164400_add_gqlschemas_table','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4e9e295e-68c9-4833-82d9-86f2976e0635'),
	(150,'craft','m190624_234204_matrix_propagation_method','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','a64d4a4d-311e-4f2e-8152-424d939f01bc'),
	(151,'craft','m190711_153020_drop_snapshots','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','4bafc4a2-b117-43f5-83ea-46490247ec3b'),
	(152,'craft','m190712_195914_no_draft_revisions','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','118718b7-b3c5-47fd-b98b-87971ec8fb14'),
	(153,'craft','m190723_140314_fix_preview_targets_column','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','2e61ba0e-3502-4930-a372-f33d76161730'),
	(154,'craft','m190820_003519_flush_compiled_templates','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e9032e85-733e-48e1-8a40-6d6fe6e25006'),
	(155,'craft','m190823_020339_optional_draft_creators','2019-11-11 14:08:20','2019-11-11 14:08:20','2019-11-11 14:08:20','e867cbe4-ea78-4575-a0e5-37dc540971bc'),
	(156,'plugin:seo','Install','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','0368f196-b32e-4083-8e32-31878c2a3972'),
	(157,'plugin:seo','m180906_152947_add_site_id_to_redirects','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','d012b106-2139-44d8-b574-5e93535979cd'),
	(158,'plugin:seo','m190114_152300_upgrade_to_new_data_format','2019-11-11 16:00:46','2019-11-11 16:00:46','2019-11-11 16:00:46','f75df05e-13e4-4b72-860e-25e0d6cb4968'),
	(160,'plugin:redactor','m180430_204710_remove_old_plugins','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','be04b79c-31f3-4372-83e1-43a2676ba2ee'),
	(161,'plugin:redactor','Install','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','ccec9120-f08c-4757-83b7-4fac874fe487'),
	(162,'plugin:redactor','m190225_003922_split_cleanup_html_settings','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','685445e6-cfcd-4cf1-bf32-355b234e955f'),
	(165,'plugin:snitch','Install','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','ebbbfb49-27c6-4556-a925-6f3daf35f294'),
	(166,'plugin:snitch','m190408_195351_support_multiple_types','2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:35:49','89f901a9-ed34-4e9d-8bd8-fbe086ff5e43'),
	(167,'plugin:cp-nav','Install','2019-11-11 16:42:36','2019-11-11 16:42:36','2019-11-11 16:42:36','0723642b-0928-4b24-832f-7bfc657f2095'),
	(168,'craft','m180521_172900_project_config_table','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','0f3736d4-a068-40bc-b471-14370397643d'),
	(169,'craft','m190913_152146_update_preview_targets','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','41a48492-e64b-43bb-99ee-53a4acdf7115'),
	(170,'craft','m191107_122000_add_gql_project_config_support','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','d8a36287-346e-4370-a6cc-c8bd622e5880'),
	(171,'craft','m191204_085100_pack_savable_component_settings','2020-09-13 20:56:51','2020-09-13 20:56:51','2020-09-13 20:56:51','acf533f9-06ae-4cdd-9642-a9ea0f13e576'),
	(172,'craft','m191206_001148_change_tracking','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','bc997e02-b419-494d-9c2e-d6b73917e445'),
	(173,'craft','m191216_191635_asset_upload_tracking','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','26f937a0-0897-414f-8c8d-768913f608af'),
	(174,'craft','m191222_002848_peer_asset_permissions','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','1f280ec8-3b52-420f-8d19-66003d11bb99'),
	(175,'craft','m200127_172522_queue_channels','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','3ed4758a-4ca6-4a36-acbb-b1ce6122fbe1'),
	(176,'craft','m200211_175048_truncate_element_query_cache','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','f1b3680a-01dd-4444-a462-acee2e7b607f'),
	(177,'craft','m200213_172522_new_elements_index','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','626a9d1d-ae30-4344-b30f-db891cd69939'),
	(178,'craft','m200228_195211_long_deprecation_messages','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','fee42910-83e2-44c1-b229-7e0d220f6b4b'),
	(179,'craft','m200306_054652_disabled_sites','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','e9628f67-6deb-441b-bad1-7284add071e4'),
	(180,'craft','m200522_191453_clear_template_caches','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','22edbf03-2fc0-4522-ac2a-e46346d8578f'),
	(181,'craft','m200606_231117_migration_tracks','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','6005d0a7-bf38-4ed8-9dc7-13cc4a7274ab'),
	(182,'craft','m200619_215137_title_translation_method','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','a918d481-0077-49fc-9bcf-e71a7933aa8a'),
	(183,'craft','m200620_005028_user_group_descriptions','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','2071f9d6-fea1-406b-af3a-207b293e08ad'),
	(184,'craft','m200620_230205_field_layout_changes','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','7490ed7d-f1f3-4bc6-bd56-30d073c1e402'),
	(185,'craft','m200625_131100_move_entrytypes_to_top_project_config','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','58e75be8-d88a-486d-8c8e-743698222be1'),
	(186,'craft','m200629_112700_remove_project_config_legacy_files','2020-09-13 20:56:52','2020-09-13 20:56:52','2020-09-13 20:56:52','5c598af2-234c-44b3-81e4-a1af42b13e71'),
	(187,'craft','m200630_183000_drop_configmap','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','5b788a20-49d4-4e89-89b0-a08a1a898967'),
	(188,'craft','m200715_113400_transform_index_error_flag','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','36b2d83d-4d48-4687-a8d1-06390aadc70b'),
	(189,'craft','m200716_110900_replace_file_asset_permissions','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','9fd165a2-14cd-410b-bdec-0a2142e29e00'),
	(190,'craft','m200716_153800_public_token_settings_in_project_config','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','07df0963-0515-48eb-be1f-6487cf231826'),
	(191,'craft','m200720_175543_drop_unique_constraints','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','7ba7e062-d1aa-4c35-9bad-b8abd76a5758'),
	(192,'craft','m200825_051217_project_config_version','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','3ae93f11-39f9-4321-945e-3f60e3b19b0b'),
	(193,'plugin:cookie-consent-banner','m190902_000000_migrate_settings_to_uid','2020-09-13 20:56:53','2020-09-13 20:56:53','2020-09-13 20:56:53','c0f0c469-6e65-4a45-94b3-2a40b52d3c11'),
	(194,'plugin:cp-nav','m200101_000000_craft3','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','101c18a7-bbdd-4dbb-b73e-8ad519ad4a2f'),
	(195,'plugin:cp-nav','m200113_000000_add_pending_navigation_table','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','ee19467e-201a-4f46-96ef-4c7259196c81'),
	(196,'plugin:cp-nav','m200119_000000_add_type','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','a5541f08-b3eb-482b-ad95-a6fa32b377eb'),
	(197,'plugin:cp-nav','m200119_000000_permissions_uid','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','103b5119-e332-48ea-ac90-d74fcce84b72'),
	(198,'plugin:cp-nav','m200120_000000_project_config','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','b6ea8c75-ed4e-45c5-af4d-dd267f1258f3'),
	(199,'plugin:cp-nav','m200316_000000_multi_hash','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','2b4a2ba2-177d-42a4-ac47-3196b2588181'),
	(200,'plugin:cp-nav','m200812_000000_fix_layoutid','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','1f4a5a3a-96e3-430d-b54f-6f5d591a3f45'),
	(201,'plugin:cp-nav','m200812_100000_layout_sortorder','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','af3ec102-13fd-44c4-8b08-fd91789a09a7'),
	(203,'plugin:seo','m200518_110721_add_order_to_redirects','2020-09-13 20:58:25','2020-09-13 20:58:25','2020-09-13 20:58:25','21866c3f-a4dd-458a-a613-88e2521e3d6c'),
	(204,'plugin:super-table','Install','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','b9d7f6d9-80cb-4416-9e7d-7e7346cc2c63'),
	(205,'plugin:super-table','m180210_000000_migrate_content_tables','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','0ab750c6-1c8f-4f8c-af1c-b61c2fbba3e2'),
	(206,'plugin:super-table','m180211_000000_type_columns','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','cdc4426e-b01e-4643-820c-1bab4a179b1f'),
	(207,'plugin:super-table','m180219_000000_sites','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','fe598775-fe35-416f-aecd-ab8c27893e76'),
	(208,'plugin:super-table','m180220_000000_fix_context','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','93802085-a38e-4f39-8031-a3cf404ef774'),
	(209,'plugin:super-table','m190117_000000_soft_deletes','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','77a0d98e-dd91-41e7-9f82-8e5202b39b72'),
	(210,'plugin:super-table','m190117_000001_context_to_uids','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','6c8d9c3d-d1f1-49ce-8fb2-3e24737d4beb'),
	(211,'plugin:super-table','m190120_000000_fix_supertablecontent_tables','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','0ac991f8-4529-4761-8327-f5f58e7e28f1'),
	(212,'plugin:super-table','m190131_000000_fix_supertable_missing_fields','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','c116859b-4686-46dc-b542-f4a946b118de'),
	(213,'plugin:super-table','m190227_100000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','6f91381b-6ce8-4311-ac6d-15b7024c71e4'),
	(214,'plugin:super-table','m190511_100000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','666b950d-24be-4ea1-88f0-0db28e5f9c25'),
	(215,'plugin:super-table','m190520_000000_fix_project_config','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','53aa7162-651f-42db-8b5c-35d9c098f2ec'),
	(216,'plugin:super-table','m190714_000000_propagation_method','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','e1fdcdaf-f6f5-4d7e-bfff-d9f26bc09525'),
	(217,'plugin:super-table','m191127_000000_fix_width','2020-09-13 21:32:26','2020-09-13 21:32:26','2020-09-13 21:32:26','fc885995-f316-4057-b07f-480f40534fb7');

/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_plugins`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;

INSERT INTO `craft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'seo','3.6.6','3.1.1','unknown',NULL,'2019-11-11 16:00:45','2019-11-11 16:00:45','2020-09-13 21:45:24','c5c2c651-f56b-40fc-8510-f639bf005d7f'),
	(2,'cookie-consent-banner','1.2.7','1.0.1','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','6fa3f3f9-e43d-4d9d-a52e-fdab1c0a44f7'),
	(3,'defaulttab','1.3.0','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','b8721705-ca21-4c6b-b9a5-fb8580582fd3'),
	(6,'matrixmate','1.2.7','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','26ea30b5-8250-4334-9a69-5ea7122c65f2'),
	(7,'redactor','2.7.4','2.3.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','4dc21750-9d96-4c48-a51a-2a6919839cd4'),
	(9,'similar','1.0.6','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','633cc7f8-4ad5-4eca-bd35-9e6e51d80421'),
	(10,'slug-alert','1.0.0.1','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2019-11-11 16:42:13','1dffb566-9a89-4e2c-b7f5-102c24eaac6f'),
	(11,'snitch','3.0.2','2.1.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','331a8521-83bf-4d21-aa4a-36f299dbf8b4'),
	(14,'tag-manager','1.0.7','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','37e4f306-0cce-43ea-9666-637e066f6d62'),
	(15,'typedlinkfield','1.0.23','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','d208fcee-df14-4f9a-8a6b-627b5b4295aa'),
	(16,'typogrify','1.1.18','1.0.0','unknown',NULL,'2019-11-11 16:35:49','2019-11-11 16:35:49','2020-09-13 21:45:24','ad9c1738-84b8-43c0-925f-34142c6ccd47'),
	(17,'cp-nav','3.0.13.1','2.0.7','unknown',NULL,'2019-11-11 16:42:36','2019-11-11 16:42:36','2020-09-13 21:45:24','1a6693fa-31e3-4f00-878c-b97444bdeb62'),
	(18,'cp-field-inspect','1.2.2','1.0.0','unknown',NULL,'2019-11-11 16:42:36','2019-11-11 16:42:36','2020-09-13 21:45:24','16446398-0d58-4abe-ab39-d713a318bc81'),
	(19,'super-table','2.6.2','2.2.1','unknown',NULL,'2020-09-13 21:32:25','2020-09-13 21:32:25','2020-09-13 21:45:24','1116b7b9-389d-4fa7-b6f9-8778d559dde2');

/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_projectconfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_projectconfig`;

CREATE TABLE `craft_projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_projectconfig` WRITE;
/*!40000 ALTER TABLE `craft_projectconfig` DISABLE KEYS */;

INSERT INTO `craft_projectconfig` (`path`, `value`)
VALUES
	('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.isDefault','\"1\"'),
	('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.name','\"Default\"'),
	('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.permissions','null'),
	('cp-nav.layouts.eaecba95-0830-4740-9f54-bd68ef3c6896.sortOrder','1'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.currLabel','\"Site details\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.customIcon','null'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.enabled','\"1\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.handle','\"siteDetails\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.icon','\"globe\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.newWindow','\"0\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.order','5'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.prevLabel','\"Site details\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.prevUrl','\"globals\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.type','\"manual\"'),
	('cp-nav.navigations.293ba1dc-10c8-45cc-9a1b-5798d3fc3993.url','\"globals\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.currLabel','\"Utilities\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.customIcon','null'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.enabled','\"1\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.handle','\"utilities\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.icon','\"tool\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.newWindow','\"0\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.order','\"7\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.prevLabel','\"Utilities\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.prevUrl','\"utilities\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.type','\"0\"'),
	('cp-nav.navigations.2c1139f5-70e3-4e70-ae29-b22083214363.url','\"utilities\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.currLabel','\"Plugin Store\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.customIcon','null'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.enabled','\"1\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.handle','\"plugin-store\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.icon','\"plugin\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.newWindow','\"0\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.order','\"8\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.prevLabel','\"Plugin Store\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.prevUrl','\"plugin-store\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.type','\"0\"'),
	('cp-nav.navigations.3a400182-e8ba-46ca-9d2e-854b9d0ade77.url','\"plugin-store\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.currLabel','\"Dashboard\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.customIcon','null'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.enabled','\"1\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.handle','\"dashboard\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.icon','\"gauge\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.newWindow','\"0\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.order','1'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.prevLabel','\"Dashboard\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.prevUrl','\"dashboard\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.type','\"0\"'),
	('cp-nav.navigations.4535f7ad-0882-4ec2-866e-b5ec95a4c25c.url','\"dashboard\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.currLabel','\"Settings\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.customIcon','null'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.enabled','\"1\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.handle','\"settings\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.icon','\"settings\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.newWindow','\"0\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.order','6'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.prevLabel','\"Settings\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.prevUrl','\"settings\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.type','\"0\"'),
	('cp-nav.navigations.465e36a1-3559-4f34-b839-245fb9e6d1f6.url','\"settings\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.currLabel','\"SEO\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.customIcon','null'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.enabled','\"1\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.handle','\"seo\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.icon','\"/Users/jaycollett/Sites/jaycollett/jaycraft/vendor/ether/seo/src/icon-mask.svg\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.newWindow','\"0\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.order','4'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.prevLabel','\"SEO\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.prevUrl','\"seo\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.type','\"0\"'),
	('cp-nav.navigations.922826c0-96c6-449c-919b-74fea6d21ebd.url','\"seo\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.currLabel','\"Tags\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.customIcon','null'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.enabled','\"1\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.handle','\"tags\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.icon','\"/Users/jaycollett/Sites/jaycollett/jaycraft/vendor/ether/tags/src/icon-mask.svg\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.newWindow','\"0\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.order','3'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.prevLabel','\"Tags\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.prevUrl','\"tags\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.type','\"0\"'),
	('cp-nav.navigations.b187d8a1-9db4-41ce-8812-d3a45747272d.url','\"tags\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.currLabel','\"Pages\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.customIcon','null'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.enabled','\"1\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.handle','\"entries\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.icon','\"section\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.layout','\"eaecba95-0830-4740-9f54-bd68ef3c6896\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.newWindow','\"0\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.order','2'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.prevLabel','\"Entries\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.prevUrl','\"entries\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.type','\"0\"'),
	('cp-nav.navigations.fc473cae-426d-43ca-9d6d-d6485a1cd989.url','\"entries\"'),
	('dateModified','1600033495'),
	('email.fromEmail','\"hello@jaycollett.co\"'),
	('email.fromName','\"JayCraft\"'),
	('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.handle','\"homepage\"'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.hasTitleField','true'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.name','\"Homepage\"'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.section','\"3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.sortOrder','2'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.titleFormat','\"\"'),
	('entryTypes.4e1ae64b-e8c5-47c3-bb58-10fb18e8b8a7.titleLabel','\"Title\"'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.handle','\"news\"'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.hasTitleField','true'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.name','\"News\"'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.section','\"b6dcff48-9906-46af-add1-70d94f8fa406\"'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.sortOrder','1'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.titleFormat','null'),
	('entryTypes.7e581873-0901-4b52-bc16-187532c325c6.titleLabel','\"Title\"'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.handle','\"standardContent\"'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.hasTitleField','true'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.name','\"Standard content\"'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.section','\"3a95c5ae-691b-45a9-af63-804ec4f32d8f\"'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.sortOrder','1'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.titleFormat','\"\"'),
	('entryTypes.bcd353ce-367b-47be-853c-bf1f11d42dc0.titleLabel','\"Title\"'),
	('fieldGroups.9d0976d6-6ff8-4790-9e75-5bb37d331d19.name','\"Globals\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.contentColumnType','\"string\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.fieldGroup','\"9d0976d6-6ff8-4790-9e75-5bb37d331d19\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.handle','\"socialAccounts\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.instructions','\"Add social media accounts\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.name','\"Social accounts\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.searchable','false'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.contentTable','\"{{%matrixcontent_socialaccounts}}\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.maxBlocks','\"\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.minBlocks','\"\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.settings.propagationMethod','\"all\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.translationKeyFormat','null'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.translationMethod','\"site\"'),
	('fields.c32ae7fc-8956-4f92-a0c3-9d6560441ccd.type','\"craft\\\\fields\\\\Matrix\"'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.fieldUid','\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.instructions','null'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.label','null'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.required','false'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.tip','null'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.warning','null'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.elements.0.width','100'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.name','\"Social\"'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.fieldLayouts.8762c3d1-6cfc-4a3a-9590-3e15f33414e7.tabs.0.sortOrder','1'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.handle','\"siteDetails\"'),
	('globalSets.1e844348-5f0b-45bb-832f-4f9f9cf83e41.name','\"Site details\"'),
	('graphql.publicToken.enabled','false'),
	('graphql.publicToken.expiryDate','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.field','\"c32ae7fc-8956-4f92-a0c3-9d6560441ccd\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.fieldUid','\"d29ea3e7-f083-4acc-a14f-9bd7e8d5edec\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.instructions','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.label','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.required','true'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.tip','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.warning','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.0.width','100'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.fieldUid','\"5e90386a-ba13-4916-b959-28901b19935f\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.instructions','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.label','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.required','true'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.tip','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.warning','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.elements.1.width','100'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.name','\"Content\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fieldLayouts.87f55719-a8b5-4049-a529-246f86e3c86c.tabs.0.sortOrder','1'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.contentColumnType','\"string(255)\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.fieldGroup','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.handle','\"accountUrl\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.instructions','\"Paste your account\'s full URL.\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.name','\"Account URL\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.searchable','false'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.settings.maxLength','\"255\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.settings.placeholder','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.translationKeyFormat','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.translationMethod','\"none\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.5e90386a-ba13-4916-b959-28901b19935f.type','\"craft\\\\fields\\\\Url\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.contentColumnType','\"string\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.fieldGroup','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.handle','\"account\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.instructions','\"Select which account you\'d like to add.\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.name','\"Account\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.searchable','false'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.optgroups','true'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.0.1','\"Instagram\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.1.1','\"instagram\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.0.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.0.1','\"Facebook\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.1.1','\"facebook\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.1.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.0.1','\"LinkedIn\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.1.1','\"linkedin\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.2.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.0.1','\"Pinterest\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.1.1','\"pinterest\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.3.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.0.1','\"Twitter\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.1.1','\"twitter\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.4.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.0.0','\"label\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.0.1','\"YouTube\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.1.0','\"value\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.1.1','\"youtube\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.2.0','\"default\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.settings.options.5.__assoc__.2.1','\"\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.translationKeyFormat','null'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.translationMethod','\"none\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.fields.d29ea3e7-f083-4acc-a14f-9bd7e8d5edec.type','\"craft\\\\fields\\\\Dropdown\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.handle','\"account\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.name','\"Account\"'),
	('matrixBlockTypes.99af3330-1bfc-43d0-a72c-fa1bb49f2328.sortOrder','1'),
	('plugins.cookie-consent-banner.edition','\"standard\"'),
	('plugins.cookie-consent-banner.enabled','true'),
	('plugins.cookie-consent-banner.schemaVersion','\"1.0.1\"'),
	('plugins.cookie-consent-banner.settings.allow','\"Allow cookies\"'),
	('plugins.cookie-consent-banner.settings.async_js','false'),
	('plugins.cookie-consent-banner.settings.auto_inject','true'),
	('plugins.cookie-consent-banner.settings.decline','\"Decline\"'),
	('plugins.cookie-consent-banner.settings.defer_js','false'),
	('plugins.cookie-consent-banner.settings.disable_in_live_preview','false'),
	('plugins.cookie-consent-banner.settings.dismiss','\"Got it!\"'),
	('plugins.cookie-consent-banner.settings.dismiss_on_scroll','0'),
	('plugins.cookie-consent-banner.settings.dismiss_on_timeout','0'),
	('plugins.cookie-consent-banner.settings.excluded_categories','\"\"'),
	('plugins.cookie-consent-banner.settings.excluded_entry_types','\"\"'),
	('plugins.cookie-consent-banner.settings.expiry_days','365'),
	('plugins.cookie-consent-banner.settings.honour_do_not_track_header','false'),
	('plugins.cookie-consent-banner.settings.layout','\"block\"'),
	('plugins.cookie-consent-banner.settings.learn','\"Learn More\"'),
	('plugins.cookie-consent-banner.settings.learn_more_link','\"http://cookiesandyou.com/\"'),
	('plugins.cookie-consent-banner.settings.message','\"This website uses cookies to ensure you get the best experience on our website.\"'),
	('plugins.cookie-consent-banner.settings.palette','\"default\"'),
	('plugins.cookie-consent-banner.settings.palette_banner','\"#000000\"'),
	('plugins.cookie-consent-banner.settings.palette_banner_text','\"#ffffff\"'),
	('plugins.cookie-consent-banner.settings.palette_button','\"#f1d600\"'),
	('plugins.cookie-consent-banner.settings.palette_button_text','\"#000000\"'),
	('plugins.cookie-consent-banner.settings.palette_left_button_bg','\"#f8e71c\"'),
	('plugins.cookie-consent-banner.settings.palette_left_button_text','\"#000000\"'),
	('plugins.cookie-consent-banner.settings.palette_link','\"#ffffff\"'),
	('plugins.cookie-consent-banner.settings.position','\"bottom\"'),
	('plugins.cookie-consent-banner.settings.preload_css','false'),
	('plugins.cookie-consent-banner.settings.revokable','false'),
	('plugins.cookie-consent-banner.settings.secure_only','false'),
	('plugins.cookie-consent-banner.settings.target','\"_blank\"'),
	('plugins.cookie-consent-banner.settings.type','\"info\"'),
	('plugins.cp-field-inspect.edition','\"standard\"'),
	('plugins.cp-field-inspect.enabled','true'),
	('plugins.cp-field-inspect.schemaVersion','\"1.0.0\"'),
	('plugins.cp-nav.edition','\"standard\"'),
	('plugins.cp-nav.enabled','true'),
	('plugins.cp-nav.schemaVersion','\"2.0.7\"'),
	('plugins.cp-nav.settings.originalNavHash.__assoc__.0.0','\"acd97fb0-d20d-4ccb-a137-17698687e2d1\"'),
	('plugins.cp-nav.settings.originalNavHash.__assoc__.0.1','\"W3sibGFiZWwiOiJEYXNoYm9hcmQiLCJ1cmwiOiJkYXNoYm9hcmQiLCJmb250SWNvbiI6ImdhdWdlIn0seyJsYWJlbCI6IkVudHJpZXMiLCJ1cmwiOiJlbnRyaWVzIiwiZm9udEljb24iOiJzZWN0aW9uIn0seyJsYWJlbCI6Ikdsb2JhbHMiLCJ1cmwiOiJnbG9iYWxzIiwiZm9udEljb24iOiJnbG9iZSJ9LHsibGFiZWwiOiJUYWdzIiwidXJsIjoidGFncyIsImljb24iOiIvVXNlcnMvamF5Y29sbGV0dC9TaXRlcy9qYXljb2xsZXR0L2pheWNyYWZ0L3ZlbmRvci9ldGhlci90YWdzL3NyYy9pY29uLW1hc2suc3ZnIiwiaWQiOiJ0YWctbWFuYWdlciJ9LHsibGFiZWwiOiJTRU8iLCJ1cmwiOiJzZW8iLCJpY29uIjoiL1VzZXJzL2pheWNvbGxldHQvU2l0ZXMvamF5Y29sbGV0dC9qYXljcmFmdC92ZW5kb3IvZXRoZXIvc2VvL3NyYy9pY29uLW1hc2suc3ZnIiwic3VibmF2Ijp7ImRhc2hib2FyZCI6eyJsYWJlbCI6IkRhc2hib2FyZCIsInVybCI6InNlbyJ9LCJzaXRlbWFwIjp7ImxhYmVsIjoiU2l0ZW1hcCIsInVybCI6InNlby9zaXRlbWFwIn0sInJlZGlyZWN0cyI6eyJsYWJlbCI6IlJlZGlyZWN0cyIsInVybCI6InNlby9yZWRpcmVjdHMifSwic2V0dGluZ3MiOnsibGFiZWwiOiJTZXR0aW5ncyIsInVybCI6InNlby9zZXR0aW5ncyJ9fX0seyJ1cmwiOiJ1dGlsaXRpZXMiLCJsYWJlbCI6IlV0aWxpdGllcyIsImZvbnRJY29uIjoidG9vbCIsImJhZGdlQ291bnQiOjB9LHsidXJsIjoic2V0dGluZ3MiLCJsYWJlbCI6IlNldHRpbmdzIiwiZm9udEljb24iOiJzZXR0aW5ncyJ9LHsidXJsIjoicGx1Z2luLXN0b3JlIiwibGFiZWwiOiJQbHVnaW4gU3RvcmUiLCJmb250SWNvbiI6InBsdWdpbiJ9XQ==\"'),
	('plugins.defaulttab.edition','\"standard\"'),
	('plugins.defaulttab.enabled','true'),
	('plugins.defaulttab.schemaVersion','\"1.0.0\"'),
	('plugins.defaulttab.settings.defaultGroups','false'),
	('plugins.defaulttab.settings.hasTitleField','\"1\"'),
	('plugins.defaulttab.settings.tabTitle','\"Content\"'),
	('plugins.matrixmate.edition','\"standard\"'),
	('plugins.matrixmate.enabled','true'),
	('plugins.matrixmate.schemaVersion','\"1.0.0\"'),
	('plugins.redactor.edition','\"standard\"'),
	('plugins.redactor.enabled','true'),
	('plugins.redactor.schemaVersion','\"2.3.0\"'),
	('plugins.seo.edition','\"standard\"'),
	('plugins.seo.enabled','true'),
	('plugins.seo.schemaVersion','\"3.1.1\"'),
	('plugins.similar.edition','\"standard\"'),
	('plugins.similar.enabled','true'),
	('plugins.similar.schemaVersion','\"1.0.0\"'),
	('plugins.slug-alert.edition','\"standard\"'),
	('plugins.slug-alert.enabled','true'),
	('plugins.slug-alert.schemaVersion','\"1.0.0\"'),
	('plugins.slug-alert.settings.alertMessage','\"Changing a slug can have a potentially negative effect on your site\'s SEO and any bookmarked links. Create a redirect after changing a slug, or don\'t change the slug at all.\"'),
	('plugins.slug-alert.settings.pluginIsActive','\"1\"'),
	('plugins.snitch.edition','\"standard\"'),
	('plugins.snitch.enabled','true'),
	('plugins.snitch.schemaVersion','\"2.1.0\"'),
	('plugins.super-table.edition','\"standard\"'),
	('plugins.super-table.enabled','true'),
	('plugins.super-table.schemaVersion','\"2.2.1\"'),
	('plugins.tag-manager.edition','\"standard\"'),
	('plugins.tag-manager.enabled','true'),
	('plugins.tag-manager.schemaVersion','\"1.0.0\"'),
	('plugins.typedlinkfield.edition','\"standard\"'),
	('plugins.typedlinkfield.enabled','true'),
	('plugins.typedlinkfield.schemaVersion','\"1.0.0\"'),
	('plugins.typogrify.edition','\"standard\"'),
	('plugins.typogrify.enabled','true'),
	('plugins.typogrify.schemaVersion','\"1.0.0\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.enableVersioning','true'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.handle','\"pages\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.name','\"Pages\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.previewTargets.0.label','\"Primary entry page\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.previewTargets.0.urlFormat','\"{url}\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.propagationMethod','\"all\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.enabledByDefault','true'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.template','\"pages/_index\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.uriFormat','\"{slug}\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.structure.maxLevels','null'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.structure.uid','\"634a6d92-d705-4817-8b55-789eb7701252\"'),
	('sections.3a95c5ae-691b-45a9-af63-804ec4f32d8f.type','\"structure\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.enableVersioning','true'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.handle','\"news\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.name','\"News\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.previewTargets.0.label','\"Primary entry page\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.previewTargets.0.urlFormat','\"{url}\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.propagationMethod','\"all\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.enabledByDefault','true'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.template','\"/pages\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.siteSettings.f1e03893-0fd0-4d36-87b3-4269d461b769.uriFormat','\"news/{slug}\"'),
	('sections.b6dcff48-9906-46af-add1-70d94f8fa406.type','\"channel\"'),
	('siteGroups.0029cea0-a61a-4d4c-a01a-bdf995fd1393.name','\"JayCraft\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.baseUrl','\"$DEFAULT_SITE_URL\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.handle','\"default\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.hasUrls','true'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.language','\"en-GB\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.name','\"JayCraft\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.primary','true'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.siteGroup','\"0029cea0-a61a-4d4c-a01a-bdf995fd1393\"'),
	('sites.f1e03893-0fd0-4d36-87b3-4269d461b769.sortOrder','1'),
	('system.edition','\"solo\"'),
	('system.live','true'),
	('system.name','\"JayCraft\"'),
	('system.schemaVersion','\"3.5.13\"'),
	('system.timeZone','\"America/Los_Angeles\"'),
	('users.allowPublicRegistration','false'),
	('users.defaultGroup','null'),
	('users.photoSubpath','\"\"'),
	('users.photoVolumeUid','null'),
	('users.requireEmailVerification','true');

/*!40000 ALTER TABLE `craft_projectconfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_queue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_queue`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_relations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_resourcepaths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_resourcepaths`;

CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_resourcepaths` WRITE;
/*!40000 ALTER TABLE `craft_resourcepaths` DISABLE KEYS */;

INSERT INTO `craft_resourcepaths` (`hash`, `path`)
VALUES
	('1332e934','@craft/web/assets/cp/dist'),
	('151dcc7d','@lib/selectize'),
	('15b2be2','@craft/web/assets/cp/dist'),
	('1666d12a','@craft/web/assets/fieldsettings/dist'),
	('1b25f273','@craft/web/assets/updateswidget/dist'),
	('1ed7a9b7','@lib/datepicker-i18n'),
	('1f7188f7','@lib/xregexp'),
	('208ed082','@lib/timepicker'),
	('2233a7e6','@marionnewlevant/snitch/assetbundles/snitch/dist'),
	('22bbdffe','@app/web/assets/editsection/dist'),
	('259fb01d','@craft/web/assets/recententries/dist'),
	('26e35f53','@app/web/assets/admintable/dist'),
	('288414c6','@app/web/assets/plugins/dist'),
	('2c5cf642','@craft/web/assets/updater/dist'),
	('32e71254','@lib/timepicker'),
	('3aedd610','@app/web/assets/plugins/dist'),
	('4163e1f9','@lib/picturefill'),
	('46c7dd3b','@lib/jquery-touch-events'),
	('47411dc6','@lib/iframe-resizer'),
	('4ae99bd5','@app/web/assets/editentry/dist'),
	('4be222d1','@lib/fileupload'),
	('4fc6c1a8','@lib/d3'),
	('530a232f','@lib/picturefill'),
	('54ae1fed','@lib/jquery-touch-events'),
	('54bba051','@anubarak/relabel/resources'),
	('57a27b37','@app/web/assets/matrix/dist'),
	('598be007','@lib/fileupload'),
	('5c82305b','@app/web/assets/sites/dist'),
	('5daf037e','@lib/d3'),
	('604a0d0b','@verbb/base/resources/dist'),
	('67db5472','@app/web/assets/updates/dist'),
	('693d0210','@lib/fabric'),
	('6a4f59d5','@app/web/assets/dashboard/dist'),
	('6e1214f8','@lib/garnishjs'),
	('72bff1fe','@craft/web/assets/admintable/dist'),
	('749440e0','@appicons'),
	('7740eab','@lib/selectize'),
	('7ad3c9b5','@anubarak/relabel/resources'),
	('7b54c0c6','@lib/fabric'),
	('7b91092b','@craft/web/assets/fields/dist'),
	('7c7bd62e','@lib/garnishjs'),
	('7f41b54d','@app/web/assets/fields/dist'),
	('80867370','@lib/jquery-ui'),
	('8201b9f','@craft/web/assets/pluginstore/dist'),
	('839c393e','@craft/web/assets/feed/dist'),
	('8427debb','@app/web/assets/craftsupport/dist'),
	('86dfa9cb','@craft/web/assets/pluginstoreoauth/dist'),
	('8889e293','@app/web/assets/updater/dist'),
	('8a513339','@lib/axios'),
	('8ab5727a','@app/web/assets/updateswidget/dist'),
	('92efb1a6','@lib/jquery-ui'),
	('959f93f5','@app/web/assets/fieldsettings/dist'),
	('9ae02045','@app/web/assets/updater/dist'),
	('9e38c2c1','@craft/web/assets/plugins/dist'),
	('a0139864','@app/web/assets/pluginstore/dist'),
	('a16be8e','@marionnewlevant/snitch/assetbundles/snitch/dist'),
	('a7ba904c','@lib/vue'),
	('a9421799','@app/web/assets/cp/dist'),
	('a9e46e79','@verbb/cpnav/resources/dist'),
	('ab4eb4e7','@verbb/cpnav/assetbundles/cpnav/dist'),
	('ad7c02e7','@app/web/assets/login/dist'),
	('b27a5ab2','@app/web/assets/pluginstore/dist'),
	('b40f3014','@app/web/assets/recententries/dist'),
	('bb2bd54f','@app/web/assets/cp/dist'),
	('bc89047a','@craft/web/assets/craftsupport/dist'),
	('bf15c031','@app/web/assets/login/dist'),
	('c06185eb','@lib/jquery.payment'),
	('cb395508','@app/web/assets/utilities/dist'),
	('cbe6b61','@lib/datepicker-i18n'),
	('cdc9dd7e','@bower/jquery/dist'),
	('ce2fe8d5','@lib/velocity'),
	('d0595c27','@app/web/assets/feed/dist'),
	('d07af981','@app/web/assets/tablesettings/dist'),
	('d184a21','@lib/xregexp'),
	('d208473d','@lib/jquery.payment'),
	('d5cbc59','@anubarak/relabel/resources'),
	('d95097de','@app/web/assets/utilities/dist'),
	('dc462a03','@lib/velocity'),
	('dfa01fa8','@bower/jquery/dist'),
	('e259768b','@lib/element-resize-detector'),
	('e515fc99','@craft/web/assets/matrixsettings/dist'),
	('f030b45d','@lib/element-resize-detector'),
	('f3ef9e73','@ether/tagManager/web/assets'),
	('f3faca9e','@app/web/assets/matrixsettings/dist'),
	('f5e31c86','@lib'),
	('f8380b81','@richhayler/stretch/resources'),
	('f8407ab6','@mmikkel/cpfieldinspect/resources'),
	('fadf1ff5','@craft/web/assets/dashboard/dist');

/*!40000 ALTER TABLE `craft_resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_revisions`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_revisions` WRITE;
/*!40000 ALTER TABLE `craft_revisions` DISABLE KEYS */;

INSERT INTO `craft_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`)
VALUES
	(1,3,1,1,NULL);

/*!40000 ALTER TABLE `craft_revisions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_searchindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_searchindex`;

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`)
VALUES
	(1,'username',0,1,' admin '),
	(1,'firstname',0,1,''),
	(1,'lastname',0,1,''),
	(1,'fullname',0,1,''),
	(1,'email',0,1,' hello jaycollett co '),
	(1,'slug',0,1,''),
	(3,'slug',0,1,' home '),
	(3,'title',0,1,' homepage '),
	(5,'slug',0,1,'');

/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,1,'Pages','pages','structure',1,'all','[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\"}]','2019-11-11 14:12:21','2020-09-13 20:56:51',NULL,'3a95c5ae-691b-45a9-af63-804ec4f32d8f'),
	(2,NULL,'News','news','channel',1,'all','[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\"}]','2019-11-11 15:36:42','2020-09-13 20:56:51',NULL,'b6dcff48-9906-46af-add1-70d94f8fa406');

/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections_sites`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_sections_sites` WRITE;
/*!40000 ALTER TABLE `craft_sections_sites` DISABLE KEYS */;

INSERT INTO `craft_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,1,1,'{slug}','pages/_index',1,'2019-11-11 14:12:21','2019-11-11 15:38:46','9391f39a-b4f5-4f00-8044-b6e1bfff855b'),
	(2,2,1,1,'news/{slug}','/pages',1,'2019-11-11 15:36:42','2019-11-11 15:36:42','4b89516d-cc27-4ac3-923a-40e89f390597');

/*!40000 ALTER TABLE `craft_sections_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_seo_redirects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_seo_redirects`;

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



# Dump of table craft_seo_sitemap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_seo_sitemap`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_sequences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sequences`;

CREATE TABLE `craft_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sessions`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'ZEn8GHBo2e5IrV7KM2ZJ7IZG00NbVa_LxBiQkCvTVUNSn14e4NrBhUHB18l_7dnuoKpXh3BjFtYitUbDuhCXxx1wnxJjFRldW0_W','2020-09-13 20:57:06','2020-09-13 21:45:25','ab101019-42a5-4c16-a55b-6b1130b25d1a');

/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_shunnedmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_shunnedmessages`;

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



# Dump of table craft_sitegroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sitegroups`;

CREATE TABLE `craft_sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sitegroups_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_sitegroups` WRITE;
/*!40000 ALTER TABLE `craft_sitegroups` DISABLE KEYS */;

INSERT INTO `craft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,'JayCraft','2019-11-11 14:08:20','2019-11-11 14:08:20',NULL,'0029cea0-a61a-4d4c-a01a-bdf995fd1393');

/*!40000 ALTER TABLE `craft_sitegroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sites`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_sites` WRITE;
/*!40000 ALTER TABLE `craft_sites` DISABLE KEYS */;

INSERT INTO `craft_sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,1,1,1,'JayCraft','default','en-GB',1,'$DEFAULT_SITE_URL',1,'2019-11-11 14:08:20','2019-11-11 14:08:20',NULL,'f1e03893-0fd0-4d36-87b3-4269d461b769');

/*!40000 ALTER TABLE `craft_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_snitch_collisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_snitch_collisions`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_snitch_collisions` WRITE;
/*!40000 ALTER TABLE `craft_snitch_collisions` DISABLE KEYS */;

INSERT INTO `craft_snitch_collisions` (`id`, `snitchId`, `snitchType`, `userId`, `whenEntered`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(6,1,'field',1,'2020-09-13 21:32:20','2020-09-13 21:31:13','2020-09-13 21:32:20','5c8e54a3-ad51-4fc4-9b5f-0ed376509eb4');

/*!40000 ALTER TABLE `craft_snitch_collisions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_structureelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structureelements`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,NULL,1,1,6,0,'2019-11-11 15:37:32','2019-11-11 15:37:40','957cd1da-64c2-41a0-b36a-ec3b095deb46'),
	(3,1,3,1,2,3,1,'2019-11-11 15:37:40','2019-11-11 15:37:40','bb95065a-aad1-47f5-a3bc-6128feaf9aaa'),
	(4,1,4,1,4,5,1,'2019-11-11 15:37:40','2019-11-11 15:37:40','5436dd3e-8b91-464d-b20c-a8b8373dcf26');

/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_structures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structures`;

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_structures_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`)
VALUES
	(1,NULL,'2019-11-11 14:12:21','2019-11-11 14:12:21',NULL,'634a6d92-d705-4817-8b55-789eb7701252');

/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_supertableblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertableblocks`;

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



# Dump of table craft_supertableblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertableblocktypes`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_systemmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_systemmessages`;

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



# Dump of table craft_taggroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_taggroups`;

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



# Dump of table craft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tags`;

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



# Dump of table craft_templatecacheelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecacheelements`;

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_idx` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_idx` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_templatecachequeries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecachequeries`;

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



# Dump of table craft_templatecaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecaches`;

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



# Dump of table craft_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tokens`;

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



# Dump of table craft_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups`;

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



# Dump of table craft_usergroups_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups_users`;

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



# Dump of table craft_userpermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions`;

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_userpermissions_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;

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



# Dump of table craft_userpermissions_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_users`;

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



# Dump of table craft_userpreferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpreferences`;

CREATE TABLE `craft_userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `craft_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_userpreferences` WRITE;
/*!40000 ALTER TABLE `craft_userpreferences` DISABLE KEYS */;

INSERT INTO `craft_userpreferences` (`userId`, `preferences`)
VALUES
	(1,'{\"language\":\"en-GB\"}');

/*!40000 ALTER TABLE `craft_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_users`;

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

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;

INSERT INTO `craft_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'admin',NULL,NULL,NULL,'hello@jaycollett.co','$2y$13$3y.dOj2D9tzgZmwzg48IFuKlhDw3A1bcakDI6AxRgUA8K8IZ.oxkG',1,0,0,0,'2020-09-13 20:57:06',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'2019-11-11 14:08:20','2019-11-11 14:08:20','2020-09-13 20:57:06','a2815700-ac37-4ebe-ab86-d0525c46f20b');

/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_volumefolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_volumefolders`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_volumefolders` WRITE;
/*!40000 ALTER TABLE `craft_volumefolders` DISABLE KEYS */;

INSERT INTO `craft_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,NULL,'Temporary source',NULL,'2019-11-11 16:46:03','2019-11-11 16:46:03','f767c50f-8930-408c-9648-ec116ee7e131'),
	(2,1,NULL,'user_1','user_1/','2019-11-11 16:46:03','2019-11-11 16:46:03','520e1d3e-b75e-4c71-bc96-c68cad29e0c5');

/*!40000 ALTER TABLE `craft_volumefolders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_volumes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_volumes`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table craft_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_widgets`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','cba29b9c-707c-4776-8534-40989427e3f3'),
	(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','ad9b0c17-1765-406e-9e9a-c26af591f110'),
	(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','94cd5261-e144-4cb6-84e5-66fc3cf4452e'),
	(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2019-11-11 14:11:59','2019-11-11 14:11:59','8737a4b0-c08a-4241-a8a5-3c549e51791f');

/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
