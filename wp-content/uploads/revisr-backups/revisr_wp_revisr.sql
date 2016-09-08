
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2016-09-08 17:01:50','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=cfbecfa&success=true\">#cfbecfa</a> to the local repository.','commit','Admin'),(2,'2016-09-08 17:02:23','Deleted branch developpement.','branch','Admin'),(3,'2016-09-08 17:02:40','Created new branch: developpement','branch','Admin'),(4,'2016-09-08 17:02:41','Checked out branch: developpement.','branch','Admin'),(5,'2016-09-08 17:03:25','There was an error committing the changes to the local repository.','error','Admin'),(6,'2016-09-08 17:04:39','There was an error committing the changes to the local repository.','error','Admin'),(7,'2016-09-08 17:06:42','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(8,'2016-09-08 11:08:24','There was an error committing the changes to the local repository.','error','Admin'),(9,'2016-09-08 11:08:35','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=18568be&success=true\">#18568be</a> to the local repository.','commit','Admin'),(10,'2016-09-08 11:09:17','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(11,'2016-09-08 11:20:01','Error backing up the database.','error','Admin'),(12,'2016-09-08 11:20:27','Error backing up the database.','error','Admin'),(13,'2016-09-08 11:21:00','Error backing up the database.','error','Admin'),(14,'2016-09-08 11:21:01','There was an error committing the changes to the local repository.','error','Admin'),(15,'2016-09-08 11:21:35','Error backing up the database.','error','Admin'),(16,'2016-09-08 11:21:36','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=4915923&success=true\">#4915923</a> to the local repository.','commit','Admin'),(17,'2016-09-08 11:21:40','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(18,'2016-09-08 11:24:07','Error backing up the database.','error','Admin'),(19,'2016-09-08 11:24:08','There was an error committing the changes to the local repository.','error','Admin'),(20,'2016-09-08 11:25:16','Error backing up the database.','error','Admin'),(21,'2016-09-08 11:35:22','Successfully backed up the database.','backup','Admin'),(22,'2016-09-08 11:35:22','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=a15c83e&success=true\">#a15c83e</a> to the local repository.','commit','Admin'),(23,'2016-09-08 11:37:04','Successfully backed up the database.','backup','Admin'),(24,'2016-09-08 12:03:36','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(25,'2016-09-08 12:05:33','Successfully backed up the database.','backup','Admin'),(26,'2016-09-08 12:05:58','Successfully pushed 1 commit to origin/developpement.','push','Admin');
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

