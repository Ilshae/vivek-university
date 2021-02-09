-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-01-26 12:42:38','2021-01-26 12:42:38','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://vivek-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://vivek-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Vivek University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Best university in the world!','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','pruszynskaingrid@outlook.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:157:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:105:\"C:\\Users\\prusz\\Local Sites\\vivek-university\\app\\public/wp-content/themes/vivek-university-theme/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','vivek-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','vivek-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','33','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1627216958','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1612780959;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1612788159;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612788185;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612788186;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612960959;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','M%=Y-YmOsIqb9+/nCrG![k56ROAQplWWx}#Cyb#fj<[i,6o~S=[c&Q4!}VOKvTiP','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','C|iQ1zo(cO*nlZdw(9/(/D8-e3D$]?b^6+;9!7H?)y`?.m/.>L&nK/Y<m+]vLo;_','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1612778855;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1611666162;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (150,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'current_theme','Vivek University','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_vivek-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:19:\"footerMenuLocation1\";i:3;s:19:\"footerMenuLocation2\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (154,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (157,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (158,'new_admin_email','pruszynskaingrid@outlook.com','yes');
INSERT INTO `wp_options` VALUES (175,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1612778856;s:7:\"checked\";a:1:{s:22:\"vivek-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (190,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":5,\"critical\":3}','yes');
INSERT INTO `wp_options` VALUES (195,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (209,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (263,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (268,'acf_version','5.9.4','yes');
INSERT INTO `wp_options` VALUES (269,'auto_update_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','no');
INSERT INTO `wp_options` VALUES (301,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1612778857;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.4\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (302,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (310,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1612887567','no');
INSERT INTO `wp_options` VALUES (311,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (327,'_site_transient_timeout_theme_roots','1612780656','no');
INSERT INTO `wp_options` VALUES (328,'_site_transient_theme_roots','a:1:{s:22:\"vivek-university-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1611668181:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1611668201:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1611668871:1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1612276696:1');
INSERT INTO `wp_postmeta` VALUES (12,3,'_edit_lock','1611738560:1');
INSERT INTO `wp_postmeta` VALUES (13,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (14,2,'_wp_trash_meta_time','1611740961');
INSERT INTO `wp_postmeta` VALUES (15,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (16,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (17,9,'_wp_trash_meta_time','1611740963');
INSERT INTO `wp_postmeta` VALUES (18,9,'_wp_desired_post_slug','test-page-123');
INSERT INTO `wp_postmeta` VALUES (19,16,'_edit_lock','1611753751:1');
INSERT INTO `wp_postmeta` VALUES (20,18,'_edit_lock','1611753758:1');
INSERT INTO `wp_postmeta` VALUES (21,20,'_edit_lock','1611741562:1');
INSERT INTO `wp_postmeta` VALUES (22,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (23,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (24,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (25,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (26,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (27,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (28,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (29,22,'_menu_item_url','http://vivek-university.local/');
INSERT INTO `wp_postmeta` VALUES (30,22,'_menu_item_orphaned','1611756760');
INSERT INTO `wp_postmeta` VALUES (31,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,23,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (34,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (40,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,24,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,24,'_menu_item_orphaned','1611756760');
INSERT INTO `wp_postmeta` VALUES (49,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,25,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (52,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,26,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (66,26,'_menu_item_orphaned','1611756760');
INSERT INTO `wp_postmeta` VALUES (67,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,27,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_orphaned','1611756760');
INSERT INTO `wp_postmeta` VALUES (76,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (77,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (78,28,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (82,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (90,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (91,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (95,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (98,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,33,'_edit_lock','1611768185:1');
INSERT INTO `wp_postmeta` VALUES (122,35,'_edit_lock','1611768205:1');
INSERT INTO `wp_postmeta` VALUES (123,37,'_edit_lock','1611769687:1');
INSERT INTO `wp_postmeta` VALUES (146,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (147,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (148,41,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (149,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (150,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (151,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (152,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (153,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (155,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (156,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (157,42,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (158,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (159,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (160,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (161,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (162,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (164,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (165,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (166,43,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (167,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (168,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (169,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (170,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (171,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (173,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (174,44,'_edit_lock','1612186328:1');
INSERT INTO `wp_postmeta` VALUES (175,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (176,45,'_edit_lock','1612200900:1');
INSERT INTO `wp_postmeta` VALUES (177,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,46,'_edit_lock','1612276689:1');
INSERT INTO `wp_postmeta` VALUES (179,47,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (180,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (181,47,'_menu_item_object_id','-23');
INSERT INTO `wp_postmeta` VALUES (182,47,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (183,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (184,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (185,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (186,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (188,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (189,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (190,48,'_menu_item_object_id','46');
INSERT INTO `wp_postmeta` VALUES (191,48,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (192,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (193,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (194,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (195,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (196,48,'_menu_item_orphaned','1612181355');
INSERT INTO `wp_postmeta` VALUES (197,49,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (198,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (199,49,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (200,49,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (201,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (202,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (203,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (204,49,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (205,49,'_menu_item_orphaned','1612181355');
INSERT INTO `wp_postmeta` VALUES (206,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (207,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (208,50,'_menu_item_object_id','44');
INSERT INTO `wp_postmeta` VALUES (209,50,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (210,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (211,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (212,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (213,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (214,50,'_menu_item_orphaned','1612181355');
INSERT INTO `wp_postmeta` VALUES (215,51,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (216,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (217,51,'_menu_item_object_id','-23');
INSERT INTO `wp_postmeta` VALUES (218,51,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (219,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (220,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (221,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (222,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (225,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,52,'_edit_lock','1612184547:1');
INSERT INTO `wp_postmeta` VALUES (227,46,'event_date','20270203');
INSERT INTO `wp_postmeta` VALUES (228,46,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (229,45,'event_date','20270610');
INSERT INTO `wp_postmeta` VALUES (230,45,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (231,44,'event_date','20270415');
INSERT INTO `wp_postmeta` VALUES (232,44,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (233,54,'_edit_lock','1612187981:1');
INSERT INTO `wp_postmeta` VALUES (234,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (235,54,'event_date','20271202');
INSERT INTO `wp_postmeta` VALUES (236,54,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (237,55,'_edit_lock','1612187997:1');
INSERT INTO `wp_postmeta` VALUES (238,57,'_edit_lock','1612188436:1');
INSERT INTO `wp_postmeta` VALUES (239,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,57,'event_date','20200201');
INSERT INTO `wp_postmeta` VALUES (241,57,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (242,58,'_edit_lock','1612195512:1');
INSERT INTO `wp_postmeta` VALUES (243,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,58,'event_date','20181228');
INSERT INTO `wp_postmeta` VALUES (245,58,'_event_date','field_6017fc06e98f7');
INSERT INTO `wp_postmeta` VALUES (246,59,'_edit_lock','1612196385:1');
INSERT INTO `wp_postmeta` VALUES (247,60,'_edit_lock','1612196401:1');
INSERT INTO `wp_postmeta` VALUES (248,61,'_edit_lock','1612196436:1');
INSERT INTO `wp_postmeta` VALUES (249,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (250,62,'_edit_lock','1612253733:1');
INSERT INTO `wp_postmeta` VALUES (251,45,'related_programs','a:1:{i:0;s:2:\"60\";}');
INSERT INTO `wp_postmeta` VALUES (252,45,'_related_programs','field_60183455cf6d7');
INSERT INTO `wp_postmeta` VALUES (253,64,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (254,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (255,64,'_menu_item_object_id','-39');
INSERT INTO `wp_postmeta` VALUES (256,64,'_menu_item_object','program');
INSERT INTO `wp_postmeta` VALUES (257,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (258,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (259,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (260,64,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (262,65,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (263,65,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (264,65,'_menu_item_object_id','-39');
INSERT INTO `wp_postmeta` VALUES (265,65,'_menu_item_object','program');
INSERT INTO `wp_postmeta` VALUES (266,65,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (267,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (268,65,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (269,65,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (271,66,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (272,66,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (273,66,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (274,66,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (275,66,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (276,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (277,66,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (278,66,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (280,67,'_edit_lock','1612267552:1');
INSERT INTO `wp_postmeta` VALUES (281,68,'_edit_lock','1612274079:1');
INSERT INTO `wp_postmeta` VALUES (282,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (283,68,'related_programs','a:1:{i:0;s:2:\"60\";}');
INSERT INTO `wp_postmeta` VALUES (284,68,'_related_programs','field_60183455cf6d7');
INSERT INTO `wp_postmeta` VALUES (285,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (286,67,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (287,67,'_related_programs','field_60183455cf6d7');
INSERT INTO `wp_postmeta` VALUES (288,69,'_wp_attached_file','2021/02/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (289,69,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2021/02/barksalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (290,67,'_thumbnail_id','70');
INSERT INTO `wp_postmeta` VALUES (291,70,'_wp_attached_file','2021/02/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (292,70,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2021/02/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"46\";s:1:\"y\";s:2:\"34\";s:1:\"w\";s:3:\"411\";s:1:\"h\";s:17:\"267.1500000000067\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"101\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:17:\"245.9076923076928\";s:1:\"h\";s:3:\"333\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (293,68,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (294,71,'_edit_lock','1612266754:1');
INSERT INTO `wp_postmeta` VALUES (295,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (296,71,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (297,71,'_related_programs','field_60183455cf6d7');
INSERT INTO `wp_postmeta` VALUES (298,72,'_wp_attached_file','2021/02/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (299,72,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2021/02/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (300,71,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (301,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (302,73,'_edit_lock','1612267650:1');
INSERT INTO `wp_postmeta` VALUES (303,76,'_wp_attached_file','2021/02/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (304,76,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2021/02/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"98\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (305,68,'page_banner_subtitle','The leading voice on biology.');
INSERT INTO `wp_postmeta` VALUES (306,68,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (307,68,'page_banner_background_image','76');
INSERT INTO `wp_postmeta` VALUES (308,68,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (309,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (310,11,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (311,11,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (312,11,'page_banner_background_image','78');
INSERT INTO `wp_postmeta` VALUES (313,11,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (314,77,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (315,77,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (316,77,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (317,77,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (318,78,'_wp_attached_file','2021/02/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (319,78,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2021/02/building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (320,79,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (321,79,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (322,79,'page_banner_background_image','78');
INSERT INTO `wp_postmeta` VALUES (323,79,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (324,80,'_wp_attached_file','2021/02/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (325,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2021/02/notebook-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (326,46,'page_banner_subtitle','The greatest day of the year.');
INSERT INTO `wp_postmeta` VALUES (327,46,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (328,46,'page_banner_background_image','80');
INSERT INTO `wp_postmeta` VALUES (329,46,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (330,46,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (331,46,'_related_programs','field_60183455cf6d7');
INSERT INTO `wp_postmeta` VALUES (332,81,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (333,81,'_page_banner_subtitle','field_601940b98774d');
INSERT INTO `wp_postmeta` VALUES (334,81,'page_banner_background_image','78');
INSERT INTO `wp_postmeta` VALUES (335,81,'_page_banner_background_image','field_601940c98774e');
INSERT INTO `wp_postmeta` VALUES (348,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (349,85,'_edit_lock','1612282793:1');
INSERT INTO `wp_postmeta` VALUES (350,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (351,85,'_wp_trash_meta_time','1612283000');
INSERT INTO `wp_postmeta` VALUES (352,85,'_wp_desired_post_slug','group_60197bf9a23ca');
INSERT INTO `wp_postmeta` VALUES (353,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (354,86,'_wp_trash_meta_time','1612283000');
INSERT INTO `wp_postmeta` VALUES (355,86,'_wp_desired_post_slug','field_60197c0327f5e');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-01-26 12:42:38','2021-01-26 12:42:38','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-01-26 12:42:38','2021-01-26 12:42:38','',0,'http://vivek-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-01-26 12:42:38','2021-01-26 12:42:38','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://vivek-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-01-27 09:49:21','2021-01-27 09:49:21','',0,'http://vivek-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-01-26 12:42:38','2021-01-26 12:42:38','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://vivek-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2021-01-27 09:11:44','2021-01-27 09:11:44','',0,'http://vivek-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-01-26 13:38:34','2021-01-26 13:38:34','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Test','','publish','open','open','','test','','','2021-01-26 13:38:34','2021-01-26 13:38:34','',0,'http://vivek-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-01-26 13:38:34','2021-01-26 13:38:34','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Test','','inherit','closed','closed','','5-revision-v1','','','2021-01-26 13:38:34','2021-01-26 13:38:34','',5,'http://vivek-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-01-26 13:39:02','2021-01-26 13:39:02','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Second Test','','publish','open','open','','second-test','','','2021-01-26 13:39:02','2021-01-26 13:39:02','',0,'http://vivek-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-01-26 13:39:02','2021-01-26 13:39:02','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Second Test','','inherit','closed','closed','','7-revision-v1','','','2021-01-26 13:39:02','2021-01-26 13:39:02','',7,'http://vivek-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-01-26 13:49:48','2021-01-26 13:49:48','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','trash','closed','closed','','test-page-123__trashed','','','2021-01-27 09:49:23','2021-01-27 09:49:23','',0,'http://vivek-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-01-26 13:49:48','2021-01-26 13:49:48','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','9-revision-v1','','','2021-01-26 13:49:48','2021-01-26 13:49:48','',9,'http://vivek-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-01-27 09:11:22','2021-01-27 09:11:22','<!-- wp:paragraph -->\n<p>About page content.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2021-02-02 14:38:16','2021-02-02 14:38:16','',0,'http://vivek-university.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-01-27 09:11:22','2021-01-27 09:11:22','<!-- wp:paragraph -->\n<p>About page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2021-01-27 09:11:22','2021-01-27 09:11:22','',11,'http://vivek-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-01-27 09:11:44','2021-01-27 09:11:44','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://vivek-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-01-27 09:11:44','2021-01-27 09:11:44','',3,'http://vivek-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-01-27 09:49:21','2021-01-27 09:49:21','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://vivek-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-27 09:49:21','2021-01-27 09:49:21','',2,'http://vivek-university.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-01-27 09:49:37','2021-01-27 09:49:37','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2021-01-27 13:24:53','2021-01-27 13:24:53','',11,'http://vivek-university.local/?page_id=16',1,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-01-27 09:49:37','2021-01-27 09:49:37','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2021-01-27 09:49:37','2021-01-27 09:49:37','',16,'http://vivek-university.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-01-27 09:50:26','2021-01-27 09:50:26','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2021-01-27 13:25:02','2021-01-27 13:25:02','',11,'http://vivek-university.local/?page_id=18',2,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-01-27 09:50:26','2021-01-27 09:50:26','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2021-01-27 09:50:26','2021-01-27 09:50:26','',18,'http://vivek-university.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-01-27 10:01:45','2021-01-27 10:01:45','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2021-01-27 10:01:45','2021-01-27 10:01:45','',3,'http://vivek-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-01-27 10:01:45','2021-01-27 10:01:45','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','20-revision-v1','','','2021-01-27 10:01:45','2021-01-27 10:01:45','',20,'http://vivek-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-01-27 14:12:40','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2021-01-27 14:12:40','0000-00-00 00:00:00','',0,'http://vivek-university.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-01-27 14:13:27','2021-01-27 14:13:27',' ','','','publish','closed','closed','','23','','','2021-02-01 17:55:08','2021-02-01 17:55:08','',0,'http://vivek-university.local/?p=23',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-01-27 14:12:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-01-27 14:12:40','0000-00-00 00:00:00','',3,'http://vivek-university.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-01-27 14:13:27','2021-01-27 14:13:27',' ','','','publish','closed','closed','','25','','','2021-02-01 17:55:08','2021-02-01 17:55:08','',0,'http://vivek-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-01-27 14:12:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-01-27 14:12:40','0000-00-00 00:00:00','',11,'http://vivek-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-01-27 14:12:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-01-27 14:12:40','0000-00-00 00:00:00','',11,'http://vivek-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-01-27 14:19:18','2021-01-27 14:19:18',' ','','','publish','closed','closed','','28','','','2021-02-01 17:55:27','2021-02-01 17:55:27','',0,'http://vivek-university.local/?p=28',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-01-27 14:19:18','2021-01-27 14:19:18',' ','','','publish','closed','closed','','29','','','2021-02-01 17:55:27','2021-02-01 17:55:27','',11,'http://vivek-university.local/?p=29',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-01-27 14:19:18','2021-01-27 14:19:18',' ','','','publish','closed','closed','','30','','','2021-02-01 17:55:27','2021-02-01 17:55:27','',11,'http://vivek-university.local/?p=30',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-01-27 17:25:28','2021-01-27 17:25:28','','Home','','publish','closed','closed','','home','','','2021-01-27 17:25:28','2021-01-27 17:25:28','',0,'http://vivek-university.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-01-27 17:25:28','2021-01-27 17:25:28','','Home','','inherit','closed','closed','','33-revision-v1','','','2021-01-27 17:25:28','2021-01-27 17:25:28','',33,'http://vivek-university.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-01-27 17:25:36','2021-01-27 17:25:36','','Blog','','publish','closed','closed','','blog','','','2021-01-27 17:25:36','2021-01-27 17:25:36','',0,'http://vivek-university.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-01-27 17:25:36','2021-01-27 17:25:36','','Blog','','inherit','closed','closed','','35-revision-v1','','','2021-01-27 17:25:36','2021-01-27 17:25:36','',35,'http://vivek-university.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-01-27 17:46:58','2021-01-27 17:46:58','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','We Won An Award!','','publish','open','open','','we-won-an-award','','','2021-01-27 17:48:23','2021-01-27 17:48:23','',0,'http://vivek-university.local/?p=37',0,'post','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-01-27 17:46:58','2021-01-27 17:46:58','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','We Won An Award!','','inherit','closed','closed','','37-revision-v1','','','2021-01-27 17:46:58','2021-01-27 17:46:58','',37,'http://vivek-university.local/37-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-01-28 14:30:53','2021-01-28 14:30:53',' ','','','publish','closed','closed','','41','','','2021-02-01 17:55:50','2021-02-01 17:55:50','',0,'http://vivek-university.local/?p=41',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-01-28 14:31:12','2021-01-28 14:31:12',' ','','','publish','closed','closed','','42','','','2021-02-01 17:55:08','2021-02-01 17:55:08','',0,'http://vivek-university.local/?p=42',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-01-28 14:31:36','2021-01-28 14:31:36',' ','','','publish','closed','closed','','43','','','2021-02-01 17:55:50','2021-02-01 17:55:50','',3,'http://vivek-university.local/?p=43',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-02-01 11:18:43','2021-02-01 11:18:43','Lorem Ipsum.','Math Meetup','','publish','closed','closed','','math-meetup','','','2021-02-01 13:32:08','2021-02-01 13:32:08','',0,'http://vivek-university.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-02-01 11:18:56','2021-02-01 11:18:56','Lorem Ipsum.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2021-02-01 17:05:34','2021-02-01 17:05:34','',0,'http://vivek-university.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-02-01 11:19:04','2021-02-01 11:19:04','<p>Lorem Ipsum.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Poetry Day','','publish','closed','closed','','poetry-day','','','2021-02-02 14:38:10','2021-02-02 14:38:10','',0,'http://vivek-university.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-02-01 12:08:50','2021-02-01 12:08:50','','Events','','publish','closed','closed','','events','','','2021-02-01 17:55:08','2021-02-01 17:55:08','',0,'http://vivek-university.local/?p=47',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-02-01 12:09:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-01 12:09:15','0000-00-00 00:00:00','',0,'http://vivek-university.local/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-02-01 12:09:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-01 12:09:15','0000-00-00 00:00:00','',0,'http://vivek-university.local/?p=49',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-02-01 12:09:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-01 12:09:15','0000-00-00 00:00:00','',0,'http://vivek-university.local/?p=50',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-02-01 12:09:37','2021-02-01 12:09:37','','Events','','publish','closed','closed','','events-2','','','2021-02-01 17:55:50','2021-02-01 17:55:50','',0,'http://vivek-university.local/?p=51',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-02-01 13:04:44','2021-02-01 13:04:44','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_6017fbf40f0b9','','','2021-02-01 13:04:44','2021-02-01 13:04:44','',0,'http://vivek-university.local/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-02-01 13:04:44','2021-02-01 13:04:44','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_6017fc06e98f7','','','2021-02-01 13:04:44','2021-02-01 13:04:44','',52,'http://vivek-university.local/?post_type=acf-field&p=53',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-02-01 14:00:50','2021-02-01 14:00:50','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2021-02-01 14:00:50','2021-02-01 14:00:50','',0,'http://vivek-university.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-02-01 14:02:18','2021-02-01 14:02:18','','Past Events','','publish','closed','closed','','past-events','','','2021-02-01 14:02:18','2021-02-01 14:02:18','',0,'http://vivek-university.local/?page_id=55',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-02-01 14:02:18','2021-02-01 14:02:18','','Past Events','','inherit','closed','closed','','55-revision-v1','','','2021-02-01 14:02:18','2021-02-01 14:02:18','',55,'http://vivek-university.local/55-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-02-01 14:07:15','2021-02-01 14:07:15','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Tabletop Game Evening','','publish','closed','closed','','tabletop-game-evening','','','2021-02-01 14:07:16','2021-02-01 14:07:16','',0,'http://vivek-university.local/?post_type=event&#038;p=57',0,'event','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-02-01 14:09:12','2021-02-01 14:09:12','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','New Year 2019','','publish','closed','closed','','new-year-2019','','','2021-02-01 14:09:12','2021-02-01 14:09:12','',0,'http://vivek-university.local/?post_type=event&#038;p=58',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-02-01 16:22:09','2021-02-01 16:22:09','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2021-02-01 16:22:09','2021-02-01 16:22:09','',0,'http://vivek-university.local/?post_type=program&#038;p=59',0,'program','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-02-01 16:22:25','2021-02-01 16:22:25','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2021-02-01 16:22:25','2021-02-01 16:22:25','',0,'http://vivek-university.local/?post_type=program&#038;p=60',0,'program','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-02-01 16:22:33','2021-02-01 16:22:33','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2021-02-01 16:22:33','2021-02-01 16:22:33','',0,'http://vivek-university.local/?post_type=program&#038;p=61',0,'program','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-02-01 17:04:57','2021-02-01 17:04:57','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_601834500571f','','','2021-02-02 08:17:55','2021-02-02 08:17:55','',0,'http://vivek-university.local/?post_type=acf-field-group&#038;p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-02-01 17:04:57','2021-02-01 17:04:57','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_60183455cf6d7','','','2021-02-01 17:04:57','2021-02-01 17:04:57','',62,'http://vivek-university.local/?post_type=acf-field&p=63',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-02-01 17:55:08','2021-02-01 17:55:08','','Programs','','publish','closed','closed','','programs','','','2021-02-01 17:55:08','2021-02-01 17:55:08','',0,'http://vivek-university.local/?p=64',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-02-01 17:55:27','2021-02-01 17:55:27','','Programs','','publish','closed','closed','','programs-2','','','2021-02-01 17:55:27','2021-02-01 17:55:27','',0,'http://vivek-university.local/?p=65',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-02-01 17:55:50','2021-02-01 17:55:50',' ','','','publish','closed','closed','','66','','','2021-02-01 17:55:50','2021-02-01 17:55:50','',0,'http://vivek-university.local/?p=66',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-02-02 08:09:46','2021-02-02 08:09:46','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Dr Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2021-02-02 11:25:30','2021-02-02 11:25:30','',0,'http://vivek-university.local/?post_type=professor&#038;p=67',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-02-02 08:10:02','2021-02-02 08:10:02','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Dr Barksalot','','publish','closed','closed','','dr-barksalot','','','2021-02-02 12:12:29','2021-02-02 12:12:29','',0,'http://vivek-university.local/?post_type=professor&#038;p=68',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-02-02 11:24:37','2021-02-02 11:24:37','','barksalot','','inherit','open','closed','','barksalot','','','2021-02-02 11:24:37','2021-02-02 11:24:37','',67,'http://vivek-university.local/wp-content/uploads/2021/02/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-02-02 11:25:21','2021-02-02 11:25:21','','meowsalot','','inherit','open','closed','','meowsalot','','','2021-02-02 11:25:21','2021-02-02 11:25:21','',67,'http://vivek-university.local/wp-content/uploads/2021/02/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-02-02 11:51:43','2021-02-02 11:51:43','<!-- wp:paragraph -->\n<p>Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Dr Froggerson','','publish','closed','closed','','dr-froggerson','','','2021-02-02 11:52:33','2021-02-02 11:52:33','',0,'http://vivek-university.local/?post_type=professor&#038;p=71',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-02-02 11:52:08','2021-02-02 11:52:08','','frog-bio','','inherit','open','closed','','frog-bio','','','2021-02-02 11:52:08','2021-02-02 11:52:08','',71,'http://vivek-university.local/wp-content/uploads/2021/02/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-02-02 12:09:50','2021-02-02 12:09:50','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_601940b41136f','','','2021-02-02 12:09:50','2021-02-02 12:09:50','',0,'http://vivek-university.local/?post_type=acf-field-group&#038;p=73',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-02-02 12:09:50','2021-02-02 12:09:50','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_601940b98774d','','','2021-02-02 12:09:50','2021-02-02 12:09:50','',73,'http://vivek-university.local/?post_type=acf-field&p=74',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-02-02 12:09:50','2021-02-02 12:09:50','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_601940c98774e','','','2021-02-02 12:09:50','2021-02-02 12:09:50','',73,'http://vivek-university.local/?post_type=acf-field&p=75',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-02-02 12:12:15','2021-02-02 12:12:15','','field','','inherit','open','closed','','field','','','2021-02-02 12:12:15','2021-02-02 12:12:15','',68,'http://vivek-university.local/wp-content/uploads/2021/02/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-02-02 13:59:27','2021-02-02 13:59:27','<!-- wp:paragraph -->\n<p>About page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2021-02-02 13:59:27','2021-02-02 13:59:27','',11,'http://vivek-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-02-02 13:59:42','2021-02-02 13:59:42','','building','','inherit','open','closed','','building','','','2021-02-02 13:59:42','2021-02-02 13:59:42','',11,'http://vivek-university.local/wp-content/uploads/2021/02/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-02-02 13:59:56','2021-02-02 13:59:56','<!-- wp:paragraph -->\n<p>About page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2021-02-02 13:59:56','2021-02-02 13:59:56','',11,'http://vivek-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-02-02 14:38:00','2021-02-02 14:38:00','','notebook','','inherit','open','closed','','notebook','','','2021-02-02 14:38:00','2021-02-02 14:38:00','',46,'http://vivek-university.local/wp-content/uploads/2021/02/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-02-02 14:38:16','2021-02-02 14:38:16','<!-- wp:paragraph -->\n<p>About page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2021-02-02 14:38:16','2021-02-02 14:38:16','',11,'http://vivek-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-02-02 16:19:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-02 16:19:27','0000-00-00 00:00:00','',0,'http://vivek-university.local/?p=82',0,'post','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-02-02 16:22:04','2021-02-02 16:22:04','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','trash','closed','closed','','group_60197bf9a23ca__trashed','','','2021-02-02 16:23:20','2021-02-02 16:23:20','',0,'http://vivek-university.local/?post_type=acf-field-group&#038;p=85',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-02-02 16:22:04','2021-02-02 16:22:04','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','trash','closed','closed','','field_60197c0327f5e__trashed','','','2021-02-02 16:23:20','2021-02-02 16:23:20','',85,'http://vivek-university.local/?post_type=acf-field&#038;p=86',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (37,5,0);
INSERT INTO `wp_term_relationships` VALUES (41,4,0);
INSERT INTO `wp_term_relationships` VALUES (42,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,4,0);
INSERT INTO `wp_term_relationships` VALUES (47,2,0);
INSERT INTO `wp_term_relationships` VALUES (51,4,0);
INSERT INTO `wp_term_relationships` VALUES (64,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,3,0);
INSERT INTO `wp_term_relationships` VALUES (66,4,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Lorem Ipsum.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Menu 1','footer-menu-1',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Menu 2','footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Ingrid');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Lorem ipsum.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"19e77bf7a6544e013e11ee52c62cb771e3c085ad7ea2cdaaeba7e920d2d7786a\";a:4:{s:10:\"expiration\";i:1612874585;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611664985;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','82');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (21,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_event','a:4:{s:6:\"normal\";s:23:\"acf-group_6017fbf40f0b9\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (28,1,'wp_user-settings-time','1612265095');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ingrid','$P$BM2oqF9GAy9T7NVG74BjtWn0kI6vBl.','ingrid','pruszynskaingrid@outlook.com','http://vivek-university.local','2021-01-26 12:42:38','',0,'Ingrid');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-08 11:29:34
