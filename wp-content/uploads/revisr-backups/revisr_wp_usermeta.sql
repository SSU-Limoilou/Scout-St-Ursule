
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
DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Admin'),(2,1,'first_name','test'),(3,1,'last_name','test'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','1'),(14,1,'session_tokens','a:3:{s:64:\"834cc829de0d8f2ecab4913fa6afeb77711fbc6e99c7a454460feaf1600b41cc\";a:4:{s:10:\"expiration\";i:1473943089;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36\";s:5:\"login\";i:1473770289;}s:64:\"c516421e3caf71d11fc6152eb82fbb14178c5a5ad4ed14ad8892df9675fe0d06\";a:4:{s:10:\"expiration\";i:1474029838;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36\";s:5:\"login\";i:1473857038;}s:64:\"c08cc0d28ea805f3c81806eb44e12543dd87c9da451c877379899581330888c5\";a:4:{s:10:\"expiration\";i:1474041021;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36\";s:5:\"login\";i:1473868221;}}'),(15,1,'wp_dashboard_quick_press_last_post_id','3'),(16,1,'manageedit-shop_ordercolumnshidden','a:1:{i:0;s:15:\"billing_address\";}'),(18,1,'billing_first_name','Thomas'),(19,1,'billing_last_name','Lepage'),(20,1,'billing_company','Acidstudio'),(21,1,'billing_email','test@fds.com'),(22,1,'billing_phone','101010101'),(23,1,'billing_country','CA'),(24,1,'billing_address_1','1311 rue du corindon'),(25,1,'billing_address_2',''),(26,1,'billing_city','Québec'),(27,1,'billing_state','QC'),(28,1,'billing_postcode','G2L 3G6'),(31,1,'closedpostboxes_shop_order','a:1:{i:0;s:10:\"postcustom\";}'),(32,1,'metaboxhidden_shop_order','a:0:{}'),(39,1,'last_update','1473783799'),(43,1,'phone','test'),(46,1,'address','test'),(48,1,'address_1','test'),(51,1,'city','test'),(52,1,'postcode','test'),(53,1,'country','test'),(54,1,'state','test'),(55,1,'email','test'),(61,1,'shipping_address_1','test'),(71,1,'_woocommerce_persistent_cart','a:1:{s:4:\"cart\";a:1:{s:32:\"c9f0f895fb98ab9159f51fd0297e236d\";a:9:{s:10:\"product_id\";i:8;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:9;s:8:\"line_tax\";d:1.3478000000000001;s:13:\"line_subtotal\";i:9;s:17:\"line_subtotal_tax\";d:1.3478000000000001;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:2:{i:13;d:0.45000000000000001;i:14;d:0.89780000000000004;}s:8:\"subtotal\";a:2:{i:13;d:0.45000000000000001;i:14;d:0.89780000000000004;}}}}}'),(72,1,'wp_user-settings','editor=html&libraryContent=browse&imgsize=full&unfold=1&mfold=o'),(73,1,'wp_user-settings-time','1473795032');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

