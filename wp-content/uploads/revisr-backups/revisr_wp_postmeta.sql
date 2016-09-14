
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
DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,8,'_edit_last','1'),(3,8,'_edit_lock','1473775160:1'),(4,8,'wpsm_faq_data','s:8231:\"a:10:{i:0;a:4:{s:9:\"faq_title\";s:42:\"Qui est la Société scoute de Ste-Ursule?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:1279:\"La Société scoute de Ste-Ursule inc. est une corporation à but non lucratif. Sa mission consiste à supporter, financer et encadrer les activités scoutes des quartiers St-Louis-de-France et Ste-Ursule sur le plateau de Ste-Foy. Depuis quelques années entre 60 et 65 jeunes s’inscrivent aux scouts à Ste-Ursule. Ce secteur est en nette progression. Le coût annuel d’inscription étant minime, plusieurs jeunes issus de milieux moins nantis peuvent participer. Il en coûte en effet 110 $ par année par jeune pour 40 semaines d’activités. Ce tarif exclut les coûts des camps de fin de semaine (3 par an) (entre 20$ et 25$ par camps de fin de semaine) et d’été (coût variable selon le projet de camp). Si la société scoute de Ste-Ursule peut offrir des camps de fin de semaine et d’été à prix aussi abordable, c’est qu’elle est propriétaire d’un chalet à St-Raymond de Portneuf, dédié aux activités scoutes. La société fonctionne avec un budget annuel provenant en majeure partie des inscriptions. Toutes les personnes impliquées dans la Société scoute de Ste-Ursule sont bénévoles. Le nombre d’heures effectués bénévolement par les 16 animateurs et 6 membres du conseil d’administration se chiffre à près de 4500 annuellement.\";}i:1;a:4:{s:9:\"faq_title\";s:44:\"Des retombées significatives dans le milieu\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:619:\"Les Scouts de Ste-Ursule et St-Louis-de-France permettent à 70 jeunes de tous milieux socio-économiques de profiter d’activités en plein-air … Les Scouts de Ste-Ursule et St-Louis-de-France, ce sont 70 jeunes, filles et garçons de 7 à 16 ans, de tous milieux socio-économiques qui peuvent profiter d’activités en plein-air à faible coût. Nos installations servant aussi à d’autres organismes de loisir pour les jeunes, les retombées rayonnent sur un grand nombre de familles de la région en leur permettant de faire vivre à leurs enfants des expériences enrichissantes en groupe et dans la nature.\";}i:2;a:4:{s:9:\"faq_title\";s:60:\"Qui fait partie des Scouts de Ste-Ursule/St-Louis-de-France?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:1306:\"Après avoir connu un certain déclin, la popularité du mouvement Scout sur le territoire que nous desservons est en nette progression depuis plusieurs années. En 2016, plus de 70 jeunes sont inscrits aux Scouts de Ste-Ursule/St-Louis-de-France.\r\nLe coût annuel d’inscription étant minime, plusieurs jeunes issus de milieux moins nantis peuvent participer. Il en coûte en effet 110 $ par année par jeune pour 40 semaines d’activités. Ce tarif exclut les coûts des camps de fin de semaine (3 par an) (entre 20$ et 25$ par camps de fin de semaine) et d’été (coût variable selon le projet de camp mais rarement au-delà de 150$). Si la société scoute de Ste-Ursule peut offrir des camps de fin de semaine et d’été à prix aussi abordable, c’est qu’elle est propriétaire d’un terrain et d’un chalet à St-Raymond de Portneuf, dédié aux activités scoutes. La société fonctionne avec un budget annuel d’environ 20 000 $ provenant en majeure partie des inscriptions et de la campagne de vente des calendriers scouts. Les 16 animateurs scouts ainsi que les 10 membres du conseil d’administration sont tous bénévoles. Grâce à leur dynamisme et leur dévouement, les jeunes de toutes origines socio-économiques de notre quartier bénéficient des avantages du scoutisme.\";}i:3;a:4:{s:9:\"faq_title\";s:44:\"Quelle est la durée des activités scoutes?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:297:\"Les activités scoutes suivent l’année scolaire, de septembre à juin. Les scouts font des réunions hebdomadaires de deux heures, ils font aussi des activités sportives, culturelles ou de financement une journée par mois. Suivant son âge, un jeune partira en camp de 2 à 4 fois par année.\";}i:4;a:4:{s:9:\"faq_title\";s:32:\"Qu’est-ce que font les scouts?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:507:\"On fait des activités très intéressantes et diversifiées, autant des jeux, des activités de plein air, culturelles, environnementales ou sociales. Exemple : canot, vélo-camping, géocaching, escalade, tir-à-l’arc, cultiver, bricoler, improviser, aider, apprendre. Pour les plus jeunes, les animateurs leur font vivre des activités thématiques, mais les plus vieux sont outillés pour partir à l’aventure par eux-mêmes et choisir leurs défis, par exemple, un camp communautaire international.\";}i:5;a:4:{s:9:\"faq_title\";s:48:\"Qu’est-ce que le scoutisme apporte aux jeunes?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:319:\"Nos bénévoles ont permis à des générations de jeunes Canadiens de dormir pour la première fois en tente, de développer des aptitudes de leadership, d’acquérir de la confiance en eux et de l’autonomie. Le dévouement, l’ingéniosité et l’enthousiasme des bénévoles sont vitaux pour le mouvement scout.\";}i:6;a:4:{s:9:\"faq_title\";s:63:\"À quoi mon enfant doit-il s’attendre après son inscription?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:71:\"Recevoir une confirmation ainsi que les dates importantes par courriel.\";}i:7;a:4:{s:9:\"faq_title\";s:115:\"Comment les animateurs potentiels sont-ils sélectionnés et quelles sont les mesures de sécurité mises en place?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:780:\"Les animateurs potentiels doivent se soumettre à une procédure rigoureuse de sélection. Cette procédure inclut la vérification du dossier de police, une entrevue de sélection en plus de la vérification de trois références personnelles. Jusqu’à ce que la procédure de sélection soit entièrement terminée et approuvée, les personnes ne peuvent pas travailler avec les enfants. Nos politiques approfondies de gestion des risques incluent « l’animation en tandem » qui signifie qu’il doit toujours y avoir au moins deux animateurs inscrits présents en tout temps en présence des enfants et cela, peu importe le nombre d’enfants présents. Les animateurs sont bien informés de la gestion des risques et du Devoir de diligence tout au long de leur formation.\";}i:8;a:4:{s:9:\"faq_title\";s:124:\"Quelle est la politique de Scouts Canada concernant la participation des parents et des tuteurs aux activités de scoutisme?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:415:\"Nous encourageons les parents à participer aux activités de scoutisme de leur enfant, soit d’assister aux activités ou de devenir un animateur. En fait, la majorité de nos animateurs sont des parents. Par contre, Scouts Canada croit qu’il est important pour tous ceux qui côtoient les jeunes d’avoir la formation adéquate et d’effectuer la présélection afin d’assurer la sécurité de nos membres.\";}i:9;a:4:{s:9:\"faq_title\";s:71:\"Quel est le rôle du parent ou du tuteur lors d’une activité scoute?\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:665:\"La responsabilité principale des parents et des tuteurs est de s’occuper de leur enfant. Les parents et les tuteurs agissent souvent comme personne-ressource du programme (en partageant un talent ou un passe-temps qu’ils ont) ou amènent des collations pour les sorties des scouts castors et des scouts louveteaux. Les parents doivent suivre les étapes de présélection (en tant que non-membres dans le tableau de présélection de Scouts Canada), et sont toujours sous la supervision d’au moins deux animateurs inscrits. Les parents ont le droit de participer à des activités (3 à 5 par année maximum) avant de devoir devenir membres de Scouts Canada.\";}}\";'),(5,8,'wpsm_faq_count','10'),(6,8,'Wpsm_Faq_Shortcode_Settings','s:650:\"a:20:{s:13:\"acc_sec_title\";s:3:\"yes\";s:10:\"op_cl_icon\";s:1:\"1\";s:14:\"acc_title_icon\";s:3:\"yes\";s:10:\"acc_radius\";s:3:\"yes\";s:10:\"acc_margin\";s:3:\"yes\";s:15:\"acc_op_cl_align\";N;s:13:\"enable_toggle\";s:3:\"yes\";s:16:\"enable_ac_border\";s:3:\"yes\";s:16:\"acc_title_bg_clr\";s:7:\"#ffffff\";s:18:\"acc_title_icon_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_bg_clr\";s:7:\"#0c0000\";s:23:\"acc_open_cl_icon_ft_clr\";s:7:\"#ffffff\";s:15:\"acc_desc_bg_clr\";s:7:\"#ffffff\";s:17:\"acc_desc_font_clr\";s:7:\"#000000\";s:10:\"title_size\";s:2:\"18\";s:8:\"des_size\";s:2:\"16\";s:11:\"font_family\";s:9:\"Open Sans\";s:10:\"custom_css\";s:0:\"\";s:13:\"expand_option\";s:1:\"3\";s:9:\"ac_styles\";s:1:\"1\";}\";'),(7,9,'_edit_last','1'),(8,9,'_edit_lock','1473869883:1'),(9,9,'_wp_page_template','default'),(10,9,'_onetone_post_meta','{\"header_position\":\"top\",\"full_width\":\"no\",\"padding_top\":\"50px\",\"padding_bottom\":\"50px\",\"display_breadcrumb\":\"yes\",\"nav_menu\":\"\",\"page_layout\":\"none\",\"left_sidebar\":\"\",\"right_sidebar\":\"\",\"slider_banner\":\"0\",\"banner_position\":\"1\",\"magee_slider\":\"\",\"display_title\":\"yes\"}'),(48,21,'_wp_attached_file','2016/09/logo_scouts_canada.png'),(49,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:213;s:6:\"height\";i:67;s:4:\"file\";s:30:\"2016/09/logo_scouts_canada.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo_scouts_canada-150x67.png\";s:5:\"width\";i:150;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"logo_scouts_canada-180x67.png\";s:5:\"width\";i:180;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(50,21,'_wp_attachment_image_alt','Logo'),(94,30,'_menu_item_type','post_type'),(95,30,'_menu_item_menu_item_parent','0'),(96,30,'_menu_item_object_id','9'),(97,30,'_menu_item_object','page'),(98,30,'_menu_item_target',''),(99,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(100,30,'_menu_item_xfn',''),(101,30,'_menu_item_url',''),(103,35,'_edit_last','1'),(104,35,'_edit_lock','1473774840:1'),(105,35,'wpsm_faq_data','s:313:\"a:2:{i:0;a:4:{s:9:\"faq_title\";s:8:\"dtgjsfdj\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:15:\"dxzjzdtjzdtjzxd\";}i:1;a:4:{s:9:\"faq_title\";s:10:\"tusetusetu\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:13:\"etsuseusretik\";}}\";'),(106,35,'wpsm_faq_count','2'),(107,35,'Wpsm_Faq_Shortcode_Settings','s:650:\"a:20:{s:13:\"acc_sec_title\";s:3:\"yes\";s:10:\"op_cl_icon\";s:1:\"1\";s:14:\"acc_title_icon\";s:3:\"yes\";s:10:\"acc_radius\";s:3:\"yes\";s:10:\"acc_margin\";s:3:\"yes\";s:15:\"acc_op_cl_align\";N;s:13:\"enable_toggle\";s:3:\"yes\";s:16:\"enable_ac_border\";s:3:\"yes\";s:16:\"acc_title_bg_clr\";s:7:\"#ffffff\";s:18:\"acc_title_icon_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_bg_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_ft_clr\";s:7:\"#ffffff\";s:15:\"acc_desc_bg_clr\";s:7:\"#ffffff\";s:17:\"acc_desc_font_clr\";s:7:\"#000000\";s:10:\"title_size\";s:2:\"18\";s:8:\"des_size\";s:2:\"16\";s:11:\"font_family\";s:9:\"Open Sans\";s:10:\"custom_css\";s:0:\"\";s:13:\"expand_option\";s:1:\"3\";s:9:\"ac_styles\";s:1:\"1\";}\";'),(108,8,'_wp_old_slug','faq'),(109,35,'_wp_old_slug','benevole'),(110,39,'_edit_last','1'),(111,39,'_edit_lock','1473775362:1'),(112,39,'wpsm_faq_data','s:328:\"a:2:{i:0;a:4:{s:9:\"faq_title\";s:12:\"Sample Title\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:18:\"Sample Description\";}i:1;a:4:{s:9:\"faq_title\";s:12:\"Sample Title\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:18:\"Sample Description\";}}\";'),(113,39,'wpsm_faq_count','2'),(114,39,'Wpsm_Faq_Shortcode_Settings','s:650:\"a:20:{s:13:\"acc_sec_title\";s:3:\"yes\";s:10:\"op_cl_icon\";s:1:\"1\";s:14:\"acc_title_icon\";s:3:\"yes\";s:10:\"acc_radius\";s:3:\"yes\";s:10:\"acc_margin\";s:3:\"yes\";s:15:\"acc_op_cl_align\";N;s:13:\"enable_toggle\";s:3:\"yes\";s:16:\"enable_ac_border\";s:3:\"yes\";s:16:\"acc_title_bg_clr\";s:7:\"#ffffff\";s:18:\"acc_title_icon_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_bg_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_ft_clr\";s:7:\"#ffffff\";s:15:\"acc_desc_bg_clr\";s:7:\"#ffffff\";s:17:\"acc_desc_font_clr\";s:7:\"#000000\";s:10:\"title_size\";s:2:\"18\";s:8:\"des_size\";s:2:\"16\";s:11:\"font_family\";s:9:\"Open Sans\";s:10:\"custom_css\";s:0:\"\";s:13:\"expand_option\";s:1:\"3\";s:9:\"ac_styles\";s:1:\"1\";}\";'),(115,40,'_edit_last','1'),(116,40,'_edit_lock','1473870111:1'),(117,40,'wpsm_faq_data','s:328:\"a:2:{i:0;a:4:{s:9:\"faq_title\";s:12:\"Sample Title\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:18:\"Sample Description\";}i:1;a:4:{s:9:\"faq_title\";s:12:\"Sample Title\";s:14:\"faq_title_icon\";s:9:\"fa-laptop\";s:18:\"enable_single_icon\";s:3:\"yes\";s:8:\"faq_desc\";s:18:\"Sample Description\";}}\";'),(118,40,'wpsm_faq_count','2'),(119,40,'Wpsm_Faq_Shortcode_Settings','s:649:\"a:20:{s:13:\"acc_sec_title\";s:3:\"yes\";s:10:\"op_cl_icon\";s:1:\"1\";s:14:\"acc_title_icon\";s:3:\"yes\";s:10:\"acc_radius\";s:3:\"yes\";s:10:\"acc_margin\";s:3:\"yes\";s:15:\"acc_op_cl_align\";N;s:13:\"enable_toggle\";s:2:\"no\";s:16:\"enable_ac_border\";s:3:\"yes\";s:16:\"acc_title_bg_clr\";s:7:\"#ffffff\";s:18:\"acc_title_icon_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_bg_clr\";s:7:\"#000000\";s:23:\"acc_open_cl_icon_ft_clr\";s:7:\"#ffffff\";s:15:\"acc_desc_bg_clr\";s:7:\"#ffffff\";s:17:\"acc_desc_font_clr\";s:7:\"#000000\";s:10:\"title_size\";s:2:\"18\";s:8:\"des_size\";s:2:\"16\";s:11:\"font_family\";s:9:\"Open Sans\";s:10:\"custom_css\";s:0:\"\";s:13:\"expand_option\";s:1:\"3\";s:9:\"ac_styles\";s:1:\"1\";}\";');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

