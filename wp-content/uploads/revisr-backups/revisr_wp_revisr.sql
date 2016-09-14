
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2016-09-09 15:05:36','Checked out branch: developpement.','branch','Admin'),(2,'2016-09-09 15:06:36','Checked out branch: master.','branch','Admin'),(3,'2016-09-09 15:07:45','Checked out branch: developpement.','branch','Admin'),(4,'2016-09-09 15:18:05','Error backing up the database.','error','Admin'),(5,'2016-09-09 15:18:08','There was an error committing the changes to the local repository.','error','Admin'),(6,'2016-09-09 15:22:27','Error backing up the database.','error','Admin'),(7,'2016-09-09 15:22:28','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=137776f&success=true\">#137776f</a> to the local repository.','commit','Admin'),(8,'2016-09-09 15:22:45','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(9,'2016-09-09 15:32:43','Error backing up the database.','error','Admin'),(10,'2016-09-09 15:33:47','Error backing up the database.','error','Admin'),(11,'2016-09-09 15:35:11','Successfully backed up the database.','backup','Admin'),(12,'2016-09-09 15:35:30','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(13,'2016-09-09 16:23:51','Created new branch: inscription_scout','branch','Admin'),(14,'2016-09-09 16:23:51','Checked out branch: inscription_scout.','branch','Admin'),(15,'2016-09-09 17:23:50','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=5912270&success=true\">#5912270</a> to the local repository.','commit','Admin'),(16,'2016-09-09 20:17:05','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=e95c48f&success=true\">#e95c48f</a> to the local repository.','commit','Admin'),(17,'2016-09-09 20:50:11','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=8125161&success=true\">#8125161</a> to the local repository.','commit','Admin'),(18,'2016-09-09 21:25:47','Successfully backed up the database.','backup','Admin'),(19,'2016-09-09 21:25:48','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=1ce14f9&success=true\">#1ce14f9</a> to the local repository.','commit','Admin'),(20,'2016-09-09 21:25:52','Successfully pushed 4 commits to origin/inscription_scout.','push','Admin'),(21,'2016-09-13 14:57:49','Successfully backed up the database.','backup','Admin'),(22,'2016-09-13 14:57:51','Checked out branch: inscription_scout.','branch','Admin'),(23,'2016-09-13 20:15:55','Successfully backed up the database.','backup','Admin'),(24,'2016-09-13 20:15:58','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=83f632f&success=true\">#83f632f</a> to the local repository.','commit','Admin'),(25,'2016-09-13 20:17:15','Successfully pushed 2 commits to origin/inscription_scout.','push','Admin'),(26,'2016-09-13 20:23:41','Successfully pushed 4 commits to origin/developpement.','push','Admin'),(27,'2016-09-13 20:28:53','Created new branch: intergration_scout_benevole','branch','Admin'),(28,'2016-09-13 20:28:53','Checked out branch: intergration_scout_benevole.','branch','Admin'),(29,'2016-09-13 21:31:24','Successfully backed up the database.','backup','Admin'),(30,'2016-09-13 21:31:25','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=775458f&success=true\">#775458f</a> to the local repository.','commit','Admin'),(31,'2016-09-13 21:32:10','Successfully pushed 1 commit to origin/intergration_scout_benevole.','push','Admin'),(32,'2016-09-14 15:32:16','Successfully backed up the database.','backup','Admin'),(33,'2016-09-14 15:32:22','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=adce214&success=true\">#adce214</a> to the local repository.','commit','Admin'),(34,'2016-09-14 15:33:03','Successfully backed up the database.','backup','Admin'),(35,'2016-09-14 15:33:09','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=9537ab7\">#9537ab7</a> from origin/intergration_scout_benevole.','pull','Admin'),(36,'2016-09-14 15:35:53','Successfully pushed 3 commits to origin/intergration_scout_benevole.','push','Admin'),(37,'2016-09-14 15:38:12','Successfully imported the database. <a href=\"http://localhost/wp-scout/wp-admin/admin-post.php?action=process_revert&amp;revert_type=db&amp;db_hash=e931054&amp;revisr_revert_nonce=385a0be4f7\">Undo</a>','import','Admin'),(38,'2016-09-14 15:38:33','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(39,'2016-09-14 15:39:41','Error backing up the database.','error','Admin'),(40,'2016-09-14 15:39:42','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=aff0604&success=true\">#aff0604</a> to the local repository.','commit','Admin'),(41,'2016-09-14 15:39:46','Successfully pushed 1 commit to origin/developpement.','push','Admin'),(42,'2016-09-14 15:40:44','Created new branch: intergration_section_valeurs','branch','Admin'),(43,'2016-09-14 15:40:45','Checked out branch: intergration_section_valeurs.','branch','Admin'),(44,'2016-09-14 16:53:08','Error backing up the database.','error','Admin'),(45,'2016-09-14 16:53:09','Checked out branch: faq_scout.','branch','Admin'),(46,'2016-09-14 16:53:53','Error backing up the database.','error','Admin'),(47,'2016-09-14 16:53:54','Checked out branch: intergration_section_valeurs.','branch','Admin'),(48,'2016-09-14 16:53:56','','error','Admin'),(49,'2016-09-14 16:53:56','','error','Admin'),(50,'2016-09-14 16:53:56','','error','Admin'),(51,'2016-09-14 16:53:57','','error','Admin'),(52,'2016-09-14 16:53:57','','error','Admin'),(53,'2016-09-14 16:53:57','','error','Admin'),(54,'2016-09-14 16:53:57','Error importing the database.','error','Admin'),(55,'2016-09-14 16:55:08','Error backing up the database.','error','Admin'),(56,'2016-09-14 16:55:09','Committed <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=965bf6d&success=true\">#965bf6d</a> to the local repository.','commit','Admin'),(57,'2016-09-14 16:55:25','Successfully pushed 1 commit to origin/intergration_section_valeurs.','push','Admin'),(58,'2016-09-14 16:55:40','Error backing up the database.','error','Admin'),(59,'2016-09-14 16:55:42','Checked out branch: faq_scout.','branch','Admin'),(60,'2016-09-14 16:55:43','','error','Admin'),(61,'2016-09-14 16:55:44','','error','Admin'),(62,'2016-09-14 16:55:44','','error','Admin'),(63,'2016-09-14 16:55:44','','error','Admin'),(64,'2016-09-14 16:55:44','','error','Admin'),(65,'2016-09-14 16:55:45','','error','Admin'),(66,'2016-09-14 16:55:45','Error importing the database.','error','Admin'),(67,'2016-09-14 16:56:44','Successfully backed up the database.','backup','Admin'),(68,'2016-09-14 16:56:51','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=5d6660e\">#5d6660e</a> from origin/faq_scout.','pull','Admin'),(69,'2016-09-14 16:56:51','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=c174870\">#c174870</a> from origin/faq_scout.','pull','Admin'),(70,'2016-09-14 16:56:51','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=590860f\">#590860f</a> from origin/faq_scout.','pull','Admin'),(71,'2016-09-14 16:56:51','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=9f9909c\">#9f9909c</a> from origin/faq_scout.','pull','Admin'),(72,'2016-09-14 16:56:51','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=c0f0dda\">#c0f0dda</a> from origin/faq_scout.','pull','Admin'),(73,'2016-09-14 16:56:52','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=5ccf147\">#5ccf147</a> from origin/faq_scout.','pull','Admin'),(74,'2016-09-14 16:56:52','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=0efa916\">#0efa916</a> from origin/faq_scout.','pull','Admin'),(75,'2016-09-14 16:56:52','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=4f457d7\">#4f457d7</a> from origin/faq_scout.','pull','Admin'),(76,'2016-09-14 16:56:53','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=b105206\">#b105206</a> from origin/faq_scout.','pull','Admin'),(77,'2016-09-14 16:56:53','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=c49f08c\">#c49f08c</a> from origin/faq_scout.','pull','Admin'),(78,'2016-09-14 16:56:53','Pulled <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=22521ff\">#22521ff</a> from origin/faq_scout.','pull','Admin'),(79,'2016-09-14 17:00:55','Successfully pushed 2 commits to origin/faq_scout.','push','Admin'),(80,'2016-09-14 17:02:11','Successfully backed up the database.','backup','Admin'),(81,'2016-09-14 17:02:15','Checked out branch: developpement.','branch','Admin'),(82,'2016-09-14 17:02:19','Successfully imported the database. <a href=\"http://localhost/wp-scout/wp-admin/admin-post.php?action=process_revert&amp;revert_type=db&amp;db_hash=a62f4df&amp;revisr_revert_nonce=7b9e1b767f\">Undo</a>','import','Admin'),(83,'2016-09-14 17:03:11','Error backing up the database.','error','Admin'),(84,'2016-09-14 17:03:36','Error backing up the database.','error','Admin'),(85,'2016-09-14 17:03:38','Checked out branch: faq_scout.','branch','Admin'),(86,'2016-09-14 17:03:39','','error','Admin'),(87,'2016-09-14 17:03:40','','error','Admin'),(88,'2016-09-14 17:03:40','','error','Admin'),(89,'2016-09-14 17:03:40','','error','Admin'),(90,'2016-09-14 17:03:41','','error','Admin'),(91,'2016-09-14 17:03:41','','error','Admin'),(92,'2016-09-14 17:03:41','Error importing the database.','error','Admin'),(93,'2016-09-14 17:04:32','Reverted to commit <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=a62f4df\">#a62f4df</a>.','revert','Admin'),(94,'2016-09-14 17:04:34','Error backing up the database.','error','Admin'),(95,'2016-09-14 17:04:37','','error','Admin'),(96,'2016-09-14 17:04:37','','error','Admin'),(97,'2016-09-14 17:04:37','','error','Admin'),(98,'2016-09-14 17:04:38','','error','Admin'),(99,'2016-09-14 17:04:38','','error','Admin'),(100,'2016-09-14 17:04:38','','error','Admin'),(101,'2016-09-14 17:04:38','Error importing the database.','error','Admin'),(102,'2016-09-14 17:05:38','Reverted to commit <a href=\"http://localhost/wp-scout/wp-admin/admin.php?page=revisr_view_commit&commit=eaeb452\">#eaeb452</a>.','revert','Admin');
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

