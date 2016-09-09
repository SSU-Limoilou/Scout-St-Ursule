
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-09-08 15:59:15','2016-09-08 13:59:15','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','publish','open','open','','bonjour-tout-le-monde','','','2016-09-08 15:59:15','2016-09-08 13:59:15','',0,'http://localhost/wp-scout/?p=1',0,'post','',1),(2,1,'2016-09-08 15:59:15','2016-09-08 13:59:15','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wp-scout/wp-admin/\">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d&rsquo;exemple','','publish','closed','open','','page-d-exemple','','','2016-09-08 15:59:15','2016-09-08 13:59:15','',0,'http://localhost/wp-scout/?page_id=2',0,'page','',0),(3,1,'2016-09-08 15:59:32','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2016-09-08 15:59:32','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?p=3',0,'post','',0),(4,1,'2016-09-08 16:09:13','2016-09-08 14:09:13','','Boutique','','publish','closed','closed','','boutique','','','2016-09-08 16:09:13','2016-09-08 14:09:13','',0,'http://localhost/wp-scout/boutique/',0,'page','',0),(5,1,'2016-09-08 16:09:13','2016-09-08 14:09:13','[woocommerce_cart]','Panier','','publish','closed','closed','','panier','','','2016-09-08 16:09:13','2016-09-08 14:09:13','',0,'http://localhost/wp-scout/panier/',0,'page','',0),(6,1,'2016-09-08 16:09:14','2016-09-08 14:09:14','[woocommerce_checkout]','Commande','','publish','closed','closed','','commande','','','2016-09-08 16:09:14','2016-09-08 14:09:14','',0,'http://localhost/wp-scout/commande/',0,'page','',0),(7,1,'2016-09-08 16:09:14','2016-09-08 14:09:14','[woocommerce_my_account]','Mon Compte','','publish','closed','closed','','mon-compte','','','2016-09-08 16:09:14','2016-09-08 14:09:14','',0,'http://localhost/wp-scout/mon-compte/',0,'page','',0),(8,1,'2016-09-09 18:08:55','2016-09-09 16:08:55','','FAQ','','publish','closed','closed','','faq','','','2016-09-09 18:55:26','2016-09-09 16:55:26','',0,'http://localhost/wp-scout/?post_type=wpsm_faq_r&#038;p=8',0,'wpsm_faq_r','',0),(9,1,'2016-09-09 18:11:30','2016-09-09 16:11:30','[WPSM_FAQ id=8]','Vous avez des questions?','','publish','closed','closed','','vous-avez-des-questions','','','2016-09-09 18:58:34','2016-09-09 16:58:34','',0,'http://localhost/wp-scout/?page_id=9',0,'page','',0),(10,1,'2016-09-09 18:11:30','2016-09-09 16:11:30','[WPSM_FAQ id=8]','vous avez des questions?','','inherit','closed','closed','','9-revision-v1','','','2016-09-09 18:11:30','2016-09-09 16:11:30','',9,'http://localhost/wp-scout/2016/09/09/9-revision-v1/',0,'revision','',0),(11,1,'2016-09-09 18:12:57','2016-09-09 16:12:57','[WPSM_FAQ id=8]','Vous avez des questions?','','inherit','closed','closed','','9-revision-v1','','','2016-09-09 18:12:57','2016-09-09 16:12:57','',9,'http://localhost/wp-scout/2016/09/09/9-revision-v1/',0,'revision','',0),(12,1,'2016-09-09 18:21:50','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2016-09-09 18:21:50','0000-00-00 00:00:00','',0,'http://localhost/wp-scout/?page_id=12',0,'page','',0);
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

