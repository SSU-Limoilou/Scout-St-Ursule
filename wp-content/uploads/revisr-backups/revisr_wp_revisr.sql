
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
DROP TABLE IF EXISTS `wp_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  `user` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2016-09-09 15:05:36','Checked out branch: developpement.','branch','Admin'),(2,'2016-09-09 15:06:36','Checked out branch: master.','branch','Admin'),(3,'2016-09-09 15:07:45','Checked out branch: developpement.','branch','Admin'),(4,'2016-09-09 15:18:05','Error backing up the database.','error','Admin'),(5,'2016-09-09 15:18:08','There was an error committing the changes to the local repository.','error','Admin'),(6,'2016-09-09 15:22:27','Error backing up the database.','error','Admin'),(7,'2016-09-09 15:22:28','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=137776f&success=true\">#137776f</a> to the local repository.','commit','Admin'),(8,'2016-09-09 15:22:45','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(9,'2016-09-09 15:32:43','Error backing up the database.','error','Admin'),(10,'2016-09-09 15:33:47','Error backing up the database.','error','Admin'),(11,'2016-09-09 15:35:11','Successfully backed up the database.','backup','Admin'),(12,'2016-09-09 15:35:30','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(13,'2016-09-09 16:23:51','Created new branch: inscription_scout','branch','Admin'),(14,'2016-09-09 16:23:51','Checked out branch: inscription_scout.','branch','Admin'),(15,'2016-09-09 17:23:50','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=5912270&success=true\">#5912270</a> to the local repository.','commit','Admin'),(16,'2016-09-09 20:17:05','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=e95c48f&success=true\">#e95c48f</a> to the local repository.','commit','Admin'),(17,'2016-09-09 20:50:11','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=8125161&success=true\">#8125161</a> to the local repository.','commit','Admin'),(18,'2016-09-09 21:25:47','Successfully backed up the database.','backup','Admin'),(19,'2016-09-09 21:25:48','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=1ce14f9&success=true\">#1ce14f9</a> to the local repository.','commit','Admin'),(20,'2016-09-09 21:25:52','Successfully pushed 4 commits to origin/inscription_scout.','push','Admin'),(21,'2016-09-13 14:54:32','Successfully backed up the database.','backup','Admin');
/*!40000 ALTER TABLE `wp_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

