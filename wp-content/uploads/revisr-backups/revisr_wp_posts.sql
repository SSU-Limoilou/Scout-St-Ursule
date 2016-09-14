
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
DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-09-08 15:59:15','2016-09-08 13:59:15','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','publish','open','open','','bonjour-tout-le-monde','','','2016-09-08 15:59:15','2016-09-08 13:59:15','',0,'http://localhost/wp-scout/?p=1',0,'post','',1),(2,1,'2016-09-08 15:59:15','2016-09-08 13:59:15','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wp-scout/wp-admin/\">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d&rsquo;exemple','','publish','closed','open','','page-d-exemple','','','2016-09-08 15:59:15','2016-09-08 13:59:15','',0,'http://localhost/wp-scout/?page_id=2',0,'page','',0),(3,1,'2016-09-08 15:59:32','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2016-09-08 15:59:32','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?p=3',0,'post','',0),(4,1,'2016-09-08 16:09:13','2016-09-08 14:09:13','','Boutique','','publish','closed','closed','','boutique','','','2016-09-08 16:09:13','2016-09-08 14:09:13','',0,'http://localhost/wp-scout/boutique/',0,'page','',0),(5,1,'2016-09-08 16:09:13','2016-09-08 14:09:13','[woocommerce_cart]','Panier','','publish','closed','closed','','panier','','','2016-09-08 16:09:13','2016-09-08 14:09:13','',0,'http://localhost/wp-scout/panier/',0,'page','',0),(6,1,'2016-09-08 16:09:14','2016-09-08 14:09:14','[woocommerce_checkout]','Commande','','publish','closed','closed','','commande','','','2016-09-08 16:09:14','2016-09-08 14:09:14','',0,'http://localhost/wp-scout/commande/',0,'page','',0),(7,1,'2016-09-08 16:09:14','2016-09-08 14:09:14','[woocommerce_my_account]','Mon Compte','','publish','closed','closed','','mon-compte','','','2016-09-08 16:09:14','2016-09-08 14:09:14','',0,'http://localhost/wp-scout/mon-compte/',0,'page','',0),(8,1,'2016-09-09 16:32:32','2016-09-09 14:32:32','Test','Test de produit','','publish','open','closed','','test-de-produit','','','2016-09-09 16:32:32','2016-09-09 14:32:32','',0,'http://localhost/wp-scout/?post_type=product&#038;p=8',0,'product','',0),(9,1,'2016-09-09 17:02:10','2016-09-09 15:02:10','','Order &ndash; septembre 9, 2016 @ 05:02  ','','trash','open','closed','order_57d2cef2355e8','commande-sep-09-2016-0302-pm__trashed','','','2016-09-09 19:00:31','2016-09-09 17:00:31','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=9',0,'shop_order','',1),(10,1,'2016-09-09 18:35:37','2016-09-09 16:35:37','','Order &ndash; septembre 9, 2016 @ 06:35  ','','trash','open','closed','order_57d2e4d9d5fe7','commande-sep-09-2016-0435-pm__trashed','','','2016-09-09 19:00:30','2016-09-09 17:00:30','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=10',0,'shop_order','',1),(11,1,'2016-09-09 18:41:18','2016-09-09 16:41:18','','Order &ndash; septembre 9, 2016 @ 06:41  ','','trash','open','closed','order_57d2e62dbc68b','commande-sep-09-2016-0441-pm__trashed','','','2016-09-09 19:00:28','2016-09-09 17:00:28','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=11',0,'shop_order','',1),(12,1,'2016-09-09 19:04:10','2016-09-09 17:04:10','','Order &ndash; septembre 9, 2016 @ 07:04  ','','trash','open','closed','order_57d2eb894c473','commande-sep-09-2016-0504-pm__trashed','','','2016-09-13 19:08:34','2016-09-13 17:08:34','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=12',0,'shop_order','',1),(13,1,'2016-12-09 19:35:34','2016-12-09 18:35:34','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\nnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu\r\nfugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\nculpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\nnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu\r\nfugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\nculpa qui officia deserunt mollit anim id est laborum.','Camp Louveteau Été 2016','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\nnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu\r\nfugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\r\nculpa qui officia deserunt mollit anim id est laborum.','future','closed','closed','','camp-louveteau-ete-2016','','','2016-09-09 19:39:26','2016-09-09 17:39:26','',0,'http://localhost/wp-scout/?post_type=product&#038;p=13',0,'product','',0),(14,1,'2016-09-09 19:36:20','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','closed','','','','','2016-09-09 19:36:20','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?post_type=product&p=14',0,'product','',0),(15,1,'2016-09-09 19:37:31','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','closed','','','','','2016-09-09 19:37:31','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?post_type=product&p=15',0,'product','',0),(16,1,'2016-09-09 19:38:16','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','closed','','','','','2016-09-09 19:38:16','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?post_type=product&p=16',0,'product','',0),(17,1,'2016-09-09 21:22:36','2016-09-09 19:22:36','','Order &ndash; septembre 9, 2016 @ 09:22  ','','trash','open','closed','order_57d30bfc0120d','commande-sep-09-2016-0722-pm__trashed','','','2016-09-13 19:08:33','2016-09-13 17:08:33','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=17',0,'shop_order','',1),(18,1,'2016-09-13 16:05:54','2016-09-13 14:05:54','','Order &ndash; septembre 13, 2016 @ 04:05  ','','trash','open','closed','order_57d807c20d792','commande-sep-13-2016-0205-pm__trashed','','','2016-09-13 19:08:32','2016-09-13 17:08:32','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=18',0,'shop_order','',1),(19,1,'2016-09-13 16:44:19','2016-09-13 14:44:19','','Order &ndash; septembre 13, 2016 @ 04:44  ','','trash','open','closed','order_57d810c2bff6f','commande-sep-13-2016-0244-pm__trashed','','','2016-09-13 19:08:31','2016-09-13 17:08:31','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=19',0,'shop_order','',1),(20,1,'2016-09-13 16:47:46','2016-09-13 14:47:46','','Order &ndash; septembre 13, 2016 @ 04:47  ','','trash','open','closed','order_57d81191e40ca','commande-sep-13-2016-0247-pm__trashed','','','2016-09-13 19:08:31','2016-09-13 17:08:31','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=20',0,'shop_order','',1),(21,1,'2016-09-13 16:53:27','2016-09-13 14:53:27','','Order &ndash; septembre 13, 2016 @ 04:53  ','','trash','open','closed','order_57d812e6e338e','commande-sep-13-2016-0253-pm__trashed','','','2016-09-13 19:08:30','2016-09-13 17:08:30','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=21',0,'shop_order','',1),(22,1,'2016-09-13 17:06:46','2016-09-13 15:06:46','','Order &ndash; septembre 13, 2016 @ 05:06  ','','trash','open','closed','order_57d81605b8d41','commande-sep-13-2016-0306-pm__trashed','','','2016-09-13 19:08:29','2016-09-13 17:08:29','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=22',0,'shop_order','',1),(23,1,'2016-09-13 17:24:44','2016-09-13 15:24:44','','Order &ndash; septembre 13, 2016 @ 05:24  ','','trash','open','closed','order_57d81a3c5f817','commande-sep-13-2016-0324-pm__trashed','','','2016-09-13 19:09:04','2016-09-13 17:09:04','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=23',0,'shop_order','',1),(24,1,'2016-09-13 17:26:26','2016-09-13 15:26:26','','Order &ndash; septembre 13, 2016 @ 05:26  ','','trash','open','closed','order_57d81aa2661e8','commande-sep-13-2016-0326-pm__trashed','','','2016-09-13 19:09:03','2016-09-13 17:09:03','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=24',0,'shop_order','',1),(25,1,'2016-09-13 17:27:12','2016-09-13 15:27:12','','Order &ndash; septembre 13, 2016 @ 05:27  ','','trash','open','closed','order_57d81ad074587','commande-sep-13-2016-0327-pm__trashed','','','2016-09-13 19:09:03','2016-09-13 17:09:03','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=25',0,'shop_order','',1),(26,1,'2016-09-13 17:41:25','2016-09-13 15:41:25','','Order &ndash; septembre 13, 2016 @ 05:41  ','','trash','open','closed','order_57d81e25123c3','commande-sep-13-2016-0341-pm__trashed','','','2016-09-13 19:09:02','2016-09-13 17:09:02','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=26',0,'shop_order','',1),(27,1,'2016-09-13 17:41:53','2016-09-13 15:41:53','','Order &ndash; septembre 13, 2016 @ 05:41  ','','trash','open','closed','order_57d81e416c4eb','commande-sep-13-2016-0341-pm-2__trashed','','','2016-09-13 19:09:00','2016-09-13 17:09:00','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=27',0,'shop_order','',1),(28,1,'2016-09-13 17:42:54','2016-09-13 15:42:54','','Order &ndash; septembre 13, 2016 @ 05:42  ','','trash','open','closed','order_57d81e7e5307b','commande-sep-13-2016-0342-pm__trashed','','','2016-09-13 19:08:58','2016-09-13 17:08:58','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=28',0,'shop_order','',1),(29,1,'2016-09-13 17:43:21','2016-09-13 15:43:21','','Order &ndash; septembre 13, 2016 @ 05:43  ','','trash','open','closed','order_57d81e984da59','commande-sep-13-2016-0343-pm__trashed','','','2016-09-13 19:08:57','2016-09-13 17:08:57','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=29',0,'shop_order','',1),(30,1,'2016-09-13 17:43:57','2016-09-13 15:43:57','','Order &ndash; septembre 13, 2016 @ 05:43  ','','trash','open','closed','order_57d81ebd56387','commande-sep-13-2016-0343-pm-2__trashed','','','2016-09-13 19:08:56','2016-09-13 17:08:56','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=30',0,'shop_order','',1),(31,1,'2016-09-13 17:45:05','2016-09-13 15:45:05','','Order &ndash; septembre 13, 2016 @ 05:45  ','','trash','open','closed','order_57d81f013fe6b','commande-sep-13-2016-0345-pm__trashed','','','2016-09-13 19:08:54','2016-09-13 17:08:54','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=31',0,'shop_order','',1),(32,1,'2016-09-13 17:45:58','2016-09-13 15:45:58','','Order &ndash; septembre 13, 2016 @ 05:45  ','','trash','open','closed','order_57d81f3655b73','commande-sep-13-2016-0345-pm-2__trashed','','','2016-09-13 19:08:53','2016-09-13 17:08:53','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=32',0,'shop_order','',1),(33,1,'2016-09-13 17:47:02','2016-09-13 15:47:02','','Order &ndash; septembre 13, 2016 @ 05:47  ','','trash','open','closed','order_57d81f75bb21e','commande-sep-13-2016-0347-pm__trashed','','','2016-09-13 19:08:52','2016-09-13 17:08:52','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=33',0,'shop_order','',1),(34,1,'2016-09-13 17:47:46','2016-09-13 15:47:46','','Order &ndash; septembre 13, 2016 @ 05:47  ','','trash','open','closed','order_57d81fa1b318f','commande-sep-13-2016-0347-pm-2__trashed','','','2016-09-13 19:08:51','2016-09-13 17:08:51','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=34',0,'shop_order','',1),(35,1,'2016-09-13 17:50:31','2016-09-13 15:50:31','','Order &ndash; septembre 13, 2016 @ 05:50  ','','trash','open','closed','order_57d8204742e3c','commande-sep-13-2016-0350-pm__trashed','','','2016-09-13 19:08:51','2016-09-13 17:08:51','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=35',0,'shop_order','',1),(36,1,'2016-09-13 18:13:39','2016-09-13 16:13:39','','Order &ndash; septembre 13, 2016 @ 06:13  ','','trash','open','closed','order_57d825b39a650','commande-sep-13-2016-0413-pm__trashed','','','2016-09-13 19:08:50','2016-09-13 17:08:50','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=36',0,'shop_order','',1),(37,1,'2016-09-13 18:23:19','2016-09-13 16:23:19','','Order &ndash; septembre 13, 2016 @ 06:23  ','','trash','open','closed','order_57d827f7c7fe2','commande-sep-13-2016-0423-pm__trashed','','','2016-09-13 19:08:49','2016-09-13 17:08:49','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=37',0,'shop_order','',1),(38,1,'2016-09-13 18:30:17','2016-09-13 16:30:17','','Order &ndash; septembre 13, 2016 @ 06:30  ','','trash','open','closed','order_57d829998a2e0','commande-sep-13-2016-0430-pm__trashed','','','2016-09-13 19:08:47','2016-09-13 17:08:47','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=38',0,'shop_order','',1),(39,1,'2016-09-13 18:41:24','2016-09-13 16:41:24','','Order &ndash; septembre 13, 2016 @ 06:41  ','','trash','open','closed','order_57d82c33f29c0','commande-sep-13-2016-0441-pm__trashed','','','2016-09-13 19:08:46','2016-09-13 17:08:46','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=39',0,'shop_order','',1),(40,1,'2016-09-13 18:49:48','2016-09-13 16:49:48','','Order &ndash; septembre 13, 2016 @ 06:49  ','','trash','open','closed','order_57d82e2bd2bb2','commande-sep-13-2016-0449-pm__trashed','','','2016-09-13 19:08:45','2016-09-13 17:08:45','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=40',0,'shop_order','',1),(41,1,'2016-09-13 18:51:10','2016-09-13 16:51:10','','Order &ndash; septembre 13, 2016 @ 06:51  ','','trash','open','closed','order_57d82e7dd3b17','commande-sep-13-2016-0451-pm__trashed','','','2016-09-13 19:08:43','2016-09-13 17:08:43','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=41',0,'shop_order','',1),(42,1,'2016-09-13 19:02:17','2016-09-13 17:02:17','','Order &ndash; septembre 13, 2016 @ 07:02  ','','trash','open','closed','order_57d8311954906','commande-sep-13-2016-0502-pm__trashed','','','2016-09-13 19:08:42','2016-09-13 17:08:42','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=42',0,'shop_order','',1),(43,1,'2016-09-13 19:09:15','2016-09-13 17:09:15','','Order &ndash; septembre 13, 2016 @ 07:09  ','','trash','open','closed','order_57d832ba43a11','commande-sep-13-2016-0509-pm__trashed','','','2016-09-13 20:15:19','2016-09-13 18:15:19','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=43',0,'shop_order','',1),(44,1,'2016-09-13 19:41:02','2016-09-13 17:41:02','','Order &ndash; septembre 13, 2016 @ 07:41  ','','trash','open','closed','order_57d83a1f55dc3','commande-sep-13-2016-0540-pm__trashed','','','2016-09-13 20:15:17','2016-09-13 18:15:17','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=44',0,'shop_order','',1),(45,1,'2016-09-13 20:14:35','2016-09-13 18:14:35','','Order &ndash; septembre 13, 2016 @ 08:14  ','','trash','open','closed','order_57d8420acfecc','commande-sep-13-2016-0614-pm__trashed','','','2016-09-13 20:15:16','2016-09-13 18:15:16','',0,'http://localhost/wp-scout/?post_type=shop_order&#038;p=45',0,'shop_order','',1),(46,1,'2016-09-14 17:54:25','2016-09-14 15:54:25','','benevole','','inherit','open','closed','','benevole','','','2016-09-14 17:54:25','2016-09-14 15:54:25','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/benevole.png',0,'attachment','image/png',0),(47,1,'2016-09-14 17:54:27','2016-09-14 15:54:27','','depassement_soi_b','','inherit','open','closed','','depassement_soi_b','','','2016-09-14 17:54:27','2016-09-14 15:54:27','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/depassement_soi_b.png',0,'attachment','image/png',0),(48,1,'2016-09-14 17:54:29','2016-09-14 15:54:29','','entraide_b','','inherit','open','closed','','entraide_b','','','2016-09-14 17:54:29','2016-09-14 15:54:29','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/entraide_b.png',0,'attachment','image/png',0),(49,1,'2016-09-14 17:54:30','2016-09-14 15:54:30','','fond_arbre','','inherit','open','closed','','fond_arbre','','','2016-09-14 17:54:30','2016-09-14 15:54:30','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/fond_arbre.png',0,'attachment','image/png',0),(50,1,'2016-09-14 17:54:33','2016-09-14 15:54:33','','plein_air_b','','inherit','open','closed','','plein_air_b','','','2016-09-14 17:54:33','2016-09-14 15:54:33','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/plein_air_b.png',0,'attachment','image/png',0),(51,1,'2016-09-14 17:54:35','2016-09-14 15:54:35','','scout_2','','inherit','open','closed','','scout_2','','','2016-09-14 17:54:35','2016-09-14 15:54:35','',0,'http://localhost/wp-scout/wp-content/uploads/2016/09/scout_2.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

