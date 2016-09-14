
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2016-09-09 15:26:59','Checked out branch: developpement.','branch','Admin'),(2,'2016-09-09 15:27:39','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=137776f\">#137776f</a> from origin/developpement.','pull','Admin'),(3,'2016-09-09 15:38:00','Successfully backed up the database.','backup','Admin'),(4,'2016-09-09 15:38:03','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=166e089\">#166e089</a> from origin/developpement.','pull','Admin'),(5,'2016-09-09 15:41:30','Error pushing changes to the remote repository.','error','Admin'),(6,'2016-09-09 15:42:16','Error pushing changes to the remote repository.','error','Admin'),(7,'2016-09-09 15:44:14','Created new branch: faq_scout','branch','Admin'),(8,'2016-09-09 15:44:15','Checked out branch: faq_scout.','branch','Admin'),(9,'2016-09-09 15:48:04','Successfully backed up the database.','backup','Admin'),(10,'2016-09-09 15:48:05','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=b105206&success=true\">#b105206</a> to the local repository.','commit','Admin'),(11,'2016-09-09 15:48:51','Successfully pushed 3 commits to origin/faq_scout.','push','Admin'),(12,'2016-09-09 18:59:38','Successfully backed up the database.','backup','Admin'),(13,'2016-09-09 18:59:40','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=4f457d7&success=true\">#4f457d7</a> to the local repository.','commit','Admin'),(14,'2016-09-09 19:31:50','There was an error committing the changes to the local repository.','error','Admin'),(15,'2016-09-09 19:32:22','There was an error committing the changes to the local repository.','error','Admin'),(16,'2016-09-09 19:32:46','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=0efa916&success=true\">#0efa916</a> to the local repository.','commit','Admin'),(17,'2016-09-09 20:54:10','Successfully backed up the database.','backup','Admin'),(18,'2016-09-09 20:54:11','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=5ccf147&success=true\">#5ccf147</a> to the local repository.','commit','Admin'),(19,'2016-09-09 20:55:24','Successfully pushed 3 commits to origin/faq_scout.','push','Admin'),(20,'2016-09-09 20:56:13','Created new branch: header_logo_scout','branch','Admin'),(21,'2016-09-09 20:56:13','Checked out branch: header_logo_scout.','branch','Admin'),(22,'2016-09-09 21:26:54','Successfully backed up the database.','backup','Admin'),(23,'2016-09-09 21:26:55','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=c9603c0&success=true\">#c9603c0</a> to the local repository.','commit','Admin'),(24,'2016-09-09 21:27:22','Successfully pushed 1 commit to origin/header_logo_scout.','push','Admin'),(25,'2016-09-13 14:51:54','Successfully backed up the database.','backup','Admin'),(26,'2016-09-13 14:53:05','Successfully backed up the database.','backup','Admin'),(27,'2016-09-13 14:53:09','Checked out branch: faq_scout.','branch','Admin'),(28,'2016-09-13 14:53:39','Successfully backed up the database.','backup','Admin'),(29,'2016-09-13 14:53:41','Checked out branch: faq_scout.','branch','Admin'),(30,'2016-09-13 14:54:41','Successfully backed up the database.','backup','Admin'),(31,'2016-09-13 14:54:43','Checked out branch: faq_scout.','branch','Admin'),(32,'2016-09-13 16:09:29','Successfully backed up the database.','backup','Admin'),(33,'2016-09-13 16:09:30','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=c174870&success=true\">#c174870</a> to the local repository.','commit','Admin'),(34,'2016-09-13 16:34:30','Successfully pushed 4 commits to origin/faq_scout.','push','Admin'),(35,'2016-09-14 18:25:06','Successfully backed up the database.','backup','Admin'),(36,'2016-09-14 18:25:07','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=8a6f3b5&success=true\">#8a6f3b5</a> to the local repository.','commit','Admin'),(37,'2016-09-14 18:25:18','Successfully pushed 3 commits to origin/faq_scout.','push','Admin'),(38,'2016-09-14 18:27:13','Successfully imported the database. ','import','Admin'),(39,'2016-09-14 18:28:10','Reverted to commit <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=4c5d164\">#4c5d164</a>.','revert','Admin'),(40,'2016-09-14 18:28:15','Successfully backed up the database.','backup','Admin'),(41,'2016-09-14 18:29:09','Reverted to commit <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=3b75aae\">#3b75aae</a>.','revert','Admin'),(42,'2016-09-14 18:29:13','Successfully backed up the database.','backup','Admin');
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

